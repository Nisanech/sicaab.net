using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class RelProOcompra
    {
        public int IdOrdenCompra { get; set; }
        public int IdProducto { get; set; }
        public int Cantidad { get; set; }
        public float Precio { get; set; }

        public virtual OrdenCompra IdOrdenCompraNavigation { get; set; }
        public virtual Producto IdProductoNavigation { get; set; }
    }
}
