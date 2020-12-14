using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class HojaVida
    {
        public HojaVida()
        {
            Seguimiento = new HashSet<Seguimiento>();
        }

        public int IdHojaVida { get; set; }
        public string Fabricante { get; set; }
        public string Modelo { get; set; }
        public string Peso { get; set; }
        public string Marca { get; set; }
        public string Funcion { get; set; }
        public string Alto { get; set; }
        public string Largo { get; set; }
        public string Ancho { get; set; }
        public string Caracteristicas { get; set; }
        public string Año { get; set; }
        public int IdMaqEqui { get; set; }

        public virtual MaquinaEquipo IdMaqEquiNavigation { get; set; }
        public virtual ICollection<Seguimiento> Seguimiento { get; set; }
    }
}
