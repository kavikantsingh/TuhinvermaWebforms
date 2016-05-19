using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAPP_individual_names:BaseEntity
    {
        public int Name_id { get; set; }
        public int Individual_Id { get; set; }
        public string Last_Name { get; set; }
        public string Middle_Name { get; set; }
        public string First_Name { get; set; }
        public string Maiden_Name { get; set; }
        public string Suffix { get; set; }
        public int Status_ID { get; set; }
        public string Status { get; set; }
        public string Date_Of_Beginning { get; set; }
        public string Date_Of_Ending { get; set; }
        public string Comments { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public string Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public string Modified_By { get; set; }


        public string Created_by_Name { get; set; }
        public string Modified_by_Name { get; set; }

    }
}
