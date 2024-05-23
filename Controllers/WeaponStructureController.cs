using Microsoft.AspNetCore.Mvc;
using MySqlConnector;

namespace Calibre_Backend.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class WeaponStructureController : ControllerBase
    {
        private readonly MySqlConnection _connection;

        public WeaponStructureController(MySqlConnection connection)
        {
            _connection = connection;
        }

        [HttpGet(Name = "Get Weapon Scaffold/Structure")]
        public async Task<List<String>> GetWeaponStructureOf(String weaponName)
        {
            await _connection.OpenAsync();

            using var command = new MySqlCommand($"SELECT PART_NAME FROM WEAPON_ATTACHMENTS_SEEKER WHERE WEP_NAME = '{weaponName}';", _connection);
            using var reader = await command.ExecuteReaderAsync();

            List<String> A = new List<String>();

            while (await reader.ReadAsync())
            {
                A.Add(reader.GetString(0));
            }

            return A;
        }


    }
}
