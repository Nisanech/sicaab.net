using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class CategoriaProveedor
    {
        public CategoriaProveedor()
        {
            Proveedor = new HashSet<Proveedor>();
        }

        public int IdCategoria { get; set; }
        public string Categoria { get; set; }

        public virtual ICollection<Proveedor> Proveedor { get; set; }
    }
}
