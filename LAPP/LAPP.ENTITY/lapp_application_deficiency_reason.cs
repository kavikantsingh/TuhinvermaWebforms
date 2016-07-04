﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
   public class lapp_application_deficiency_reason : BaseEntity
    {
        public int Deficiency_ID { get; set; }
        public int Application_Type_ID { get; set; }
        public string Deficiency_Name { get; set; }
        public string Description { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public int Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public int Modified_By { get; set; }
        public DateTime DTS { get; set; }
        public string Name { get; set; }
        public DateTime End_Date { get; set; }
        public bool Additional_Text { get; set; }
        public int Deficiency_Template_ID { get; set; }
    }
}
