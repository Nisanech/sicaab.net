using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class RelEntmatMat
    {
        public float Cantidad { get; set; }
        public int IdMaterial { get; set; }
        public int IdEntrada { get; set; }

        public virtual EntradaMaterial IdEntradaNavigation { get; set; }
        public virtual Material IdMaterialNavigation { get; set; }
    }
}
