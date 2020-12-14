using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Usuarios
    {
        public Usuarios()
        {
            Clientes = new HashSet<Clientes>();
            Empleado = new HashSet<Empleado>();
        }

        public int IdUsuarios { get; set; }
        public byte Activo { get; set; }
        public string NombreUsuario { get; set; }
        public string Contraseña { get; set; }
        public int IdRol { get; set; }

        public virtual Rol IdRolNavigation { get; set; }
        public virtual ICollection<Clientes> Clientes { get; set; }
        public virtual ICollection<Empleado> Empleado { get; set; }
    }
}
