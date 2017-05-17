using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace databaseClassLib
{
    public class Note
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public int UserId { get; set; }

        [Required]
        [StringLength(50)]
        public string Title { get; set; }

        [Required]
        [StringLength(3500)]
        public string Text { get; set; }

        [Required]
        public DateTime NoteDate { get; set; }

        [ForeignKey(nameof(UserId))]
        public virtual User FKUser { get; set; }
    }
}
