using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
   public class LAPP_message_template_apply_to_hist: BaseEntity
    {
        public int Apply_ID { get; set; }
        public string Apply_Name { get; set; }
        public string Apply_Description { get; set; }
        public int Apply_Day_Before_Execution { get; set; }
        public int Created_By { get; set; }
        public DateTime Created_On { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime DTS { get; set; }
        public string Action { get; set; }
        public int Modified_By { get; set; }
        public DateTime Modified_DTS { get; set; }
        public int Account_Type { get; set; }
        public bool Is_Reminder { get; set; }
    }
}
