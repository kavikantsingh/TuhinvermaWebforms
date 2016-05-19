using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
   public class Lapp_application_status_type : BaseEntity
    {
       public int Status_Type_Id { get; set; }
       public string Name { get; set; }
       public string Description { get; set; }
       public bool Is_Active { get; set; }
       public bool Is_Deleted { get; set; }
       public DateTime Created_On { get; set; }
       public int Created_By { get; set; }
       public DateTime Modified_On { get; set; }
       public DateTime DTS { get; set; }
    }
}
