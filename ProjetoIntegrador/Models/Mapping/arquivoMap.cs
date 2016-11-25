using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace ProjetoIntegrador.Models.Mapping
{
    public class arquivoMap : EntityTypeConfiguration<arquivo>
    {
        public arquivoMap()
        {
            // Primary Key
            this.HasKey(t => t.IDARQUIVO);

            // Properties
            this.Property(t => t.NOMEARQUIVO)
                .HasMaxLength(50);

            this.Property(t => t.PATHARQUIVO)
                .IsRequired()
                .HasMaxLength(300);

            // Table & Column Mappings
            this.ToTable("arquivo", "projetointegrador");
            this.Property(t => t.IDARQUIVO).HasColumnName("IDARQUIVO");
            this.Property(t => t.IDUSUARIO).HasColumnName("IDUSUARIO");
            this.Property(t => t.DATAENVIOARQUIVO).HasColumnName("DATAENVIOARQUIVO");
            this.Property(t => t.NOMEARQUIVO).HasColumnName("NOMEARQUIVO");
            this.Property(t => t.PATHARQUIVO).HasColumnName("PATHARQUIVO");
            this.Property(t => t.ATIVO).HasColumnName("ATIVO");

            // Relationships
            this.HasOptional(t => t.usuario)
                .WithMany(t => t.arquivoes)
                .HasForeignKey(d => d.IDUSUARIO);

        }
    }
}
