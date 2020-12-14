using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class EstadoPedido
    {
        public int IdOrdenCompra { get; set; }
        public int IdOrdenProduccion { get; set; }

        public virtual OrdenCompra IdOrdenCompraNavigation { get; set; }
        public virtual OrdenProduccion IdOrdenProduccionNavigation { get; set; }
    }
}
