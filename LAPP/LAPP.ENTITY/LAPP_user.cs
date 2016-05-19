using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAPP_user : BaseEntity
    {
        public int User_Id { get; set; }
        public int LAPP_Role_Id { get; set; }
        public string First_Name { get; set; }
        public string Last_Name { get; set; }
        public string Middle_Name { get; set; }
        public bool Gender { get; set; }
        public DateTime Date_Of_Birth { get; set; }
        public string Address { get; set; }
        public bool Is_Active { get; set; }
        public int Created_By { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public DateTime DTS { get; set; }
        public bool Is_Archived { get; set; }
        public string Full_Name
        {
            get
            {
                return First_Name + " " + Middle_Name + " " + Last_Name;
            }
        }
        public LAPP_user_membership objusermembership { get; set; }
        public string UserName
        {
            get
            {
                if (objusermembership != null)
                {
                    return objusermembership.User_Name;
                }
                else
                {
                    return string.Empty;
                }
            }
        }
        public string Email
        {
            get;
            set;
        }
    }
}
