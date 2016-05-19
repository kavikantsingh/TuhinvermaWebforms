using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class lapp_license_print_queue_holder:BaseEntity
    {
        public int Queue_Id { get; set; }
        public int Individual_Id { get; set; }
        public string Application_No { get;set; }
        public string Application_Type_Name { get; set; }
        public int Application_Type_Id { get; set; }
        public string First_Name { get; set; }
        public string Last_Name { get; set; }
        public string License_Number { get; set; }
        public bool Is_Printed { get; set; }
        public string Printed_On { get; set; }
        public int Created_By { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public DateTime DTS { get; set; }

    }
}
