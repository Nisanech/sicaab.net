using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class OrdenPago
    {
        public int IdOrdenPago { get; set; }
        public DateTime Fecha { get; set; }
        public DateTime FechaVencimiento { get; set; }
    }
}
