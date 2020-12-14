using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class ArteProducto
    {
        public ArteProducto()
        {
            Cotizacion = new HashSet<Cotizacion>();
            Producto = new HashSet<Producto>();
        }

        public int IdArte { get; set; }
        public string NombreProducto { get; set; }
        public string Alto { get; set; }
        public string Largo { get; set; }
        public string Ancho { get; set; }
        public string Imagen { get; set; }
        public int IdCliente { get; set; }
        public string Estado { get; set; }

        public virtual Clientes IdClienteNavigation { get; set; }
        public virtual ICollection<Cotizacion> Cotizacion { get; set; }
        public virtual ICollection<Producto> Producto { get; set; }
    }
}
