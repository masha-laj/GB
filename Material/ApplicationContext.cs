using Material.ViewModels;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Material
{
    public class ApplicationContext : DbContext
    {
        public ApplicationContext() : base("DefaultConnection")
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<OperationCategory>()
                    .HasMany(g => g.Operations)
                    .WithOptional(g => g.Category)
                    .HasForeignKey(g => g.CategoryID);
            base.OnModelCreating(modelBuilder);
        }

        public DbSet<OperationCategory> OperationCategories { get; set; }
        public DbSet<Operation> Operations { get; set; }
        public DbSet<User> Users { get; set; }
    }
}
