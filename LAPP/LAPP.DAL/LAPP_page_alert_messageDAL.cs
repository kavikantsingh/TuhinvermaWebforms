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
    public class LAPP_page_alert_messageDAL : BaseDAL
    {
        public int Save_LAPP_page_alert_message(LAPP_page_alert_message objLAPP_page_alert_message)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("page_alert_message_id", objLAPP_page_alert_message.Page_Alert_Message_Id));
            lstParameter.Add(new MySqlParameter("template_type_id", objLAPP_page_alert_message.Template_Type_Id));
            lstParameter.Add(new MySqlParameter("template_name", objLAPP_page_alert_message.Template_Name));
            lstParameter.Add(new MySqlParameter("template_subject", objLAPP_page_alert_message.Template_Subject));
            lstParameter.Add(new MySqlParameter("message", objLAPP_page_alert_message.Message));
            lstParameter.Add(new MySqlParameter("start_date", objLAPP_page_alert_message.Start_Date));
            lstParameter.Add(new MySqlParameter("end_date", objLAPP_page_alert_message.End_Date));
            lstParameter.Add(new MySqlParameter("is_active", objLAPP_page_alert_message.Is_Active));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_page_alert_message.Created_By));
            lstParameter.Add(new MySqlParameter("is_deleted", objLAPP_page_alert_message.Is_Deleted));
            lstParameter.Add(new MySqlParameter("created_on", objLAPP_page_alert_message.Created_On));
            lstParameter.Add(new MySqlParameter("dts", objLAPP_page_alert_message.DTS));
            lstParameter.Add(new MySqlParameter("Apply_ID", objLAPP_page_alert_message.Apply_ID));
            lstParameter.Add(new MySqlParameter("Account_Type", objLAPP_page_alert_message.Account_Type));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_page_alert_message_Save", true, lstParameter.ToArray());

            return returnValue;
        }

        public int Update_LAPP_page_alert_message(LAPP_page_alert_message objLAPP_page_alert_message, int page_alert_message_id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_page_alert_message_id", page_alert_message_id));
            lstParameter.Add(new MySqlParameter("U_template_type_id", objLAPP_page_alert_message.Template_Type_Id));
            lstParameter.Add(new MySqlParameter("U_template_name", objLAPP_page_alert_message.Template_Name));
            lstParameter.Add(new MySqlParameter("U_template_subject", objLAPP_page_alert_message.Template_Subject));
            lstParameter.Add(new MySqlParameter("U_message", objLAPP_page_alert_message.Message));
            lstParameter.Add(new MySqlParameter("U_start_date", objLAPP_page_alert_message.Start_Date));
            lstParameter.Add(new MySqlParameter("U_end_date", objLAPP_page_alert_message.End_Date));
            lstParameter.Add(new MySqlParameter("U_is_active", objLAPP_page_alert_message.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLAPP_page_alert_message.Created_By));
            lstParameter.Add(new MySqlParameter("U_is_deleted", objLAPP_page_alert_message.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_created_on", objLAPP_page_alert_message.Created_On));
            lstParameter.Add(new MySqlParameter("U_dts", objLAPP_page_alert_message.DTS));
            lstParameter.Add(new MySqlParameter("U_Apply_ID", objLAPP_page_alert_message.Apply_ID));
            lstParameter.Add(new MySqlParameter("U_Account_Type", objLAPP_page_alert_message.Account_Type));
            //MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            //returnParam.Direction = ParameterDirection.ReturnValue;
            //lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_page_alert_message_update", lstParameter.ToArray());
            return returnValue;

        }

        public LAPP_page_alert_message Get_LAPP_page_alert_message_BY_ID(int G_page_alert_message_id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_page_alert_message_id", G_page_alert_message_id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_page_alert_message_GET_By_ID", lstParameter.ToArray());
            LAPP_page_alert_message objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public LAPP_page_alert_message Get_LAPP_page_alert_message_by_Apply_Id(int G_Apply_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Apply_ID", G_Apply_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_page_alert_message_by_Apply_Id", lstParameter.ToArray());
            LAPP_page_alert_message objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }


        public void Delete_LAPP_page_alert_message(int D_page_alert_message_id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_page_alert_message_id", D_page_alert_message_id));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_page_alert_message_Delete_By_ID", lstParameter.ToArray());
        }

        public List<LAPP_page_alert_message> Get_All_LAPP_home_page_message()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_page_alert_message_GET_ALL");
            List<LAPP_page_alert_message> lstEntity = new List<LAPP_page_alert_message>();
            LAPP_page_alert_message objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<LAPP_page_alert_message> Get_LAPP_page_alert_message_by_Template_Name(string G_Template_Name)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Template_Name", G_Template_Name));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_page_alert_message_get_by_Template_Name", lstParameter.ToArray());
            List<LAPP_page_alert_message> lstEntity = new List<LAPP_page_alert_message>();
            LAPP_page_alert_message objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<LAPP_page_alert_message> Get_lapp_page_alert_message_GetBy_AppTyId(int G_template_type_id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_template_type_id", G_template_type_id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_page_alert_message_GetBy_AppTy", lstParameter.ToArray());
            List<LAPP_page_alert_message> lstEntity = new List<LAPP_page_alert_message>();
            LAPP_page_alert_message objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<LAPP_page_alert_message> Get_lapp_page_alert_message_GetBy_template_name(string G_template_name)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_template_name", G_template_name));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_page_alert_message_GetBy_template_name", lstParameter.ToArray());
            List<LAPP_page_alert_message> lstEntity = new List<LAPP_page_alert_message>();
            LAPP_page_alert_message objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<LAPP_page_alert_message> Get_lapp_page_alert_message_GetBy_AppTyId_template_name(int G_template_type_id, string G_template_name)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_template_type_id", G_template_type_id));
            lstParameter.Add(new MySqlParameter("G_template_name", G_template_name));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_page_alert_message_GetBy_AppTyId_template_name", lstParameter.ToArray());
            List<LAPP_page_alert_message> lstEntity = new List<LAPP_page_alert_message>();
            LAPP_page_alert_message objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_page_alert_message FetchEntity(DataRow dr)
        {
            LAPP_page_alert_message objEntity = new LAPP_page_alert_message();
            if (dr.Table.Columns.Contains("page_alert_message_id") && dr["page_alert_message_id"] != DBNull.Value)
            {
                objEntity.Page_Alert_Message_Id = Convert.ToInt32(dr["page_alert_message_id"]);
            }

            if (dr.Table.Columns.Contains("template_type_id") && dr["template_type_id"] != DBNull.Value)
            {
                objEntity.Template_Type_Id = Convert.ToInt32(dr["template_type_id"]);
            }

            if (dr.Table.Columns.Contains("template_name") && dr["template_name"] != DBNull.Value)
            {
                objEntity.Template_Name = Convert.ToString(dr["template_name"]);
            }
            if (dr.Table.Columns.Contains("template_subject") && dr["template_subject"] != DBNull.Value)
            {
                objEntity.Template_Subject = Convert.ToString(dr["template_subject"]);
            }
            if (dr.Table.Columns.Contains("message") && dr["message"] != DBNull.Value)
            {
                objEntity.Message = Convert.ToString(dr["message"]);
            }
            if (dr.Table.Columns.Contains("start_date") && dr["start_date"] != DBNull.Value)
            {
                objEntity.Start_Date = Convert.ToDateTime(dr["start_date"]);
            }
            if (dr.Table.Columns.Contains("end_date") && dr["end_date"] != DBNull.Value)
            {
                objEntity.End_Date = Convert.ToDateTime(dr["end_date"]);
            }
            if (dr.Table.Columns.Contains("is_active") && dr["is_active"] != DBNull.Value)
            {
                objEntity.Is_Active = Convert.ToBoolean(dr["is_active"]);
            }
            if (dr.Table.Columns.Contains("Created_By") && dr["Created_By"] != DBNull.Value)
            {
                objEntity.Created_By = Convert.ToInt32(dr["Created_By"]);
            }
            if (dr.Table.Columns.Contains("is_deleted") && dr["is_deleted"] != DBNull.Value)
            {
                objEntity.Is_Deleted = Convert.ToBoolean(dr["is_deleted"]);
            }
            if (dr.Table.Columns.Contains("created_on") && dr["created_on"] != DBNull.Value)
            {
                objEntity.Created_On = Convert.ToDateTime(dr["created_on"]);
            }
            if (dr.Table.Columns.Contains("dts") && dr["dts"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["dts"]);
            }
            if (dr.Table.Columns.Contains("Apply_ID") && dr["Apply_ID"] != DBNull.Value)
            {
                objEntity.Apply_ID = Convert.ToInt32(dr["Apply_ID"]);
            }
            if (dr.Table.Columns.Contains("Account_Type") && dr["Account_Type"] != DBNull.Value)
            {
                objEntity.Account_Type = Convert.ToInt32(dr["Account_Type"]);
            }
            if (dr.Table.Columns.Contains("Name") && dr["Name"] != DBNull.Value)
            {
                objEntity.Name = Convert.ToString(dr["Name"]);
            }


            return objEntity;

        }
    }
}
