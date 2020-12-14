using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class RelFtecnicaMaterial
    {
        public int IdFichaTecnica { get; set; }
        public int IdMaterial { get; set; }

        public virtual FichaTecnica IdFichaTecnicaNavigation { get; set; }
        public virtual Material IdMaterialNavigation { get; set; }
    }
}
