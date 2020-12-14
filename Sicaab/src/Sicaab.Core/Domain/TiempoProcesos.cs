using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class TiempoProcesos
    {
        public int IdTiempo { get; set; }
        public TimeSpan TiempoPreparacion { get; set; }
        public TimeSpan TiempoMuerto { get; set; }
        public TimeSpan TiempoProceso { get; set; }
        public int IdProceso { get; set; }

        public virtual Procesos IdProcesoNavigation { get; set; }
    }
}
