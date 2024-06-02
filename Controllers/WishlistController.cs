using Calibre_Backend.Model;
using Microsoft.AspNetCore.Mvc;
using MySqlConnector;
using System.Xml.Linq;

namespace Calibre_Backend.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class WishlistController : ControllerBase
    {
        private readonly MySqlConnection _connection;

        public WishlistController(MySqlConnection connection)
        {
            _connection = connection;
        }

        [HttpGet(Name = "Get Wishlist")]
        public async Task<List<String>> GetWishlist(String email)
        {

            await _connection.OpenAsync();

            using var command = new MySqlCommand($"SELECT NAME FROM WISHLIST WHERE EMAIL = '{email}';", _connection);
            using var reader = await command.ExecuteReaderAsync();

            List<String> result = new List<String>();

            while (await reader.ReadAsync())
            {;
                result.Add(reader.GetString(0));
            }

            return result;
        }

        [HttpGet(Name = "Get Existence in Wishlist")]
        public async Task<int> GetValue(String email, string name)
        {

            await _connection.OpenAsync();

            using var command = new MySqlCommand($"SELECT count(*) FROM WISHLIST WHERE EMAIL = '{email}' AND NAME = '{name}';", _connection);
            using var reader = await command.ExecuteReaderAsync();

            while (await reader.ReadAsync())
            {
                return reader.GetInt32(0);
            }

            return 0;

        }

        [HttpGet(Name = "Delete from Wishlist")]
        public async Task DeleteWishlist(string e, string n)
        {

            using var comm = new MySqlCommand($"SELECT count(*) FROM WISHLIST WHERE EMAIL = '{e}' AND NAME = '{n}';", _connection);
            using var reader = await comm.ExecuteReaderAsync();

            while (await reader.ReadAsync())
            {
                if (reader.GetInt32(0)  < 1)
                {
                    return;
                }
            }
            await _connection.OpenAsync();

            using var command = new MySqlCommand($"DELETE FROM WISHLIST WHERE EMAIL =@EMAIL AND NAME =@NAME;", _connection);

            command.Parameters.AddWithValue("@NAME", n);
            command.Parameters.AddWithValue("@EMAIL", e);

            await command.ExecuteNonQueryAsync();

        }

        [HttpGet(Name = "Add Wishlist")]
        public async Task PutWishlist(string e, string n)
        {

            await _connection.OpenAsync();

            using var command = new MySqlCommand($"INSERT INTO WISHLIST (EMAIL, NAME) VALUES (@EMAIL, @NAME);", _connection);

            command.Parameters.AddWithValue("@NAME", n);
            command.Parameters.AddWithValue("@EMAIL", e);

            await command.ExecuteNonQueryAsync();
            
        }
    }
}
