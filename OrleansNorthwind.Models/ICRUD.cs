namespace OrleansNorthwind.Models;

public interface ICRUD<T>
    where T : class
{
    public List<T> GetList();
    public T GetById(int id);
    public int Add(T entity, CancellationToken cancellationToken);
    public int Delete(int id, CancellationToken cancellationToken);
    public int Update(int id, T entity, CancellationToken cancellationToken);
}
