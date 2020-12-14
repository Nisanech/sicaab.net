using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class RelOproduccionProcesos
    {
        public int IdOrdenProduccion { get; set; }
        public int IdProceso { get; set; }
        public int IdEmpleado { get; set; }

        public virtual Empleado IdEmpleadoNavigation { get; set; }
        public virtual OrdenProduccion IdOrdenProduccionNavigation { get; set; }
        public virtual Procesos IdProcesoNavigation { get; set; }
    }
}
