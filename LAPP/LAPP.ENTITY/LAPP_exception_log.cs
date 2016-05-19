using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class LAPP_exception_log : BaseEntity
    {
        public int Exception_Log_Id { get; set; }
        public DateTime Date { get; set; }
        public string Thread { get; set; }
        public string Context { get; set; }
        public string Level { get; set; }
        public string Logger { get; set; }
        public string Message { get; set; }
        public string Exception { get; set; }
        public int User_Id { get; set; }
        public int Reference_Id { get; set; }
        public string Reference_Type_Id { get; set; }
        public string Url { get; set; }
    }
}
