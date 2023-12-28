using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace _1670AsmtVer4.Models
{
    public class Product
    {
        [Key]
        public int ProductId { get; set; }
        [Required]
        [StringLength(150)]
        public string? ProductName { get; set; }
        [StringLength(5000)]
        public string? ProductDescription { get; set;}
        [ForeignKey("Category")]
        public int CategoryId { get; set; }
        public Category? Category { get; set; }
        [Column(TypeName = "decimal(8,2)")]

        
        //navigation
        public decimal? ProductPrice { get; set; }
        [Column(TypeName = "decimal(2,2)")]
        public decimal? ProductDiscount { get; set; }
        [StringLength(3000)]
        public string? ProductPhoto { get; set; }
        public bool IsTrending { get; set; }
        public bool IsArrived { get;set; }


    }
}
