using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using OrleansNorthwind.Grains;
using OrleansNorthwind.Models;

namespace OrleansNorthwind.API.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ProductosController : ControllerBase
{
    private readonly IGrainFactory _grainFactory;

    public ProductosController(IGrainFactory grainFactory)
    {
        _grainFactory = grainFactory;
    }

    [HttpGet]
    public async Task<IActionResult> GetList()
    {
        var grain = _grainFactory.GetGrain<ICustomerGrain<Producto>>(0);

        var productos = await grain.GetListAsync();

        if (productos == null || !productos.Any())
            return NotFound("No se han encontrado registros.");

        return Ok(productos);
    }

    [HttpGet("getbyid")]
    public async Task<IActionResult> GetById([FromQuery] int producto_id)
    {
        var grain = _grainFactory.GetGrain<ICustomerGrain<Producto>>(0);

        var producto = await grain.GetByIdAsync(producto_id); 

        if (producto == null)
            return NotFound("No se han encontrado registros.");

        return Ok(producto);
    }

    [HttpPost]
    [Route("add")]
    public async Task<ActionResult<int>> Add(
        [FromBody] Producto entity,
        CancellationToken cancellationToken
    )
    {
        try
        {
            var grain = _grainFactory.GetGrain<ICustomerGrain<Producto>>(0);
            var result = grain.AddAsync(entity).Result;
            if (result == 1)
            {
                return Created("1", result);
            }
            else
            {
                return Created("0", result);
            }
        }
        catch
        {
            return BadRequest("Error de solicitud.");
        }
    }

    [HttpDelete]
    [Route("delete")]
    public async Task<ActionResult<int>> Delete(
        [FromQuery] int id,
        CancellationToken cancellationToken
    )
    {
        try
        {
            var grain = _grainFactory.GetGrain<ICustomerGrain<Producto>>(0);
            var result = grain.DeleteAsync(id).Result;
            if (result == 1)
            {
                return Accepted("1", result);
            }
            else
            {
                return Accepted("0", result);
            }
        }
        catch
        {
            return BadRequest("Error de solicitud.");
        }
    }

    [HttpPut]
    [Route("update")]
    public async Task<ActionResult<int>> Update(
        [FromQuery] int id,
        [FromBody] Producto entity,
        CancellationToken cancellationToken
    )
    {
        try
        {
            var grain = _grainFactory.GetGrain<ICustomerGrain<Producto>>(0);
            var result = grain.UpdateAsync(entity).Result;
            if (result == 1)
            {
                return Accepted("1", result);
            }
            else
            {
                return Accepted("0", result);
            }
        }
        catch
        {
            return BadRequest("Error de solicitud.");
        }
    }
}
