using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class RelSalmatMat
    {
        public float Cantidad { get; set; }
        public int IdMaterial { get; set; }
        public int IdSalida { get; set; }

        public virtual Material IdMaterialNavigation { get; set; }
        public virtual SalidaMaterial IdSalidaNavigation { get; set; }
    }
}
