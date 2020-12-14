using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Rol
    {
        public Rol()
        {
            Usuarios = new HashSet<Usuarios>();
        }

        public int IdRol { get; set; }
        public string NombreRol { get; set; }
        public string Descripcion { get; set; }
        public string Permisos { get; set; }

        public virtual ICollection<Usuarios> Usuarios { get; set; }
    }
}
