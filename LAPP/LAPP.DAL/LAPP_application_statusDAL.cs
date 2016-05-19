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
    public class LAPP_application_statusDAL : BaseDAL
    {
        public int Save_LAPP_application_status(LAPP_application_status objLAPP_application_status)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("status_id", objLAPP_application_status.status_id));
            lstParameter.Add(new MySqlParameter("Name", objLAPP_application_status.Name));
            lstParameter.Add(new MySqlParameter("Description", objLAPP_application_status.Description));
            lstParameter.Add(new MySqlParameter("Status_Type_Id", objLAPP_application_status.Status_Type_Id));
            lstParameter.Add(new MySqlParameter("Status", objLAPP_application_status.Status));
            lstParameter.Add(new MySqlParameter("Color_Code", objLAPP_application_status.Color_Code));
            lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_application_status.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_application_status.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objLAPP_application_status.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_application_status.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objLAPP_application_status.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objLAPP_application_status.Modified_By));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_application_status_Save", lstParameter.ToArray());
            return returnValue;
        }
        public int Update_LAPP_application_status(LAPP_application_status objLAPP_application_status, int status_id)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_status_id", objLAPP_application_status.status_id));
            lstParameter.Add(new MySqlParameter("U_Name", objLAPP_application_status.Name));
            lstParameter.Add(new MySqlParameter("U_Description", objLAPP_application_status.Description));
            lstParameter.Add(new MySqlParameter("U_Status_Type_Id", objLAPP_application_status.Status_Type_Id));
            lstParameter.Add(new MySqlParameter("U_Status", objLAPP_application_status.Status));
            lstParameter.Add(new MySqlParameter("U_Color_Code", objLAPP_application_status.Color_Code));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objLAPP_application_status.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objLAPP_application_status.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Created_On", objLAPP_application_status.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLAPP_application_status.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objLAPP_application_status.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objLAPP_application_status.Modified_By));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_application_status_Update", lstParameter.ToArray());
            return returnValue;
        }
        public LAPP_application_status Get_LAPP_application_status_Get_By_ID(int G_status_id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_status_id", G_status_id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_application_status_get_by_status_id", lstParameter.ToArray());
            LAPP_application_status objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public List<LAPP_application_status> Get_All_LAPP_application_status()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_application_status_get_all");
            List<LAPP_application_status> lstEntity = new List<LAPP_application_status>();
            LAPP_application_status objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<LAPP_application_status> LAPP_application_status_get_by_Status_Type_Id(int G_Status_Type_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Status_Type_Id", G_Status_Type_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_application_status_get_by_status_type_Id", lstParameter.ToArray());
            List<LAPP_application_status> lstEntity = new List<LAPP_application_status>();
            LAPP_application_status objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        private LAPP_application_status FetchEntity(DataRow dr)
        {
            LAPP_application_status objEntity = new LAPP_application_status();
            if (dr.Table.Columns.Contains("status_id") && dr["status_id"] != DBNull.Value)
            {
                objEntity.status_id = Convert.ToInt32(dr["status_id"]);
            }
            if (dr.Table.Columns.Contains("Name") && dr["Name"] != DBNull.Value)
            {
                objEntity.Name = Convert.ToString(dr["Name"]);
            }
            if (dr.Table.Columns.Contains("Description") && dr["Description"] != DBNull.Value)
            {
                objEntity.Description = Convert.ToString(dr["Description"]);
            }
            if (dr.Table.Columns.Contains("Status_Type_Id") && dr["Status_Type_Id"] != DBNull.Value)
            {
                objEntity.Status_Type_Id = Convert.ToInt32(dr["Status_Type_Id"]);
            }
            if (dr.Table.Columns.Contains("Status") && dr["Status"] != DBNull.Value)
            {
                objEntity.Status = Convert.ToString(dr["Status"]);
            }
            if (dr.Table.Columns.Contains("Color_Code") && dr["Color_Code"] != DBNull.Value)
            {
                objEntity.Color_Code = Convert.ToString(dr["Color_Code"]);
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
            return objEntity;
        }
    }
}
