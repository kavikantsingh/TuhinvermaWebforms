using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class lapp_individual_application_lk : BaseEntity
    {
        public string Application_Number { get; set; }
        public int Applicant_ID { get; set; }
        public int Individual_Id { get; set; }
        public int ApplicationType_ID { get; set; }
        public string Application_Type_Name { get; set; }
        public string Application_Type { get; set; }
        public bool Verified { get; set; }
        public string Verified_On { get; set; }
        public bool Denied { get; set; }
        public string Denied_On { get; set; }
        public bool Deficient { get; set; }
        public string Deficient_On { get; set; }
        public bool Approved { get; set; }
        public string Approved_On { get; set; }
        public DateTime DTS { get; set; }
        public DateTime Submitted_On { get; set; }
    }
}
