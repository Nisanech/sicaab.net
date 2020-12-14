using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Reporte
    {
        public Reporte()
        {
            ProgramacionMto = new HashSet<ProgramacionMto>();
        }

        public int IdReporte { get; set; }
        public DateTime Fecha { get; set; }
        public string Descripcion { get; set; }
        public int IdInspeccion { get; set; }
        public int IdEmpleado { get; set; }

        public virtual Empleado IdEmpleadoNavigation { get; set; }
        public virtual Inspeccion IdInspeccionNavigation { get; set; }
        public virtual ICollection<ProgramacionMto> ProgramacionMto { get; set; }
    }
}
