using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Cargo
    {
        public Cargo()
        {
            Empleado = new HashSet<Empleado>();
        }

        public int IdCargo { get; set; }
        public string NombreCargo { get; set; }
        public int IdArea { get; set; }

        public virtual Area IdAreaNavigation { get; set; }
        public virtual ICollection<Empleado> Empleado { get; set; }
    }
}
