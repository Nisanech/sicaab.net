using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Sicaab.Core.Domain;
using Sicaab.Infrastructure.Data;

namespace Sicaab.Web.Controllers
{
    public class OrdenCompraController : Controller
    {
        private readonly SicaabDbContext _context;

        public OrdenCompraController(SicaabDbContext context)
        {
            _context = context;
        }

        // GET: OrdenCompra
        public async Task<IActionResult> Index()
        {
            var sicaabDbContext = _context.OrdenCompra.Include(o => o.IdClienteNavigation).Include(o => o.IdPagoNavigation);
            return View(await sicaabDbContext.ToListAsync());
        }

        // GET: OrdenCompra/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var ordenCompra = await _context.OrdenCompra
                .Include(o => o.IdClienteNavigation)
                .Include(o => o.IdPagoNavigation)
                .FirstOrDefaultAsync(m => m.IdOrdenCompra == id);
            if (ordenCompra == null)
            {
                return NotFound();
            }

            return View(ordenCompra);
        }

        // GET: OrdenCompra/Create
        public IActionResult Create()
        {
            ViewData["IdCliente"] = new SelectList(_context.Clientes, "IdCliente", "Ciudad");
            ViewData["IdPago"] = new SelectList(_context.CondicionPago, "IdPago", "Plazo");
            return View();
        }

        // POST: OrdenCompra/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IdOrdenCompra,NumOrden,FechaSolicitud,FechaEntrega,IdCliente,IdPago")] OrdenCompra ordenCompra)
        {
            if (ModelState.IsValid)
            {
                _context.Add(ordenCompra);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdCliente"] = new SelectList(_context.Clientes, "IdCliente", "Ciudad", ordenCompra.IdCliente);
            ViewData["IdPago"] = new SelectList(_context.CondicionPago, "IdPago", "Plazo", ordenCompra.IdPago);
            return View(ordenCompra);
        }

        // GET: OrdenCompra/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var ordenCompra = await _context.OrdenCompra.FindAsync(id);
            if (ordenCompra == null)
            {
                return NotFound();
            }
            ViewData["IdCliente"] = new SelectList(_context.Clientes, "IdCliente", "Ciudad", ordenCompra.IdCliente);
            ViewData["IdPago"] = new SelectList(_context.CondicionPago, "IdPago", "Plazo", ordenCompra.IdPago);
            return View(ordenCompra);
        }

        // POST: OrdenCompra/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("IdOrdenCompra,NumOrden,FechaSolicitud,FechaEntrega,IdCliente,IdPago")] OrdenCompra ordenCompra)
        {
            if (id != ordenCompra.IdOrdenCompra)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(ordenCompra);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!OrdenCompraExists(ordenCompra.IdOrdenCompra))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdCliente"] = new SelectList(_context.Clientes, "IdCliente", "Ciudad", ordenCompra.IdCliente);
            ViewData["IdPago"] = new SelectList(_context.CondicionPago, "IdPago", "Plazo", ordenCompra.IdPago);
            return View(ordenCompra);
        }

        // GET: OrdenCompra/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var ordenCompra = await _context.OrdenCompra
                .Include(o => o.IdClienteNavigation)
                .Include(o => o.IdPagoNavigation)
                .FirstOrDefaultAsync(m => m.IdOrdenCompra == id);
            if (ordenCompra == null)
            {
                return NotFound();
            }

            return View(ordenCompra);
        }

        // POST: OrdenCompra/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var ordenCompra = await _context.OrdenCompra.FindAsync(id);
            _context.OrdenCompra.Remove(ordenCompra);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool OrdenCompraExists(int id)
        {
            return _context.OrdenCompra.Any(e => e.IdOrdenCompra == id);
        }
    }
}
