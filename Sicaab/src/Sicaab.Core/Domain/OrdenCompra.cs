using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class OrdenCompra
    {
        public OrdenCompra()
        {
            PlaneacionProduccion = new HashSet<PlaneacionProduccion>();
        }

        public int IdOrdenCompra { get; set; }
        public string NumOrden { get; set; }
        public DateTime FechaSolicitud { get; set; }
        public DateTime FechaEntrega { get; set; }
        public int IdCliente { get; set; }
        public int IdPago { get; set; }

        public virtual Clientes IdClienteNavigation { get; set; }
        public virtual CondicionPago IdPagoNavigation { get; set; }
        public virtual ICollection<PlaneacionProduccion> PlaneacionProduccion { get; set; }
    }
}
