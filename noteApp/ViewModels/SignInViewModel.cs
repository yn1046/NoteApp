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
    public class SignInViewModel
    {
        public SignIn Model { get; set; }

        public ICommand EnterCommand { get; set; }
        public ICommand RegisterCommand { get; set; }
        public ICommand CloseCommand { get; set; }

        public SignInViewModel(Action closeAction)
        {
            Model = new SignIn();
            EnterCommand = new DelegateCommand<object>(DoEnter);
            RegisterCommand = new DelegateCommand(DoRegister);
            CloseCommand = new DelegateCommand(closeAction);
        }

        public void DoEnter(object passBox)
        {
            Model.Password = RecognizePassword(passBox);

            if (!IsValidModel()) return;

            var user = new User();

            try
            {
                using (var db = new UserDbContext())
                {
                    if (!db.Users.Any(u => u.Login.Equals(Model.Login) && u.Password.Equals(Model.Password)))
                        throw new Exception("Incorrect login or password.");

                    user = db.Users.FirstOrDefault(u => u.Login.Equals(Model.Login) && u.Password.Equals(Model.Password));
                }
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message, "Error", MessageBoxButton.OK);
                return;
            }

            
            var mainWindow = new MainWindow(user);
            mainWindow.Show();

            CloseCommand.Execute(this);

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

        public void DoRegister()
        {
            var signUpWindow = new SignUpWindow();
            signUpWindow.Show();
        }
    }
}
