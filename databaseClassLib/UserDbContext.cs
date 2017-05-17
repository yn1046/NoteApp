using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace databaseClassLib
{
    public class UserDbContext : DbContext
    {
        public UserDbContext()
            : base("UserConnectionString")
        {
            Database.SetInitializer(new CreateDatabaseIfNotExists<UserDbContext>());
        }

        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Note> Notes { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<OneToManyCascadeDeleteConvention>();
        }

    }
}
