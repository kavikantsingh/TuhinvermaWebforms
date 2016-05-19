using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
   public class LAPP_state_code : BaseEntity
    {
       public int State_Code_Id { get; set; }
        public string State_Code { get; set; }
        public string State_Name { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public DateTime DTS { get; set; }
        public string Country_Name { get; set; }
    }
}
