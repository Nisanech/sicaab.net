using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Producto
    {
        public Producto()
        {
            FichaTecnica = new HashSet<FichaTecnica>();
        }

        public int IdProducto { get; set; }
        public float VlrUnitario { get; set; }
        public int IdArte { get; set; }
        public int IdCategoria { get; set; }

        public virtual ArteProducto IdArteNavigation { get; set; }
        public virtual CategoriaProducto IdCategoriaNavigation { get; set; }
        public virtual ICollection<FichaTecnica> FichaTecnica { get; set; }
    }
}
