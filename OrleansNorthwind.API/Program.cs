using MongoDB.Driver;
using OrleansNorthwind.API.DIP;
using OrleansNorthwind.Models;
using OrleansNorthwind.Persistence.DBContexts;
using OrleansNorthwind.Persistence.Repositories;
using OrleansNorthwind.Service;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers();

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

// Configuración del DbContext de MySQL (de la librería Core)
builder.Services.AddMySQLConnection(builder.Configuration);

builder.Services.AddScoped<IUnitOfWork>(
    sp => (IUnitOfWork)sp.GetRequiredService<MySQLDBContext>()
);

builder.Services.AddScoped<ICRUD<Producto>, MySQLRepository>();

builder.Services.AddSingleton<IMongoClient>(sp =>
{
    var configuration = sp.GetRequiredService<IConfiguration>();
    var connectionString = configuration.GetConnectionString("Mongo");
    return new MongoClient(connectionString);
});

builder.Services.AddScoped<ICache<Task, Producto>, MongoDBRepository>();

builder.Services.AddHostedService<CDCSynchronicityService>();

builder.Host.UseOrleans(siloBuilder =>
{
    siloBuilder.UseLocalhostClustering();
    siloBuilder.AddMemoryGrainStorageAsDefault();
});

// *************************************************************************************************
// Configuración para CORS.
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAllOrigins",
        builder =>
        {
            builder.AllowAnyOrigin()
                   .AllowAnyMethod()
                   .AllowAnyHeader()
                   // .SetPreflightMaxAge(TimeSpan.FromHours(1)); // Cacheo de preflight por 1 hora
                   ;
        });
});
// *************************************************************************************************

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.UseCors("AllowAllOrigins");

app.MapControllers();

app.Run();
