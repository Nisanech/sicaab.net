using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Procesos
    {
        public Procesos()
        {
            TiempoProcesos = new HashSet<TiempoProcesos>();
        }

        public int IdProceso { get; set; }
        public string NombreProceso { get; set; }
        public int IdCategoria { get; set; }

        public virtual CategoriaProceso IdCategoriaNavigation { get; set; }
        public virtual ICollection<TiempoProcesos> TiempoProcesos { get; set; }
    }
}
