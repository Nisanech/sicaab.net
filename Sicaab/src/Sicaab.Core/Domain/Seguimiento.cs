using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Seguimiento
    {
        public int IdSeguimiento { get; set; }
        public DateTime Fecha { get; set; }
        public TimeSpan HorasRealizadas { get; set; }
        public string Responsable { get; set; }
        public string Descripcion { get; set; }
        public string Repuesto { get; set; }
        public int? Cantidad { get; set; }
        public int IdProgramacionMto { get; set; }
        public int IdHojaVida { get; set; }

        public virtual HojaVida IdHojaVidaNavigation { get; set; }
        public virtual ProgramacionMto IdProgramacionMtoNavigation { get; set; }
    }
}
