using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class RelProdOpago
    {
        public float Precio { get; set; }
        public float Iva { get; set; }
        public float Total { get; set; }
        public int IdOrdenPago { get; set; }
        public int IdProducto { get; set; }
        public int IdRemision { get; set; }

        public virtual OrdenPago IdOrdenPagoNavigation { get; set; }
        public virtual Producto IdProductoNavigation { get; set; }
        public virtual Remision IdRemisionNavigation { get; set; }
    }
}
