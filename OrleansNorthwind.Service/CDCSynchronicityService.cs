using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using OrleansNorthwind.Models;

namespace OrleansNorthwind.Service;

public class CDCSynchronicityService : BackgroundService
{
    private readonly IServiceScopeFactory _scopeFactory;
    private DateTime _lastSync = DateTime.UtcNow.AddMinutes(-5);

    public CDCSynchronicityService(IServiceScopeFactory scopeFactory)
    {
        _scopeFactory = scopeFactory;
    }

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        while (!stoppingToken.IsCancellationRequested)
        {
            using var scope = _scopeFactory.CreateScope();

            var mongoCacheUpdate = scope.ServiceProvider.GetRequiredService<ICache<Task, Producto>>();

            await mongoCacheUpdate.UpdatedSynchronizeCache();

            _lastSync = DateTime.UtcNow;
            await Task.Delay(TimeSpan.FromSeconds(15), stoppingToken);
        }
    }
}
