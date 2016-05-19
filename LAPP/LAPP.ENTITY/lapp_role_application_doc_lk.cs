using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
   public class lapp_role_application_doc_lk:BaseEntity
    {
       public int Doc_ID { get; set; }
       public int Role_ID { get; set; }
       public int Application_ID { get; set; }
       public bool C { get; set; }
       public bool R { get; set; }
       public bool U { get; set; }
       public bool D { get; set; }
       public string Name { get; set; }
    }
}
