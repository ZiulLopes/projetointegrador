using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using ProjetoIntegrador.Models.Mapping;

namespace ProjetoIntegrador.Models
{
    public partial class projetointegradorContext : DbContext
    {
        static projetointegradorContext()
        {
            Database.SetInitializer<projetointegradorContext>(null);
        }

        public projetointegradorContext()
            : base("Name=projetointegradorContext")
        {
        }

        public DbSet<amigo> amigoes { get; set; }
        public DbSet<arquivo> arquivoes { get; set; }
        public DbSet<endereco> enderecoes { get; set; }
        public DbSet<usuario> usuarios { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new amigoMap());
            modelBuilder.Configurations.Add(new arquivoMap());
            modelBuilder.Configurations.Add(new enderecoMap());
            modelBuilder.Configurations.Add(new usuarioMap());
        }
    }
}
