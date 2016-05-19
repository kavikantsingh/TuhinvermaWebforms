using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAPP_transaction_fee_config : BaseEntity
    {
        public int Transaction_Fee_Config_Id { get; set;}
        public string Config_Name { get; set; }
        public double ACH_Fee { get; set; }
        public double CreditCard_Fee { get; set; }
        public DateTime Effective_Date { get; set; }
        public DateTime End_Date { get; set; }
        public string Remark { get; set; }
        public int Created_By { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public DateTime DTS { get; set; }
    }
}
