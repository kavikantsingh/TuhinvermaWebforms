using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY
{
    public class lapp_report_table:BaseEntity
    {
        public int Table_ID { get; set; }
        public string Table_Name { get; set; }
        public string Table_Pk_Name { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public int Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public int Modified_By { get; set; }
        public DateTime DTS { get; set; }
    }

    public class lapp_report_Columns
    {
        public string ColumnName { get; set; }
        public string DataType { get; set; }
        public string ReportLabel { get; set; }
        public string Value { get; set; }


        public string Key { get; set; }

        public string Extra { get; set; }

        public bool Is_AutoIncreament { get; set; }

        public bool Is_PrimaryKey { get; set; }
    }
}
