using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain

{
    public partial class ActaDestruccion
    {
        public int IdActa { get; set; }
        public DateTime Fecha { get; set; }
        public string Descripcion { get; set; }
        public int IdOrdenProduccion { get; set; }

        public virtual OrdenProduccion IdOrdenProduccionNavigation { get; set; }
    }
}
