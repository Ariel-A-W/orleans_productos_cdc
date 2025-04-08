namespace OrleansNorthwind.Models;

public interface ICache<T, W> 
    where T : class 
    where W : class 
{
    public T UpdatedSynchronizeCache();

    public Task<List<W>> GetList();
}
