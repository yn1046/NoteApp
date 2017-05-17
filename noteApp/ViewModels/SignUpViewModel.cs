using databaseClassLib;
using noteApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace noteApp.ViewModels
{
    public class SignUpViewModel
    {
        public SignUp Model { get; set; }

        public ICommand SignUpCommand { get; set; }
        public ICommand CancelCommand { get; set; }

        public SignUpViewModel(Action closeAction)
        {
            Model = new SignUp();
            SignUpCommand = new DelegateCommand<object>(DoSignUp);
            CancelCommand = new DelegateCommand(closeAction);
        }

        private void DoSignUp(object passwordBox)
        {
            Model.Password = RecognizePassword(passwordBox);

            if (!IsValidModel()) return;

            try
            {
                using (var db = new UserDbContext())
                {
                    var users = db.Users.Where(u => u.Login.Equals(Model.Login));

                    if (users.Count() > 0)
                        throw new Exception("User already exists.");

                    var user = new User { Login = Model.Login, Password = Model.Password };
                    db.Users.Add(user);
                    db.SaveChanges();
                }
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message, "Error", MessageBoxButton.OK);
            }

            CancelCommand.Execute(this);
        }

        private string RecognizePassword(object passBox)
        {
            var box = passBox as PasswordBox;
            return box == null ? string.Empty : box.Password;
        }

        private bool IsValidModel()
        {
            var errors = new List<string>();

            if (string.IsNullOrEmpty(Model.Login)) errors.Add("Please write login");
            if (string.IsNullOrEmpty(Model.Password)) errors.Add("Please write password");

            if (errors.Count == 0) return true;

            var msg = string.Join("\n", errors);
            MessageBox.Show(msg, "Error", MessageBoxButton.OKCancel);

            return false;
        }

    }
}
