using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class lapp_notes : BaseEntity
    {
        public int Note_Id { get; set; }
        public int Individual_Id { get; set; }
        public string Note { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public string Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public string Modified_By { get; set; }

        public string Create_By_Name { get; set; }

    }
}
