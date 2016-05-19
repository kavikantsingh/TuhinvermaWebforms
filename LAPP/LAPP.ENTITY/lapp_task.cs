using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class lapp_task : BaseEntity
    {
        public int task_Id { get; set; }
        public int Individual_Id { get; set; }
        public string Task_Type { get; set; }
        public int Status_ID { get; set; }
        public string Status { get; set; }
        public string Due_Date { get; set; }
        public bool Date_Completed { get; set; }
        public string Comments { get; set; }

        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public string Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public string Modified_By { get; set; }
    }
}
