using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace ProjetoIntegrador.Models.Mapping
{
    public class amigoMap : EntityTypeConfiguration<amigo>
    {
        public amigoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.IDUSUARIO1, t.IDUSUARIO2 });

            // Properties
            this.Property(t => t.IDUSUARIO1)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.IDUSUARIO2)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("amigo", "projetointegrador");
            this.Property(t => t.IDUSUARIO1).HasColumnName("IDUSUARIO1");
            this.Property(t => t.IDUSUARIO2).HasColumnName("IDUSUARIO2");
            this.Property(t => t.ATIVO).HasColumnName("ATIVO");

            // Relationships
            this.HasRequired(t => t.usuario)
                .WithMany(t => t.amigoes)
                .HasForeignKey(d => d.IDUSUARIO1);
            this.HasRequired(t => t.usuario1)
                .WithMany(t => t.amigoes1)
                .HasForeignKey(d => d.IDUSUARIO2);

        }
    }
}
