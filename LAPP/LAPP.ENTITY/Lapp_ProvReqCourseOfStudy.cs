using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class Lapp_ProvReqCourseOfStudy
    {
        public int ProvReqCourseofStudyId { get; set; }
        public int ProviderId { get; set; }
        public int ApplicationId { get; set; }
        public int ReqCourseofStudyNameId { get; set; }
        public string ReqCourseofStudyName { get; set; }
        public int MinimumReqCourseHours { get; set; }
        public string ReferenceNumber { get; set; }
        public bool IsActive { get; set; }
        public bool IsDeleted { get; set; }
        public int CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }
        public int ModifiedBy { get; set; }
        public DateTime ModifiedOn { get; set; }
        public string ProvReqCourseofStudyGuid { get; set; }
    }
    public class ProvReqCourseOfStudyRS
    {
        //public int [] ProvReqCourseofStudyId { get; set; }
        //public int [] ProviderId { get; set; }
        //public int [] ApplicationId { get; set; }
        //public int [] ReqCourseofStudyNameId { get; set; }
        //public string [] ReqCourseofStudyName { get; set; }
        //public int [] MinimumReqCourseHours { get; set; }
        //public string [] ReferenceNumber { get; set; }
        //public bool [] IsActive { get; set; }
        //public bool [] IsDeleted { get; set; }
        //public int CreatedBy { get; set; }
        //public DateTime [] CreatedOn { get; set; }
        //public int [] ModifiedBy { get; set; }
        //public DateTime [] ModifiedOn { get; set; }
        //public string [] ProvReqCourseofStudyGuid { get; set; }
        public List<Lapp_ProvReqCourseOfStudy> ProvReqCourseOfStudy { get; set; }
        public string Message { get; set; }
        public bool Status { get; set; }
        public string StatusCode { get; set; }
        public string ResponseReason { get; set; }
    }
}

