using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class RequerimientoInterno
    {
        public RequerimientoInterno()
        {
            EntradaMaterial = new HashSet<EntradaMaterial>();
        }

        public int IdRequerimiento { get; set; }
        public string NumComprobante { get; set; }
        public DateTime FechaHora { get; set; }
        public string Estado { get; set; }
        public int IdProveedor { get; set; }
        public int IdPago { get; set; }
        public int? IdPlaneacion { get; set; }

        public virtual CondicionPago IdPagoNavigation { get; set; }
        public virtual PlaneacionProduccion IdPlaneacionNavigation { get; set; }
        public virtual Proveedor IdProveedorNavigation { get; set; }
        public virtual ICollection<EntradaMaterial> EntradaMaterial { get; set; }
    }
}
