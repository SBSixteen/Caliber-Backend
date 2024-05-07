using System.Xml.Linq;
using System;

namespace Calibre_Backend.Model
{
    public class Weapon
    {
        public String WeaponName { get; set; }
        public String WeaponCaliber { get; set; }
        public String WeaponMake { get; set; }
        public String WeaponWeight {  get; set; }
        public int rof {  get; set; }
        public int efr {  get; set; }
        public String WeaponDescription {  get; set; }
        public String WeaponType {  get; set; }

        public Weapon(String name, String caliber, String make, String weight, int rate, int range, String desc, string type)
        {
            WeaponName = name;
            WeaponCaliber = caliber;
            WeaponMake = make;
            WeaponWeight = weight;
            WeaponType = type;
            rof = rate;
            efr = range;
            WeaponDescription = desc;
            WeaponType = type;
            
        }

        public Weapon()
        {
            WeaponName = "";
            WeaponCaliber = "";
            WeaponMake = "";
            WeaponWeight = "";
            WeaponType = "";
            rof = 0;
            efr = 0;
            WeaponDescription = "";
            WeaponType = "";
        }

        override
        public String ToString()
        {
            return $"{WeaponName} | {WeaponMake} | {WeaponCaliber}";

        }
    }
}
