using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class RelFtecnicaProcesos
    {
        public int IdFichaTecnica { get; set; }
        public int IdProceso { get; set; }

        public virtual FichaTecnica IdFichaTecnicaNavigation { get; set; }
        public virtual Procesos IdProcesoNavigation { get; set; }
    }
}
