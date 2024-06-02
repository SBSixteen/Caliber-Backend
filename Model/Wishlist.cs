namespace Calibre_Backend.Model
{
    public class Wishlist
    {
        String email { get; set; }
        String name { get; set; }

        public Wishlist(string e, string n)
        {
            email = e;
            name = n;
        }
    }
}
