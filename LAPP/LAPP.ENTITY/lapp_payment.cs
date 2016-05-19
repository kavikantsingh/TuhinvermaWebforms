using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LAPP.CORE;

namespace LAPP.ENTITY
{
    public class Lapp_payment : BaseEntity
    {
        public int Payment_ID { get; set; }
        public int Individual_ID { get; set; }
        public int Application_Type_ID { get; set; }
        public string Application_Type { get; set; }

        public string Application_Type_Name { get; set; }

        public string Application_Number { get; set; }
        public string Invoice_Number { get; set; }
        public int Payment_From_ID { get; set; }
        public string Payment_From { get; set; }
        public int Payment_mode_ID { get; set; }
        public string Payment_mode { get; set; }
        public int Payment_Type_ID { get; set; }
        public string Payment_Type { get; set; }
        public string Reference_Number { get; set; }
        public DateTime Transaction_Date { get; set; }
        public string Gateway_Response_Code { get; set; }
        public string Gateway_Reference_Number { get; set; }
        public decimal Amount { get; set; }
        public bool Is_Credit { get; set; }
        public string Payment_Method { get; set; }
        public int Payment_Method_ID { get; set; }
        public string Gateway_Response_Text { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public int Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public int Modified_By { get; set; }
        public DateTime DTS { get; set; }

        public string ENcriptedPrint
        {
            get
            {
                if (Payment_ID > 0)
                {
                    return "~/UI/DownloadPrintReceipt.aspx?id=" + Encryption.Base64Encrypt("id=" + Payment_ID);
                }
                else
                {
                    return "";
                }
            }
        }
    }
}
