using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Empleado
    {
        public Empleado()
        {
            Reporte = new HashSet<Reporte>();
        }

        public int IdEmpleado { get; set; }
        public string Documento { get; set; }
        public string PrimerNombre { get; set; }
        public string SegundoNombre { get; set; }
        public string PrimerApellido { get; set; }
        public string SegundoApellido { get; set; }
        public string Correo { get; set; }
        public string Telefono { get; set; }
        public string Direccion { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public int IdUsuarios { get; set; }
        public int IdCargo { get; set; }

        public virtual Cargo IdCargoNavigation { get; set; }
        public virtual Usuarios IdUsuariosNavigation { get; set; }
        public virtual ICollection<Reporte> Reporte { get; set; }
    }
}
