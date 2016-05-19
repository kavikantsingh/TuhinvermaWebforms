using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAPP_menu_master : BaseEntity
    {
        public int LAPP_Menu_Master_Id { get; set; }
        public string LAPP_Menu_Name { get; set; }
        public string LAPP_Menu_Description { get; set; }
        public string LAPP_Menu_Url { get; set; }
        public int LAPP_Menu_Level { get; set; }
        public int LAPP_Parrent_Id { get; set; }
        public string LAPP_Menu_Field1 { get; set; }
        public string LAPP_Menu_Field2 { get; set; }
        public string LAPP_Menu_Field3 { get; set; }
        public bool Is_Deleted { get; set; }
        public bool Is_Active { get; set; }
        public DateTime Created_On { get; set; }
        public DateTime DTS { get; set; }
    }
}
