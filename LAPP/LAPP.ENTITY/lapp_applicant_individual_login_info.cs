using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class lapp_applicant_individual_login_info : BaseEntity
    {
        public int Applicant_ID { get; set; }
        public int Application_Type_ID { get; set; }
        public string Application_Type { get; set; }
        public string Application_Number { get; set; }
        public string Applicant_Email { get; set; }
        public string Applicant_Password { get; set; }
        public int Member_Type_ID { get; set; }
        public string Member_Type { get; set; }
        public bool Is_Temp_Password { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public string Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public string Modified_By { get; set; }
        public DateTime DTS { get; set; }

    }
}
