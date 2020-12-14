using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class CategoriaProceso
    {
        public CategoriaProceso()
        {
            Procesos = new HashSet<Procesos>();
        }

        public int IdCategoria { get; set; }
        public string Categoria { get; set; }

        public virtual ICollection<Procesos> Procesos { get; set; }
    }
}
