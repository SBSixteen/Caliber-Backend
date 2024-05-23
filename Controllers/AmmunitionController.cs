using Calibre_Backend.Model;
using Microsoft.AspNetCore.Mvc;
using MySqlConnector;
using System.Xml.Linq;

namespace Calibre_Backend.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class AmmunitionController : Controller
    {
        private readonly MySqlConnection _connection;

        public AmmunitionController(MySqlConnection connection)
        {
            _connection = connection;
        }

        [HttpGet(Name = "Get All Ammunition")]
        public async Task<List<Ammunition>> GetAllAmmunition()
        {
            await _connection.OpenAsync();

            using var command = new MySqlCommand("SELECT * FROM AMMUNITION_VARIANTS;", _connection);
            using var reader = await command.ExecuteReaderAsync();

            List<Ammunition> A = new List<Ammunition>();

            while (await reader.ReadAsync())
            {
                A.Add(new Ammunition(reader.GetString(0), reader.GetString(1), reader.GetString(2), reader.GetInt32(6), reader.GetInt32(4), reader.GetInt32(5), reader.GetDouble(3)));
            }

            return A;
        }

        [HttpGet(Name = "Get Ammunition by Caliber")]
        public async Task<List<Ammunition>> GetAmmunitionByCaliber(string caliber)
        {
            await _connection.OpenAsync();

            using var command = new MySqlCommand($"SELECT * FROM AMMUNITION_VARIANTS WHERE CALIBER = '{caliber}';", _connection);
            using var reader = await command.ExecuteReaderAsync();

            List<Ammunition> A = new List<Ammunition>();

            while (await reader.ReadAsync())
            {
                A.Add(new Ammunition(reader.GetString(0), reader.GetString(1), reader.GetString(2), reader.GetInt32(6), reader.GetInt32(4), reader.GetInt32(5), reader.GetDouble(3)));
            }

            return A;
        }

        [HttpGet(Name = "Get Ammunition Image")]
        public IActionResult GetAmmunitionImage(string caliber)
        {
            try
            {
                Byte[] b = System.IO.File.ReadAllBytes("./Assets/Ammunition/" + caliber + ".webp");
                return File(b, "image/webp");
            }
            catch (Exception ex)
            {
                Byte[] b = System.IO.File.ReadAllBytes("./Assets/Placeholders/NoDataUniversal.png");
                return File(b, "image/png");
            }
        }
    }
}
