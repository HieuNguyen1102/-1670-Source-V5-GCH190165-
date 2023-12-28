namespace _1670AsmtVer4.Models
{
    public class Order
    {
        
            public int OrderId { get; set; }
            public string UserId { get; set; } // Add user information
            public List<OrderItem> OrderItems { get; set; } = new List<OrderItem>();
            public decimal TotalAmount { get; set; }
        }

        public class OrderItem
        {
            public int OrderItemId { get; set; }
            public int ProductId { get; set; }
            public int Quantity { get; set; }
            public decimal UnitPrice { get; set; }
    }
}
