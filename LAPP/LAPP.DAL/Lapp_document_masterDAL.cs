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
    public class Lapp_document_masterDAL:BaseDAL
    {
        public int Save_Lapp_document_master(Lapp_document_master objLapp_document_master)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Document_ID", objLapp_document_master.Document_ID));
            lstParameter.Add(new MySqlParameter("Document_Name", objLapp_document_master.Document_Name));
            lstParameter.Add(new MySqlParameter("Max_size", objLapp_document_master.Max_size));
            lstParameter.Add(new MySqlParameter("Description", objLapp_document_master.Description));
            lstParameter.Add(new MySqlParameter("Is_Active", objLapp_document_master.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLapp_document_master.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objLapp_document_master.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objLapp_document_master.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objLapp_document_master.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objLapp_document_master.Modified_By));
            lstParameter.Add(new MySqlParameter("DTS", objLapp_document_master.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_document_master_Save", lstParameter.ToArray());
            return returnValue;
        }

        public int Update_Lapp_document_master(Lapp_document_master objLapp_document_master)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Document_ID", objLapp_document_master.Document_ID));
            lstParameter.Add(new MySqlParameter("U_Document_Name", objLapp_document_master.Document_Name));
            lstParameter.Add(new MySqlParameter("U_Max_size", objLapp_document_master.Max_size));
            lstParameter.Add(new MySqlParameter("U_Description", objLapp_document_master.Description));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objLapp_document_master.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objLapp_document_master.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Created_On", objLapp_document_master.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLapp_document_master.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objLapp_document_master.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objLapp_document_master.Modified_By));
            lstParameter.Add(new MySqlParameter("U_DTS", objLapp_document_master.DTS));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_document_master_Update", lstParameter.ToArray());
            return returnValue;
        }

        public List<Lapp_document_master> Get_All_Lapp_document_master()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_document_master_get_all");
            List<Lapp_document_master> lstEntity = new List<Lapp_document_master>();
            Lapp_document_master objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public Lapp_document_master Get_Lapp_document_master_Get_by_Document_ID(int G_Document_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Document_ID", G_Document_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_document_master_get_by_Document_ID", lstParameter.ToArray());
            Lapp_document_master objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public List<Lapp_document_master> Get_All_Lapp_document_master_By_AplicantID(int Applicant_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            string query = "SELECT a.Document_ID, a.Document_Name, (SELECT b.Is_Verified FROM lapp_file_holder b WHERE b.Applicant_ID =" + Applicant_ID + " AND File_Type_Id = a.Document_ID and b.Is_Verified=1 limit 1) AS 'Is_Verified'  FROM lapp_document_master a";
            ds = objDB.ExecuteDataSet(CommandType.Text, query);
            List<Lapp_document_master> lstEntity = new List<Lapp_document_master>();
            Lapp_document_master objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<Lapp_document_master> Get_All_Lapp_document_master_By_IndividualID(int IndividualID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            string query = "SELECT a.Document_ID, a.Document_Name, (SELECT b.Is_Verified FROM lapp_file_holder b WHERE b.Individual_Id =" + IndividualID + " AND File_Type_Id = a.Document_ID and b.Is_Verified=1  limit 1) AS 'Is_Verified'  FROM lapp_document_master a";
            ds = objDB.ExecuteDataSet(CommandType.Text, query);
            List<Lapp_document_master> lstEntity = new List<Lapp_document_master>();
            Lapp_document_master objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public Lapp_document_master Get_Lapp_document_master_By_Query(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            Lapp_document_master objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        private Lapp_document_master FetchEntity(DataRow dr)
        {
            Lapp_document_master objEntity = new Lapp_document_master();
            if (dr.Table.Columns.Contains("Document_ID") && dr["Document_ID"] != DBNull.Value)
            {
                objEntity.Document_ID = Convert.ToInt32(dr["Document_ID"]);
            }

            if (dr.Table.Columns.Contains("Document_Name") && dr["Document_Name"] != DBNull.Value)
            {
                objEntity.Document_Name = Convert.ToString(dr["Document_Name"]);
            }
            if (dr.Table.Columns.Contains("Is_Verified") && dr["Is_Verified"] != DBNull.Value)
            {
                objEntity.Is_Verified = Convert.ToBoolean(dr["Is_Verified"]);
            }
            if (dr.Table.Columns.Contains("Max_size") && dr["Max_size"] != DBNull.Value)
            {
                objEntity.Max_size = Convert.ToInt32(dr["Max_size"]);
            }
            if (dr.Table.Columns.Contains("Description") && dr["Description"] != DBNull.Value)
            {
                objEntity.Description = Convert.ToString(dr["Description"]);
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
                objEntity.Created_By = Convert.ToInt32(dr["Created_By"]);
            }
            if (dr.Table.Columns.Contains("Modified_On") && dr["Modified_On"] != DBNull.Value)
            {
                objEntity.Modified_On = Convert.ToDateTime(dr["Modified_On"]);
            }
            if (dr.Table.Columns.Contains("Modified_By") && dr["Modified_By"] != DBNull.Value)
            {
                objEntity.Modified_By = Convert.ToInt32(dr["Modified_By"]);
            }
            if (dr.Table.Columns.Contains("DTS") && dr["DTS"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
            }
            return objEntity;
        }
    }
}
