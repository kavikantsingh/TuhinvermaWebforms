using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
   public class LAPP_code_type_hist:BaseEntity
    {
        public int Code_Type_Id { get; set; }
        public string Code_Type_CD { get; set; }
        public string Code_Type_Description { get; set; }
        public DateTime Created_On { get; set; }
        public int Created_By { get; set; }
        public bool Is_Deleted { get; set; }
        public bool Is_Active { get; set; }
        public DateTime DTS { get; set; }
        public string Action { get; set; }
        public int Modified_By { get; set; }
        public DateTime Modified_DTS { get; set; } 

    }
}
