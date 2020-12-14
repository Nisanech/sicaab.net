using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Clientes
    {
        public Clientes()
        {
            ArteProducto = new HashSet<ArteProducto>();
            Cotizacion = new HashSet<Cotizacion>();
            OrdenCompra = new HashSet<OrdenCompra>();
        }

        public int IdCliente { get; set; }
        public string Nit { get; set; }
        public string RazonSocial { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public string Correo { get; set; }
        public string PersonaContacto { get; set; }
        public string Ciudad { get; set; }
        public int IdUsuarios { get; set; }

        public virtual Usuarios IdUsuariosNavigation { get; set; }
        public virtual ICollection<ArteProducto> ArteProducto { get; set; }
        public virtual ICollection<Cotizacion> Cotizacion { get; set; }
        public virtual ICollection<OrdenCompra> OrdenCompra { get; set; }
    }
}
