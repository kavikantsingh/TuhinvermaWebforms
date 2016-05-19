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
    public class LAPP_individual_namesDAL
    {
        public int Save_LAPP_individual_names(LAPP_individual_names objLAPP_individual_names)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            //lstParameter.Add(new MySqlParameter("Name_id", objLAPP_individual_names.Name_id));
            lstParameter.Add(new MySqlParameter("Individual_Id", objLAPP_individual_names.Individual_Id));
            lstParameter.Add(new MySqlParameter("Last_Name", objLAPP_individual_names.Last_Name));
            lstParameter.Add(new MySqlParameter("Middle_Name", objLAPP_individual_names.Middle_Name));
            lstParameter.Add(new MySqlParameter("First_Name", objLAPP_individual_names.First_Name));
            lstParameter.Add(new MySqlParameter("Maiden_Name", objLAPP_individual_names.Maiden_Name));
            lstParameter.Add(new MySqlParameter("Suffix", objLAPP_individual_names.Suffix));
            lstParameter.Add(new MySqlParameter("Status_ID", objLAPP_individual_names.Status_ID));
            lstParameter.Add(new MySqlParameter("Status", objLAPP_individual_names.Status));
            lstParameter.Add(new MySqlParameter("Date_Of_Beginning", objLAPP_individual_names.Date_Of_Beginning));
            lstParameter.Add(new MySqlParameter("Date_Of_Ending", objLAPP_individual_names.Date_Of_Ending));
            lstParameter.Add(new MySqlParameter("Comments", objLAPP_individual_names.Comments));
            lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_individual_names.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_individual_names.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objLAPP_individual_names.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_individual_names.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objLAPP_individual_names.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objLAPP_individual_names.Modified_By));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_individual_names_Save", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }
        public int Update_LAPP_individual_names(LAPP_individual_names objLAPP_individual_names, int Name_id)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Name_id", Name_id));
            lstParameter.Add(new MySqlParameter("U_Individual_Id", objLAPP_individual_names.Individual_Id));
            lstParameter.Add(new MySqlParameter("U_Last_Name", objLAPP_individual_names.Last_Name));
            lstParameter.Add(new MySqlParameter("U_Middle_Name", objLAPP_individual_names.Middle_Name));
            lstParameter.Add(new MySqlParameter("U_First_Name", objLAPP_individual_names.First_Name));
            lstParameter.Add(new MySqlParameter("U_Maiden_Name", objLAPP_individual_names.Maiden_Name));
            lstParameter.Add(new MySqlParameter("U_Suffix", objLAPP_individual_names.Suffix));
            lstParameter.Add(new MySqlParameter("U_Status_ID", objLAPP_individual_names.Status_ID));
            lstParameter.Add(new MySqlParameter("U_Status", objLAPP_individual_names.Status));
            lstParameter.Add(new MySqlParameter("U_Date_Of_Beginning", objLAPP_individual_names.Date_Of_Beginning));
            lstParameter.Add(new MySqlParameter("U_Date_Of_Ending", objLAPP_individual_names.Date_Of_Ending));
            lstParameter.Add(new MySqlParameter("U_Comments", objLAPP_individual_names.Comments));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objLAPP_individual_names.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objLAPP_individual_names.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Created_On", objLAPP_individual_names.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLAPP_individual_names.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objLAPP_individual_names.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objLAPP_individual_names.Modified_By));
            //MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            //returnParam.Direction = ParameterDirection.ReturnValue;
            //lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_individual_names_Update", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }
        public LAPP_individual_names Get_LAPP_individual_names_Get_BY_ID(int G_Name_id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Name_id", G_Name_id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_individual_names_get_by_Name_id", lstParameter.ToArray());
            LAPP_individual_names objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public LAPP_individual_names Get_by_LAPP_individual_names_by_Indiviual_Id(int G_Individual_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Individual_Id", G_Individual_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_individual_names_get_by_Individual_Id", lstParameter.ToArray());
            LAPP_individual_names objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public List<LAPP_individual_names> Get_LAPP_individual_names_Get_BY_Indiviual_Id(int G_Individual_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Individual_Id", G_Individual_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_individual_names_get_by_Individual_Id", lstParameter.ToArray());
            List<LAPP_individual_names> lstEntity = new List<LAPP_individual_names>();
            LAPP_individual_names objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<LAPP_individual_names> Get_All_LAPP_individual_names()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_individual_names_get_all");
            List<LAPP_individual_names> lstEntity = new List<LAPP_individual_names>();
            LAPP_individual_names objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_individual_names FetchEntity(DataRow dr)
        {
            LAPP_individual_names objEntity = new LAPP_individual_names();
            if (dr.Table.Columns.Contains("Name_id") && dr["Name_id"] != DBNull.Value)
            {
                objEntity.Name_id = Convert.ToInt32(dr["Name_id"]);
            }
            if (dr.Table.Columns.Contains("Individual_Id") && dr["Individual_Id"] != DBNull.Value)
            {
                objEntity.Individual_Id = Convert.ToInt32(dr["Individual_Id"]);
            }
            if (dr.Table.Columns.Contains("Last_Name") && dr["Last_Name"] != DBNull.Value)
            {
                objEntity.Last_Name = Convert.ToString(dr["Last_Name"]);
            }
            if (dr.Table.Columns.Contains("Middle_Name") && dr["Middle_Name"] != DBNull.Value)
            {
                objEntity.Middle_Name = Convert.ToString(dr["Middle_Name"]);
            }
            if (dr.Table.Columns.Contains("First_Name") && dr["First_Name"] != DBNull.Value)
            {
                objEntity.First_Name = Convert.ToString(dr["First_Name"]);
            }
            if (dr.Table.Columns.Contains("Maiden_Name") && dr["Maiden_Name"] != DBNull.Value)
            {
                objEntity.Maiden_Name = Convert.ToString(dr["Maiden_Name"]);
            }
            if (dr.Table.Columns.Contains("Suffix") && dr["Suffix"] != DBNull.Value)
            {
                objEntity.Suffix = Convert.ToString(dr["Suffix"]);
            }
            if (dr.Table.Columns.Contains("Status_ID") && dr["Status_ID"] != DBNull.Value)
            {
                objEntity.Status_ID = Convert.ToInt32(dr["Status_ID"]);
            }
            if (dr.Table.Columns.Contains("Status") && dr["Status"] != DBNull.Value)
            {
                objEntity.Status = Convert.ToString(dr["Status"]);
            }
            if (dr.Table.Columns.Contains("Date_Of_Beginning") && dr["Date_Of_Beginning"] != DBNull.Value)
            {
                objEntity.Date_Of_Beginning = Convert.ToString(dr["Date_Of_Beginning"]);
            }
            if (dr.Table.Columns.Contains("Date_Of_Ending") && dr["Date_Of_Ending"] != DBNull.Value)
            {
                objEntity.Date_Of_Ending = Convert.ToString(dr["Date_Of_Ending"]);
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
            if (dr.Table.Columns.Contains("Created_by_Name") && dr["Created_by_Name"] != DBNull.Value)
            {
                objEntity.Created_by_Name = Convert.ToString(dr["Created_by_Name"]);

            }
            if (dr.Table.Columns.Contains("Modified_by_Name") && dr["Modified_by_Name"] != DBNull.Value)
            {
                objEntity.Modified_by_Name = Convert.ToString(dr["Modified_by_Name"]);

            }
            if (dr.Table.Columns.Contains("Modified_By") && dr["Modified_By"] != DBNull.Value)
            {
                objEntity.Modified_By = Convert.ToString(dr["Modified_By"]);
            }
            return objEntity;

        }
    }
}
