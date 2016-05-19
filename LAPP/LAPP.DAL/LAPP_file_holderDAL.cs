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
    public class LAPP_file_holderDAL
    {
        public int Save_LAPP_file_holder(LAPP_file_holder objLAPP_file_holder)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            //lstParameter.Add(new MySqlParameter("File_Id", objLAPP_file_holder.File_Id));
            lstParameter.Add(new MySqlParameter("Individual_Id", objLAPP_file_holder.Individual_Id));
            lstParameter.Add(new MySqlParameter("Application_Number", objLAPP_file_holder.Application_Number));
            lstParameter.Add(new MySqlParameter("Applicant_ID", objLAPP_file_holder.Applicant_ID));
            lstParameter.Add(new MySqlParameter("File_Type", objLAPP_file_holder.File_Type));
            lstParameter.Add(new MySqlParameter("File_Type_Id", objLAPP_file_holder.File_Type_Id));
            lstParameter.Add(new MySqlParameter("File_Name", objLAPP_file_holder.File_Name));
            lstParameter.Add(new MySqlParameter("File_Path", objLAPP_file_holder.File_Path));
            lstParameter.Add(new MySqlParameter("File_Url", objLAPP_file_holder.File_Url));
            lstParameter.Add(new MySqlParameter("Is_Reviewed", objLAPP_file_holder.Is_Reviewed));
            lstParameter.Add(new MySqlParameter("Is_Verified", objLAPP_file_holder.Is_Verified));
            lstParameter.Add(new MySqlParameter("Applicant", objLAPP_file_holder.Applicant));
            lstParameter.Add(new MySqlParameter("Office", objLAPP_file_holder.Office));
            lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_file_holder.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_file_holder.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objLAPP_file_holder.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_file_holder.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objLAPP_file_holder.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objLAPP_file_holder.Modified_By));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_file_holder_Save", true, lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }
        public int Update_LAPP_file_holder(LAPP_file_holder objLAPP_file_holder, int File_Id)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_file_Id", objLAPP_file_holder.File_Id));
            lstParameter.Add(new MySqlParameter("U_Individual_Id", objLAPP_file_holder.Individual_Id));
            lstParameter.Add(new MySqlParameter("U_Application_Number", objLAPP_file_holder.Application_Number));
            lstParameter.Add(new MySqlParameter("U_Applicant_ID", objLAPP_file_holder.Applicant_ID));
            lstParameter.Add(new MySqlParameter("U_File_Type", objLAPP_file_holder.File_Type));
            lstParameter.Add(new MySqlParameter("U_File_Type_Id", objLAPP_file_holder.File_Type_Id));
            lstParameter.Add(new MySqlParameter("U_File_Name", objLAPP_file_holder.File_Name));
            lstParameter.Add(new MySqlParameter("U_File_Path", objLAPP_file_holder.File_Path));
            lstParameter.Add(new MySqlParameter("U_File_Url", objLAPP_file_holder.File_Url));
            lstParameter.Add(new MySqlParameter("U_Is_Reviewed", objLAPP_file_holder.Is_Reviewed));
            lstParameter.Add(new MySqlParameter("U_Is_Verified", objLAPP_file_holder.Is_Verified));
            lstParameter.Add(new MySqlParameter("U_Applicant", objLAPP_file_holder.Applicant));
            lstParameter.Add(new MySqlParameter("U_Office", objLAPP_file_holder.Office));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objLAPP_file_holder.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objLAPP_file_holder.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Created_On", objLAPP_file_holder.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLAPP_file_holder.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objLAPP_file_holder.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objLAPP_file_holder.Modified_By));
            // MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            //returnParam.Direction = ParameterDirection.ReturnValue;
            //lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_file_holder_Update", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }
        public LAPP_file_holder Get_LAPP_file_holder_Get_BY_ID(int G_File_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_File_Id", G_File_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_file_holder_get_by_File_Id", lstParameter.ToArray());
            LAPP_file_holder objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public List<LAPP_file_holder> Get_All_LAPP_file_holder()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_file_holder_get_all");
            List<LAPP_file_holder> lstEntity = new List<LAPP_file_holder>();
            LAPP_file_holder objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<LAPP_file_holder> Get_All_LAPP_file_holder_By_Application_Number(string G_Application_Number)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Application_Number", G_Application_Number));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_file_holder_get_by_Applicatin_Number", lstParameter.ToArray());
            List<LAPP_file_holder> lstEntity = new List<LAPP_file_holder>();
            LAPP_file_holder objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<LAPP_file_holder> Get_All_LAPP_file_holder_By_Applicant_Id(int ApplicantId)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            ds = objDB.ExecuteDataSet(CommandType.Text, "select * from LAPP_file_holder where is_deleted=0 and  Applicant_Id =" + ApplicantId);
            List<LAPP_file_holder> lstEntity = new List<LAPP_file_holder>();
            LAPP_file_holder objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<LAPP_file_holder> Get_All_LAPP_file_holder_By_Applicant_Id_AND_FileType_Id(int ApplicantId)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            ds = objDB.ExecuteDataSet(CommandType.Text, "select * from LAPP_file_holder where is_deleted=0 and  Applicant_Id =" + ApplicantId + " and File_Type_Id IN (4,5,6,7)");
            List<LAPP_file_holder> lstEntity = new List<LAPP_file_holder>();
            LAPP_file_holder objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<LAPP_file_holder> Get_All_LAPP_file_holder_By_Application_Type_Id(int G_Application_Type_Id,int G_Individual_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            string Query= "SELECT fh.* , l.ApplicationType_ID from LAPP_file_holder fh JOIN lapp_individual_application_lk l ON fh.Application_Number = l.Application_Number where l.ApplicationType_ID = "+G_Application_Type_Id+" and fh.Individual_Id="+G_Individual_Id;
            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            List<LAPP_file_holder> lstEntity = new List<LAPP_file_holder>();
            LAPP_file_holder objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<LAPP_file_holder> Get_All_LAPP_file_holder_By_Individual_Id(int Individual_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            ds = objDB.ExecuteDataSet(CommandType.Text, "select * from LAPP_file_holder where is_deleted=0 and  Individual_Id =" + Individual_Id);
            List<LAPP_file_holder> lstEntity = new List<LAPP_file_holder>();
            LAPP_file_holder objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public void UpdateLAPP_file_holder_BY_Query(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
        }
        public LAPP_file_holder Get_LAPP_file_holder_Get_BY_ApplicantId_DocType(int ApplicantId, int DocumentType)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.Text, "select * from LAPP_file_holder where is_deleted != 1 and Applicant_ID=" + ApplicantId + " and File_Type_Id=" + DocumentType);
            LAPP_file_holder objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public LAPP_file_holder Get_LAPP_file_holder_Get_BY_ApplicantNumber_DocType(string ApplicantNumber, int DocumentType)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.Text, "select * from LAPP_file_holder where is_deleted != 1 and Application_Number='" + ApplicantNumber + "' and File_Type_Id=" + DocumentType);
            LAPP_file_holder objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public LAPP_file_holder Get_LAPP_file_holder_Get_BY_Individual_DocType(int Individual_Id, int DocumentType)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.Text, "select * from LAPP_file_holder where is_deleted != 1 and Individual_Id ='" + Individual_Id + "' and File_Type_Id=" + DocumentType);
            LAPP_file_holder objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public List<LAPP_file_holder> Get_LAPP_file_holder_Get_BY_ApplicantNumber_DocType_list(string ApplicantNumber, int DocumentType)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.Text, "select * from LAPP_file_holder where is_deleted != 1 and Application_Number='" + ApplicantNumber + "' and File_Type_Id=" + DocumentType);
            List<LAPP_file_holder> lstEntity = new List<LAPP_file_holder>();
            LAPP_file_holder objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_file_holder FetchEntity(DataRow dr)
        {
            LAPP_file_holder objEntity = new LAPP_file_holder();
            if (dr.Table.Columns.Contains("File_Id") && dr["File_Id"] != DBNull.Value)
            {
                objEntity.File_Id = Convert.ToInt32(dr["File_Id"]);
            }
            if (dr.Table.Columns.Contains("Individual_Id") && dr["Individual_Id"] != DBNull.Value)
            {
                objEntity.Individual_Id = Convert.ToInt32(dr["Individual_Id"]);
            }
            if (dr.Table.Columns.Contains("Application_Number") && dr["Application_Number"] != DBNull.Value)
            {
                objEntity.Application_Number = Convert.ToString(dr["Application_Number"]);
            }
            if (dr.Table.Columns.Contains("Applicant_ID") && dr["Applicant_ID"] != DBNull.Value)
            {
                objEntity.Applicant_ID = Convert.ToInt32(dr["Applicant_ID"]);
            }
            if (dr.Table.Columns.Contains("File_Type") && dr["File_Type"] != DBNull.Value)
            {
                objEntity.File_Type = Convert.ToString(dr["File_Type"]);
            }
            if (dr.Table.Columns.Contains("File_Type_Id") && dr["File_Type_Id"] != DBNull.Value)
            {
                objEntity.File_Type_Id = Convert.ToInt32(dr["File_Type_Id"]);
            }
            if (dr.Table.Columns.Contains("File_Name") && dr["File_Name"] != DBNull.Value)
            {
                objEntity.File_Name = Convert.ToString(dr["File_Name"]);
            }
            if (dr.Table.Columns.Contains("File_Path") && dr["File_Path"] != DBNull.Value)
            {
                objEntity.File_Path = Convert.ToString(dr["File_Path"]);
            }
            if (dr.Table.Columns.Contains("File_Url") && dr["File_Url"] != DBNull.Value)
            {
                objEntity.File_Url = Convert.ToString(dr["File_Url"]);
            }

            if (dr.Table.Columns.Contains("Is_Reviewed") && dr["Is_Reviewed"] != DBNull.Value)
            {
                objEntity.Is_Reviewed = Convert.ToBoolean(dr["Is_Reviewed"]);
            }
            if (dr.Table.Columns.Contains("Is_Verified") && dr["Is_Verified"] != DBNull.Value)
            {
                objEntity.Is_Verified = Convert.ToBoolean(dr["Is_Verified"]);
            }

            if (dr.Table.Columns.Contains("Applicant") && dr["Applicant"] != DBNull.Value)
            {
                objEntity.Applicant = Convert.ToBoolean(dr["Applicant"]);
            }
            if (dr.Table.Columns.Contains("Office") && dr["Office"] != DBNull.Value)
            {
                objEntity.Office = Convert.ToBoolean(dr["Office"]);
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
            return objEntity;

        }






    }
}
