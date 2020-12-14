using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class CategoriaMaqEqui
    {
        public CategoriaMaqEqui()
        {
            MaquinaEquipo = new HashSet<MaquinaEquipo>();
        }

        public int IdCategoria { get; set; }
        public string Categoria { get; set; }

        public virtual ICollection<MaquinaEquipo> MaquinaEquipo { get; set; }
    }
}
