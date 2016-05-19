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
    public class lapp_documentsDAL : BaseDAL
    {
        public int Save_lapp_documents(lapp_documents objlapp_documents)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            //lstParameter.Add(new MySqlParameter("Document_Id", objlapp_documents.Document_Id));
            lstParameter.Add(new MySqlParameter("Individual_Id", objlapp_documents.Individual_Id));
            lstParameter.Add(new MySqlParameter("Status_ID", objlapp_documents.Status_ID));
            lstParameter.Add(new MySqlParameter("Status", objlapp_documents.Status));
            lstParameter.Add(new MySqlParameter("Document_Type", objlapp_documents.Document_Type));
            lstParameter.Add(new MySqlParameter("Received_On", objlapp_documents.Received_On));
            lstParameter.Add(new MySqlParameter("File_Id", objlapp_documents.File_Id));
            lstParameter.Add(new MySqlParameter("File_Type", objlapp_documents.File_Type));
            lstParameter.Add(new MySqlParameter("File_Type_Id", objlapp_documents.File_Type_Id));
            lstParameter.Add(new MySqlParameter("File_Name", objlapp_documents.File_Name));
            lstParameter.Add(new MySqlParameter("File_Path", objlapp_documents.File_Path));
            lstParameter.Add(new MySqlParameter("Comments", objlapp_documents.Comments));

            lstParameter.Add(new MySqlParameter("Is_Active", objlapp_documents.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objlapp_documents.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objlapp_documents.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objlapp_documents.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objlapp_documents.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objlapp_documents.Modified_By));

            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_documents_Save", true, lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }

        public int Update_lapp_documents(lapp_documents objlapp_documents, int Document_Id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Document_Id", objlapp_documents.Document_Id));
            lstParameter.Add(new MySqlParameter("U_Individual_Id", objlapp_documents.Individual_Id));
            lstParameter.Add(new MySqlParameter("U_Status_ID", objlapp_documents.Status_ID));
            lstParameter.Add(new MySqlParameter("U_Status", objlapp_documents.Status));
            lstParameter.Add(new MySqlParameter("U_Document_Type", objlapp_documents.Document_Type));
            lstParameter.Add(new MySqlParameter("U_Received_On", objlapp_documents.Received_On));
            lstParameter.Add(new MySqlParameter("U_File_Id", objlapp_documents.File_Id));
            lstParameter.Add(new MySqlParameter("U_File_Type", objlapp_documents.File_Type));
            lstParameter.Add(new MySqlParameter("U_File_Type_Id", objlapp_documents.File_Type_Id));
            lstParameter.Add(new MySqlParameter("U_File_Name", objlapp_documents.File_Name));
            lstParameter.Add(new MySqlParameter("U_File_Path", objlapp_documents.File_Path));
            lstParameter.Add(new MySqlParameter("U_Comments", objlapp_documents.Comments));

            lstParameter.Add(new MySqlParameter("U_Is_Active", objlapp_documents.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objlapp_documents.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Created_On", objlapp_documents.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objlapp_documents.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objlapp_documents.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objlapp_documents.Modified_By));
            // MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            //returnParam.Direction = ParameterDirection.ReturnValue;
            //lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_documents_Update", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }

        public List<lapp_documents> Get_All_lapp_documents()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_exception_log_Get_ALL");
            List<lapp_documents> lstEntity = new List<lapp_documents>();
            lapp_documents objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public lapp_documents Get_lapp_documents_Get_by_Document_Id(int G_Document_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Document_Id", G_Document_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_documents_get_by_document_Id", lstParameter.ToArray());
            lapp_documents objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public List<lapp_documents> Get_lapp_documents_Get_by_Individual_Id(int G_Individual_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Individual_Id", G_Individual_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_documents_get_by_individual_Id", lstParameter.ToArray());
            List<lapp_documents> lstEntity = new List<lapp_documents>();
            lapp_documents objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        private lapp_documents FetchEntity(DataRow dr)
        {
            lapp_documents objEntity = new lapp_documents();
            if (dr.Table.Columns.Contains("Document_Id") && dr["Document_Id"] != DBNull.Value)
            {
                objEntity.Document_Id = Convert.ToInt32(dr["Document_Id"]);
            }
            if (dr.Table.Columns.Contains("Individual_Id") && dr["Individual_Id"] != DBNull.Value)
            {
                objEntity.Individual_Id = Convert.ToInt32(dr["Individual_Id"]);
            }
            if (dr.Table.Columns.Contains("Status_ID") && dr["Status_ID"] != DBNull.Value)
            {
                objEntity.Status_ID = Convert.ToInt32(dr["Status_ID"]);
            }
            if (dr.Table.Columns.Contains("Status") && dr["Status"] != DBNull.Value)
            {
                objEntity.Status = Convert.ToString(dr["Status"]);
            }
            if (dr.Table.Columns.Contains("Document_Type") && dr["Document_Type"] != DBNull.Value)
            {
                objEntity.Document_Type = Convert.ToString(dr["Document_Type"]);
            }
            if (dr.Table.Columns.Contains("Received_On") && dr["Received_On"] != DBNull.Value)
            {
                objEntity.Received_On = Convert.ToDateTime(dr["Received_On"]);
            }
            if (dr.Table.Columns.Contains("File_Id") && dr["File_Id"] != DBNull.Value)
            {
                objEntity.File_Id = Convert.ToInt32(dr["File_Id"]);
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
            if (dr.Table.Columns.Contains("Comments") && dr["Comments"] != DBNull.Value)
            {
                objEntity.Comments = Convert.ToString(dr["Comments"]);
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
