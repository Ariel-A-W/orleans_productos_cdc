namespace OrleansNorthwind.Persistence.DBContexts;

public interface IUnitOfWork
{
    Task<int> SaveChangesAsync(CancellationToken cancellationToken);
}
