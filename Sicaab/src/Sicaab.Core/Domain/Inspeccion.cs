using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Inspeccion
    {
        public Inspeccion()
        {
            Reporte = new HashSet<Reporte>();
        }

        public int IdInspeccion { get; set; }
        public string Descripcion { get; set; }
        public int IdMaqEqui { get; set; }

        public virtual MaquinaEquipo IdMaqEquiNavigation { get; set; }
        public virtual ICollection<Reporte> Reporte { get; set; }
    }
}
