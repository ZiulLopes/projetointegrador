using System;
using System.Collections.Generic;

namespace ProjetoIntegrador.Models
{
    public partial class endereco
    {
        public int IDENDERECO { get; set; }
        public int IDUSUARIO { get; set; }
        public string LOGRADOURO_RUA { get; set; }
        public string NUMERO { get; set; }
        public string CEP { get; set; }
        public string COMPLEMENTO { get; set; }
        public string ESTADO { get; set; }
        public string CIDADE { get; set; }
        public string BAIRRO { get; set; }
        public bool ATIVO { get; set; }
        public virtual usuario usuario { get; set; }
    }
}
