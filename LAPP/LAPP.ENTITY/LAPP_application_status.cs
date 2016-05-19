using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAPP_application_status:BaseEntity
    {
        public int status_id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int Status_Type_Id { get; set; }
        public string Status { get; set; }
        public string Color_Code { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public int Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public int Modified_By { get; set; }

    }
}
