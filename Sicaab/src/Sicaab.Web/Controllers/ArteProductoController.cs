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
    public class ArteProductoController : Controller
    {
        private readonly SicaabDbContext _context;

        public ArteProductoController(SicaabDbContext context)
        {
            _context = context;
        }

        // GET: ArteProducto
        public async Task<IActionResult> Index()
        {
            var sicaabDbContext = _context.ArteProducto.Include(a => a.IdClienteNavigation);
            return View(await sicaabDbContext.ToListAsync());
        }

        // GET: ArteProducto/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var arteProducto = await _context.ArteProducto
                .Include(a => a.IdClienteNavigation)
                .FirstOrDefaultAsync(m => m.IdArte == id);
            if (arteProducto == null)
            {
                return NotFound();
            }

            return View(arteProducto);
        }

        // GET: ArteProducto/Create
        public IActionResult Create()
        {
            ViewData["IdCliente"] = new SelectList(_context.Clientes, "IdCliente", "Ciudad");
            return View();
        }

        // POST: ArteProducto/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("IdArte,NombreProducto,Alto,Largo,Ancho,Imagen,IdCliente,Estado")] ArteProducto arteProducto)
        {
            if (ModelState.IsValid)
            {
                _context.Add(arteProducto);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["IdCliente"] = new SelectList(_context.Clientes, "IdCliente", "Ciudad", arteProducto.IdCliente);
            return View(arteProducto);
        }

        // GET: ArteProducto/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var arteProducto = await _context.ArteProducto.FindAsync(id);
            if (arteProducto == null)
            {
                return NotFound();
            }
            ViewData["IdCliente"] = new SelectList(_context.Clientes, "IdCliente", "Ciudad", arteProducto.IdCliente);
            return View(arteProducto);
        }

        // POST: ArteProducto/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("IdArte,NombreProducto,Alto,Largo,Ancho,Imagen,IdCliente,Estado")] ArteProducto arteProducto)
        {
            if (id != arteProducto.IdArte)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(arteProducto);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ArteProductoExists(arteProducto.IdArte))
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
            ViewData["IdCliente"] = new SelectList(_context.Clientes, "IdCliente", "Ciudad", arteProducto.IdCliente);
            return View(arteProducto);
        }

        // GET: ArteProducto/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var arteProducto = await _context.ArteProducto
                .Include(a => a.IdClienteNavigation)
                .FirstOrDefaultAsync(m => m.IdArte == id);
            if (arteProducto == null)
            {
                return NotFound();
            }

            return View(arteProducto);
        }

        // POST: ArteProducto/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var arteProducto = await _context.ArteProducto.FindAsync(id);
            _context.ArteProducto.Remove(arteProducto);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ArteProductoExists(int id)
        {
            return _context.ArteProducto.Any(e => e.IdArte == id);
        }
    }
}
