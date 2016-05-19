using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAPP_audit_info : BaseEntity
    {
        public int Audit_Info_Id { get; set; }
        public string Host_Address { get; set; }
        public string Original_Url { get; set; }
        public string Page_Name { get; set; }
        public string Refferal_Url { get; set; }
        public string Session_Id { get; set; }
        public DateTime Time { get; set; }
        public int User_Id { get; set; }
        public int Visit_Count { get; set; }
        public string Browser_Type { get; set; }
        public string Plateform { get; set; }
        public bool Is_Javascript_Enabled { get; set; }
        public bool Is_Cookie_Enabled { get; set; }
        public bool Is_Crawler { get; set; }
        public bool Is_ActiveX_Control_Enabled { get; set; }
    }
}