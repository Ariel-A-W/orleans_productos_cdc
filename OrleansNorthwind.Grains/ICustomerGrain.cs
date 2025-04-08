namespace OrleansNorthwind.Grains;

public interface ICustomerGrain<T> : IGrainWithIntegerKey
    //where T : class 
{
    public Task<List<T>> GetListAsync();
    public Task<T> GetByIdAsync(int id);
    public Task<int> AddAsync(T entity);
    public Task<int> DeleteAsync(int id);
    public Task<int> UpdateAsync(T entity);
}
