using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Cotizacion
    {
        public int IdCotizacion { get; set; }
        public DateTime Fecha { get; set; }
        public string Descripcion { get; set; }
        public string Sustrato { get; set; }
        public string Pantones { get; set; }
        public int CntInferior { get; set; }
        public float VunitarioInferior { get; set; }
        public float VtotalInferior { get; set; }
        public int? CntSuperior { get; set; }
        public float? VunitarioSuperior { get; set; }
        public float? VtotalSuperior { get; set; }
        public int IdCliente { get; set; }
        public int? IdArte { get; set; }

        public virtual ArteProducto IdArteNavigation { get; set; }
        public virtual Clientes IdClienteNavigation { get; set; }
    }
}
