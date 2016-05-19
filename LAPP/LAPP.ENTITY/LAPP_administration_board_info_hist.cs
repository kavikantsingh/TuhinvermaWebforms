using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
   public class LAPP_administration_board_info_hist :BaseEntity
    {
        public int  Administartion_Board_Info_Id { get; set; }
        public string Board_Info_Agency_Name { get; set; }
        public string Board_Info_Address_Line1 { get; set; }
        public string Board_Info_Address_Line2 { get; set; }
        public string Board_Info_City { get; set; }
        public string Board_Info_State { get; set; }
        public string Board_Info_Phone { get; set; }
        public string Board_Info_Zip { get; set; }
        public string Board_Info_Fax { get; set; }
        public string Board_Info_Contact { get; set; }
        public string Board_Info_Renewal_Form_Text { get; set; }
        public string Board_Info_Report_Data_Path { get; set; }
        public DateTime Board_Info_Renewal_Date_AE { get; set; }
        public DateTime Board_Info_Renewal_Date_FK { get; set; }
        public DateTime Board_Info_Renewal_Date_LR { get; set; }
        public DateTime Board_Info_Renewal_Date_SZ { get; set; }
        public double Board_info_Renewal_Fee_1disc { get; set; }
        public double Board_info_Renewal_Fee_2disc { get; set; }
        public int Board_info_Renewal_Start_Before { get; set;}
        public double Board_Info_Late_Disc { get; set; }
        public string Board_Info_Comment { get; set; }
        public int Created_By { get; set; }
        public bool Is_Deleted { get; set; }
        public bool Is_Active { get; set; }
        public DateTime Created_On { get; set; }
        public DateTime DTS { get; set; }
        public string Action { get; set; }
        public int Modified_By { get; set; }
        public DateTime Modified_DTS {get ;set;}
      
    }
}
