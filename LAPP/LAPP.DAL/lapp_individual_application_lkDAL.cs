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
    public class lapp_individual_application_lkDAL : BaseDAL
    {
        public int Save_lapp_individual_application_lk(lapp_individual_application_lk objlapp_individual_application_lk)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Application_Number", objlapp_individual_application_lk.Application_Number));
            lstParameter.Add(new MySqlParameter("Applicant_ID", objlapp_individual_application_lk.Applicant_ID));
            lstParameter.Add(new MySqlParameter("Application_Type", objlapp_individual_application_lk.Application_Type));
            lstParameter.Add(new MySqlParameter("ApplicationType_ID", objlapp_individual_application_lk.ApplicationType_ID));
            lstParameter.Add(new MySqlParameter("Individual_Id", objlapp_individual_application_lk.Individual_Id));
            lstParameter.Add(new MySqlParameter("Verified", objlapp_individual_application_lk.Verified));
            lstParameter.Add(new MySqlParameter("Verified_On", objlapp_individual_application_lk.Verified_On));
            lstParameter.Add(new MySqlParameter("Submitted_On", objlapp_individual_application_lk.Submitted_On));
            lstParameter.Add(new MySqlParameter("Denied", objlapp_individual_application_lk.Denied));
            lstParameter.Add(new MySqlParameter("Denied_On", objlapp_individual_application_lk.Denied_On));
            lstParameter.Add(new MySqlParameter("Deficient", objlapp_individual_application_lk.Deficient));
            lstParameter.Add(new MySqlParameter("Deficient_On", objlapp_individual_application_lk.Deficient_On));
            lstParameter.Add(new MySqlParameter("Approved", objlapp_individual_application_lk.Approved));
            lstParameter.Add(new MySqlParameter("Approved_On", objlapp_individual_application_lk.Approved_On));
            lstParameter.Add(new MySqlParameter("DTS", objlapp_individual_application_lk.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_individual_application_lk_by_Save", true, lstParameter.ToArray());
            return returnValue;
        }
        public int Update_lapp_individual_application_lk(lapp_individual_application_lk objlapp_individual_application_lk)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Application_Number", objlapp_individual_application_lk.Application_Number));
            lstParameter.Add(new MySqlParameter("U_Applicant_ID", objlapp_individual_application_lk.Applicant_ID));
            lstParameter.Add(new MySqlParameter("U_Application_Type", objlapp_individual_application_lk.Application_Type));
            lstParameter.Add(new MySqlParameter("U_ApplicationType_ID", objlapp_individual_application_lk.ApplicationType_ID));
            lstParameter.Add(new MySqlParameter("U_Individual_Id", objlapp_individual_application_lk.Individual_Id));
            lstParameter.Add(new MySqlParameter("U_Verified", objlapp_individual_application_lk.Verified));
            lstParameter.Add(new MySqlParameter("U_Verified_On", objlapp_individual_application_lk.Verified_On));
            lstParameter.Add(new MySqlParameter("U_Denied", objlapp_individual_application_lk.Denied));
            lstParameter.Add(new MySqlParameter("U_Denied_On", objlapp_individual_application_lk.Denied_On));
            lstParameter.Add(new MySqlParameter("U_Deficient", objlapp_individual_application_lk.Deficient));
            lstParameter.Add(new MySqlParameter("U_Deficient_On", objlapp_individual_application_lk.Deficient_On));
            lstParameter.Add(new MySqlParameter("U_Approved", objlapp_individual_application_lk.Approved));
            lstParameter.Add(new MySqlParameter("U_Approved_On", objlapp_individual_application_lk.Approved_On));
            lstParameter.Add(new MySqlParameter("U_DTS", objlapp_individual_application_lk.DTS));
            lstParameter.Add(new MySqlParameter("U_Submitted_On", objlapp_individual_application_lk.Submitted_On));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_individual_application_lk_by_Update", lstParameter.ToArray());
            return returnValue;
        }
        public lapp_individual_application_lk Get_lapp_individual_application_lk_By_Individual_Id(int G_Individual_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Individual_Id", G_Individual_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_individual_application_lk_by_Individual_Id", lstParameter.ToArray());
            lapp_individual_application_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public lapp_individual_application_lk Get_lapp_individual_application_lk_By_ApplicationType_ID(int G_ApplicationType_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_ApplicationType_ID", G_ApplicationType_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_individual_application_lk_by_ApplicationType_ID", lstParameter.ToArray());
            lapp_individual_application_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public List<lapp_individual_application_lk> Get_All_lapp_individual_application_lk_By_Applicant_ID(int G_Applicant_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Applicant_ID", G_Applicant_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_individual_application_lk_getby_Applicant_ID", lstParameter.ToArray());
            List<lapp_individual_application_lk> lstEntity = new List<lapp_individual_application_lk>();
            lapp_individual_application_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public lapp_individual_application_lk Get_lapp_individual_application_lk_get_byApplicationNumberApplicantIDANDApplicationTypeID(string G_Application_Number, int G_Applicant_ID, int G_ApplicationType_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Application_Number", G_Application_Number));
            lstParameter.Add(new MySqlParameter("G_Applicant_ID", G_Applicant_ID));
            lstParameter.Add(new MySqlParameter("G_ApplicationType_ID", G_ApplicationType_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_individual_application_lk_byAppNumber_ApplicantID_AppTypeID", lstParameter.ToArray());
            lapp_individual_application_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public lapp_individual_application_lk Get_lapp_individual_application_lk_get_byAppnoandIndividualid(string G_Application_Number, int G_Individual_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Application_Number", G_Application_Number));
            lstParameter.Add(new MySqlParameter("G_Individual_Id", G_Individual_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_individual_application_lk_get_byAppnoandIndividualid", lstParameter.ToArray());
            lapp_individual_application_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public lapp_individual_application_lk Get_lapp_individual_application_lk_ByApplicationNumber(string ApplicationNumber)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.Text, "select * from lapp_individual_application_lk where Application_Number='" + ApplicationNumber + "'");
            lapp_individual_application_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public lapp_individual_application_lk Get_ByApplicationNumber(string ApplicationNumber)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.Text, "select * from lapp_individual_application_lk where ApplicationType_ID =1 and  Applicant_ID IN ( select Applicant_ID from lapp_individual_application_lk where Application_Number='" + ApplicationNumber + "')");
            lapp_individual_application_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public lapp_individual_application_lk Get_ByRequestApplicationNumber(string ApplicationNumber, int ApplicationType_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.Text, "select * from lapp_individual_application_lk where ApplicationType_ID =" + ApplicationType_ID + " and  Applicant_ID IN ( select Applicant_ID from lapp_individual_application_lk where Application_Number='" + ApplicationNumber + "')");
            lapp_individual_application_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public void Update_Individual_Id_InLk(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
        }
        public List<lapp_individual_application_lk> Get_lapp_individual_application_lk_By_Query(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            List<lapp_individual_application_lk> lstEntity = new List<lapp_individual_application_lk>();
            lapp_individual_application_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        private lapp_individual_application_lk FetchEntity(DataRow dr)
        {
            lapp_individual_application_lk objEntity = new lapp_individual_application_lk();
            if (dr.Table.Columns.Contains("Application_Number") && dr["Application_Number"] != DBNull.Value)
            {
                objEntity.Application_Number = Convert.ToString(dr["Application_Number"]);
            }
            if (dr.Table.Columns.Contains("Applicant_ID") && dr["Applicant_ID"] != DBNull.Value)
            {
                objEntity.Applicant_ID = Convert.ToInt32(dr["Applicant_ID"]);
            }
            if (dr.Table.Columns.Contains("Individual_Id") && dr["Individual_Id"] != DBNull.Value)
            {
                objEntity.Individual_Id = Convert.ToInt32(dr["Individual_Id"]);
            }
            if (dr.Table.Columns.Contains("ApplicationType_ID") && dr["ApplicationType_ID"] != DBNull.Value)
            {
                objEntity.ApplicationType_ID = Convert.ToInt32(dr["ApplicationType_ID"]);
            }
            if (dr.Table.Columns.Contains("Application_Type") && dr["Application_Type"] != DBNull.Value)
            {
                objEntity.Application_Type = Convert.ToString(dr["Application_Type"]);
            }
            if (dr.Table.Columns.Contains("Verified") && dr["Verified"] != DBNull.Value)
            {
                objEntity.Verified = Convert.ToBoolean(dr["Verified"]);
            }
            if (dr.Table.Columns.Contains("Verified_On") && dr["Verified_On"] != DBNull.Value)
            {
                objEntity.Verified_On = Convert.ToString(dr["Verified_On"]);
            }
            if (dr.Table.Columns.Contains("Denied") && dr["Denied"] != DBNull.Value)
            {
                objEntity.Denied = Convert.ToBoolean(dr["Denied"]);
            }
            if (dr.Table.Columns.Contains("Denied_On") && dr["Denied_On"] != DBNull.Value)
            {
                objEntity.Denied_On = Convert.ToString(dr["Denied_On"]);
            }
            if (dr.Table.Columns.Contains("Deficient") && dr["Deficient"] != DBNull.Value)
            {
                objEntity.Deficient = Convert.ToBoolean(dr["Deficient"]);
            }
            if (dr.Table.Columns.Contains("Deficient_On") && dr["Deficient_On"] != DBNull.Value)
            {
                objEntity.Deficient_On = Convert.ToString(dr["Deficient_On"]);
            }
            if (dr.Table.Columns.Contains("Approved") && dr["Approved"] != DBNull.Value)
            {
                objEntity.Approved = Convert.ToBoolean(dr["Approved"]);
            }
            if (dr.Table.Columns.Contains("Approved_On") && dr["Approved_On"] != DBNull.Value)
            {
                objEntity.Approved_On = Convert.ToString(dr["Approved_On"]);
            }
            if (dr.Table.Columns.Contains("DTS") && dr["DTS"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
            }
            if (dr.Table.Columns.Contains("Submitted_On") && dr["Submitted_On"] != DBNull.Value)
            {
                objEntity.Submitted_On = Convert.ToDateTime(dr["Submitted_On"]);
            }
            if (dr.Table.Columns.Contains("Application_Type_Name") && dr["Application_Type_Name"] != DBNull.Value)
            {
                objEntity.Application_Type_Name = Convert.ToString(dr["Application_Type_Name"]);
            }

            return objEntity;
        }


       
    }
}
