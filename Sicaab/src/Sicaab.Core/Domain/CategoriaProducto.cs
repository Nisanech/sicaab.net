using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class CategoriaProducto
    {
        public CategoriaProducto()
        {
            Producto = new HashSet<Producto>();
        }

        public int IdCategoria { get; set; }
        public string Categoria { get; set; }

        public virtual ICollection<Producto> Producto { get; set; }
    }
}
