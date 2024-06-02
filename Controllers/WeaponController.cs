using Calibre_Backend.Model;
using Calibre_Backend.Utility;
using Microsoft.AspNetCore.Mvc;
using MySqlConnector;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Calibre_Backend.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class WeaponController : ControllerBase
    {
        private readonly MySqlConnection _connection;

        public WeaponController(MySqlConnection connection)
        {
            _connection = connection;
        }

        // GET: api/<TestController>
        [HttpGet (Name = "Get All Weapons Names")]
        public async Task<List<String>> GetAllWeaponNames()
        {
            await _connection.OpenAsync();

            using var command = new MySqlCommand("SELECT MODEL FROM WEAPONS;", _connection);
            using var reader = await command.ExecuteReaderAsync();

            List<String> A = new List<String>();

            while (await reader.ReadAsync())
            {
                A.Add((String)reader.GetValue(0));
            }

            _connection.Close();
            return A;
        }

        [HttpGet(Name = "Get Weapon")]
        public async Task<Weapon> GetWeapon(String WeaponName)
        {
            await _connection.OpenAsync();

            using var command = new MySqlCommand($"SELECT `ammunition`, `model`, `make`, `weight`, `rof`, `efr`, `Description`, weapons.Type, `SHORT`, `ORIGIN`, `Price`, `Discount` FROM `weapons` JOIN weapon_type on weapons.TYPE = weapon_type.TYPE WHERE weapons.model = '{WeaponName}'", _connection);
            using var reader = await command.ExecuteReaderAsync();

            if (!reader.HasRows)
            {
                return new Weapon();
            }

            List<String> A = new List<String>();

            Weapon X = new Weapon();

            while (await reader.ReadAsync())
            {
                X = new Weapon(reader.GetString(1), reader.GetString(0), reader.GetString(2), reader.GetDouble(3), reader.GetInt32(4), reader.GetInt32(5), reader.GetString(6), reader.GetString(7), reader.GetString(8), reader.GetString(9), reader.GetDouble(10),reader.GetDouble(11));
            }

            Console.WriteLine(X.ToString());
            return X;
        }

        [HttpGet(Name = "Get All Weapons")]
        public async Task<List<Weapon>> GetAllWeapons()
        {
            await _connection.OpenAsync();

            using var command = new MySqlCommand($"SELECT `ammunition`, `model`, `make`, `weight`, `rof`, `efr`, `Description`, weapons.Type, `SHORT`, `ORIGIN`, `Price`, `Discount`  FROM `weapons` JOIN weapon_type on weapons.TYPE = weapon_type.TYPE", _connection);
            using var reader = await command.ExecuteReaderAsync();

            if (!reader.HasRows)
            {
                return new List<Weapon>();
            }

            List<Weapon> A = new List<Weapon>();

            Weapon X = new Weapon();

            while (await reader.ReadAsync())
            {
                X = new Weapon(reader.GetString(1), reader.GetString(0), reader.GetString(2), reader.GetDouble(3), reader.GetInt32(4), reader.GetInt32(5), reader.GetString(6), reader.GetString(7), reader.GetString(8), reader.GetString(9), reader.GetDouble(10), reader.GetDouble(11));
                A.Add(X);
            }

            return A;
        }

        [HttpGet(Name = "Get All Weapons by Type")]
        public async Task<List<Weapon>> GetAllWeaponsByType(String type)
        {
            await _connection.OpenAsync();

            using var command = new MySqlCommand($"SELECT `ammunition`, `model`, `make`, `weight`, `rof`, `efr`, `Description`, weapons.Type, `SHORT`, `ORIGIN`, `Price`, `Discount` FROM `weapons` JOIN weapon_type on weapons.TYPE = weapon_type.TYPE where  weapon_type.SHORT = '{type}'", _connection);
            using var reader = await command.ExecuteReaderAsync();

            if (!reader.HasRows)
            {
                return new List<Weapon>();
            }

            List<Weapon> A = new List<Weapon>();

            Weapon X = new Weapon();

            while (await reader.ReadAsync())
            {
                X = new Weapon(reader.GetString(1), reader.GetString(0), reader.GetString(2), reader.GetDouble(3), reader.GetInt32(4), reader.GetInt32(5), reader.GetString(6), reader.GetString(7), reader.GetString(8), reader.GetString(9), reader.GetDouble(10), reader.GetDouble(11));
                A.Add(X);
            }

            return A;
        }

        [HttpGet (Name = "GetWeaponImage")]
        public IActionResult GetWeaponImage(String Name)
        {
            try
            {
                Byte[] b = System.IO.File.ReadAllBytes("./Assets/Weapons/" + Name + ".webp");
                return File(b, "image/webp");
            }catch (Exception ex)
            {
                Byte[] b = System.IO.File.ReadAllBytes("./Assets/Placeholders/NoDataUniversal.png");
                return File(b, "image/png");
            }
        }

        [HttpGet(Name = "GetWeaponMakeImage")]
        public IActionResult GetWeaponMakeImage(String Name)
        {
            try
            {
                Byte[] b = System.IO.File.ReadAllBytes("./Assets/WeaponMake/" + Name + ".png");
                return File(b, "image/png");
            }catch(Exception ex)
            {
                Byte[] b = System.IO.File.ReadAllBytes("./Assets/Placeholders/NoDataUniversal.png");
                return File(b, "image/png");
            }
        }
        [HttpPatch(Name = "UpdateDiscounts")]
        public async Task<bool> UpdateWeaponDiscounts()
        {
            var names = await GetAllWeaponNames();
            
            await _connection.OpenAsync();

            foreach (var name in names)
            {
                double value = 1.0;

                if (devUtil.random.NextDouble(0,1.0) > 0.2)
                {
                    value = devUtil.random.NextDouble(0.87,1.13);
                }
                var command = new MySqlCommand($"UPDATE `weapons` SET `Discount` = '{value}' WHERE `weapons`.`model` = '{name}';", _connection);
                var reader = await command.ExecuteNonQueryAsync();
            }

            return true;
        }

        [HttpPatch(Name = "ResetDiscounts")]
        public async Task<bool> ResetWeaponDiscounts()
        {
            var names = await GetAllWeaponNames();
            await _connection.OpenAsync();

            foreach (var name in names)
            {
                double value = 1.0;

                var command = new MySqlCommand($"UPDATE `weapons` SET `Discount` = '{value}' WHERE `weapons`.`model` = '{name}';", _connection);
                var reader = await command.ExecuteNonQueryAsync();
            }

            return true;
        }
    }
}
