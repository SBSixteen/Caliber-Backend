namespace Calibre_Backend.Model
{
    public class Ammunition
    {
        public String AmmunitionCaliber { get; set; }
        public String AmmunitionVariant { get; set; }
        public String AmmunitionDescription { get; set; }
        public int AmmunitionSpeed { get; set; }
        public int AmmunitionPenn { get; set; }
        public int AmmunitionFrag { get; set; }
        public double AmmunitionPrice { get; set; }

        public Ammunition(String caliber, String var, String desc, int sp, int penn, int frag, double price)
        {
            AmmunitionCaliber = caliber;
            AmmunitionVariant = var;
            AmmunitionDescription = desc;
            AmmunitionPenn = penn;
            AmmunitionFrag = frag;
            AmmunitionPrice = price;
            AmmunitionSpeed = sp;
        }

        public Ammunition()
        {
            AmmunitionCaliber = "<NO DATA>";
            AmmunitionVariant = "<NO DATA>";
            AmmunitionDescription = "<NO DATA>";
            AmmunitionPenn = 0;
            AmmunitionFrag = 0;
            AmmunitionPrice = 0;
            AmmunitionSpeed = 0;
        }
    }

}
