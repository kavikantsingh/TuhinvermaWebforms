using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class lapp_individual_address : BaseEntity
    {
        public int Address_Id { get; set; }
        public int Individual_Id { get; set; }
        public string Street { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string Country { get; set; }
        public string Phone { get; set; }
        public string Cell { get; set; }
        public string Email { get; set; }
        public int Status_ID { get; set; }
        public string Status { get; set; }
        public string Date_of_Beginning { get; set; }
        public string Date_of_Ending { get; set; }
        public string Comments { get; set; }

        public string Created_by_Name { get; set; }
        public string Modified_by_Name { get; set; }

        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public string Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public string Modified_By { get; set; }
        public bool Is_Mark_As_Bad_Address { get; set; }
    }
}
