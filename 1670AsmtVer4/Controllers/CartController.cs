using _1670AsmtVer4.Infrastructure;
using _1670AsmtVer4.Data;
using _1670AsmtVer4.Models;
using Microsoft.AspNetCore.Mvc;
using NuGet.Protocol.Core.Types;
using Microsoft.AspNetCore.Authorization;
using System.Data;
using static _1670AsmtVer4.Data.ApplicationDbContext;
using System.Security.Claims;

namespace _1670AsmtVer4.Controllers
{
    public class CartController : Controller
    {
        public Cart? Cart { get; set; }
        private readonly ApplicationDbContext _context;


        public CartController(ApplicationDbContext context)
        {
            _context = context;
        }
        [Authorize]
        public IActionResult AddToCart(int productId)
        {
            Product? product = _context.Products.FirstOrDefault(p => p.ProductId == productId);
            if (product != null)
            {
                Cart = HttpContext.Session.GetJson<Cart>("cart") ?? new Cart();
                Cart.AddItem(product, 1);
                HttpContext.Session.SetJson("cart", Cart);
            }
            return View("Cart", Cart);
        }
        [Authorize]
        public IActionResult Index()
        {
            return View("Cart", HttpContext.Session.GetJson<Cart>("cart"));
        }
        [Authorize]
        public IActionResult UpdateCart(int productId)
        {
            Product? product = _context.Products.FirstOrDefault(p => p.ProductId == productId);
            if (product != null)
            {
                Cart = HttpContext.Session.GetJson<Cart>("cart") ?? new Cart();
                Cart.AddItem(product, -1);
                HttpContext.Session.SetJson("cart", Cart);
            }
            return View("Cart", Cart);
        }

        [Authorize]
        public IActionResult RemoveFromCart(int productId)
        {
            Product? product = _context.Products.FirstOrDefault(p => p.ProductId == productId);
            if (product != null)
            {
                Cart = HttpContext.Session.GetJson<Cart>("cart"); 
                Cart.RemoveLine(product);
                HttpContext.Session.SetJson("cart", Cart);
            }
            return View("Cart", Cart);
        }

        public IActionResult ProceedToCheckout()
        {
            // Retrieve user information (you might need to modify this based on your authentication setup)
            string userId = User.FindFirstValue(ClaimTypes.NameIdentifier);

            // Retrieve cart from session
            Cart = HttpContext.Session.GetJson<Cart>("cart") ?? new Cart();

            // Create an order
            Order order = new Order
            {
                UserId = userId,
                TotalAmount = Cart.ComputeTotalValue(),
                OrderItems = Cart.Lines.Select(line => new OrderItem
                {
                    ProductId = line.Product.ProductId,
                    Quantity = line.Quantity,
                    UnitPrice = (decimal)(line.Product.ProductPrice * (1 - line.Product.ProductDiscount))
                }).ToList()
            };

            // Save the order to the database
            _context.Orders.Add(order);
            _context.SaveChanges();

            // Clear the cart
            Cart.Clear();
            HttpContext.Session.Remove("cart");

            return RedirectToAction("OrderConfirmation", new { orderId = order.OrderId });
        }


    }
}
