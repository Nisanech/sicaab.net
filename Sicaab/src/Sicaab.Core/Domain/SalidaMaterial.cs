using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class SalidaMaterial
    {
        public int IdSalida { get; set; }
        public DateTime FechaSalida { get; set; }
        public int IdOrdenProduccion { get; set; }

        public virtual OrdenProduccion IdOrdenProduccionNavigation { get; set; }
    }
}
