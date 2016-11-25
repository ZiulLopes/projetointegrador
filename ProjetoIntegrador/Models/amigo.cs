using System;
using System.Collections.Generic;

namespace ProjetoIntegrador.Models
{
    public partial class amigo
    {
        public int IDUSUARIO1 { get; set; }
        public int IDUSUARIO2 { get; set; }
        public bool ATIVO { get; set; }
        public virtual usuario usuario { get; set; }
        public virtual usuario usuario1 { get; set; }
    }
}
