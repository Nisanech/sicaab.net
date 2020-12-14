using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class PlaneacionProduccion
    {
        public PlaneacionProduccion()
        {
            OrdenProduccion = new HashSet<OrdenProduccion>();
            RequerimientoInterno = new HashSet<RequerimientoInterno>();
        }

        public int IdPlaneacion { get; set; }
        public DateTime FechaInicio { get; set; }
        public DateTime FechaEntrega { get; set; }
        public string MedidaCorte { get; set; }
        public int Tamaños { get; set; }
        public int Sobrante { get; set; }
        public int TotalTamaños { get; set; }
        public int TotalPliegos { get; set; }
        public int IdFichaTecnica { get; set; }
        public int IdOrdenCompra { get; set; }

        public virtual FichaTecnica IdFichaTecnicaNavigation { get; set; }
        public virtual OrdenCompra IdOrdenCompraNavigation { get; set; }
        public virtual ICollection<OrdenProduccion> OrdenProduccion { get; set; }
        public virtual ICollection<RequerimientoInterno> RequerimientoInterno { get; set; }
    }
}
