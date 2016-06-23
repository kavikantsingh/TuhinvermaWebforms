using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class Lapp_ProvClinicHours
    {
        public int ProvClinicHoursId { get; set; }
        public int ProviderId { get; set; }
        public int ApplicationId { get; set; }
        public int ClinicHours { get; set; }
        public string ReferenceNumber { get; set; }
        public bool IsActive { get; set; }
        public bool IsDeleted { get; set; }
        public int CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }
        public int ModifiedBy { get; set; }
        public DateTime ModifiedOn { get; set; }
        public string ProvClinicHoursGuid { get; set; }
    }

    public class ProvClinicHoursRS
    {
        public List<Lapp_ProvClinicHours> ProvClinicHours { get; set; }
        public string Message { get; set; }
        public bool Status { get; set; }
        public string StatusCode { get; set; }
        public string ResponseReason { get; set; }
    }
}

