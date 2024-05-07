using Calibre_Backend.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MySqlConnector;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace Calibre_Backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class WeaponTypeController : ControllerBase
    {
        private readonly MySqlConnection _connection;
        public WeaponTypeController(MySqlConnection connection) {
            _connection = connection;
        }

        [HttpGet(Name = "GetWeaponTypes")]
        public async Task<IEnumerable<WeaponType>> GetWeaponTypes()
        {
            List<WeaponType> K = new List<WeaponType>();

            await _connection.OpenAsync();

            using var command = new MySqlCommand("SELECT * FROM WEAPON_TYPE;", _connection);
            using var reader = await command.ExecuteReaderAsync();

            while (await reader.ReadAsync())
            {
                var temp = new WeaponType(reader.GetString(0), reader.GetString(1));
                K.Add(temp);
            }

            _connection.Close();
            return K;
        }
    }



}
