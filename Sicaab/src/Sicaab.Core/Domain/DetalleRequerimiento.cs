using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class DetalleRequerimiento
    {
        public int IdRequerimiento { get; set; }
        public int IdMaterial { get; set; }
        public float Cantidad { get; set; }
        public float VlrUnitario { get; set; }

        public virtual Material IdMaterialNavigation { get; set; }
        public virtual RequerimientoInterno IdRequerimientoNavigation { get; set; }
    }
}
