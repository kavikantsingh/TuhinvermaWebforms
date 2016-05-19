using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAPP_country_code : BaseEntity
    {
        public string Country_Code { get; set; }
        public string Country_Name { get; set; }
        public DateTime Created_On { get; set; }
        public DateTime DTS { get; set; }
    }
}
