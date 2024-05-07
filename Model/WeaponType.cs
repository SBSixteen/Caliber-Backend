namespace Calibre_Backend.Model
{
    public class WeaponType
    {
        public String Name { get; set; }
        public String Short { get; set; }

        public WeaponType(String name, String s) {
            
            this.Name = name;
            this.Short = s;

        }
    }
}
