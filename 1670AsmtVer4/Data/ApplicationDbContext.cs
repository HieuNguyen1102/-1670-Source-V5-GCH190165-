using _1670AsmtVer4.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace _1670AsmtVer4.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        //Create Database
        public DbSet<Product> Products { get; set;}
        public DbSet<Category> Categories { get; set;}

        public DbSet<Order> Orders { get; set; }
        


    }
}