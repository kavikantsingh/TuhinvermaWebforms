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
    public class Lapp_Document_TypeDAL : BaseDAL
    {
        public int Save_Lapp_Document_Type(Lapp_Document_Type objLapp_Document_Type)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("document_ID", objLapp_Document_Type.document_ID));
            lstParameter.Add(new MySqlParameter("Application_Type_ID", objLapp_Document_Type.Application_Type_ID));
            lstParameter.Add(new MySqlParameter("Max_Size", objLapp_Document_Type.Max_Size));
            lstParameter.Add(new MySqlParameter("Document_Name", objLapp_Document_Type.Document_Name));
            lstParameter.Add(new MySqlParameter("Description", objLapp_Document_Type.Description));
            lstParameter.Add(new MySqlParameter("Applicant", objLapp_Document_Type.Applicant));
            lstParameter.Add(new MySqlParameter("Office", objLapp_Document_Type.Office));
            lstParameter.Add(new MySqlParameter("Is_Active", objLapp_Document_Type.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLapp_Document_Type.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objLapp_Document_Type.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objLapp_Document_Type.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objLapp_Document_Type.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objLapp_Document_Type.Modified_By));
            lstParameter.Add(new MySqlParameter("DTS", objLapp_Document_Type.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_Document_Type_Save", lstParameter.ToArray());
            return returnValue;
        }

        public int Update_Lapp_Document_Type(Lapp_Document_Type objLapp_Document_Type)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_document_ID", objLapp_Document_Type.document_ID));
            lstParameter.Add(new MySqlParameter("U_Application_Type_ID", objLapp_Document_Type.Application_Type_ID));
            lstParameter.Add(new MySqlParameter("U_Max_Size", objLapp_Document_Type.Max_Size));
            lstParameter.Add(new MySqlParameter("U_Document_Name", objLapp_Document_Type.Document_Name));
            lstParameter.Add(new MySqlParameter("U_Description", objLapp_Document_Type.Description));
            lstParameter.Add(new MySqlParameter("U_Applicant", objLapp_Document_Type.Applicant));
            lstParameter.Add(new MySqlParameter("U_Office", objLapp_Document_Type.Office));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objLapp_Document_Type.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objLapp_Document_Type.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Created_On", objLapp_Document_Type.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLapp_Document_Type.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objLapp_Document_Type.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objLapp_Document_Type.Modified_By));
            lstParameter.Add(new MySqlParameter("U_DTS", objLapp_Document_Type.DTS));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_document_type_Update", lstParameter.ToArray());
            return returnValue;
        }

        public List<Lapp_Document_Type> Get_All_Lapp_Document_Type()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_document_type_get_all");
            List<Lapp_Document_Type> lstEntity = new List<Lapp_Document_Type>();
            Lapp_Document_Type objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<Lapp_Document_Type> Get_All_lapp_document_type_By_Application_TypeID_And_Office()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_document_type_By_Application_TypeID_And_Office");
            List<Lapp_Document_Type> lstEntity = new List<Lapp_Document_Type>();
            Lapp_Document_Type objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<Lapp_Document_Type> Get_All_lapp_document_type_By_Application_TypeID(int ApplicationTypeID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, "SELECT * FROM lapp_document_type ldt WHERE ldt.Is_Deleted=0 And ldt.Application_Type_ID =" + ApplicationTypeID);
            List<Lapp_Document_Type> lstEntity = new List<Lapp_Document_Type>();
            Lapp_Document_Type objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<Lapp_Document_Type> Get_All_lapp_document_type_For_Transfer_ApplicationRequest()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, "SELECT * FROM lapp_document_type WHERE Application_Type_ID = 1 AND Applicant = TRUE AND document_ID IN(1,2,3) AND Is_Deleted=0");
            List<Lapp_Document_Type> lstEntity = new List<Lapp_Document_Type>();
            Lapp_Document_Type objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<Lapp_Document_Type> Get_All_lapp_document_type_For_New_ApplicationRequest()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, "SELECT * FROM lapp_document_type WHERE Application_Type_ID = 1 AND Applicant = TRUE AND document_ID IN(1,2) AND Is_Deleted=0");
            List<Lapp_Document_Type> lstEntity = new List<Lapp_Document_Type>();
            Lapp_Document_Type objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<Lapp_Document_Type> Get_All_lapp_document_type_By_Application_TypeID_And_Applicant()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_document_type_By_Application_TypeID_And_Applicant");
            List<Lapp_Document_Type> lstEntity = new List<Lapp_Document_Type>();
            Lapp_Document_Type objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public Lapp_Document_Type Get_Lapp_Document_Type_By_document_ID(int G_document_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_document_ID", G_document_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_document_type_get_by_document_ID", lstParameter.ToArray());
            Lapp_Document_Type objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public Lapp_Document_Type Get_Lapp_Document_Type_By_Query_Single(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            Lapp_Document_Type objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public List<Lapp_Document_Type> Get_Lapp_Document_Type_By_Query_List(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            List<Lapp_Document_Type> lstEntity = new List<Lapp_Document_Type>();
            Lapp_Document_Type objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }


        private Lapp_Document_Type FetchEntity(DataRow dr)
        {
            Lapp_Document_Type objEntity = new Lapp_Document_Type();
            if (dr.Table.Columns.Contains("document_ID") && dr["document_ID"] != DBNull.Value)
            {
                objEntity.document_ID = Convert.ToInt32(dr["document_ID"]);
            }
            if (dr.Table.Columns.Contains("Application_Type_ID") && dr["Application_Type_ID"] != DBNull.Value)
            {
                objEntity.Application_Type_ID = Convert.ToInt32(dr["Application_Type_ID"]);
            }
            if (dr.Table.Columns.Contains("Max_Size") && dr["Max_Size"] != DBNull.Value)
            {
                objEntity.Max_Size = Convert.ToInt32(dr["Max_Size"]);
            }
            if (dr.Table.Columns.Contains("Document_Name") && dr["Document_Name"] != DBNull.Value)
            {
                objEntity.Document_Name = Convert.ToString(dr["Document_Name"]);
            }
            if (dr.Table.Columns.Contains("Description") && dr["Description"] != DBNull.Value)
            {
                objEntity.Description = Convert.ToString(dr["Description"]);
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
            if (dr.Table.Columns.Contains("DTS") && dr["DTS"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
            }
            if (dr.Table.Columns.Contains("Name") && dr["Name"] != DBNull.Value)
            {
                objEntity.Name = Convert.ToString(dr["Name"]);
            }
            return objEntity;
        }
    }
}
