namespace Calibre_Backend.Model
{
    public class AmmoRecord
    {
        public string Title { get; set; }
        public string Description { get; set; }

        public AmmoRecord(string title, string desc) {
            Title = title;
            Description = desc;
        }

    }
}
