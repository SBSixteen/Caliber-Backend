using System.Xml.Linq;
using System;

namespace Calibre_Backend.Model
{
    public class Weapon
    {
        public String WeaponName { get; set; }
        public String WeaponCaliber { get; set; }
        public String WeaponMake { get; set; }
        public double WeaponWeight {  get; set; }
        public int rof {  get; set; }
        public int efr {  get; set; }
        public String WeaponDescription {  get; set; }
        public String WeaponType {  get; set; }
        public String WeaponTypeShort { get; set; }
        public String WeaponOrigin { get; set; }


        public Weapon(String name, String caliber, String make, double weight, int rate, int range, String desc, String type, String Short, String Origin)
        {
            WeaponName = name;
            WeaponCaliber = caliber;
            WeaponMake = make;
            WeaponWeight = weight;
            WeaponType = type;
            rof = rate;
            efr = range;
            WeaponDescription = desc;
            WeaponTypeShort = Short;
            WeaponOrigin = Origin;
        }

        public Weapon()
        {
            WeaponName = "<NO DATA>";
            WeaponCaliber = "<NO DATA>";
            WeaponMake = "<NO DATA>";
            WeaponWeight = 0.0;
            WeaponType = "<NO DATA>";
            rof = 0;
            efr = 0;
            WeaponDescription = "<NO DATA>";
            WeaponType = "<NO DATA>";
            WeaponTypeShort = "<ND>";
            WeaponOrigin = "<NO DATA>";
        }

        override
        public String ToString()
        {
            return $"{WeaponName} | {WeaponMake} | {WeaponCaliber}";
        }
    }
}
