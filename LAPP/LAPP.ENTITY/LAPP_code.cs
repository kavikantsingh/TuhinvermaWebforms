using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAPP_code : BaseEntity
    {
        public int Code_ID { get; set; }
        public string Code_Name { get; set; }
        public int Code_Type_ID { get; set; }
        public string Code_Type_CD { get; set; }
        public string Code_Description { get; set; }
        public int Display_Order { get; set; }
        public bool Default_Display { get; set; }
        public DateTime Created_On { get; set; }
        public int Created_By { get; set; }
        public bool Is_Deleted { get; set; }
        public bool Is_Active { get; set; }
        public DateTime DTS { get; set; }
        public LAPP_code_type objCodeTy { get; set; }

        public string CodeType { get; set; }

        //public string CodeType
        //{
        //    get
        //    {
        //        if (objCodeTy != null)
        //        {

        //            return objCodeTy.Code_Type_CD;
        //        }
        //        else
        //        {
        //            return "";
        //        }
        //    }
        //}
        public int NoOfRecord { get; set; }
    }
}
