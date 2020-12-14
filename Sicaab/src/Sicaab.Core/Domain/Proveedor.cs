using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Proveedor
    {
        public Proveedor()
        {
            OrdenServicio = new HashSet<OrdenServicio>();
            RequerimientoInterno = new HashSet<RequerimientoInterno>();
        }

        public int IdProveedor { get; set; }
        public string Nit { get; set; }
        public string RazonSocial { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public string Correo { get; set; }
        public string PersonaContacto { get; set; }
        public int IdCategoria { get; set; }

        public virtual CategoriaProveedor IdCategoriaNavigation { get; set; }
        public virtual ICollection<OrdenServicio> OrdenServicio { get; set; }
        public virtual ICollection<RequerimientoInterno> RequerimientoInterno { get; set; }
    }
}
