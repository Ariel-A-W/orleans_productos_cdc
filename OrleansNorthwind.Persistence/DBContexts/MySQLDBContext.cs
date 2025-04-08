using Microsoft.EntityFrameworkCore;
using OrleansNorthwind.Models;

namespace OrleansNorthwind.Persistence.DBContexts;

public class MySQLDBContext : DbContext, IUnitOfWork 
{
    public DbSet<Producto> Productos { get; set; } = null!;

    public MySQLDBContext(DbContextOptions<MySQLDBContext> options) 
        : base(options) { }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.ApplyConfigurationsFromAssembly(typeof(MySQLDBContext).Assembly);
        base.OnModelCreating(modelBuilder);
    }

    public override async Task<int> SaveChangesAsync(CancellationToken cancellationToken = default)
    {
        try
        {
            return await base.SaveChangesAsync(cancellationToken);
        }
        catch (DbUpdateConcurrencyException ex)
        {
            throw new Exception("Infrastructure: Fallo en la concurrencia de los datos. Detalle:", ex);
        }
        catch (Exception ex)
        {
            throw new Exception("Infrastructure: Fallo genérico. Detalle:", ex);
        }
    }
}
