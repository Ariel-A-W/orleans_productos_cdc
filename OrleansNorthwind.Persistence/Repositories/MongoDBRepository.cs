using MongoDB.Driver;
using OrleansNorthwind.Models;

namespace OrleansNorthwind.Persistence.Repositories;

public class MongoDBRepository : ICache<Task, Producto>
{
    private readonly ICRUD<Producto> _mysqlRepository;
    private readonly IMongoCollection<Producto> _mongoCacheCollection;

    public MongoDBRepository(
        ICRUD<Producto> mysqlRepository, 
        IMongoClient mongoClient)
    {
        _mysqlRepository = mysqlRepository;
        var db = mongoClient.GetDatabase("northwind");
        _mongoCacheCollection = db.GetCollection<Producto>("productos_cache");
    }

    public async Task UpdatedSynchronizeCache()
    {
        var productos = _mysqlRepository.GetList();

        if (productos == null || !productos.Any())
            throw new InvalidOperationException("No se obtuvieron productos desde MySQL.");

        await _mongoCacheCollection.DeleteManyAsync(Builders<Producto>.Filter.Empty);
        await _mongoCacheCollection.InsertManyAsync(productos);
    }

    public async Task<List<Producto>> GetList()
    {
        await UpdatedSynchronizeCache();

        return await _mongoCacheCollection.Find(Builders<Producto>.Filter.Empty).ToListAsync();
    }
}
