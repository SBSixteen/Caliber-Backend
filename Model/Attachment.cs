namespace Calibre_Backend.Model
{
    public class Attachment
    {
        public String AttachmentName { get; set; } 
        public String AttachmentDescription { get; set; } 
        public String AttachmentPart { get; set; }
        public String AttachmentMake { get; set; }
        public double AttachmentPrice { get; set; }
        public int AttachmentPiccatiny_Top { get; set; }
        public int AttachmentPiccatiny_Bottom { get; set; }
        public int AttachmentPiccatiny_Left { get; set; }
        public int AttachmentPiccatiny_Right { get; set; }
        public int Attachment_AttachesToRail { get; set; }
        public int Attachment_AttachesToDovetail { get; set; }
        public int Attachment_DovetailMount { get; set; }

        public Attachment(String name, String desc, String part, String make, double price, int top, int bottom, int left, int right, int attach, int dovetail, int dovetailmount)
        {
            AttachmentName = name;
            AttachmentDescription = desc;
            AttachmentPart = part;
            AttachmentMake = make;
            AttachmentPrice = price;
            AttachmentPiccatiny_Top = top;
            AttachmentPiccatiny_Bottom = bottom;
            AttachmentPiccatiny_Left = left;
            AttachmentPiccatiny_Right = right;
            Attachment_AttachesToRail = attach;
            Attachment_AttachesToDovetail = dovetail;
            Attachment_DovetailMount = dovetailmount;
        }


    }
}
