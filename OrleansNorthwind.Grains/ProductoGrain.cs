using OrleansNorthwind.Models;

namespace OrleansNorthwind.Grains;

public class ProductoGrain : Grain, ICustomerGrain<Producto>
{
    private readonly ICRUD<Producto> _mysqlRepository;
    private readonly ICache<Task, Producto> _mongoRepository;

    public ProductoGrain(
        ICRUD<Producto> mysqlRepository,
        ICache<Task, Producto> mongoRepository
    )
    {
        _mysqlRepository = mysqlRepository;
        _mongoRepository = mongoRepository;
    }
    
    public async Task<List<Producto>> GetListAsync()
    {
        return await _mongoRepository.GetList();
    }

    public async Task<Producto> GetByIdAsync(int id)
    {
        return (await _mongoRepository.GetList()).FirstOrDefault(x => x.Producto_Id == id)!;
    }

    public async Task<int> AddAsync(Producto entity)
    {
        var result = _mysqlRepository.Add(entity, default);
        return await Task.FromResult(result);
    }

    public async Task<int> DeleteAsync(int id)
    {
        var result = _mysqlRepository.Delete(id, default);
        return await Task.FromResult(result);
    }

    public async Task<int> UpdateAsync(Producto entity)
    {
        var result = _mysqlRepository.Update(entity.Producto_Id, entity, default);
        return await Task.FromResult(result);
    }
}
