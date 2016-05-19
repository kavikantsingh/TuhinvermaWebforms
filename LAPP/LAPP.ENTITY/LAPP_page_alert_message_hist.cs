using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
   public class LAPP_page_alert_message_hist : BaseEntity
    {
        public int Page_Alert_Message_Id { get; set; }
        public int Template_Type_Id { get; set; }
        public string Template_Name { get; set; }
        public string Template_Subject { get; set; }
        public string Message { get; set; }
        public DateTime Start_Date { get; set; }
        public DateTime End_Date { get; set; }
        public bool Is_Active { get; set; }
        public int Created_By { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public DateTime DTS { get; set; }
        public string Action { get; set; }
        public int Modified_By { get; set; }
        public DateTime Modified_DTS { get; set; }
        public int Apply_ID { get; set; }
        public int Account_Type { get; set; }
    }
}
