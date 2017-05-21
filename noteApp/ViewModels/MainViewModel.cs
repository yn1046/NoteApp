using databaseClassLib;
using noteApp.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace noteApp.ViewModels
{
    public class MainViewModel : INotifyPropertyChanged
    {
        public Main Model { get; set; }

        public ICommand SaveCommand { get; set; }
        public ICommand NewCommand { get; set; }
        public ICommand CloseCommand { get; set; }
        public ICommand ChangeUserCommand { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;

        public User CurrentUser { get; set; }

        public bool IfSaved { get; set; }

        private Note selectedNote;
        public Note SelectedNote
        {
            get
            {
                return selectedNote;
            }
            set
            {
                selectedNote = value;
                if (!IfSaved) Select();
                else IfSaved = false;
                OnPropertyChanged(nameof(SelectedNote));
                OnPropertyChanged(nameof(IfCanSave));
            }
        }

        public string Label
        {
            get
            {
                return Model.Label;
            }
            set
            {
                Model.Label = value;
                OnPropertyChanged(nameof(IfCanSave));
                OnPropertyChanged(nameof(Label));
            }
        }

        public string Text
        {
            get
            {
                return Model.Text;
            }
            set
            {
                Model.Text = value;
                OnPropertyChanged(nameof(IfCanSave));
                OnPropertyChanged(nameof(Text));
            }
        }

        public bool IfCanSave
        {
            get
            {
                if (string.IsNullOrEmpty(Text) || string.IsNullOrEmpty(Label)) return false;
                else return true;
            }
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public MainViewModel(User user, Action closeAction)
        {
            Model = new Main();
            SelectedNote = new Note();
            CurrentUser = user;
            SaveCommand = new DelegateCommand(DoSave);
            NewCommand = new DelegateCommand(CreateNew);
            CloseCommand = new DelegateCommand(closeAction);
            ChangeUserCommand = new DelegateCommand(ChangeUser);
            IfSaved = false;
            LoadNotes();
        }

        private void LoadNotes()
        {
            try
            {
                var tempList = new List<Note>();
                using (var db = new UserDbContext())
                {
                    if (!db.Notes.Any()) return;
                    tempList = db.Notes.Where(n => n.UserId == CurrentUser.Id).ToList();
                }
                Model.UserNotes.Clear();
                tempList.ForEach(n => Model.UserNotes.Add(n));
                Model.UserNotes.OrderBy(n => n.NoteDate);
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
            }
        }

        private void Select()
        {
            Label = SelectedNote.Title;
            Text = SelectedNote.Text;
        }

        private void DoSave()
        {
            try
            {
                if (Model.Label.Length > 50) throw new Exception("Label length shouldn't exceed 50 characters");
                if (Model.Text.Length > 3500) throw new Exception("Text length shouldn't exceed 3500 characters");
                IfSaved = true;
                if (string.IsNullOrEmpty(SelectedNote.Title))
                {
                    var note = new Note()
                    {
                        UserId = CurrentUser.Id,
                        Title = Label,
                        Text = Text,
                        NoteDate = DateTime.Now
                    };
                    using (var db = new UserDbContext())
                    {
                        db.Notes.Add(note);
                        db.SaveChanges();
                    }
                    Model.UserNotes.Add(note);
                }
                else
                {
                    using (var db = new UserDbContext())
                    {
                        var note = db.Notes.FirstOrDefault(n => n.Id == selectedNote.Id);
                        note.Title = Label;
                        note.Text = Text;
                        note.NoteDate = DateTime.Now;
                        db.SaveChanges();
                    }
                }
                LoadNotes();
                Label = string.Empty;
                Text = string.Empty;
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message, "Error", MessageBoxButton.OK);
            }
        }

        private void CreateNew()
        {
            SelectedNote = new Note();
            Label = string.Empty;
            Text = string.Empty;
        }

        private void ChangeUser()
        {
            var signInWindow = new SignInWindow();
            signInWindow.Show();
            CloseCommand.Execute(this);
        }

    }
}
