using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class CategoriaMaterial
    {
        public CategoriaMaterial()
        {
            Material = new HashSet<Material>();
        }

        public int IdCategoria { get; set; }
        public string Categoria { get; set; }

        public virtual ICollection<Material> Material { get; set; }
    }
}
