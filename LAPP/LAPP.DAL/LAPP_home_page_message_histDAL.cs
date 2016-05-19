using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using LAPP.ENTITY;

namespace LAPP.DAL
{
   public class LAPP_home_page_message_histDAL:BaseDAL
    {
       public int Save_LAPP_home_page_message_hist(LAPP_home_page_message_hist objLAPP_home_page_message_hist)
       {
           DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           lstParameter.Add(new MySqlParameter("home_page_message_id", objLAPP_home_page_message_hist.Home_Page_Message_Id));
           lstParameter.Add(new MySqlParameter("message_type", objLAPP_home_page_message_hist.Message_Type));
           lstParameter.Add(new MySqlParameter("message_content", objLAPP_home_page_message_hist.Message_Content));
           lstParameter.Add(new MySqlParameter("start_date", objLAPP_home_page_message_hist.Start_Date));
           lstParameter.Add(new MySqlParameter("end_date", objLAPP_home_page_message_hist.End_Date));
           lstParameter.Add(new MySqlParameter("sort_order", objLAPP_home_page_message_hist.Sort_Order));
           lstParameter.Add(new MySqlParameter("is_active", objLAPP_home_page_message_hist.Is_Active));
           lstParameter.Add(new MySqlParameter("is_deleted", objLAPP_home_page_message_hist.Is_Deleted));
           lstParameter.Add(new MySqlParameter("created_on", objLAPP_home_page_message_hist.Created_On));
           lstParameter.Add(new MySqlParameter("dts", objLAPP_home_page_message_hist.DTS));
           lstParameter.Add(new MySqlParameter("Action", objLAPP_home_page_message_hist.Action));
           lstParameter.Add(new MySqlParameter("Modified_By", objLAPP_home_page_message_hist.Modified_By));
           lstParameter.Add(new MySqlParameter("Modified_DTS", objLAPP_home_page_message_hist.Modified_DTS));
           lstParameter.Add(new MySqlParameter("Created_By", objLAPP_home_page_message_hist.Created_By));
           MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
           returnParam.Direction = ParameterDirection.ReturnValue;
           lstParameter.Add(returnParam);
           int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_home_page_message_hist_Save", true, lstParameter.ToArray());

           return returnValue;
       }
    }
}
