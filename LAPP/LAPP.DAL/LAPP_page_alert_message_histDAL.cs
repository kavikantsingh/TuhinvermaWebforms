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
    public class LAPP_page_alert_message_histDAL : BaseDAL
    {
        public int Save_LAPP_page_alert_message_hist(LAPP_page_alert_message_hist objLAPP_page_alert_message_hist)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Page_Alert_Message_Id", objLAPP_page_alert_message_hist.Page_Alert_Message_Id));
            lstParameter.Add(new MySqlParameter("Template_Type_Id", objLAPP_page_alert_message_hist.Template_Type_Id));
            lstParameter.Add(new MySqlParameter("Template_Name", objLAPP_page_alert_message_hist.Template_Name));
            lstParameter.Add(new MySqlParameter("Template_Subject", objLAPP_page_alert_message_hist.Template_Subject));
            lstParameter.Add(new MySqlParameter("Message", objLAPP_page_alert_message_hist.Message));
            lstParameter.Add(new MySqlParameter("Start_Date", objLAPP_page_alert_message_hist.Start_Date));
            lstParameter.Add(new MySqlParameter("End_Date", objLAPP_page_alert_message_hist.End_Date));
            lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_page_alert_message_hist.Is_Active));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_page_alert_message_hist.Created_By));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_page_alert_message_hist.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objLAPP_page_alert_message_hist.Created_On));
            lstParameter.Add(new MySqlParameter("DTS", objLAPP_page_alert_message_hist.DTS));
            lstParameter.Add(new MySqlParameter("Action", objLAPP_page_alert_message_hist.Action));
            lstParameter.Add(new MySqlParameter("Modified_By", objLAPP_page_alert_message_hist.Modified_By));
            lstParameter.Add(new MySqlParameter("Modified_DTS", objLAPP_page_alert_message_hist.Modified_DTS));
            lstParameter.Add(new MySqlParameter("Apply_ID", objLAPP_page_alert_message_hist.Apply_ID));
            lstParameter.Add(new MySqlParameter("Account_Type", objLAPP_page_alert_message_hist.Account_Type));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_page_alert_message_hist_Save", true, lstParameter.ToArray());

            return returnValue;
        }

        private LAPP_page_alert_message_hist FetchEntity(DataRow dr)
        {
            LAPP_page_alert_message_hist objEntity = new LAPP_page_alert_message_hist();
            if (dr.Table.Columns.Contains("Page_Alert_Message_Id") && dr["Page_Alert_Message_Id"] != DBNull.Value)
            {
                objEntity.Page_Alert_Message_Id = Convert.ToInt32(dr["Page_Alert_Message_Id"]);
            }

            if (dr.Table.Columns.Contains("Template_Type_Id") && dr["Template_Type_Id"] != DBNull.Value)
            {
                objEntity.Template_Type_Id = Convert.ToInt32(dr["Template_Type_Id"]);
            }

            if (dr.Table.Columns.Contains("Template_Name") && dr["Template_Name"] != DBNull.Value)
            {
                objEntity.Template_Name = Convert.ToString(dr["Template_Name"]);
            }
            if (dr.Table.Columns.Contains("Template_Subject") && dr["Template_Subject"] != DBNull.Value)
            {
                objEntity.Template_Subject = Convert.ToString(dr["Template_Subject"]);
            }
            if (dr.Table.Columns.Contains("Message") && dr["Message"] != DBNull.Value)
            {
                objEntity.Message = Convert.ToString(dr["Message"]);
            }
            if (dr.Table.Columns.Contains("Start_Date") && dr["Start_Date"] != DBNull.Value)
            {
                objEntity.Start_Date = Convert.ToDateTime(dr["Start_Date"]);
            }
            if (dr.Table.Columns.Contains("End_Date") && dr["End_Date"] != DBNull.Value)
            {
                objEntity.End_Date = Convert.ToDateTime(dr["End_Date"]);
            }
            if (dr.Table.Columns.Contains("Is_Active") && dr["Is_Active"] != DBNull.Value)
            {
                objEntity.Is_Active = Convert.ToBoolean(dr["Is_Active"]);
            }
            if (dr.Table.Columns.Contains("Created_By") && dr["Created_By"] != DBNull.Value)
            {
                objEntity.Created_By = Convert.ToInt32(dr["Created_By"]);
            }
            if (dr.Table.Columns.Contains("Is_Deleted") && dr["Is_Deleted"] != DBNull.Value)
            {
                objEntity.Is_Deleted = Convert.ToBoolean(dr["Is_Deleted"]);
            }
            if (dr.Table.Columns.Contains("Created_On") && dr["Created_On"] != DBNull.Value)
            {
                objEntity.Created_On = Convert.ToDateTime(dr["Created_On"]);
            }
            if (dr.Table.Columns.Contains("dts") && dr["dts"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
            }
            if (dr.Table.Columns.Contains("Action") && dr["Action"] != DBNull.Value)
            {
                objEntity.Action = Convert.ToString(dr["Action"]);
            }
            if (dr.Table.Columns.Contains("Modified_By") && dr["Modified_By"] != DBNull.Value)
            {
                objEntity.Modified_By = Convert.ToInt32(dr["Modified_By"]);
            }
            if (dr.Table.Columns.Contains("Modified_DTS") && dr["Modified_DTS"] != DBNull.Value)
            {
                objEntity.Modified_DTS = Convert.ToDateTime(dr["Modified_DTS"]);
            }
            if (dr.Table.Columns.Contains("Apply_ID") && dr["Apply_ID"] != DBNull.Value)
            {
                objEntity.Apply_ID = Convert.ToInt32(dr["Apply_ID"]);
            }
            if (dr.Table.Columns.Contains("Account_Type") && dr["Account_Type"] != DBNull.Value)
            {
                objEntity.Account_Type = Convert.ToInt32(dr["Account_Type"]);
            }
            return objEntity;

        }

    }
}
