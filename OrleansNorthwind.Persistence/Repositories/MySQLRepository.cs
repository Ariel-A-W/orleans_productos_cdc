using Microsoft.EntityFrameworkCore;
using OrleansNorthwind.Models;
using OrleansNorthwind.Persistence.DBContexts;

namespace OrleansNorthwind.Persistence.Repositories;

public class MySQLRepository : ICRUD<Producto>
{
    private readonly MySQLDBContext _dbContext;
    private readonly DbSet<Producto> _dbSetProductos;
    private readonly IUnitOfWork _unitOfWork;

    public MySQLRepository(MySQLDBContext dbContext, IUnitOfWork unitOfWork)
    {
        _dbContext = dbContext;
        _dbSetProductos = _dbContext.Set<Producto>();
        _unitOfWork = unitOfWork;
    }

    public List<Producto> GetList()
    {
        var tst = _dbSetProductos.ToList();

        return _dbSetProductos.ToList();
    }
    public Producto GetById(int id)
    {
        return _dbSetProductos.FirstOrDefault(x => x.Producto_Id == id)!;
    }

    public int Add(Producto entity, CancellationToken cancellationToken)
    {
        try
        {
            _dbSetProductos.Add(
                new Producto
                { 
                    Producto_Id = entity.Producto_Id,
                    Proveedor_Id = entity.Proveedor_Id,
                    Codigo = entity.Codigo,
                    Nombre = entity.Nombre,
                    Descripcion = entity.Descripcion,
                    Costo = entity.Costo,
                    Precio_Lista = entity.Precio_Lista,
                    Punto_Pedido = entity.Punto_Pedido,
                    Nivel_Objetivo = entity.Nivel_Objetivo,
                    Cantidad = entity.Cantidad,
                    Suspendido = entity.Suspendido,
                    Cantidad_Minima = entity.Cantidad_Minima,
                    Categoria = entity.Categoria,
                    UpdatedAt = DateTime.Now
                }
            );
            var result = _unitOfWork.SaveChangesAsync(cancellationToken);
            return 1;
        }
        catch
        {
            return 0;
        }
    }

    public int Delete(int id, CancellationToken cancellationToken)
    {
        try
        {
            var producto = _dbSetProductos.FirstOrDefault(x => x.Producto_Id == id);

            if (producto == null)
                return 0;

            _dbContext.Remove(producto);

            var result = _unitOfWork.SaveChangesAsync(cancellationToken);
            return 1;
        }
        catch
        {
            return 0;
        }
    }

    public int Update(int id, Producto entity, CancellationToken cancellationToken)
    {
        try
        {
            var producto = _dbSetProductos.FirstOrDefault(x => x.Producto_Id == entity.Producto_Id);

            if (producto == null)
                return 0;

            producto.Producto_Id = entity.Producto_Id;
            producto.Proveedor_Id = entity.Proveedor_Id;
            producto.Codigo = entity.Codigo;
            producto.Nombre = entity.Nombre;
            producto.Descripcion = entity.Descripcion;
            producto.Costo = entity.Costo;
            producto.Precio_Lista = entity.Precio_Lista;
            producto.Punto_Pedido = entity.Punto_Pedido;
            producto.Nivel_Objetivo = entity.Nivel_Objetivo;
            producto.Cantidad = entity.Cantidad;
            producto.Suspendido = entity.Suspendido;
            producto.Cantidad_Minima = entity.Cantidad_Minima;
            producto.Categoria = entity.Categoria;
            producto.UpdatedAt = DateTime.Now;

            _dbSetProductos.Update(producto);

            var result = _unitOfWork.SaveChangesAsync(cancellationToken);
            return 1;
        }
        catch
        {
            return 0;
        }
    }
}
