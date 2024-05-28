using Calibre_Backend.Model;
using Microsoft.AspNetCore.Mvc;
using MySqlConnector;

namespace Calibre_Backend.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class AttachmentController : ControllerBase
    {
        private readonly MySqlConnection _connection;

        public AttachmentController(MySqlConnection connection)
        {
            _connection = connection;
        }

        [HttpGet(Name = "Get All Attachments")]
        public async Task<List<Attachment>> GetAllAttachments()
        {

            await _connection.OpenAsync();

            using var command = new MySqlCommand("SELECT * FROM ATTACHMENTS;", _connection);
            using var reader = await command.ExecuteReaderAsync();

            List<Attachment> result = new List<Attachment>();

            while (await reader.ReadAsync())
            {
                Attachment A = new Attachment(reader.GetString(0), reader.GetString(2), reader.GetString(1), reader.GetString(3), reader.GetDouble(4), reader.GetInt32(5), reader.GetInt32(6), reader.GetInt32(7), reader.GetInt32(8), reader.GetInt32(9), reader.GetInt32(10));
                result.Add(A);
            }

            return result;
        }

        [HttpGet(Name = "Get Mountable Attachmentts")]
        public async Task<List<Attachment>> GetMountableAttachment()
        {

            await _connection.OpenAsync();

            using var command = new MySqlCommand("SELECT * FROM ATTACHMENTS WHERE ATTACHES_TO_RAIL = 1;", _connection);
            using var reader = await command.ExecuteReaderAsync();

            List<Attachment> result = new List<Attachment>();

            while (await reader.ReadAsync())
            {
                Attachment A = new Attachment(reader.GetString(0), reader.GetString(2), reader.GetString(1), reader.GetString(3), reader.GetDouble(4), reader.GetInt32(5), reader.GetInt32(6), reader.GetInt32(7), reader.GetInt32(8), reader.GetInt32(9), reader.GetInt32(10));
                result.Add(A);
            }

            return result;
        }

        [HttpGet(Name = "Get Attachments by Position")]
        public async Task<List<Attachment>> GetAttachmentByPosition(String part)
        {

            await _connection.OpenAsync();

            using var command = new MySqlCommand($"SELECT * FROM ATTACHMENTS WHERE PART = '{part}';", _connection);
            using var reader = await command.ExecuteReaderAsync();

            List<Attachment> result = new List<Attachment>();

            while (await reader.ReadAsync())
            {
                Attachment A = new Attachment(reader.GetString(0), reader.GetString(2), reader.GetString(1), reader.GetString(3), reader.GetDouble(4), reader.GetInt32(5), reader.GetInt32(6), reader.GetInt32(7), reader.GetInt32(8), reader.GetInt32(9), reader.GetInt32(10));
                result.Add(A);
            }

            return result;
        }

        [HttpGet(Name = "Get Attachments that have rails")]
        public async Task<List<Attachment>> GetAttachmentsWithRails()
        {

            await _connection.OpenAsync();

            using var command = new MySqlCommand($"SELECT * FROM ATTACHMENTS WHERE PICCATINY_TOP <> 0 OR PICCATINY_BOTTOM <> 0 OR PICCATINY_RIGHT <> 0 OR PICCATINY_LEFT <> 0;", _connection);
            using var reader = await command.ExecuteReaderAsync();

            List<Attachment> result = new List<Attachment>();

            while (await reader.ReadAsync())
            {
                Attachment A = new Attachment(reader.GetString(0), reader.GetString(2), reader.GetString(1), reader.GetString(3), reader.GetDouble(4), reader.GetInt32(5), reader.GetInt32(6), reader.GetInt32(7), reader.GetInt32(8), reader.GetInt32(9), reader.GetInt32(10));
                result.Add(A);
            }

            return result;
        }

        [HttpGet(Name = "Get Default Gun Part by Position")]
        public async Task<List<Attachment>> GetDefaultWeaponPartByPosition(string gunname, string position)
        {

            await _connection.OpenAsync();

            using var command = new MySqlCommand($"SELECT * FROM `ATTACHMENTS` JOIN `WEAPON_DEFAULTS` on attachments.NAME = weapon_defaults.ATTACHMENT WHERE weapon_defaults.WEAPON = '{gunname}' AND attachments.part ='{position}';", _connection);
            using var reader = await command.ExecuteReaderAsync();

            List<Attachment> result = new List<Attachment>();

            while (await reader.ReadAsync())
            {
                Attachment A = new Attachment(reader.GetString(0), reader.GetString(2), reader.GetString(1), reader.GetString(3), reader.GetDouble(4), reader.GetInt32(5), reader.GetInt32(6), reader.GetInt32(7), reader.GetInt32(8), reader.GetInt32(9), reader.GetInt32(10));
                result.Add(A);
            }

            return result;
        }

        [HttpGet(Name = "Get Default Kit of Gun")]
        public async Task<List<Attachment>> GetDefaultKitOfWeapon(string gunname)
        {

            await _connection.OpenAsync();

            using var command = new MySqlCommand($"SELECT * FROM `ATTACHMENTS` JOIN `WEAPON_DEFAULTS` on attachments.NAME = weapon_defaults.ATTACHMENT WHERE weapon_defaults.WEAPON = '{gunname}';", _connection);
            using var reader = await command.ExecuteReaderAsync();

            List<Attachment> result = new List<Attachment>();

            while (await reader.ReadAsync())
            {
                Attachment A = new Attachment(reader.GetString(0), reader.GetString(2), reader.GetString(1), reader.GetString(3), reader.GetDouble(4), reader.GetInt32(5), reader.GetInt32(6), reader.GetInt32(7), reader.GetInt32(8), reader.GetInt32(9), reader.GetInt32(10));
                result.Add(A);
            }

            return result;
        }

        [HttpGet(Name = "Get Attachment Image")]
        public IActionResult GetAttachmentImage(string position,string name)
        {
            Console.WriteLine($"./Assets/Parts/{position}/{name}.webp");

            try
            {
                Byte[] b = System.IO.File.ReadAllBytes($"./Assets/Parts/{position}/{name}.webp");
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
