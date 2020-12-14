using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class MaquinaEquipo
    {
        public MaquinaEquipo()
        {
            HojaVida = new HashSet<HojaVida>();
            Inspeccion = new HashSet<Inspeccion>();
        }

        public int IdMaqEqui { get; set; }
        public string Descripcion { get; set; }
        public int IdCategoria { get; set; }
        public int IdArea { get; set; }

        public virtual Area IdAreaNavigation { get; set; }
        public virtual CategoriaMaqEqui IdCategoriaNavigation { get; set; }
        public virtual ICollection<HojaVida> HojaVida { get; set; }
        public virtual ICollection<Inspeccion> Inspeccion { get; set; }
    }
}
