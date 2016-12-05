using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace ProjetoIntegrador.Models.Mapping
{
    public class usuarioMap : EntityTypeConfiguration<usuario>
    {
        public usuarioMap()
        {
            // Primary Key
            this.HasKey(t => t.IDUSUARIO);

            // Properties
            this.Property(t => t.NOMEUSUARIO)
                .HasMaxLength(80);

            this.Property(t => t.SEXOUSUARIO)
                .HasMaxLength(65532);

            this.Property(t => t.EMAILUSUARIO)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.SENHAUSUARIO)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.TELEFONEUSUARIO)
                .HasMaxLength(15);

            this.Property(t => t.PATHIMAGEM)
                .HasMaxLength(300);

            this.Property(t => t.OBJETIVO)
                .HasMaxLength(500);

            this.Property(t => t.PERFIL)
                .HasMaxLength(500);

            this.Property(t => t.SOBREMIM)
                .HasMaxLength(500);

            // Table & Column Mappings
            this.ToTable("usuario", "projetointegrador");
            this.Property(t => t.IDUSUARIO).HasColumnName("IDUSUARIO");
            this.Property(t => t.NOMEUSUARIO).HasColumnName("NOMEUSUARIO");
            this.Property(t => t.DATANASCUSUARIO).HasColumnName("DATANASCUSUARIO");
            this.Property(t => t.SEXOUSUARIO).HasColumnName("SEXOUSUARIO");
            this.Property(t => t.EMAILUSUARIO).HasColumnName("EMAILUSUARIO");
            this.Property(t => t.SENHAUSUARIO).HasColumnName("SENHAUSUARIO");
            this.Property(t => t.TELEFONEUSUARIO).HasColumnName("TELEFONEUSUARIO");
            this.Property(t => t.DATACADASTRO).HasColumnName("DATACADASTRO");
            this.Property(t => t.ATIVO).HasColumnName("ATIVO");
            this.Property(t => t.PATHIMAGEM).HasColumnName("PATHIMAGEM");
            this.Property(t => t.OBJETIVO).HasColumnName("OBJETIVO");
            this.Property(t => t.PERFIL).HasColumnName("PERFIL");
            this.Property(t => t.SOBREMIM).HasColumnName("SOBREMIM");
        }
    }
}
