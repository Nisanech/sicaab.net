using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class FichaTecnica
    {
        public int IdFichaTecnica { get; set; }
        public DateTime FechaAprobacion { get; set; }
        public int VersionArte { get; set; }
        public string RegistroSanitario { get; set; }
        public string CodigoBarras { get; set; }
        public int IdProducto { get; set; }

        public virtual Producto IdProductoNavigation { get; set; }
        public virtual PlaneacionProduccion PlaneacionProduccion { get; set; }
    }
}
