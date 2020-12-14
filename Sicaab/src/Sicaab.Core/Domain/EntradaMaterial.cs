using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class EntradaMaterial
    {
        public int IdEntrada { get; set; }
        public DateTime FechaIngreso { get; set; }
        public string NumFactura { get; set; }
        public int IdRequerimiento { get; set; }

        public virtual RequerimientoInterno IdRequerimientoNavigation { get; set; }
    }
}
