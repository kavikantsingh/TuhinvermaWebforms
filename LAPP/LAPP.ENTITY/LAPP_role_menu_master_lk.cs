using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAPP_role_menu_master_lk : BaseEntity
    {
        public int LAPP_Role_Id { get; set; }
        public int LAPP_Menu_Master_Id { get; set; }
        public bool F { get; set; }
        public bool C { get; set; }
        public bool R { get; set; }
        public bool U { get; set; }
        public bool D { get; set; }
    }
}
