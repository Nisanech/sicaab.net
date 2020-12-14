using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Area
    {
        public Area()
        {
            Cargo = new HashSet<Cargo>();
            MaquinaEquipo = new HashSet<MaquinaEquipo>();
        }

        public int IdArea { get; set; }
        public string NombreArea { get; set; }

        public virtual ICollection<Cargo> Cargo { get; set; }
        public virtual ICollection<MaquinaEquipo> MaquinaEquipo { get; set; }
    }
}
