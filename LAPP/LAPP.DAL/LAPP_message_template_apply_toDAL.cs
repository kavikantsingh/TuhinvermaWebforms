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
    public class LAPP_message_template_apply_toDAL : BaseDAL
    {
        public int SAVE_LAPP_MSSAGE_TEMPLATE_AAPLY_TO(LAPP_message_template_apply_to objMsgTempApplTo)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            lstParameter.Add(new MySqlParameter("Apply_ID", objMsgTempApplTo.Apply_ID));
            lstParameter.Add(new MySqlParameter("Apply_Name", objMsgTempApplTo.Apply_Name));
            lstParameter.Add(new MySqlParameter("Apply_Description", objMsgTempApplTo.Apply_Description));
            lstParameter.Add(new MySqlParameter("Apply_Day_Before_Execution", objMsgTempApplTo.Apply_Day_Before_Execution));
            lstParameter.Add(new MySqlParameter("Is_Remainder", objMsgTempApplTo.Is_Reminder));
            lstParameter.Add(new MySqlParameter("Created_By", objMsgTempApplTo.Created_By));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objMsgTempApplTo.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Is_Active", objMsgTempApplTo.Is_Active));
            lstParameter.Add(new MySqlParameter("Created_On", objMsgTempApplTo.Created_On));
            lstParameter.Add(new MySqlParameter("DTS", objMsgTempApplTo.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_message_template_apply_to_Save", true, lstParameter.ToArray());

            return returnValue;
        }
        public int UPDATE_LAPP_MSSAGE_TEMPLATE_AAPLY_TO(LAPP_message_template_apply_to objMsgTempApplTo, int Apply_ID)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Apply_ID", objMsgTempApplTo.Apply_ID));
            lstParameter.Add(new MySqlParameter("U_Apply_Name", objMsgTempApplTo.Apply_Name));
            lstParameter.Add(new MySqlParameter("U_Apply_Description", objMsgTempApplTo.Apply_Description));
            lstParameter.Add(new MySqlParameter("U_Apply_Day_Before_Execution", objMsgTempApplTo.Apply_Day_Before_Execution));
            lstParameter.Add(new MySqlParameter("U_Is_Reminder", objMsgTempApplTo.Is_Reminder));
            lstParameter.Add(new MySqlParameter("U_Created_By", objMsgTempApplTo.Created_By));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objMsgTempApplTo.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objMsgTempApplTo.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Created_On", objMsgTempApplTo.Created_On));
            lstParameter.Add(new MySqlParameter("U_DTS", objMsgTempApplTo.DTS));

            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_message_template_apply_to_Update", lstParameter.ToArray());
            return returnValue;
        }

        public LAPP_message_template_apply_to Get_LAPP_message_template_apply_to_BY_ID(int G_Apply_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Apply_ID", G_Apply_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_message_template_apply_to_get_by_id", lstParameter.ToArray());
            LAPP_message_template_apply_to objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
                
        public void Delete_LAPP_message_template_apply_to(int D_Apply_ID)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_Apply_ID", D_Apply_ID));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_message_template_apply_to_delete_by_id", lstParameter.ToArray());
        }


        public List<LAPP_message_template_apply_to> Get_All_LAPP_message_template_apply_to()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_message_template_apply_to_get_all");
            List<LAPP_message_template_apply_to> lstEntity = new List<LAPP_message_template_apply_to>();
            LAPP_message_template_apply_to objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_message_template_apply_to FetchEntity(DataRow dr)
        {
            LAPP_message_template_apply_to objEntity = new LAPP_message_template_apply_to();



            if (dr.Table.Columns.Contains("Apply_ID") && dr["Apply_ID"] != DBNull.Value)
            {
                objEntity.Apply_ID = Convert.ToInt32(dr["Apply_ID"]);
            }

            if (dr.Table.Columns.Contains("Apply_Name") && dr["Apply_Name"] != DBNull.Value)
            {
                objEntity.Apply_Name = Convert.ToString(dr["Apply_Name"]);
            }

            if (dr.Table.Columns.Contains("Apply_Description") && dr["Apply_Description"] != DBNull.Value)
            {
                objEntity.Apply_Description = Convert.ToString(dr["Apply_Description"]);
            }

            if (dr.Table.Columns.Contains("Apply_Day_Before_Execution") && dr["Apply_Day_Before_Execution"] != DBNull.Value)
            {
                objEntity.Apply_Day_Before_Execution = Convert.ToInt32(dr["Apply_Day_Before_Execution"]);
            }
            if (dr.Table.Columns.Contains("Is_Reminder") && dr["Is_Reminder"] != DBNull.Value)
            {
                objEntity.Is_Reminder = Convert.ToBoolean(dr["Is_Reminder"]);
            }
         
            if (dr.Table.Columns.Contains("Created_By") && dr["Created_By"] != DBNull.Value)
            {
                objEntity.Created_By = Convert.ToInt32(dr["Created_By"]);
            }
            if (dr.Table.Columns.Contains("Is_Deleted") && dr["Is_Deleted"] != DBNull.Value)
            {
                objEntity.Is_Deleted = Convert.ToBoolean(dr["Is_Deleted"]);
            }

            if (dr.Table.Columns.Contains("Is_Active") && dr["Is_Active"] != DBNull.Value)
            {
                objEntity.Is_Active = Convert.ToBoolean(dr["Is_Active"]);
            }

            if (dr.Table.Columns.Contains("Created_On") && dr["Created_On"] != DBNull.Value)
            {
                objEntity.Created_On = Convert.ToDateTime(dr["Created_On"]);
            }

            if (dr.Table.Columns.Contains("DTS") && dr["DTS"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
            }
            if (dr.Table.Columns.Contains("Account_Type") && dr["Account_Type"] != DBNull.Value)
            {
                objEntity.Account_Type = Convert.ToInt32(dr["Account_Type"]);
            }
            return objEntity;
        }
    }
}
