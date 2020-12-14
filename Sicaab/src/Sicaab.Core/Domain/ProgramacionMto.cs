using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class ProgramacionMto
    {
        public ProgramacionMto()
        {
            Seguimiento = new HashSet<Seguimiento>();
        }

        public int IdProgramacionMto { get; set; }
        public TimeSpan HorasPrevistas { get; set; }
        public string Observaciones { get; set; }
        public int IdTipoMto { get; set; }
        public int IdReporte { get; set; }

        public virtual Reporte IdReporteNavigation { get; set; }
        public virtual TipoMto IdTipoMtoNavigation { get; set; }
        public virtual ICollection<Seguimiento> Seguimiento { get; set; }
    }
}
