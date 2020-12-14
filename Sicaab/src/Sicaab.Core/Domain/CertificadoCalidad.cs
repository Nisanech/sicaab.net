using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class CertificadoCalidad
    {
        public int IdCertificado { get; set; }
        public DateTime Fecha { get; set; }
        public int IdOrdenProduccion { get; set; }

        public virtual OrdenProduccion IdOrdenProduccionNavigation { get; set; }
    }
}
