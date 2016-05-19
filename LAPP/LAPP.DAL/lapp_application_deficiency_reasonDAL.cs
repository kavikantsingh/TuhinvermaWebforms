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
    public class lapp_application_deficiency_reasonDAL : BaseDAL
    {
        public int Save_lapp_application_deficiency_reason(lapp_application_deficiency_reason objlapp_application_deficiency_reason)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Application_Type_ID", objlapp_application_deficiency_reason.Application_Type_ID));
            lstParameter.Add(new MySqlParameter("Deficiency_Name", objlapp_application_deficiency_reason.Deficiency_Name));
            lstParameter.Add(new MySqlParameter("Description", objlapp_application_deficiency_reason.Description));
            lstParameter.Add(new MySqlParameter("Is_Active", objlapp_application_deficiency_reason.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objlapp_application_deficiency_reason.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objlapp_application_deficiency_reason.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objlapp_application_deficiency_reason.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objlapp_application_deficiency_reason.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objlapp_application_deficiency_reason.Modified_By));
            lstParameter.Add(new MySqlParameter("DTS", objlapp_application_deficiency_reason.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_application_deficiency_reason_Save", true, lstParameter.ToArray());
            return returnValue;
        }

        public int Update_lapp_application_deficiency_reason(lapp_application_deficiency_reason objlapp_application_deficiency_reason)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Deficiency_ID", objlapp_application_deficiency_reason.Deficiency_ID));
            lstParameter.Add(new MySqlParameter("U_Application_Type_ID", objlapp_application_deficiency_reason.Application_Type_ID));
            lstParameter.Add(new MySqlParameter("U_Deficiency_Name", objlapp_application_deficiency_reason.Deficiency_Name));
            lstParameter.Add(new MySqlParameter("U_Description", objlapp_application_deficiency_reason.Description));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objlapp_application_deficiency_reason.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objlapp_application_deficiency_reason.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Created_On", objlapp_application_deficiency_reason.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objlapp_application_deficiency_reason.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objlapp_application_deficiency_reason.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objlapp_application_deficiency_reason.Modified_By));
            lstParameter.Add(new MySqlParameter("U_DTS", objlapp_application_deficiency_reason.DTS));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_application_deficiency_reason_Update", lstParameter.ToArray());
            return returnValue;
        }
        public List<lapp_application_deficiency_reason> Get_All_lapp_application_deficiency_reason()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_application_deficiency_reason_get_all");
            List<lapp_application_deficiency_reason> lstEntity = new List<lapp_application_deficiency_reason>();
            lapp_application_deficiency_reason objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<lapp_application_deficiency_reason> Get_lapp_application_deficiency_reason_By_Query_List(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            List<lapp_application_deficiency_reason> lstEntity = new List<lapp_application_deficiency_reason>();
            lapp_application_deficiency_reason objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public lapp_application_deficiency_reason Get_lapp_application_deficiency_reason_by_Deficiency_ID(int G_Deficiency_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Deficiency_ID", G_Deficiency_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_application_deficiency_reason_getby_Deficiency_ID", lstParameter.ToArray());
            lapp_application_deficiency_reason objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        private lapp_application_deficiency_reason FetchEntity(DataRow dr)
        {
            lapp_application_deficiency_reason objEntity = new lapp_application_deficiency_reason();
            if (dr.Table.Columns.Contains("Deficiency_ID") && dr["Deficiency_ID"] != DBNull.Value)
            {
                objEntity.Deficiency_ID = Convert.ToInt32(dr["Deficiency_ID"]);
            }
            if (dr.Table.Columns.Contains("Application_Type_ID") && dr["Application_Type_ID"] != DBNull.Value)
            {
                objEntity.Application_Type_ID = Convert.ToInt32(dr["Application_Type_ID"]);
            }
            if (dr.Table.Columns.Contains("Deficiency_Name") && dr["Deficiency_Name"] != DBNull.Value)
            {
                objEntity.Deficiency_Name = Convert.ToString(dr["Deficiency_Name"]);
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
            if (dr.Table.Columns.Contains("Name") && dr["Name"] != DBNull.Value)
            {
                objEntity.Name = Convert.ToString(dr["Name"]);
            }
            return objEntity;
        }
    }
}
