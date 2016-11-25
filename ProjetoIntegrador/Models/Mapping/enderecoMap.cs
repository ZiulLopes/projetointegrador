using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace ProjetoIntegrador.Models.Mapping
{
    public class enderecoMap : EntityTypeConfiguration<endereco>
    {
        public enderecoMap()
        {
            // Primary Key
            this.HasKey(t => t.IDENDERECO);

            // Properties
            this.Property(t => t.LOGRADOURO_RUA)
                .IsRequired()
                .HasMaxLength(300);

            this.Property(t => t.NUMERO)
                .IsRequired()
                .HasMaxLength(5);

            this.Property(t => t.CEP)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.COMPLEMENTO)
                .HasMaxLength(100);

            this.Property(t => t.ESTADO)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.CIDADE)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.BAIRRO)
                .IsRequired()
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("endereco", "projetointegrador");
            this.Property(t => t.IDENDERECO).HasColumnName("IDENDERECO");
            this.Property(t => t.IDUSUARIO).HasColumnName("IDUSUARIO");
            this.Property(t => t.LOGRADOURO_RUA).HasColumnName("LOGRADOURO_RUA");
            this.Property(t => t.NUMERO).HasColumnName("NUMERO");
            this.Property(t => t.CEP).HasColumnName("CEP");
            this.Property(t => t.COMPLEMENTO).HasColumnName("COMPLEMENTO");
            this.Property(t => t.ESTADO).HasColumnName("ESTADO");
            this.Property(t => t.CIDADE).HasColumnName("CIDADE");
            this.Property(t => t.BAIRRO).HasColumnName("BAIRRO");
            this.Property(t => t.ATIVO).HasColumnName("ATIVO");

            // Relationships
            this.HasRequired(t => t.usuario)
                .WithMany(t => t.enderecoes)
                .HasForeignKey(d => d.IDUSUARIO);

        }
    }
}
