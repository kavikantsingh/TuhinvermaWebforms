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
   public class LAPP_message_template_apply_to_histDAL: BaseDAL
    {
       public int SAVE_LAPP_MSSAGE_TEMPLATE_AAPLY_TO_Hist(LAPP_message_template_apply_to_hist objLAPP_message_template_apply_to_hist)
       {
           DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();

           lstParameter.Add(new MySqlParameter("Apply_ID", objLAPP_message_template_apply_to_hist.Apply_ID));
           lstParameter.Add(new MySqlParameter("Apply_Name", objLAPP_message_template_apply_to_hist.Apply_Name));
           lstParameter.Add(new MySqlParameter("Apply_Description", objLAPP_message_template_apply_to_hist.Apply_Description));
           lstParameter.Add(new MySqlParameter("Apply_Day_Before_Execution", objLAPP_message_template_apply_to_hist.Apply_Day_Before_Execution));
           lstParameter.Add(new MySqlParameter("Created_By", objLAPP_message_template_apply_to_hist.Created_By));
           lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_message_template_apply_to_hist.Is_Deleted));
           lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_message_template_apply_to_hist.Is_Active));
           lstParameter.Add(new MySqlParameter("Created_On", objLAPP_message_template_apply_to_hist.Created_On));
           lstParameter.Add(new MySqlParameter("DTS", objLAPP_message_template_apply_to_hist.DTS));
           lstParameter.Add(new MySqlParameter("Action", objLAPP_message_template_apply_to_hist.Action));
           lstParameter.Add(new MySqlParameter("Modified_By", objLAPP_message_template_apply_to_hist.Modified_By));
           lstParameter.Add(new MySqlParameter("Modified_DTS", objLAPP_message_template_apply_to_hist.Modified_DTS));
           lstParameter.Add(new MySqlParameter("Account_Type", objLAPP_message_template_apply_to_hist.Account_Type));
           lstParameter.Add(new MySqlParameter("Is_Reminder", objLAPP_message_template_apply_to_hist.Is_Reminder));

           MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
           returnParam.Direction = ParameterDirection.ReturnValue;
           lstParameter.Add(returnParam);
           int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_message_template_apply_to_hist_Save", true, lstParameter.ToArray());

           return returnValue;
       }
    }
}
