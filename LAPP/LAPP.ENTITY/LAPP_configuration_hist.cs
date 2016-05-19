using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAPP_configuration_hist : BaseEntity
    {
        public int Configuration_Id { get; set; }
        public int Configuration_Type_Id { get; set; }
        public int Org_Id { get; set; }
        public int Facility_Id { get; set; }
        public int Dept_Center_Id { get; set; }
        public string Setting { get; set; }
        public string Description { get; set; }
        public string Data_Type { get; set; }
        public string ValidationRegEx { get; set; }
        public string Value { get; set; }
        public bool Is_Editable { get; set; }
        public int Created_By { get; set; }
        public bool Is_Deleted { get; set; }
        public bool Is_Active { get; set; }
        public int User_Id { get; set; }
        public DateTime DTS { get; set; }
        public string Action { get; set; }
        public int Modified_By { get; set; }
        public DateTime Modified_DTS { get; set; }
    }
}
