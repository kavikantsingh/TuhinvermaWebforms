using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LAPP.ENTITY.Enumerations;

namespace LAPP.ENTITY
{
    public class LAPP_page_alert_message : BaseEntity
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
        public string Name { get; set; }
        public string TemplateType
        {
            get
            {
                return ((eTemplateType)Template_Type_Id).ToString();
            }
        }
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

        public int Apply_ID { get; set; }
        public int Account_Type { get; set; }
    }
}
