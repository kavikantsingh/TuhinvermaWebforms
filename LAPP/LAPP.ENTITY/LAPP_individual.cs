using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAAP_Individual_Search
    {
        public string Certification_Number { get; set; }
        public string First_Name { get; set; }
        public string Last_Name { get; set; }
    }
   public class LAPP_individual:BaseEntity
    {
       public int Individual_Id{ get; set; }
       public int Status_ID { get; set; }
       public string Status { get; set; }
       public string SSN { get; set; }
       public string License_Number { get; set; }
       public string Issued_On { get; set; }
       public string Last_Updated { get; set; }
       public string Expired_On { get; set; }
       public string Dob { get; set; }
       public string Gender { get; set; }
       public string PlaceOfBirth { get; set; }
       public string Email { get; set; }
       public string Comments { get; set; }
       public bool Is_Active { get; set; }
       public bool Is_Deleted { get; set; }
       public bool Is_Archive { get; set; }
       public DateTime Created_On { get; set; }
       public string Created_By { get; set; }
       public DateTime Modified_On { get; set; }
       public string Modified_By { get; set; }

       public string First_Name { get; set; }
       public string Last_Name { get; set; }
       public string Middle_Name { get; set; }
       public string Color_Code { get; set; }
       public bool Is_Mark_As_Bad_Address { get; set; }
    }
}
