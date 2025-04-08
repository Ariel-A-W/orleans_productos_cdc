using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using Orleans;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace OrleansNorthwind.Models;

[BsonIgnoreExtraElements]
[GenerateSerializer]
public class Producto
{
    [NotMapped]
    [BsonId]
    [BsonRepresentation(BsonType.ObjectId)]
    [System.Text.Json.Serialization.JsonIgnore(Condition = System.Text.Json.Serialization.JsonIgnoreCondition.WhenWritingNull)]
    public string? Id { get; set; }

    [Key] 
    [Id(0)] 
    public int Producto_Id { get; set; }
    [Id(1)]  
    public int Proveedor_Id { get; set; }
    [Id(2)]  
    public string? Codigo { get; set; }
    [Id(3)]  
    public string? Nombre { get; set; }
    [Id(4)]  
    public string? Descripcion { get; set; }
    [Id(5)]  
    public decimal Costo { get; set; }
    [Id(6)]  
    public decimal Precio_Lista { get; set; }
    [Id(7)]  
    public int Punto_Pedido { get; set; }
    [Id(8)]  
    public int Nivel_Objetivo { get; set; }
    [Id(9)]  
    public int Cantidad { get; set; }
    [Id(10)]  
    public int Suspendido { get; set; }
    [Id(11)]  
    public int Cantidad_Minima { get; set; }
    [Id(12)]  
    public string? Categoria { get; set; }
    [Id(13)]  
    public DateTime UpdatedAt { get; set; } = DateTime.Now;
}
