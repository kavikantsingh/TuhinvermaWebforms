using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;
using System.Data.SqlClient;
using LAPP.ENTITY;
using LAPP.DAL;

namespace LAPP.BAL
{
   public class lapp_report_tableBAL:BaseBAL
    {
       lapp_report_tableDAL objDAL = new lapp_report_tableDAL();
       public int Save_lapp_report_table(lapp_report_table objlapp_report_table)
       {
           return objDAL.Save_lapp_report_table(objlapp_report_table);
       }

       public int Update_lapp_report_table(lapp_report_table objlapp_report_table)
       {
           return objDAL.Update_lapp_report_table(objlapp_report_table);
       }

       public lapp_report_table Get_lapp_report_table_Get_by_Table_ID(int G_Table_ID)
       {
           return objDAL.Get_lapp_report_table_Get_by_Table_ID(G_Table_ID);
       }

       public lapp_report_table Get_lapp_report_table_Get_by_Table_Name(string G_Table_Name)
       {
           return objDAL.Get_lapp_report_table_Get_by_Table_Name(G_Table_Name);
       }

       public lapp_report_table Get_lapp_report_table_By_Query(string Query)
       {
           return objDAL.Get_lapp_report_table_By_Query(Query);
       }

       public List<lapp_report_table> Get_All_lapp_report_table_By_Query(string Query)
       {
           return objDAL.Get_All_lapp_report_table_By_Query(Query);
       }
    }
}
