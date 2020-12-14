using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Sicaab.Infrastructure;
using Sicaab.Core.Domain;

namespace Sicaab.Infrastructure.Data
{
    public partial class SicaabDbContext : DbContext
    {
        public SicaabDbContext()
        {
        }

        public SicaabDbContext(DbContextOptions<SicaabDbContext> options)
            : base(options)
        {
        }

        public virtual DbSet<ActaDestruccion> ActaDestruccion { get; set; }
        public virtual DbSet<Area> Area { get; set; }
        public virtual DbSet<ArteProducto> ArteProducto { get; set; }
        public virtual DbSet<Cargo> Cargo { get; set; }
        public virtual DbSet<CategoriaMaqEqui> CategoriaMaqEqui { get; set; }
        public virtual DbSet<CategoriaMaterial> CategoriaMaterial { get; set; }
        public virtual DbSet<CategoriaProceso> CategoriaProceso { get; set; }
        public virtual DbSet<CategoriaProducto> CategoriaProducto { get; set; }
        public virtual DbSet<CategoriaProveedor> CategoriaProveedor { get; set; }
        public virtual DbSet<CertificadoCalidad> CertificadoCalidad { get; set; }
        public virtual DbSet<Clientes> Clientes { get; set; }
        public virtual DbSet<CondicionPago> CondicionPago { get; set; }
        public virtual DbSet<Cotizacion> Cotizacion { get; set; }
        public virtual DbSet<DetalleRequerimiento> DetalleRequerimiento { get; set; }
        public virtual DbSet<Empleado> Empleado { get; set; }
        public virtual DbSet<EntradaMaterial> EntradaMaterial { get; set; }
        public virtual DbSet<EstadoPedido> EstadoPedido { get; set; }
        public virtual DbSet<EstadoProduccion> EstadoProduccion { get; set; }
        public virtual DbSet<FailedJobs> FailedJobs { get; set; }
        public virtual DbSet<FichaTecnica> FichaTecnica { get; set; }
        public virtual DbSet<HojaVida> HojaVida { get; set; }
        public virtual DbSet<Inspeccion> Inspeccion { get; set; }
        public virtual DbSet<MaquinaEquipo> MaquinaEquipo { get; set; }
        public virtual DbSet<Material> Material { get; set; }
        public virtual DbSet<Migrations> Migrations { get; set; }
        public virtual DbSet<OrdenCompra> OrdenCompra { get; set; }
        public virtual DbSet<OrdenPago> OrdenPago { get; set; }
        public virtual DbSet<OrdenProduccion> OrdenProduccion { get; set; }
        public virtual DbSet<OrdenServicio> OrdenServicio { get; set; }
        public virtual DbSet<PlaneacionProduccion> PlaneacionProduccion { get; set; }
        public virtual DbSet<Procesos> Procesos { get; set; }
        public virtual DbSet<Producto> Producto { get; set; }
        public virtual DbSet<ProgramacionMto> ProgramacionMto { get; set; }
        public virtual DbSet<Proveedor> Proveedor { get; set; }
        public virtual DbSet<RelEntmatMat> RelEntmatMat { get; set; }
        public virtual DbSet<RelFtecnicaMaterial> RelFtecnicaMaterial { get; set; }
        public virtual DbSet<RelFtecnicaProcesos> RelFtecnicaProcesos { get; set; }
        public virtual DbSet<RelOproduccionProcesos> RelOproduccionProcesos { get; set; }
        public virtual DbSet<RelProOcompra> RelProOcompra { get; set; }
        public virtual DbSet<RelProdOpago> RelProdOpago { get; set; }
        public virtual DbSet<RelSalmatMat> RelSalmatMat { get; set; }
        public virtual DbSet<Remision> Remision { get; set; }
        public virtual DbSet<Reporte> Reporte { get; set; }
        public virtual DbSet<RequerimientoInterno> RequerimientoInterno { get; set; }
        public virtual DbSet<Rol> Rol { get; set; }
        public virtual DbSet<SalidaMaterial> SalidaMaterial { get; set; }
        public virtual DbSet<Seguimiento> Seguimiento { get; set; }
        public virtual DbSet<TiempoProcesos> TiempoProcesos { get; set; }
        public virtual DbSet<TipoMto> TipoMto { get; set; }
        public virtual DbSet<Users> Users { get; set; }
        public virtual DbSet<Usuarios> Usuarios { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
////            if (!optionsBuilder.IsConfigured)
////            {
////#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
////                optionsBuilder.UseMySQL("database=bd_sicaab;server=localhost;port=3306;user id=root;password=");
////            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ActaDestruccion>(entity =>
            {
                entity.HasKey(e => e.IdActa)
                    .HasName("PRIMARY");

                entity.ToTable("acta_destruccion");

                entity.HasIndex(e => e.IdOrdenProduccion)
                    .HasName("id_orden_produccion");

                entity.Property(e => e.IdActa)
                    .HasColumnName("id_acta")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Descripcion)
                    .IsRequired()
                    .HasColumnName("descripcion");

                entity.Property(e => e.Fecha)
                    .HasColumnName("fecha")
                    .HasColumnType("date");

                entity.Property(e => e.IdOrdenProduccion)
                    .HasColumnName("id_orden_produccion")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdOrdenProduccionNavigation)
                    .WithMany(p => p.ActaDestruccion)
                    .HasForeignKey(d => d.IdOrdenProduccion)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("acta_destruccion_ibfk_1");
            });

            modelBuilder.Entity<Area>(entity =>
            {
                entity.HasKey(e => e.IdArea)
                    .HasName("PRIMARY");

                entity.ToTable("area");

                entity.Property(e => e.IdArea)
                    .HasColumnName("id_area")
                    .HasColumnType("int(11)");

                entity.Property(e => e.NombreArea)
                    .IsRequired()
                    .HasColumnName("nombre_area")
                    .HasMaxLength(45);
            });

            modelBuilder.Entity<ArteProducto>(entity =>
            {
                entity.HasKey(e => e.IdArte)
                    .HasName("PRIMARY");

                entity.ToTable("arte_producto");

                entity.HasIndex(e => e.IdCliente)
                    .HasName("id_cliente");

                entity.Property(e => e.IdArte)
                    .HasColumnName("id_arte")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Alto)
                    .IsRequired()
                    .HasColumnName("alto")
                    .HasMaxLength(45);

                entity.Property(e => e.Ancho)
                    .HasColumnName("ancho")
                    .HasMaxLength(45)
                    .HasDefaultValueSql("'NULL'");

                entity.Property(e => e.Estado)
                    .IsRequired()
                    .HasColumnName("estado")
                    .HasMaxLength(45);

                entity.Property(e => e.IdCliente)
                    .HasColumnName("id_cliente")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Imagen)
                    .IsRequired()
                    .HasColumnName("imagen")
                    .HasMaxLength(45);

                entity.Property(e => e.Largo)
                    .IsRequired()
                    .HasColumnName("largo")
                    .HasMaxLength(45);

                entity.Property(e => e.NombreProducto)
                    .IsRequired()
                    .HasColumnName("nombre_producto")
                    .HasMaxLength(45);

                entity.HasOne(d => d.IdClienteNavigation)
                    .WithMany(p => p.ArteProducto)
                    .HasForeignKey(d => d.IdCliente)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("arte_producto_ibfk_1");
            });

            modelBuilder.Entity<Cargo>(entity =>
            {
                entity.HasKey(e => e.IdCargo)
                    .HasName("PRIMARY");

                entity.ToTable("cargo");

                entity.HasIndex(e => e.IdArea)
                    .HasName("id_area");

                entity.Property(e => e.IdCargo)
                    .HasColumnName("id_cargo")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdArea)
                    .HasColumnName("id_area")
                    .HasColumnType("int(11)");

                entity.Property(e => e.NombreCargo)
                    .IsRequired()
                    .HasColumnName("nombre_cargo")
                    .HasMaxLength(45);

                entity.HasOne(d => d.IdAreaNavigation)
                    .WithMany(p => p.Cargo)
                    .HasForeignKey(d => d.IdArea)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("cargo_ibfk_1");
            });

            modelBuilder.Entity<CategoriaMaqEqui>(entity =>
            {
                entity.HasKey(e => e.IdCategoria)
                    .HasName("PRIMARY");

                entity.ToTable("categoria_maq_equi");

                entity.Property(e => e.IdCategoria)
                    .HasColumnName("id_categoria")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Categoria)
                    .IsRequired()
                    .HasColumnName("categoria")
                    .HasMaxLength(45);
            });

            modelBuilder.Entity<CategoriaMaterial>(entity =>
            {
                entity.HasKey(e => e.IdCategoria)
                    .HasName("PRIMARY");

                entity.ToTable("categoria_material");

                entity.Property(e => e.IdCategoria)
                    .HasColumnName("id_categoria")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Categoria)
                    .IsRequired()
                    .HasColumnName("categoria")
                    .HasMaxLength(45);
            });

            modelBuilder.Entity<CategoriaProceso>(entity =>
            {
                entity.HasKey(e => e.IdCategoria)
                    .HasName("PRIMARY");

                entity.ToTable("categoria_proceso");

                entity.Property(e => e.IdCategoria)
                    .HasColumnName("id_categoria")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Categoria)
                    .IsRequired()
                    .HasColumnName("categoria")
                    .HasMaxLength(45);
            });

            modelBuilder.Entity<CategoriaProducto>(entity =>
            {
                entity.HasKey(e => e.IdCategoria)
                    .HasName("PRIMARY");

                entity.ToTable("categoria_producto");

                entity.Property(e => e.IdCategoria)
                    .HasColumnName("id_categoria")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Categoria)
                    .IsRequired()
                    .HasColumnName("categoria")
                    .HasMaxLength(45);
            });

            modelBuilder.Entity<CategoriaProveedor>(entity =>
            {
                entity.HasKey(e => e.IdCategoria)
                    .HasName("PRIMARY");

                entity.ToTable("categoria_proveedor");

                entity.Property(e => e.IdCategoria)
                    .HasColumnName("id_categoria")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Categoria)
                    .IsRequired()
                    .HasColumnName("categoria")
                    .HasMaxLength(45);
            });

            modelBuilder.Entity<CertificadoCalidad>(entity =>
            {
                entity.HasKey(e => e.IdCertificado)
                    .HasName("PRIMARY");

                entity.ToTable("certificado_calidad");

                entity.HasIndex(e => e.IdOrdenProduccion)
                    .HasName("id_orden_produccion");

                entity.Property(e => e.IdCertificado)
                    .HasColumnName("id_certificado")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Fecha)
                    .HasColumnName("fecha")
                    .HasColumnType("date");

                entity.Property(e => e.IdOrdenProduccion)
                    .HasColumnName("id_orden_produccion")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdOrdenProduccionNavigation)
                    .WithMany(p => p.CertificadoCalidad)
                    .HasForeignKey(d => d.IdOrdenProduccion)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("certificado_calidad_ibfk_1");
            });

            modelBuilder.Entity<Clientes>(entity =>
            {
                entity.HasKey(e => e.IdCliente)
                    .HasName("PRIMARY");

                entity.ToTable("clientes");

                entity.HasIndex(e => e.IdUsuarios)
                    .HasName("id_usuarios");

                entity.Property(e => e.IdCliente)
                    .HasColumnName("id_cliente")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Ciudad)
                    .IsRequired()
                    .HasColumnName("ciudad")
                    .HasMaxLength(45);

                entity.Property(e => e.Correo)
                    .IsRequired()
                    .HasColumnName("correo")
                    .HasMaxLength(45);

                entity.Property(e => e.Direccion)
                    .IsRequired()
                    .HasColumnName("direccion")
                    .HasMaxLength(45);

                entity.Property(e => e.IdUsuarios)
                    .HasColumnName("id_usuarios")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Nit)
                    .IsRequired()
                    .HasColumnName("nit")
                    .HasMaxLength(45);

                entity.Property(e => e.PersonaContacto)
                    .IsRequired()
                    .HasColumnName("persona_contacto")
                    .HasMaxLength(45);

                entity.Property(e => e.RazonSocial)
                    .IsRequired()
                    .HasColumnName("razon_social")
                    .HasMaxLength(45);

                entity.Property(e => e.Telefono)
                    .IsRequired()
                    .HasColumnName("telefono")
                    .HasMaxLength(45);

                entity.HasOne(d => d.IdUsuariosNavigation)
                    .WithMany(p => p.Clientes)
                    .HasForeignKey(d => d.IdUsuarios)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("clientes_ibfk_1");
            });

            modelBuilder.Entity<CondicionPago>(entity =>
            {
                entity.HasKey(e => e.IdPago)
                    .HasName("PRIMARY");

                entity.ToTable("condicion_pago");

                entity.Property(e => e.IdPago)
                    .HasColumnName("id_pago")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Plazo)
                    .IsRequired()
                    .HasColumnName("plazo")
                    .HasMaxLength(45);

                entity.Property(e => e.Tipo)
                    .IsRequired()
                    .HasColumnName("tipo")
                    .HasMaxLength(45);
            });

            modelBuilder.Entity<Cotizacion>(entity =>
            {
                entity.HasKey(e => e.IdCotizacion)
                    .HasName("PRIMARY");

                entity.ToTable("cotizacion");

                entity.HasIndex(e => e.IdArte)
                    .HasName("id_arte");

                entity.HasIndex(e => e.IdCliente)
                    .HasName("id_cliente");

                entity.Property(e => e.IdCotizacion)
                    .HasColumnName("id_cotizacion")
                    .HasColumnType("int(11)");

                entity.Property(e => e.CntInferior)
                    .HasColumnName("cnt_inferior")
                    .HasColumnType("int(11)");

                entity.Property(e => e.CntSuperior)
                    .HasColumnName("cnt_superior")
                    .HasColumnType("int(11)")
                    .HasDefaultValueSql("'NULL'");

                entity.Property(e => e.Descripcion)
                    .IsRequired()
                    .HasColumnName("descripcion");

                entity.Property(e => e.Fecha)
                    .HasColumnName("fecha")
                    .HasColumnType("date");

                entity.Property(e => e.IdArte)
                    .HasColumnName("id_arte")
                    .HasColumnType("int(11)")
                    .HasDefaultValueSql("'NULL'");

                entity.Property(e => e.IdCliente)
                    .HasColumnName("id_cliente")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Pantones)
                    .IsRequired()
                    .HasColumnName("pantones")
                    .HasMaxLength(45);

                entity.Property(e => e.Sustrato)
                    .IsRequired()
                    .HasColumnName("sustrato")
                    .HasMaxLength(45);

                entity.Property(e => e.VtotalInferior).HasColumnName("vtotal_inferior");

                entity.Property(e => e.VtotalSuperior)
                    .HasColumnName("vtotal_superior")
                    .HasDefaultValueSql("'NULL'");

                entity.Property(e => e.VunitarioInferior).HasColumnName("vunitario_inferior");

                entity.Property(e => e.VunitarioSuperior)
                    .HasColumnName("vunitario_superior")
                    .HasDefaultValueSql("'NULL'");

                entity.HasOne(d => d.IdArteNavigation)
                    .WithMany(p => p.Cotizacion)
                    .HasForeignKey(d => d.IdArte)
                    .HasConstraintName("cotizacion_ibfk_2");

                entity.HasOne(d => d.IdClienteNavigation)
                    .WithMany(p => p.Cotizacion)
                    .HasForeignKey(d => d.IdCliente)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("cotizacion_ibfk_1");
            });

            modelBuilder.Entity<DetalleRequerimiento>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("detalle_requerimiento");

                entity.HasIndex(e => e.IdMaterial)
                    .HasName("id_material");

                entity.HasIndex(e => e.IdRequerimiento)
                    .HasName("id_requerimiento");

                entity.Property(e => e.Cantidad).HasColumnName("cantidad");

                entity.Property(e => e.IdMaterial)
                    .HasColumnName("id_material")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdRequerimiento)
                    .HasColumnName("id_requerimiento")
                    .HasColumnType("int(11)");

                entity.Property(e => e.VlrUnitario).HasColumnName("vlr_unitario");

                entity.HasOne(d => d.IdMaterialNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdMaterial)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("detalle_requerimiento_ibfk_1");

                entity.HasOne(d => d.IdRequerimientoNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdRequerimiento)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("detalle_requerimiento_ibfk_2");
            });

            modelBuilder.Entity<Empleado>(entity =>
            {
                entity.HasKey(e => e.IdEmpleado)
                    .HasName("PRIMARY");

                entity.ToTable("empleado");

                entity.HasIndex(e => e.IdCargo)
                    .HasName("id_cargo");

                entity.HasIndex(e => e.IdUsuarios)
                    .HasName("id_usuarios");

                entity.Property(e => e.IdEmpleado)
                    .HasColumnName("id_empleado")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Correo)
                    .HasColumnName("correo")
                    .HasMaxLength(45)
                    .HasDefaultValueSql("'NULL'");

                entity.Property(e => e.Direccion)
                    .IsRequired()
                    .HasColumnName("direccion")
                    .HasMaxLength(45);

                entity.Property(e => e.Documento)
                    .IsRequired()
                    .HasColumnName("documento")
                    .HasMaxLength(45);

                entity.Property(e => e.FechaNacimiento)
                    .HasColumnName("fecha_nacimiento")
                    .HasColumnType("date");

                entity.Property(e => e.IdCargo)
                    .HasColumnName("id_cargo")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdUsuarios)
                    .HasColumnName("id_usuarios")
                    .HasColumnType("int(11)");

                entity.Property(e => e.PrimerApellido)
                    .IsRequired()
                    .HasColumnName("primer_apellido")
                    .HasMaxLength(45);

                entity.Property(e => e.PrimerNombre)
                    .IsRequired()
                    .HasColumnName("primer_nombre")
                    .HasMaxLength(45);

                entity.Property(e => e.SegundoApellido)
                    .IsRequired()
                    .HasColumnName("segundo_apellido")
                    .HasMaxLength(45);

                entity.Property(e => e.SegundoNombre)
                    .HasColumnName("segundo_nombre")
                    .HasMaxLength(45)
                    .HasDefaultValueSql("'NULL'");

                entity.Property(e => e.Telefono)
                    .IsRequired()
                    .HasColumnName("telefono")
                    .HasMaxLength(45);

                entity.HasOne(d => d.IdCargoNavigation)
                    .WithMany(p => p.Empleado)
                    .HasForeignKey(d => d.IdCargo)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("empleado_ibfk_2");

                entity.HasOne(d => d.IdUsuariosNavigation)
                    .WithMany(p => p.Empleado)
                    .HasForeignKey(d => d.IdUsuarios)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("empleado_ibfk_1");
            });

            modelBuilder.Entity<EntradaMaterial>(entity =>
            {
                entity.HasKey(e => e.IdEntrada)
                    .HasName("PRIMARY");

                entity.ToTable("entrada_material");

                entity.HasIndex(e => e.IdRequerimiento)
                    .HasName("id_requerimiento");

                entity.Property(e => e.IdEntrada)
                    .HasColumnName("id_entrada")
                    .HasColumnType("int(11)");

                entity.Property(e => e.FechaIngreso)
                    .HasColumnName("fecha_ingreso")
                    .HasColumnType("date");

                entity.Property(e => e.IdRequerimiento)
                    .HasColumnName("id_requerimiento")
                    .HasColumnType("int(11)");

                entity.Property(e => e.NumFactura)
                    .IsRequired()
                    .HasColumnName("num_factura")
                    .HasMaxLength(45);

                entity.HasOne(d => d.IdRequerimientoNavigation)
                    .WithMany(p => p.EntradaMaterial)
                    .HasForeignKey(d => d.IdRequerimiento)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("entrada_material_ibfk_1");
            });

            modelBuilder.Entity<EstadoPedido>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("estado_pedido");

                entity.HasIndex(e => e.IdOrdenCompra)
                    .HasName("id_orden_compra");

                entity.HasIndex(e => e.IdOrdenProduccion)
                    .HasName("id_orden_produccion");

                entity.Property(e => e.IdOrdenCompra)
                    .HasColumnName("id_orden_compra")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdOrdenProduccion)
                    .HasColumnName("id_orden_produccion")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdOrdenCompraNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdOrdenCompra)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("estado_pedido_ibfk_1");

                entity.HasOne(d => d.IdOrdenProduccionNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdOrdenProduccion)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("estado_pedido_ibfk_2");
            });

            modelBuilder.Entity<EstadoProduccion>(entity =>
            {
                entity.HasKey(e => e.IdEstado)
                    .HasName("PRIMARY");

                entity.ToTable("estado_produccion");

                entity.Property(e => e.IdEstado)
                    .HasColumnName("id_estado")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Estado)
                    .IsRequired()
                    .HasColumnName("estado")
                    .HasMaxLength(45);
            });

            modelBuilder.Entity<FailedJobs>(entity =>
            {
                entity.ToTable("failed_jobs");

                entity.Property(e => e.Id)
                    .HasColumnName("id")
                    .HasColumnType("bigint(20) unsigned");

                entity.Property(e => e.Connection)
                    .IsRequired()
                    .HasColumnName("connection");

                entity.Property(e => e.Exception)
                    .IsRequired()
                    .HasColumnName("exception")
                    .HasColumnType("longtext");

                entity.Property(e => e.Payload)
                    .IsRequired()
                    .HasColumnName("payload")
                    .HasColumnType("longtext");

                entity.Property(e => e.Queue)
                    .IsRequired()
                    .HasColumnName("queue");
            });

            modelBuilder.Entity<FichaTecnica>(entity =>
            {
                entity.HasKey(e => e.IdFichaTecnica)
                    .HasName("PRIMARY");

                entity.ToTable("ficha_tecnica");

                entity.HasIndex(e => e.IdProducto)
                    .HasName("id_producto");

                entity.Property(e => e.IdFichaTecnica)
                    .HasColumnName("id_ficha_tecnica")
                    .HasColumnType("int(11)");

                entity.Property(e => e.CodigoBarras)
                    .HasColumnName("codigo_barras")
                    .HasMaxLength(45)
                    .HasDefaultValueSql("'NULL'");

                entity.Property(e => e.FechaAprobacion)
                    .HasColumnName("fecha_aprobacion")
                    .HasColumnType("date");

                entity.Property(e => e.IdProducto)
                    .HasColumnName("id_producto")
                    .HasColumnType("int(11)");

                entity.Property(e => e.RegistroSanitario)
                    .HasColumnName("registro_sanitario")
                    .HasMaxLength(45)
                    .HasDefaultValueSql("'NULL'");

                entity.Property(e => e.VersionArte)
                    .HasColumnName("version_arte")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdProductoNavigation)
                    .WithMany(p => p.FichaTecnica)
                    .HasForeignKey(d => d.IdProducto)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("ficha_tecnica_ibfk_3");
            });

            modelBuilder.Entity<HojaVida>(entity =>
            {
                entity.HasKey(e => e.IdHojaVida)
                    .HasName("PRIMARY");

                entity.ToTable("hoja_vida");

                entity.HasIndex(e => e.IdMaqEqui)
                    .HasName("id_maq_equi");

                entity.Property(e => e.IdHojaVida)
                    .HasColumnName("id_hoja_vida")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Alto)
                    .IsRequired()
                    .HasColumnName("alto")
                    .HasMaxLength(45);

                entity.Property(e => e.Ancho)
                    .IsRequired()
                    .HasColumnName("ancho")
                    .HasMaxLength(45);

                entity.Property(e => e.Año)
                    .IsRequired()
                    .HasColumnName("año")
                    .HasMaxLength(8);

                entity.Property(e => e.Caracteristicas)
                    .IsRequired()
                    .HasColumnName("caracteristicas");

                entity.Property(e => e.Fabricante)
                    .IsRequired()
                    .HasColumnName("fabricante")
                    .HasMaxLength(45);

                entity.Property(e => e.Funcion)
                    .IsRequired()
                    .HasColumnName("funcion");

                entity.Property(e => e.IdMaqEqui)
                    .HasColumnName("id_maq_equi")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Largo)
                    .IsRequired()
                    .HasColumnName("largo")
                    .HasMaxLength(45);

                entity.Property(e => e.Marca)
                    .IsRequired()
                    .HasColumnName("marca")
                    .HasMaxLength(45);

                entity.Property(e => e.Modelo)
                    .IsRequired()
                    .HasColumnName("modelo")
                    .HasMaxLength(45);

                entity.Property(e => e.Peso)
                    .IsRequired()
                    .HasColumnName("peso")
                    .HasMaxLength(45);

                entity.HasOne(d => d.IdMaqEquiNavigation)
                    .WithMany(p => p.HojaVida)
                    .HasForeignKey(d => d.IdMaqEqui)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("hoja_vida_ibfk_1");
            });

            modelBuilder.Entity<Inspeccion>(entity =>
            {
                entity.HasKey(e => e.IdInspeccion)
                    .HasName("PRIMARY");

                entity.ToTable("inspeccion");

                entity.HasIndex(e => e.IdMaqEqui)
                    .HasName("id_maq_equi");

                entity.Property(e => e.IdInspeccion)
                    .HasColumnName("id_inspeccion")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Descripcion)
                    .IsRequired()
                    .HasColumnName("descripcion");

                entity.Property(e => e.IdMaqEqui)
                    .HasColumnName("id_maq_equi")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdMaqEquiNavigation)
                    .WithMany(p => p.Inspeccion)
                    .HasForeignKey(d => d.IdMaqEqui)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("inspeccion_ibfk_1");
            });

            modelBuilder.Entity<MaquinaEquipo>(entity =>
            {
                entity.HasKey(e => e.IdMaqEqui)
                    .HasName("PRIMARY");

                entity.ToTable("maquina_equipo");

                entity.HasIndex(e => e.IdArea)
                    .HasName("id_area");

                entity.HasIndex(e => e.IdCategoria)
                    .HasName("id_categoria");

                entity.Property(e => e.IdMaqEqui)
                    .HasColumnName("id_maq_equi")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Descripcion)
                    .IsRequired()
                    .HasColumnName("descripcion")
                    .HasMaxLength(45);

                entity.Property(e => e.IdArea)
                    .HasColumnName("id_area")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdCategoria)
                    .HasColumnName("id_categoria")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdAreaNavigation)
                    .WithMany(p => p.MaquinaEquipo)
                    .HasForeignKey(d => d.IdArea)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("maquina_equipo_ibfk_2");

                entity.HasOne(d => d.IdCategoriaNavigation)
                    .WithMany(p => p.MaquinaEquipo)
                    .HasForeignKey(d => d.IdCategoria)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("maquina_equipo_ibfk_1");
            });

            modelBuilder.Entity<Material>(entity =>
            {
                entity.HasKey(e => e.IdMaterial)
                    .HasName("PRIMARY");

                entity.ToTable("material");

                entity.HasIndex(e => e.IdCategoria)
                    .HasName("id_categoria");

                entity.Property(e => e.IdMaterial)
                    .HasColumnName("id_material")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdCategoria)
                    .HasColumnName("id_categoria")
                    .HasColumnType("int(11)");

                entity.Property(e => e.NombreMaterial)
                    .IsRequired()
                    .HasColumnName("nombre_material")
                    .HasMaxLength(45);

                entity.Property(e => e.UnidadMedida)
                    .IsRequired()
                    .HasColumnName("unidad_medida")
                    .HasMaxLength(45);

                entity.HasOne(d => d.IdCategoriaNavigation)
                    .WithMany(p => p.Material)
                    .HasForeignKey(d => d.IdCategoria)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("material_ibfk_1");
            });

            modelBuilder.Entity<Migrations>(entity =>
            {
                entity.ToTable("migrations");

                entity.Property(e => e.Id)
                    .HasColumnName("id")
                    .HasColumnType("int(10) unsigned");

                entity.Property(e => e.Batch)
                    .HasColumnName("batch")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Migration)
                    .IsRequired()
                    .HasColumnName("migration")
                    .HasMaxLength(255);
            });

            modelBuilder.Entity<OrdenCompra>(entity =>
            {
                entity.HasKey(e => e.IdOrdenCompra)
                    .HasName("PRIMARY");

                entity.ToTable("orden_compra");

                entity.HasIndex(e => e.IdCliente)
                    .HasName("id_cliente");

                entity.HasIndex(e => e.IdPago)
                    .HasName("id_pago");

                entity.Property(e => e.IdOrdenCompra)
                    .HasColumnName("id_orden_compra")
                    .HasColumnType("int(11)");

                entity.Property(e => e.FechaEntrega)
                    .HasColumnName("fecha_entrega")
                    .HasColumnType("date");

                entity.Property(e => e.FechaSolicitud)
                    .HasColumnName("fecha_solicitud")
                    .HasColumnType("date");

                entity.Property(e => e.IdCliente)
                    .HasColumnName("id_cliente")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdPago)
                    .HasColumnName("id_pago")
                    .HasColumnType("int(11)");

                entity.Property(e => e.NumOrden)
                    .IsRequired()
                    .HasColumnName("num_orden")
                    .HasMaxLength(45);

                entity.HasOne(d => d.IdClienteNavigation)
                    .WithMany(p => p.OrdenCompra)
                    .HasForeignKey(d => d.IdCliente)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("orden_compra_ibfk_1");

                entity.HasOne(d => d.IdPagoNavigation)
                    .WithMany(p => p.OrdenCompra)
                    .HasForeignKey(d => d.IdPago)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("orden_compra_ibfk_2");
            });

            modelBuilder.Entity<OrdenPago>(entity =>
            {
                entity.HasKey(e => e.IdOrdenPago)
                    .HasName("PRIMARY");

                entity.ToTable("orden_pago");

                entity.Property(e => e.IdOrdenPago)
                    .HasColumnName("id_orden_pago")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Fecha)
                    .HasColumnName("fecha")
                    .HasColumnType("date");

                entity.Property(e => e.FechaVencimiento)
                    .HasColumnName("fecha_vencimiento")
                    .HasColumnType("date");
            });

            modelBuilder.Entity<OrdenProduccion>(entity =>
            {
                entity.HasKey(e => e.IdOrdenProduccion)
                    .HasName("PRIMARY");

                entity.ToTable("orden_produccion");

                entity.HasIndex(e => e.IdEstado)
                    .HasName("id_estado");

                entity.HasIndex(e => e.IdPlaneacion)
                    .HasName("id_planeacion");

                entity.Property(e => e.IdOrdenProduccion)
                    .HasColumnName("id_orden_produccion")
                    .HasColumnType("int(11)");

                entity.Property(e => e.CntAprobada)
                    .HasColumnName("cnt_aprobada")
                    .HasColumnType("int(11)");

                entity.Property(e => e.CntEntrega)
                    .HasColumnName("cnt_entrega")
                    .HasColumnType("int(11)");

                entity.Property(e => e.CntNoConforme)
                    .HasColumnName("cnt_no_conforme")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Embalaje)
                    .IsRequired()
                    .HasColumnName("embalaje")
                    .HasMaxLength(45);

                entity.Property(e => e.FechaOrden)
                    .HasColumnName("fecha_orden")
                    .HasColumnType("date");

                entity.Property(e => e.IdEstado)
                    .HasColumnName("id_estado")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdPlaneacion)
                    .HasColumnName("id_planeacion")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Lote)
                    .IsRequired()
                    .HasColumnName("lote")
                    .HasMaxLength(45);

                entity.Property(e => e.Maculatura)
                    .HasColumnName("maculatura")
                    .HasColumnType("int(11)");

                entity.Property(e => e.TamañosBuenos)
                    .HasColumnName("tamaños_buenos")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdEstadoNavigation)
                    .WithMany(p => p.OrdenProduccion)
                    .HasForeignKey(d => d.IdEstado)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("orden_produccion_ibfk_1");

                entity.HasOne(d => d.IdPlaneacionNavigation)
                    .WithMany(p => p.OrdenProduccion)
                    .HasForeignKey(d => d.IdPlaneacion)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("orden_produccion_ibfk_2");
            });

            modelBuilder.Entity<OrdenServicio>(entity =>
            {
                entity.HasKey(e => e.IdServicio)
                    .HasName("PRIMARY");

                entity.ToTable("orden_servicio");

                entity.HasIndex(e => e.IdOrdenProduccion)
                    .HasName("id_orden_produccion");

                entity.HasIndex(e => e.IdProveedor)
                    .HasName("id_proveedor");

                entity.Property(e => e.IdServicio)
                    .HasColumnName("id_servicio")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Cantidad)
                    .HasColumnName("cantidad")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Descripcion)
                    .IsRequired()
                    .HasColumnName("descripcion");

                entity.Property(e => e.FechaEnvio)
                    .HasColumnName("fecha_envio")
                    .HasColumnType("date");

                entity.Property(e => e.FehcaEntrega)
                    .HasColumnName("fehca_entrega")
                    .HasColumnType("date");

                entity.Property(e => e.IdOrdenProduccion)
                    .HasColumnName("id_orden_produccion")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdProveedor)
                    .HasColumnName("id_proveedor")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdOrdenProduccionNavigation)
                    .WithMany(p => p.OrdenServicio)
                    .HasForeignKey(d => d.IdOrdenProduccion)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("orden_servicio_ibfk_1");

                entity.HasOne(d => d.IdProveedorNavigation)
                    .WithMany(p => p.OrdenServicio)
                    .HasForeignKey(d => d.IdProveedor)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("orden_servicio_ibfk_2");
            });

            modelBuilder.Entity<PlaneacionProduccion>(entity =>
            {
                entity.HasKey(e => e.IdPlaneacion)
                    .HasName("PRIMARY");

                entity.ToTable("planeacion_produccion");

                entity.HasIndex(e => e.IdFichaTecnica)
                    .HasName("id_ficha_tecnica")
                    .IsUnique();

                entity.HasIndex(e => e.IdOrdenCompra)
                    .HasName("id_orden_compra");

                entity.Property(e => e.IdPlaneacion)
                    .HasColumnName("id_planeacion")
                    .HasColumnType("int(11)");

                entity.Property(e => e.FechaEntrega)
                    .HasColumnName("fecha_entrega")
                    .HasColumnType("date");

                entity.Property(e => e.FechaInicio)
                    .HasColumnName("fecha_inicio")
                    .HasColumnType("date");

                entity.Property(e => e.IdFichaTecnica)
                    .HasColumnName("id_ficha_tecnica")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdOrdenCompra)
                    .HasColumnName("id_orden_compra")
                    .HasColumnType("int(11)");

                entity.Property(e => e.MedidaCorte)
                    .IsRequired()
                    .HasColumnName("medida_corte")
                    .HasMaxLength(45);

                entity.Property(e => e.Sobrante)
                    .HasColumnName("sobrante")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Tamaños)
                    .HasColumnName("tamaños")
                    .HasColumnType("int(11)");

                entity.Property(e => e.TotalPliegos)
                    .HasColumnName("total_pliegos")
                    .HasColumnType("int(11)");

                entity.Property(e => e.TotalTamaños)
                    .HasColumnName("total_tamaños")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdFichaTecnicaNavigation)
                    .WithOne(p => p.PlaneacionProduccion)
                    .HasForeignKey<PlaneacionProduccion>(d => d.IdFichaTecnica)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("planeacion_produccion_ibfk_1");

                entity.HasOne(d => d.IdOrdenCompraNavigation)
                    .WithMany(p => p.PlaneacionProduccion)
                    .HasForeignKey(d => d.IdOrdenCompra)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("planeacion_produccion_ibfk_2");
            });

            modelBuilder.Entity<Procesos>(entity =>
            {
                entity.HasKey(e => e.IdProceso)
                    .HasName("PRIMARY");

                entity.ToTable("procesos");

                entity.HasIndex(e => e.IdCategoria)
                    .HasName("id_categoria");

                entity.Property(e => e.IdProceso)
                    .HasColumnName("id_proceso")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdCategoria)
                    .HasColumnName("id_categoria")
                    .HasColumnType("int(11)");

                entity.Property(e => e.NombreProceso)
                    .IsRequired()
                    .HasColumnName("nombre_proceso")
                    .HasMaxLength(45);

                entity.HasOne(d => d.IdCategoriaNavigation)
                    .WithMany(p => p.Procesos)
                    .HasForeignKey(d => d.IdCategoria)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("procesos_ibfk_1");
            });

            modelBuilder.Entity<Producto>(entity =>
            {
                entity.HasKey(e => e.IdProducto)
                    .HasName("PRIMARY");

                entity.ToTable("producto");

                entity.HasIndex(e => e.IdArte)
                    .HasName("id_arte");

                entity.HasIndex(e => e.IdCategoria)
                    .HasName("id_categoria");

                entity.Property(e => e.IdProducto)
                    .HasColumnName("id_producto")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdArte)
                    .HasColumnName("id_arte")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdCategoria)
                    .HasColumnName("id_categoria")
                    .HasColumnType("int(11)");

                entity.Property(e => e.VlrUnitario).HasColumnName("vlr_unitario");

                entity.HasOne(d => d.IdArteNavigation)
                    .WithMany(p => p.Producto)
                    .HasForeignKey(d => d.IdArte)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("producto_ibfk_1");

                entity.HasOne(d => d.IdCategoriaNavigation)
                    .WithMany(p => p.Producto)
                    .HasForeignKey(d => d.IdCategoria)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("producto_ibfk_2");
            });

            modelBuilder.Entity<ProgramacionMto>(entity =>
            {
                entity.HasKey(e => e.IdProgramacionMto)
                    .HasName("PRIMARY");

                entity.ToTable("programacion_mto");

                entity.HasIndex(e => e.IdReporte)
                    .HasName("id_reporte");

                entity.HasIndex(e => e.IdTipoMto)
                    .HasName("id_tipo_mto");

                entity.Property(e => e.IdProgramacionMto)
                    .HasColumnName("id_programacion_mto")
                    .HasColumnType("int(11)");

                entity.Property(e => e.HorasPrevistas).HasColumnName("horas_previstas");

                entity.Property(e => e.IdReporte)
                    .HasColumnName("id_reporte")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdTipoMto)
                    .HasColumnName("id_tipo_mto")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Observaciones)
                    .HasColumnName("observaciones")
                    .HasDefaultValueSql("'NULL'");

                entity.HasOne(d => d.IdReporteNavigation)
                    .WithMany(p => p.ProgramacionMto)
                    .HasForeignKey(d => d.IdReporte)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("programacion_mto_ibfk_2");

                entity.HasOne(d => d.IdTipoMtoNavigation)
                    .WithMany(p => p.ProgramacionMto)
                    .HasForeignKey(d => d.IdTipoMto)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("programacion_mto_ibfk_1");
            });

            modelBuilder.Entity<Proveedor>(entity =>
            {
                entity.HasKey(e => e.IdProveedor)
                    .HasName("PRIMARY");

                entity.ToTable("proveedor");

                entity.HasIndex(e => e.IdCategoria)
                    .HasName("id_categoria");

                entity.Property(e => e.IdProveedor)
                    .HasColumnName("id_proveedor")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Correo)
                    .IsRequired()
                    .HasColumnName("correo")
                    .HasMaxLength(45);

                entity.Property(e => e.Direccion)
                    .IsRequired()
                    .HasColumnName("direccion")
                    .HasMaxLength(45);

                entity.Property(e => e.IdCategoria)
                    .HasColumnName("id_categoria")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Nit)
                    .IsRequired()
                    .HasColumnName("nit")
                    .HasMaxLength(45);

                entity.Property(e => e.PersonaContacto)
                    .IsRequired()
                    .HasColumnName("persona_contacto")
                    .HasMaxLength(45);

                entity.Property(e => e.RazonSocial)
                    .IsRequired()
                    .HasColumnName("razon_social")
                    .HasMaxLength(45);

                entity.Property(e => e.Telefono)
                    .IsRequired()
                    .HasColumnName("telefono")
                    .HasMaxLength(45);

                entity.HasOne(d => d.IdCategoriaNavigation)
                    .WithMany(p => p.Proveedor)
                    .HasForeignKey(d => d.IdCategoria)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("proveedor_ibfk_1");
            });

            modelBuilder.Entity<RelEntmatMat>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("rel_entmat_mat");

                entity.HasIndex(e => e.IdEntrada)
                    .HasName("id_entrada");

                entity.HasIndex(e => e.IdMaterial)
                    .HasName("id_material");

                entity.Property(e => e.Cantidad).HasColumnName("cantidad");

                entity.Property(e => e.IdEntrada)
                    .HasColumnName("id_entrada")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdMaterial)
                    .HasColumnName("id_material")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdEntradaNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdEntrada)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_entmat_mat_ibfk_2");

                entity.HasOne(d => d.IdMaterialNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdMaterial)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_entmat_mat_ibfk_1");
            });

            modelBuilder.Entity<RelFtecnicaMaterial>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("rel_ftecnica_material");

                entity.HasIndex(e => e.IdFichaTecnica)
                    .HasName("id_ficha_tecnica");

                entity.HasIndex(e => e.IdMaterial)
                    .HasName("id_material");

                entity.Property(e => e.IdFichaTecnica)
                    .HasColumnName("id_ficha_tecnica")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdMaterial)
                    .HasColumnName("id_material")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdFichaTecnicaNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdFichaTecnica)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_ftecnica_material_ibfk_1");

                entity.HasOne(d => d.IdMaterialNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdMaterial)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_ftecnica_material_ibfk_2");
            });

            modelBuilder.Entity<RelFtecnicaProcesos>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("rel_ftecnica_procesos");

                entity.HasIndex(e => e.IdFichaTecnica)
                    .HasName("id_ficha_tecnica");

                entity.HasIndex(e => e.IdProceso)
                    .HasName("id_proceso");

                entity.Property(e => e.IdFichaTecnica)
                    .HasColumnName("id_ficha_tecnica")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdProceso)
                    .HasColumnName("id_proceso")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdFichaTecnicaNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdFichaTecnica)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_ftecnica_procesos_ibfk_1");

                entity.HasOne(d => d.IdProcesoNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdProceso)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_ftecnica_procesos_ibfk_2");
            });

            modelBuilder.Entity<RelOproduccionProcesos>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("rel_oproduccion_procesos");

                entity.HasIndex(e => e.IdEmpleado)
                    .HasName("id_empleado");

                entity.HasIndex(e => e.IdOrdenProduccion)
                    .HasName("id_orden_produccion");

                entity.HasIndex(e => e.IdProceso)
                    .HasName("id_proceso");

                entity.Property(e => e.IdEmpleado)
                    .HasColumnName("id_empleado")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdOrdenProduccion)
                    .HasColumnName("id_orden_produccion")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdProceso)
                    .HasColumnName("id_proceso")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdEmpleadoNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdEmpleado)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_oproduccion_procesos_ibfk_3");

                entity.HasOne(d => d.IdOrdenProduccionNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdOrdenProduccion)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_oproduccion_procesos_ibfk_1");

                entity.HasOne(d => d.IdProcesoNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdProceso)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_oproduccion_procesos_ibfk_2");
            });

            modelBuilder.Entity<RelProOcompra>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("rel_pro_ocompra");

                entity.HasIndex(e => e.IdOrdenCompra)
                    .HasName("id_orden_compra");

                entity.HasIndex(e => e.IdProducto)
                    .HasName("id_producto");

                entity.Property(e => e.Cantidad)
                    .HasColumnName("cantidad")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdOrdenCompra)
                    .HasColumnName("id_orden_compra")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdProducto)
                    .HasColumnName("id_producto")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Precio).HasColumnName("precio");

                entity.HasOne(d => d.IdOrdenCompraNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdOrdenCompra)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_pro_ocompra_ibfk_1");

                entity.HasOne(d => d.IdProductoNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdProducto)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_pro_ocompra_ibfk_2");
            });

            modelBuilder.Entity<RelProdOpago>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("rel_prod_opago");

                entity.HasIndex(e => e.IdOrdenPago)
                    .HasName("id_orden_pago");

                entity.HasIndex(e => e.IdProducto)
                    .HasName("id_producto");

                entity.HasIndex(e => e.IdRemision)
                    .HasName("id_remision");

                entity.Property(e => e.IdOrdenPago)
                    .HasColumnName("id_orden_pago")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdProducto)
                    .HasColumnName("id_producto")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdRemision)
                    .HasColumnName("id_remision")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Iva).HasColumnName("iva");

                entity.Property(e => e.Precio).HasColumnName("precio");

                entity.Property(e => e.Total).HasColumnName("total");

                entity.HasOne(d => d.IdOrdenPagoNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdOrdenPago)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_prod_opago_ibfk_1");

                entity.HasOne(d => d.IdProductoNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdProducto)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_prod_opago_ibfk_2");

                entity.HasOne(d => d.IdRemisionNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdRemision)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_prod_opago_ibfk_3");
            });

            modelBuilder.Entity<RelSalmatMat>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("rel_salmat_mat");

                entity.HasIndex(e => e.IdMaterial)
                    .HasName("id_material");

                entity.HasIndex(e => e.IdSalida)
                    .HasName("id_salida");

                entity.Property(e => e.Cantidad).HasColumnName("cantidad");

                entity.Property(e => e.IdMaterial)
                    .HasColumnName("id_material")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdSalida)
                    .HasColumnName("id_salida")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdMaterialNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdMaterial)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_salmat_mat_ibfk_1");

                entity.HasOne(d => d.IdSalidaNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.IdSalida)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("rel_salmat_mat_ibfk_2");
            });

            modelBuilder.Entity<Remision>(entity =>
            {
                entity.HasKey(e => e.IdRemision)
                    .HasName("PRIMARY");

                entity.ToTable("remision");

                entity.HasIndex(e => e.IdOrdenProduccion)
                    .HasName("id_orden_produccion");

                entity.Property(e => e.IdRemision)
                    .HasColumnName("id_remision")
                    .HasColumnType("int(11)");

                entity.Property(e => e.FechaEntrega)
                    .HasColumnName("fecha_entrega")
                    .HasColumnType("date");

                entity.Property(e => e.IdOrdenProduccion)
                    .HasColumnName("id_orden_produccion")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdOrdenProduccionNavigation)
                    .WithMany(p => p.Remision)
                    .HasForeignKey(d => d.IdOrdenProduccion)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("remision_ibfk_1");
            });

            modelBuilder.Entity<Reporte>(entity =>
            {
                entity.HasKey(e => e.IdReporte)
                    .HasName("PRIMARY");

                entity.ToTable("reporte");

                entity.HasIndex(e => e.IdEmpleado)
                    .HasName("id_empleado");

                entity.HasIndex(e => e.IdInspeccion)
                    .HasName("id_inspeccion");

                entity.Property(e => e.IdReporte)
                    .HasColumnName("id_reporte")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Descripcion)
                    .IsRequired()
                    .HasColumnName("descripcion");

                entity.Property(e => e.Fecha)
                    .HasColumnName("fecha")
                    .HasColumnType("date");

                entity.Property(e => e.IdEmpleado)
                    .HasColumnName("id_empleado")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdInspeccion)
                    .HasColumnName("id_inspeccion")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdEmpleadoNavigation)
                    .WithMany(p => p.Reporte)
                    .HasForeignKey(d => d.IdEmpleado)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("reporte_ibfk_2");

                entity.HasOne(d => d.IdInspeccionNavigation)
                    .WithMany(p => p.Reporte)
                    .HasForeignKey(d => d.IdInspeccion)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("reporte_ibfk_1");
            });

            modelBuilder.Entity<RequerimientoInterno>(entity =>
            {
                entity.HasKey(e => e.IdRequerimiento)
                    .HasName("PRIMARY");

                entity.ToTable("requerimiento_interno");

                entity.HasIndex(e => e.IdPago)
                    .HasName("id_pago");

                entity.HasIndex(e => e.IdPlaneacion)
                    .HasName("id_planeacion");

                entity.HasIndex(e => e.IdProveedor)
                    .HasName("id_proveedor");

                entity.Property(e => e.IdRequerimiento)
                    .HasColumnName("id_requerimiento")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Estado)
                    .IsRequired()
                    .HasColumnName("estado")
                    .HasMaxLength(45);

                entity.Property(e => e.FechaHora)
                    .HasColumnName("fecha_hora")
                    .HasColumnType("date");

                entity.Property(e => e.IdPago)
                    .HasColumnName("id_pago")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdPlaneacion)
                    .HasColumnName("id_planeacion")
                    .HasColumnType("int(11)")
                    .HasDefaultValueSql("'NULL'");

                entity.Property(e => e.IdProveedor)
                    .HasColumnName("id_proveedor")
                    .HasColumnType("int(11)");

                entity.Property(e => e.NumComprobante)
                    .IsRequired()
                    .HasColumnName("num_comprobante")
                    .HasMaxLength(11);

                entity.HasOne(d => d.IdPagoNavigation)
                    .WithMany(p => p.RequerimientoInterno)
                    .HasForeignKey(d => d.IdPago)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("requerimiento_interno_ibfk_2");

                entity.HasOne(d => d.IdPlaneacionNavigation)
                    .WithMany(p => p.RequerimientoInterno)
                    .HasForeignKey(d => d.IdPlaneacion)
                    .HasConstraintName("requerimiento_interno_ibfk_3");

                entity.HasOne(d => d.IdProveedorNavigation)
                    .WithMany(p => p.RequerimientoInterno)
                    .HasForeignKey(d => d.IdProveedor)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("requerimiento_interno_ibfk_1");
            });

            modelBuilder.Entity<Rol>(entity =>
            {
                entity.HasKey(e => e.IdRol)
                    .HasName("PRIMARY");

                entity.ToTable("rol");

                entity.Property(e => e.IdRol)
                    .HasColumnName("id_rol")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Descripcion)
                    .IsRequired()
                    .HasColumnName("descripcion");

                entity.Property(e => e.NombreRol)
                    .IsRequired()
                    .HasColumnName("nombre_rol")
                    .HasMaxLength(45);

                entity.Property(e => e.Permisos)
                    .IsRequired()
                    .HasColumnName("permisos");
            });

            modelBuilder.Entity<SalidaMaterial>(entity =>
            {
                entity.HasKey(e => e.IdSalida)
                    .HasName("PRIMARY");

                entity.ToTable("salida_material");

                entity.HasIndex(e => e.IdOrdenProduccion)
                    .HasName("id_orden_produccion");

                entity.Property(e => e.IdSalida)
                    .HasColumnName("id_salida")
                    .HasColumnType("int(11)");

                entity.Property(e => e.FechaSalida)
                    .HasColumnName("fecha_salida")
                    .HasColumnType("date");

                entity.Property(e => e.IdOrdenProduccion)
                    .HasColumnName("id_orden_produccion")
                    .HasColumnType("int(11)");

                entity.HasOne(d => d.IdOrdenProduccionNavigation)
                    .WithMany(p => p.SalidaMaterial)
                    .HasForeignKey(d => d.IdOrdenProduccion)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("salida_material_ibfk_1");
            });

            modelBuilder.Entity<Seguimiento>(entity =>
            {
                entity.HasKey(e => e.IdSeguimiento)
                    .HasName("PRIMARY");

                entity.ToTable("seguimiento");

                entity.HasIndex(e => e.IdHojaVida)
                    .HasName("id_hoja_vida");

                entity.HasIndex(e => e.IdProgramacionMto)
                    .HasName("id_programacion_mto");

                entity.Property(e => e.IdSeguimiento)
                    .HasColumnName("id_seguimiento")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Cantidad)
                    .HasColumnName("cantidad")
                    .HasColumnType("int(11)")
                    .HasDefaultValueSql("'NULL'");

                entity.Property(e => e.Descripcion)
                    .IsRequired()
                    .HasColumnName("descripcion");

                entity.Property(e => e.Fecha)
                    .HasColumnName("fecha")
                    .HasColumnType("date");

                entity.Property(e => e.HorasRealizadas).HasColumnName("horas_realizadas");

                entity.Property(e => e.IdHojaVida)
                    .HasColumnName("id_hoja_vida")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdProgramacionMto)
                    .HasColumnName("id_programacion_mto")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Repuesto)
                    .HasColumnName("repuesto")
                    .HasMaxLength(45)
                    .HasDefaultValueSql("'NULL'");

                entity.Property(e => e.Responsable)
                    .IsRequired()
                    .HasColumnName("responsable")
                    .HasMaxLength(45);

                entity.HasOne(d => d.IdHojaVidaNavigation)
                    .WithMany(p => p.Seguimiento)
                    .HasForeignKey(d => d.IdHojaVida)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("seguimiento_ibfk_2");

                entity.HasOne(d => d.IdProgramacionMtoNavigation)
                    .WithMany(p => p.Seguimiento)
                    .HasForeignKey(d => d.IdProgramacionMto)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("seguimiento_ibfk_1");
            });

            modelBuilder.Entity<TiempoProcesos>(entity =>
            {
                entity.HasKey(e => e.IdTiempo)
                    .HasName("PRIMARY");

                entity.ToTable("tiempo_procesos");

                entity.HasIndex(e => e.IdProceso)
                    .HasName("id_proceso");

                entity.Property(e => e.IdTiempo)
                    .HasColumnName("id_tiempo")
                    .HasColumnType("int(11)");

                entity.Property(e => e.IdProceso)
                    .HasColumnName("id_proceso")
                    .HasColumnType("int(11)");

                entity.Property(e => e.TiempoMuerto).HasColumnName("tiempo_muerto");

                entity.Property(e => e.TiempoPreparacion).HasColumnName("tiempo_preparacion");

                entity.Property(e => e.TiempoProceso).HasColumnName("tiempo_proceso");

                entity.HasOne(d => d.IdProcesoNavigation)
                    .WithMany(p => p.TiempoProcesos)
                    .HasForeignKey(d => d.IdProceso)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("tiempo_procesos_ibfk_1");
            });

            modelBuilder.Entity<TipoMto>(entity =>
            {
                entity.HasKey(e => e.IdTipoMto)
                    .HasName("PRIMARY");

                entity.ToTable("tipo_mto");

                entity.Property(e => e.IdTipoMto)
                    .HasColumnName("id_tipo_mto")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Tipo)
                    .IsRequired()
                    .HasColumnName("tipo")
                    .HasMaxLength(45);
            });

            modelBuilder.Entity<Users>(entity =>
            {
                entity.ToTable("users");

                entity.HasIndex(e => e.Email)
                    .HasName("users_email_unique")
                    .IsUnique();

                entity.Property(e => e.Id)
                    .HasColumnName("id")
                    .HasColumnType("bigint(20) unsigned");

                entity.Property(e => e.Email)
                    .IsRequired()
                    .HasColumnName("email")
                    .HasMaxLength(255);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasColumnName("name")
                    .HasMaxLength(255);

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasColumnName("password")
                    .HasMaxLength(255);

                entity.Property(e => e.RememberToken)
                    .HasColumnName("remember_token")
                    .HasMaxLength(100)
                    .HasDefaultValueSql("'NULL'");
            });

            modelBuilder.Entity<Usuarios>(entity =>
            {
                entity.HasKey(e => e.IdUsuarios)
                    .HasName("PRIMARY");

                entity.ToTable("usuarios");

                entity.HasIndex(e => e.IdRol)
                    .HasName("id_rol");

                entity.Property(e => e.IdUsuarios)
                    .HasColumnName("id_usuarios")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Activo)
                    .HasColumnName("activo")
                    .HasColumnType("tinyint(4)");

                entity.Property(e => e.Contraseña)
                    .IsRequired()
                    .HasColumnName("contraseña")
                    .HasMaxLength(16);

                entity.Property(e => e.IdRol)
                    .HasColumnName("id_rol")
                    .HasColumnType("int(11)");

                entity.Property(e => e.NombreUsuario)
                    .IsRequired()
                    .HasColumnName("nombre_usuario")
                    .HasMaxLength(16);

                entity.HasOne(d => d.IdRolNavigation)
                    .WithMany(p => p.Usuarios)
                    .HasForeignKey(d => d.IdRol)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("usuarios_ibfk_1");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
