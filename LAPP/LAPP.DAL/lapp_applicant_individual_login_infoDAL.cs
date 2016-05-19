using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using LAPP.ENTITY;
using LAPP.CORE;

namespace LAPP.DAL
{
    public class lapp_applicant_individual_login_infoDAL : BaseDAL
    {
        public int Save_lapp_applicant_individual_login_info(lapp_applicant_individual_login_info objLapp_applicant_info)
        {

            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Application_Type_ID", objLapp_applicant_info.Application_Type_ID));
            lstParameter.Add(new MySqlParameter("Application_Type", objLapp_applicant_info.Application_Type));
            lstParameter.Add(new MySqlParameter("Application_Number", objLapp_applicant_info.Application_Number));
            lstParameter.Add(new MySqlParameter("Applicant_Email", objLapp_applicant_info.Applicant_Email));
            lstParameter.Add(new MySqlParameter("Applicant_Password",Encryption.Base64Encrypt(objLapp_applicant_info.Applicant_Password)));
            lstParameter.Add(new MySqlParameter("Member_Type_ID", objLapp_applicant_info.Member_Type_ID));
            lstParameter.Add(new MySqlParameter("Member_Type", objLapp_applicant_info.Member_Type));
            lstParameter.Add(new MySqlParameter("Is_Temp_Password", objLapp_applicant_info.Is_Temp_Password));
            lstParameter.Add(new MySqlParameter("Is_Active", objLapp_applicant_info.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLapp_applicant_info.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objLapp_applicant_info.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objLapp_applicant_info.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objLapp_applicant_info.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objLapp_applicant_info.Modified_By));
            lstParameter.Add(new MySqlParameter("DTS", objLapp_applicant_info.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_applicant_individual_login_info_Save", true, lstParameter.ToArray());
            return returnValue;
        }

        public int Update_lapp_applicant_individual_login_info(lapp_applicant_individual_login_info objLapp_applicant_info)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Applicant_ID", objLapp_applicant_info.Applicant_ID));
            lstParameter.Add(new MySqlParameter("U_Application_Type_ID", objLapp_applicant_info.Application_Type_ID));
            lstParameter.Add(new MySqlParameter("U_Application_Type", objLapp_applicant_info.Application_Type));
            lstParameter.Add(new MySqlParameter("U_Application_Number", objLapp_applicant_info.Application_Number));
            lstParameter.Add(new MySqlParameter("U_Applicant_Email", objLapp_applicant_info.Applicant_Email));
            lstParameter.Add(new MySqlParameter("U_Applicant_Password", Encryption.Base64Encrypt(objLapp_applicant_info.Applicant_Password)));
            lstParameter.Add(new MySqlParameter("U_Member_Type", objLapp_applicant_info.Member_Type));
            lstParameter.Add(new MySqlParameter("U_Member_Type_ID", objLapp_applicant_info.Member_Type_ID));
            lstParameter.Add(new MySqlParameter("U_Is_Temp_Password", objLapp_applicant_info.Is_Temp_Password));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objLapp_applicant_info.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objLapp_applicant_info.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Created_On", objLapp_applicant_info.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLapp_applicant_info.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objLapp_applicant_info.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objLapp_applicant_info.Modified_By));
            lstParameter.Add(new MySqlParameter("U_DTS", objLapp_applicant_info.DTS));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_applicant_individual_login_info_Update", lstParameter.ToArray());
            return returnValue;
        }

        public List<lapp_applicant_individual_login_info> Get_All_lapp_applicant_individual_login_info()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_applicant_individual_login_info_get_all");
            List<lapp_applicant_individual_login_info> lstEntity = new List<lapp_applicant_individual_login_info>();
            lapp_applicant_individual_login_info objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public lapp_applicant_individual_login_info Get_lapp_applicant_individual_login_info_By_Applicant_ID(int G_Applicant_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Applicant_ID", G_Applicant_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_applicant_individual_login_info_get_by_Applicant_ID", lstParameter.ToArray());
            lapp_applicant_individual_login_info objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public lapp_applicant_individual_login_info Get_lapp_applicant_individual_login_info_By_Application_Number(string G_Application_Number)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Application_Number", G_Application_Number));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_applicant_individual_login_info_by_Application_Number", lstParameter.ToArray());
            lapp_applicant_individual_login_info objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public lapp_applicant_individual_login_info Get_lapp_applicant_individual_login_info_Email(string G_Applicant_Email)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Applicant_Email", G_Applicant_Email));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_applicant_individual_login_info_by_Applicant_Email", lstParameter.ToArray());
            lapp_applicant_individual_login_info objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public lapp_applicant_individual_login_info Get_Lapp_applicant_info_By_Query_Single(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            lapp_applicant_individual_login_info objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public List<lapp_applicant_individual_login_info> Get_Lapp_applicant_info_By_Query_List(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            List<lapp_applicant_individual_login_info> lstEntity = new List<lapp_applicant_individual_login_info>();
            lapp_applicant_individual_login_info objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public lapp_applicant_individual_login_info Get_lapp_applicant_individual_login_infoBAL_Get_BY_Email_and_Password(string G_User_Name, string G_Password)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            string Query = "select * from lapp_applicant_individual_login_info where Applicant_Email='" + G_User_Name + "' and Applicant_Password ='" + Encryption.Base64Encrypt(G_Password) + "' and is_deleted != 1;";
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            lapp_applicant_individual_login_info objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        private lapp_applicant_individual_login_info FetchEntity(DataRow dr)
        {
            lapp_applicant_individual_login_info objEntity = new lapp_applicant_individual_login_info();
            if (dr.Table.Columns.Contains("Applicant_ID") && dr["Applicant_ID"] != DBNull.Value)
            {
                objEntity.Applicant_ID = Convert.ToInt32(dr["Applicant_ID"]);
            }
            if (dr.Table.Columns.Contains("Application_Type_ID") && dr["Application_Type_ID"] != DBNull.Value)
            {
                objEntity.Application_Type_ID = Convert.ToInt32(dr["Application_Type_ID"]);
            }
            if (dr.Table.Columns.Contains("Application_Type") && dr["Application_Type"] != DBNull.Value)
            {
                objEntity.Application_Type = Convert.ToString(dr["Application_Type"]);
            }

            if (dr.Table.Columns.Contains("Member_Type_ID") && dr["Member_Type_ID"] != DBNull.Value)
            {
                objEntity.Member_Type_ID = Convert.ToInt32(dr["Member_Type_ID"]);
            }
            if (dr.Table.Columns.Contains("Member_Type") && dr["Member_Type"] != DBNull.Value)
            {
                objEntity.Member_Type = Convert.ToString(dr["Member_Type"]);
            }


            if (dr.Table.Columns.Contains("Application_Number") && dr["Application_Number"] != DBNull.Value)
            {
                objEntity.Application_Number = Convert.ToString(dr["Application_Number"]);
            }
            if (dr.Table.Columns.Contains("Applicant_Email") && dr["Applicant_Email"] != DBNull.Value)
            {
                objEntity.Applicant_Email = Convert.ToString(dr["Applicant_Email"]);
            }
            if (dr.Table.Columns.Contains("Applicant_Password") && dr["Applicant_Password"] != DBNull.Value)
            {
                objEntity.Applicant_Password =Encryption.Base64Decrypt(Convert.ToString(dr["Applicant_Password"]));
            }
            if (dr.Table.Columns.Contains("Is_Temp_Password") && dr["Is_Temp_Password"] != DBNull.Value)
            {
                objEntity.Is_Temp_Password = Convert.ToBoolean(dr["Is_Temp_Password"]);
            }
            if (dr.Table.Columns.Contains("Is_Active") && dr["Is_Active"] != DBNull.Value)
            {
                objEntity.Is_Active = Convert.ToBoolean(dr["Is_Active"]);
            }
            if (dr.Table.Columns.Contains("Is_Deleted") && dr["Is_Deleted"] != DBNull.Value)
            {
                objEntity.Is_Deleted = Convert.ToBoolean(dr["Is_Deleted"]);
            }
            if (dr.Table.Columns.Contains("Created_On") && dr["Created_On"] != DBNull.Value)
            {
                objEntity.Created_On = Convert.ToDateTime(dr["Created_On"]);
            }
            if (dr.Table.Columns.Contains("Created_By") && dr["Created_By"] != DBNull.Value)
            {
                objEntity.Created_By = Convert.ToString(dr["Created_By"]);
            }
            if (dr.Table.Columns.Contains("Modified_On") && dr["Modified_On"] != DBNull.Value)
            {
                objEntity.Modified_On = Convert.ToDateTime(dr["Modified_On"]);
            }
            if (dr.Table.Columns.Contains("Modified_By") && dr["Modified_By"] != DBNull.Value)
            {
                objEntity.Modified_By = Convert.ToString(dr["Modified_By"]);
            }
            if (dr.Table.Columns.Contains("DTS") && dr["DTS"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
            }
            return objEntity;
        }


    }
}
