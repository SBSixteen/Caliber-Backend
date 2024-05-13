using Calibre_Backend.Model;
using Microsoft.AspNetCore.Mvc;
using MySqlConnector;
using System.Collections.Generic;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Calibre_Backend.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class TestController : ControllerBase
    {
        private readonly MySqlConnection _connection;

        public TestController(MySqlConnection connection)
        {
            _connection = connection;
        }

        // GET: api/<TestController>
        [HttpGet (Name = "Get All Weapons")]
        public async Task<List<String>> Get()
        {
            await _connection.OpenAsync();

            using var command = new MySqlCommand("SELECT MODEL FROM WEAPONS;", _connection);
            using var reader = await command.ExecuteReaderAsync();

            List<String> A = new List<String>();

            while (await reader.ReadAsync())
            {
                A.Add((String)reader.GetValue(0));
            }

            return A;
        }

        [HttpGet(Name = "Get Weapon")]
        public async Task<Weapon> GetWeapon(String WeaponName)
        {
            await _connection.OpenAsync();

            using var command = new MySqlCommand($"SELECT `ammunition`, `model`, `make`, `weight`, `rof`, `efr`, `Description`, `SHORT` FROM `weapons` JOIN weapon_type on weapons.TYPE = weapon_type.TYPE WHERE weapons.model = '{WeaponName}'", _connection);
            using var reader = await command.ExecuteReaderAsync();

            List<String> A = new List<String>();

            Weapon X = new Weapon();

            while (await reader.ReadAsync())
            {
                X = new Weapon(reader.GetString(1), reader.GetString(0), reader.GetString(2), reader.GetDouble(3) + "", reader.GetInt32(4), reader.GetInt32(5), reader.GetString(6), reader.GetString(7));
            }

            Console.WriteLine(X.ToString());
            return X;
        }

        [HttpGet (Name = "GetWeaponImage")]
        public IActionResult GetWeaponImage(String Name)
        {
            Byte[] b = System.IO.File.ReadAllBytes("./Assets/Weapons/" + Name + ".webp");        
            return File(b, "image/webp");
        }

        [HttpGet(Name = "GetWeaponMakeImage")]
        public IActionResult GetWeaponMakeImage(String Name)
        {
            Byte[] b = System.IO.File.ReadAllBytes("./Assets/WeaponMake/" + Name + ".png");      
            return File(b, "image/png");
        }
    }
}
