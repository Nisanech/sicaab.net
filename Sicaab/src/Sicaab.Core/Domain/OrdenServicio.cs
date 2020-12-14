using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class OrdenServicio
    {
        public int IdServicio { get; set; }
        public DateTime FechaEnvio { get; set; }
        public DateTime FehcaEntrega { get; set; }
        public int Cantidad { get; set; }
        public string Descripcion { get; set; }
        public int IdOrdenProduccion { get; set; }
        public int IdProveedor { get; set; }

        public virtual OrdenProduccion IdOrdenProduccionNavigation { get; set; }
        public virtual Proveedor IdProveedorNavigation { get; set; }
    }
}
