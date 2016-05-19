using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAPP_fee : BaseEntity
    {
        public int Fee_ID { get; set; }
        public int Fee_Type_ID { get; set; }
        public string Fee_Name { get; set; }
        public string Fee_Description { get; set; }
        public decimal Fee_Amount { get; set; }
        public decimal Fee_Additonal_Amount { get; set; }
        public int Created_By { get; set; }
        public DateTime Created_On { get; set; }
        public bool Is_Deleted { get; set; }
        public bool Is_Active { get; set; }
        public DateTime DTS { get; set; }
        public DateTime Effective_Date { get; set; }
        public DateTime End_Date { get; set; }
        public int Display_Order { get; set; }
        public string FeeNameGrid
        {
            get
            {
                if (Fee_Name.Length > 13)
                {
                    return Fee_Name.Remove(13) +"..";
                }
                else
                {
                    return Fee_Name;
                }
            }
        }


    }

    
}
