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
    public class LAPP_configurationDAL : BaseDAL
    {
        public int Save_LAPP_configuration(LAPP_configuration objLAPP_configuration)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Configuration_Id", objLAPP_configuration.Configuration_Id));
            lstParameter.Add(new MySqlParameter("Configuration_Type_Id", objLAPP_configuration.Configuration_Type_Id));
            lstParameter.Add(new MySqlParameter("Org_Id", objLAPP_configuration.Org_Id));
            lstParameter.Add(new MySqlParameter("Facility_Id", objLAPP_configuration.Facility_Id));
            lstParameter.Add(new MySqlParameter("Dept_Center_Id", objLAPP_configuration.Dept_Center_Id));
            lstParameter.Add(new MySqlParameter("Setting", objLAPP_configuration.Setting));
            lstParameter.Add(new MySqlParameter("Description", objLAPP_configuration.Description));
            lstParameter.Add(new MySqlParameter("Data_Type", objLAPP_configuration.Data_Type));
            lstParameter.Add(new MySqlParameter("ValidationRegEx", objLAPP_configuration.ValidationRegEx));
            lstParameter.Add(new MySqlParameter("Value", objLAPP_configuration.Value));
            lstParameter.Add(new MySqlParameter("Is_Editable", objLAPP_configuration.Is_Editable));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_configuration.Created_By));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_configuration.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_configuration.Is_Active));
            lstParameter.Add(new MySqlParameter("User_Id", objLAPP_configuration.User_Id));
            lstParameter.Add(new MySqlParameter("DTS", objLAPP_configuration.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_configuration_Save", true, lstParameter.ToArray());

            return returnValue;
        }

        public int Update_LAPP_configuration(LAPP_configuration objLAPP_configuration, int Configuration_Id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Configuration_Id", Configuration_Id));
            lstParameter.Add(new MySqlParameter("U_Configuration_Type_Id", objLAPP_configuration.Configuration_Type_Id));
            lstParameter.Add(new MySqlParameter("U_Org_Id", objLAPP_configuration.Org_Id));
            lstParameter.Add(new MySqlParameter("U_Facility_Id", objLAPP_configuration.Facility_Id));
            lstParameter.Add(new MySqlParameter("U_Dept_Center_Id", objLAPP_configuration.Dept_Center_Id));
            lstParameter.Add(new MySqlParameter("U_Setting", objLAPP_configuration.Setting));
            lstParameter.Add(new MySqlParameter("U_Description", objLAPP_configuration.Description));
            lstParameter.Add(new MySqlParameter("U_Data_Type", objLAPP_configuration.Data_Type));
            lstParameter.Add(new MySqlParameter("U_ValidationRegEx", objLAPP_configuration.ValidationRegEx));
            lstParameter.Add(new MySqlParameter("U_Value", objLAPP_configuration.Value));
            lstParameter.Add(new MySqlParameter("U_Is_Editable", objLAPP_configuration.Is_Editable));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLAPP_configuration.Created_By));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objLAPP_configuration.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objLAPP_configuration.Is_Active));
            lstParameter.Add(new MySqlParameter("U_User_Id", objLAPP_configuration.User_Id));
            lstParameter.Add(new MySqlParameter("U_DTS", objLAPP_configuration.DTS));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_configuration_Update", lstParameter.ToArray());
            return returnValue;
        }

        public LAPP_configuration Get_LAPP_configuration_BY_ID(int G_Configuration_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Configuration_Id", G_Configuration_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_configuration_get_by_id", lstParameter.ToArray());
            LAPP_configuration objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public void Delete_LAPP_configuration(int D_Configuration_Id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_Configuration_Id", D_Configuration_Id));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_configuration_delete_by_id", lstParameter.ToArray());
        }

        public List<LAPP_configuration> Get_All_LAPP_configuration()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_configuration_get_all");
            List<LAPP_configuration> lstEntity = new List<LAPP_configuration>();
            LAPP_configuration objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_configuration FetchEntity(DataRow dr)
        {
            LAPP_configuration objEntity = new LAPP_configuration();
            if (dr.Table.Columns.Contains("Configuration_Id") && dr["Configuration_Id"] != DBNull.Value)
            {
                objEntity.Configuration_Id = Convert.ToInt32(dr["Configuration_Id"]);
            }
            if (dr.Table.Columns.Contains("Configuration_Type_Id") && dr["Configuration_Type_Id"] != DBNull.Value)
            {
                objEntity.Configuration_Type_Id = Convert.ToInt32(dr["Configuration_Type_Id"]);
            }
            if (dr.Table.Columns.Contains("Org_Id") && dr["Org_Id"] != DBNull.Value)
            {
                objEntity.Org_Id = Convert.ToInt32(dr["Org_Id"]);
            }
            if (dr.Table.Columns.Contains("Facility_Id") && dr["Facility_Id"] != DBNull.Value)
            {
                objEntity.Facility_Id = Convert.ToInt32(dr["Facility_Id"]);
            }
            if (dr.Table.Columns.Contains("Dept_Center_Id") && dr["Dept_Center_Id"] != DBNull.Value)
            {
                objEntity.Dept_Center_Id = Convert.ToInt32(dr["Dept_Center_Id"]);
            }
            if (dr.Table.Columns.Contains("Setting") && dr["Setting"] != DBNull.Value)
            {
                objEntity.Setting = Convert.ToString(dr["Setting"]);
            }
            if (dr.Table.Columns.Contains("Description") && dr["Description"] != DBNull.Value)
            {
                objEntity.Description = Convert.ToString(dr["Description"]);
            }
            if (dr.Table.Columns.Contains("Data_Type") && dr["Data_Type"] != DBNull.Value)
            {
                objEntity.Data_Type = Convert.ToString(dr["Data_Type"]);
            }
            if (dr.Table.Columns.Contains("ValidationRegEx") && dr["ValidationRegEx"] != DBNull.Value)
            {
                objEntity.ValidationRegEx = Convert.ToString(dr["ValidationRegEx"]);
            }
            if (dr.Table.Columns.Contains("Value") && dr["Value"] != DBNull.Value)
            {
                objEntity.Value = Convert.ToString(dr["Value"]);
            }
            if (dr.Table.Columns.Contains("Is_Editable") && dr["Is_Editable"] != DBNull.Value)
            {
                objEntity.Is_Editable = Convert.ToBoolean(dr["Is_Editable"]);
            }
            if (dr.Table.Columns.Contains("Created_By") && dr["Created_By"] != DBNull.Value)
            {
                objEntity.Created_By = Convert.ToInt32(dr["Created_By"]);
            }
            if (dr.Table.Columns.Contains("Is_Deleted") && dr["Is_Deleted"] != DBNull.Value)
            {
                objEntity.Is_Deleted = Convert.ToBoolean(dr["Is_Deleted"]);
            }
            if (dr.Table.Columns.Contains("Is_Active") && dr["Is_Active"] != DBNull.Value)
            {
                objEntity.Is_Active = Convert.ToBoolean(dr["Is_Active"]);
            }
            if (dr.Table.Columns.Contains("User_Id") && dr["User_Id"] != DBNull.Value)
            {
                objEntity.User_Id = Convert.ToInt32(dr["User_Id"]);
            }
            if (dr.Table.Columns.Contains("DTS") && dr["DTS"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
            }
            return objEntity;

        }
    }
}
