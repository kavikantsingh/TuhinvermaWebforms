using System.Collections.Generic;

namespace LAPP.ENTITY
{
    public class ApplicationTypeGet : BaseEntity
    {
        public int ApplicationTypeId { get; set; }
        public string Code { get; set; }
        public string Name { get; set; }
        public bool IsActive { get; set; }
    }


    public class ApplicationTypeGetResponse : BaseEntityServiceResponse
    {
        public List<ApplicationTypeGet> ApplicationTypeGetList { get; set; }
    }
}