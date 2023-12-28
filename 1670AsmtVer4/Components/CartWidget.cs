using _1670AsmtVer4.Data;
using _1670AsmtVer4.Infrastructure;
using _1670AsmtVer4.Models;
using Microsoft.AspNetCore.Mvc;

namespace _1670AsmtVer4.Components
{
    public class CartWidget:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View(HttpContext.Session.GetJson<Cart>("cart"));
        }
    }
}
