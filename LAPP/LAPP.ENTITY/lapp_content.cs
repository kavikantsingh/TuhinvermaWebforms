using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
   public class lapp_content : BaseEntity
    {
        public int Content_ID { get; set; }
        public string Name { get; set; }
        public string Content_Text { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public int Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public int Modified_By { get; set; }
        public DateTime DTS { get; set; }

    }
}
