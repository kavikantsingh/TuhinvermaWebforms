using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAPP_user_membership : BaseEntity
    {
        public int User_Id { get; set; }
        public string User_Name { get; set; }
        public string Password { get; set; }
        public int PasswordFormat { get; set; }
        public string PasswordSalt { get; set; }
        public bool Is_Default_Password { get; set; }
        public string MobilePIN { get; set; }
        public string Email { get; set; }
        public string LoweredEmail { get; set; }
        public string PasswordQuestion { get; set; }
        public string Password_Answer { get; set; }
        public bool Is_Locked_Out { get; set; }
        public DateTime Last_Login_Date { get; set; }
        public DateTime Last_Password_Changed_Date { get; set; }
        public DateTime Last_Lockout_Date { get; set; }
        public int Failed_Password_Attempt_Count { get; set; }
        public int Failed_Password_Answer_Attempt_Count { get; set; }
        public DateTime Last_Activity_Date { get; set; }
        public string Comment { get; set; }
        public DateTime Created_On { get; set; }
        public bool Is_Active { get; set; }
        public int Created_By { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime DTS { get; set; }
        public bool Is_Archived { get; set; }

        public string first_name { get; set; }
        public string last_name { get; set; }
        public string middle_name { get; set; }


        public LAPP_user objUser { get; set; }
    }
}
