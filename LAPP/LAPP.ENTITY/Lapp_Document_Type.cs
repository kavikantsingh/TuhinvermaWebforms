using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class Lapp_Document_Type:BaseEntity
    {
        public int document_ID { get; set;}
        public int Application_Type_ID { get; set; }
        public int Max_Size { get; set; }
        public string Document_Name { get; set; }
        public string Description { get; set; }
        public bool Applicant { get; set; }
        public bool Office { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public string Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public string Modified_By { get; set; }
        public DateTime DTS { get; set; }
        public string Name { get; set; }
    }
}
