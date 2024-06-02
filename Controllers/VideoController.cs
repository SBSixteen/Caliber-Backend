using Microsoft.AspNetCore.Mvc;
using MySqlConnector;

namespace Calibre_Backend.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class VideoController : ControllerBase
    {
        private readonly MySqlConnection _connection;

        public VideoController(MySqlConnection connection)
        {
            _connection = connection;
        }

        [HttpGet(Name = "Get LogIn Video")]
        public IActionResult LoginVideo()
        {
            try
            {
                Byte[] b = System.IO.File.ReadAllBytes($"./Assets/Videos/SignIn.mp4");
                return File(b, "video/mp4");
            }
            catch (Exception ex)
            {
                Byte[] b = System.IO.File.ReadAllBytes("./Assets/Placeholders/NoDataUniversal.png");
                return File(b, "image/png");
            }
        }
    }
}
