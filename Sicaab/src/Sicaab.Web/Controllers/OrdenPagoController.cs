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
    public class OrdenPagoController : Controller
    {
        private readonly SicaabDbContext _context;

        public OrdenPagoController(SicaabDbContext context)
        {
            _context = context;
        }

        // GET: OrdenPago
        public async Task<IActionResult> Index()
        {
            return View(await _context.OrdenPago.ToListAsync());
        }

        // GET: OrdenPago/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var ordenPago = await _context.OrdenPago
                .FirstOrDefaultAsync(m => m.IdOrdenPago == id);
            if (ordenPago == null)
            {
                return NotFound();
            }

            return View(ordenPago);
        }

        // GET: OrdenPago/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: OrdenPago/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IdOrdenPago,Fecha,FechaVencimiento")] OrdenPago ordenPago)
        {
            if (ModelState.IsValid)
            {
                _context.Add(ordenPago);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(ordenPago);
        }

        // GET: OrdenPago/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var ordenPago = await _context.OrdenPago.FindAsync(id);
            if (ordenPago == null)
            {
                return NotFound();
            }
            return View(ordenPago);
        }

        // POST: OrdenPago/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("IdOrdenPago,Fecha,FechaVencimiento")] OrdenPago ordenPago)
        {
            if (id != ordenPago.IdOrdenPago)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(ordenPago);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!OrdenPagoExists(ordenPago.IdOrdenPago))
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
            return View(ordenPago);
        }

        // GET: OrdenPago/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var ordenPago = await _context.OrdenPago
                .FirstOrDefaultAsync(m => m.IdOrdenPago == id);
            if (ordenPago == null)
            {
                return NotFound();
            }

            return View(ordenPago);
        }

        // POST: OrdenPago/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var ordenPago = await _context.OrdenPago.FindAsync(id);
            _context.OrdenPago.Remove(ordenPago);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool OrdenPagoExists(int id)
        {
            return _context.OrdenPago.Any(e => e.IdOrdenPago == id);
        }
    }
}
