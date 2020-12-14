using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class OrdenProduccion
    {
        public OrdenProduccion()
        {
            ActaDestruccion = new HashSet<ActaDestruccion>();
            CertificadoCalidad = new HashSet<CertificadoCalidad>();
            OrdenServicio = new HashSet<OrdenServicio>();
            Remision = new HashSet<Remision>();
            SalidaMaterial = new HashSet<SalidaMaterial>();
        }

        public int IdOrdenProduccion { get; set; }
        public DateTime FechaOrden { get; set; }
        public string Lote { get; set; }
        public int Maculatura { get; set; }
        public int TamañosBuenos { get; set; }
        public int CntNoConforme { get; set; }
        public int CntAprobada { get; set; }
        public int CntEntrega { get; set; }
        public string Embalaje { get; set; }
        public int IdEstado { get; set; }
        public int IdPlaneacion { get; set; }

        public virtual EstadoProduccion IdEstadoNavigation { get; set; }
        public virtual PlaneacionProduccion IdPlaneacionNavigation { get; set; }
        public virtual ICollection<ActaDestruccion> ActaDestruccion { get; set; }
        public virtual ICollection<CertificadoCalidad> CertificadoCalidad { get; set; }
        public virtual ICollection<OrdenServicio> OrdenServicio { get; set; }
        public virtual ICollection<Remision> Remision { get; set; }
        public virtual ICollection<SalidaMaterial> SalidaMaterial { get; set; }
    }
}
