using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class CondicionPago
    {
        public CondicionPago()
        {
            OrdenCompra = new HashSet<OrdenCompra>();
            RequerimientoInterno = new HashSet<RequerimientoInterno>();
        }

        public int IdPago { get; set; }
        public string Tipo { get; set; }
        public string Plazo { get; set; }

        public virtual ICollection<OrdenCompra> OrdenCompra { get; set; }
        public virtual ICollection<RequerimientoInterno> RequerimientoInterno { get; set; }
    }
}
