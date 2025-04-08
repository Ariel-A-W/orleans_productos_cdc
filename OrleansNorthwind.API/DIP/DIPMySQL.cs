using Microsoft.EntityFrameworkCore;
using OrleansNorthwind.Persistence;
using OrleansNorthwind.Persistence.DBContexts;

namespace OrleansNorthwind.API.DIP;

public static class DIPMySQL
{
    //public static IServiceCollection AddApplication(
    //    this IServiceCollection services
    //)
    //{
    //    return services;
    //}

    public static IServiceCollection AddMySQLConnection(
        this IServiceCollection services,
        IConfiguration configuration
    )
    {
        // Sección para configura MySQL Server.
        var connectionString = configuration.GetConnectionString("MySQL")
             ?? throw new ArgumentNullException(nameof(configuration));

        //services.AddDbContext<MySQLDBContext>(
        //    options =>
        //        options.UseMySql(
        //            connectionString,
        //            new MySqlServerVersion(
        //                new Version(8, 0, 21)
        //            )
        //        )
        //);

        services.AddDbContext<MySQLDBContext>(options =>
            options.UseMySql(
                connectionString,
                new MySqlServerVersion(new Version(8, 0, 21)),
                mysqlOptions =>
                {
                    mysqlOptions.EnableRetryOnFailure(5, TimeSpan.FromSeconds(10), null);
                }
            )
        );

        return services;
    }
}