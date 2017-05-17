using databaseClassLib;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace noteApp.Models
{
    public class Main
    {
        public ObservableCollection<Note> UserNotes { get; set; }
        public string Label { get; set; }
        public string Text { get; set; }

        public Main()
        {
            UserNotes = new ObservableCollection<Note>();
        }
    }
}
