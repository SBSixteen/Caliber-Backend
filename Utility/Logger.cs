
namespace Calibre_Backend.Utility
{
    public static class Logger
    {
       static int mode = 0;

        public static void LogError(String error)
        {
            Console.WriteLine($"Error [X] : {error}");
        }

        public static void LogInfo(String info)
        {
            Console.WriteLine($"Information [!] : {info}");
        }

        public static void LogDebug(String debug)
        {
            if (mode == -1) {
                Console.WriteLine($"Debug [?] : {debug}");
            }
        }

        public static void ToggleMode()
        {
            if (mode == 0)
            {
                mode = -1;
                LogInfo("Logger will log development strings.");
            }
            else { 
                mode = 0;
                LogInfo("Logger will not log development strings.");
            }
        }
    }
}
