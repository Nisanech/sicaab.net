using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class EstadoProduccion
    {
        public EstadoProduccion()
        {
            OrdenProduccion = new HashSet<OrdenProduccion>();
        }

        public int IdEstado { get; set; }
        public string Estado { get; set; }

        public virtual ICollection<OrdenProduccion> OrdenProduccion { get; set; }
    }
}
