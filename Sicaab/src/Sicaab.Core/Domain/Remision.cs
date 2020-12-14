using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Remision
    {
        public int IdRemision { get; set; }
        public DateTime FechaEntrega { get; set; }
        public int IdOrdenProduccion { get; set; }

        public virtual OrdenProduccion IdOrdenProduccionNavigation { get; set; }
    }
}
