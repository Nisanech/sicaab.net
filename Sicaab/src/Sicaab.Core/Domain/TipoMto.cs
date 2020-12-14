using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class TipoMto
    {
        public TipoMto()
        {
            ProgramacionMto = new HashSet<ProgramacionMto>();
        }

        public int IdTipoMto { get; set; }
        public string Tipo { get; set; }

        public virtual ICollection<ProgramacionMto> ProgramacionMto { get; set; }
    }
}
