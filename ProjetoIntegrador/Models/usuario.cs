using System;
using System.Collections.Generic;

namespace ProjetoIntegrador.Models
{
    public partial class usuario
    {
        public usuario()
        {
            this.amigoes = new List<amigo>();
            this.amigoes1 = new List<amigo>();
            this.arquivoes = new List<arquivo>();
            this.enderecoes = new List<endereco>();
        }

        public int IDUSUARIO { get; set; }
        public string NOMEUSUARIO { get; set; }
        public Nullable<System.DateTime> DATANASCUSUARIO { get; set; }
        public string SEXOUSUARIO { get; set; }
        public string EMAILUSUARIO { get; set; }
        public string SENHAUSUARIO { get; set; }
        public string TELEFONEUSUARIO { get; set; }
        public System.DateTime DATACADASTRO { get; set; }
        public bool ATIVO { get; set; }
        public string PATHIMAGEM { get; set; }
        public string OBJETIVO { get; set; }
        public string PERFIL { get; set; }
        public string SOBREMIM { get; set; }
        public virtual ICollection<amigo> amigoes { get; set; }
        public virtual ICollection<amigo> amigoes1 { get; set; }
        public virtual ICollection<arquivo> arquivoes { get; set; }
        public virtual ICollection<endereco> enderecoes { get; set; }
    }
}
