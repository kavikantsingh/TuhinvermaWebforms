using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class lapp_application_fee_details : BaseEntity
    {
        public int Fee_Detail_Id { get; set; }
        public int Application_Id { get; set; }
        public string Application_Name { get; set; }
        public decimal Fee { get; set; }
        public decimal Late_Fee { get; set; }
        public int Sort_order { get; set; }

        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public int Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public int Modified_By { get; set; }
        public DateTime DTS { get; set; }
    }
}
