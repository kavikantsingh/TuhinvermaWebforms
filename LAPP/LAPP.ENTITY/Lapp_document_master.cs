using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class Lapp_document_master:BaseEntity
    {
        public int Document_ID { get; set; }
        public string Document_Name { get; set; }
        public int Max_size { get; set; }
        public string Description { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public int Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public int  Modified_By { get; set; }
        public DateTime DTS { get; set; }
        public bool Is_Verified { get; set; }

        public string Isvarified
        {
            get
            {
                if (Is_Verified == true)
                {
                    return "../App_Themes/Theme1/images/check_icon.png";
                }
                else
                {
                    return "../App_Themes/Theme1/images/button_cross.png";
                }
            }
        }
    }
}
