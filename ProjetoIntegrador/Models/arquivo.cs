using System;
using System.Collections.Generic;

namespace ProjetoIntegrador.Models
{
    public partial class arquivo
    {
        public int IDARQUIVO { get; set; }
        public Nullable<int> IDUSUARIO { get; set; }
        public Nullable<System.DateTime> DATAENVIOARQUIVO { get; set; }
        public string NOMEARQUIVO { get; set; }
        public string DESCRICAO { get; set; }
        public string PATHARQUIVO { get; set; }
        public bool ATIVO { get; set; }
        public virtual usuario usuario { get; set; }
    }
}
