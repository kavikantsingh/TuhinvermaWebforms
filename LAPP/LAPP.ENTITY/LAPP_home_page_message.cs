using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAPP_home_page_message : BaseEntity
    {
        public int Home_Page_Message_Id { get; set; }
        public int Message_Type { get; set; }
        public string Message_Content { get; set; }
        public DateTime Start_Date { get; set; }
        public DateTime End_Date { get; set; }
        public int Sort_Order { get; set; }
        public bool Is_Active { get; set; }
        public int Created_By { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public DateTime DTS { get; set; }

        public string ToolTip
        {
            get
            {
                if (Is_Active)
                {
                    return "Disable";
                }
                else
                {
                    return "Enable";
                }
            }
            
        }
        public string ImageUrl
        {
            get
            {
                if (Is_Active)
                {
                    return "enable.png";
                }
                else
                {
                    return "disable.png";
                }
            }
            
        }
    }
}
