using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class lapp_documents : BaseEntity
    {
        public int Document_Id { get; set; }
        public int Individual_Id { get; set; }
        public int Status_ID { get; set; }
        public string Status { get; set; }
        public string Document_Type { get; set; }
        public DateTime Received_On { get; set; }
        public string File_Type { get; set; }
        public int File_Id { get; set; }
        public int File_Type_Id { get; set; }
        public string File_Name { get; set; }
        public string File_Path { get; set; }
        public string Comments { get; set; }

        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public string Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public string Modified_By { get; set; }
    }
}
