using Microsoft.Extensions.Configuration;
using MongoDB.Driver;
using OrleansNorthwind.Models;

namespace OrleansNorthwind.Persistence.DBContexts;

public class MongoDBContext
{
    private readonly IMongoCollection<Producto> _productos;

    public MongoDBContext(IConfiguration config)
    {
        var client = new MongoClient(config.GetConnectionString("Mongo"));
        var database = client.GetDatabase(config["Mongo:Database"]); 
        _productos = database.GetCollection<Producto>("productos");
    }

    public async Task UpserClientAsync(Producto producto)
    { 
        var filter = Builders<Producto>.Filter.Eq(p => p.Producto_Id, producto.Producto_Id);
        await _productos.ReplaceOneAsync(filter, producto, new ReplaceOptions { IsUpsert = true });
    }
}
