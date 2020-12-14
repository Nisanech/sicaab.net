using System;
using System.Collections.Generic;

namespace Sicaab.Core.Domain
{
    public partial class Material
    {
        public int IdMaterial { get; set; }
        public string NombreMaterial { get; set; }
        public string UnidadMedida { get; set; }
        public int IdCategoria { get; set; }

        public virtual CategoriaMaterial IdCategoriaNavigation { get; set; }
    }
}
