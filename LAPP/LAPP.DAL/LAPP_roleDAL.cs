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
    public class LAPP_role_DAL : BaseDAL
    {
        public int Save_LAPP_role(LAPP_role objLAPP_role)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("LAPP_role_id", objLAPP_role.LAPP_Role_Id));
            lstParameter.Add(new MySqlParameter("LAPP_role_name", objLAPP_role.LAPP_Role_Name));
            lstParameter.Add(new MySqlParameter("Role_Type_ID", objLAPP_role.Role_Type_ID));
            lstParameter.Add(new MySqlParameter("Editble", objLAPP_role.Editble));
            lstParameter.Add(new MySqlParameter("Role_Type", objLAPP_role.Role_Type));
            lstParameter.Add(new MySqlParameter("LAPP_role_description", objLAPP_role.LAPP_Role_Description));
            lstParameter.Add(new MySqlParameter("is_active", objLAPP_role.Is_Active));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_role.Created_By));
            lstParameter.Add(new MySqlParameter("is_deleted", objLAPP_role.Is_Deleted));
            lstParameter.Add(new MySqlParameter("created_on", objLAPP_role.Created_On));
            lstParameter.Add(new MySqlParameter("dts", objLAPP_role.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_role_save",true, lstParameter.ToArray());
           
            return returnValue;
        }

        public int Update_LAPP_role(LAPP_role objLAPP_role, int LAPP_role_id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_LAPP_role_id", objLAPP_role.LAPP_Role_Id));
            lstParameter.Add(new MySqlParameter("U_Role_Type_ID", objLAPP_role.Role_Type_ID));
            lstParameter.Add(new MySqlParameter("U_Role_Type", objLAPP_role.Role_Type));
            lstParameter.Add(new MySqlParameter("U_LAPP_role_name", objLAPP_role.LAPP_Role_Name));
            lstParameter.Add(new MySqlParameter("U_LAPP_role_description", objLAPP_role.LAPP_Role_Description));
            lstParameter.Add(new MySqlParameter("U_Editble", objLAPP_role.Editble));
            lstParameter.Add(new MySqlParameter("U_is_active", objLAPP_role.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLAPP_role.Created_By));
            lstParameter.Add(new MySqlParameter("U_is_deleted", objLAPP_role.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_created_on", objLAPP_role.Created_On));
            lstParameter.Add(new MySqlParameter("U_dts", objLAPP_role.DTS));
            // MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            //returnParam.Direction = ParameterDirection.ReturnValue;
            //lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_role_update", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }

        public LAPP_role Get_LAPP_role_BY_ID(int G_LAPP_role_id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_LAPP_role_id", G_LAPP_role_id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_role_get_by_id", lstParameter.ToArray());
            LAPP_role objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public void Delete_LAPP_role_By_ID(int D_LAPP_role_id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_LAPP_role_id", D_LAPP_role_id));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_role_delete_by_id", lstParameter.ToArray());
        }

        public List<LAPP_role> Get_All_LAPP_role()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_role_get_all");
            List<LAPP_role> lstEntity = new List<LAPP_role>();
            LAPP_role objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_role FetchEntity(DataRow dr)
        {
            LAPP_role objEntity = new LAPP_role();
            if (dr.Table.Columns.Contains("LAPP_role_id") && dr["LAPP_role_id"] != DBNull.Value)
            {
                objEntity.LAPP_Role_Id = Convert.ToInt32(dr["LAPP_role_id"]);
            }
            if (dr.Table.Columns.Contains("LAPP_role_name") && dr["LAPP_role_name"] != DBNull.Value)
            {
                objEntity.LAPP_Role_Name = Convert.ToString(dr["LAPP_role_name"]);
            }
            if (dr.Table.Columns.Contains("Role_Type_ID") && dr["Role_Type_ID"] != DBNull.Value)
            {
                objEntity.Role_Type_ID = Convert.ToInt32(dr["Role_Type_ID"]);
            }
            if (dr.Table.Columns.Contains("Role_Type") && dr["Role_Type"] != DBNull.Value)
            {
                objEntity.Role_Type = Convert.ToString(dr["Role_Type"]);
            }
            if (dr.Table.Columns.Contains("Editble") && dr["Editble"] != DBNull.Value)
            {
                objEntity.Editble = Convert.ToBoolean(dr["Editble"]);
            }
            if (dr.Table.Columns.Contains("LAPP_role_description") && dr["LAPP_role_description"] != DBNull.Value)
            {
                objEntity.LAPP_Role_Description = Convert.ToString(dr["LAPP_role_description"]);
            }
            if (dr.Table.Columns.Contains("is_active") && dr["is_active"] != DBNull.Value)
            {
                objEntity.Is_Active = Convert.ToBoolean(dr["is_active"]);
            }
            if (dr.Table.Columns.Contains("Created_By") && dr["Created_By"] != DBNull.Value)
            {
                objEntity.Created_By = Convert.ToInt32(dr["Created_By"]);
            }
            if (dr.Table.Columns.Contains("is_deleted") && dr["is_deleted"] != DBNull.Value)
            {
                objEntity.Is_Deleted = Convert.ToBoolean(dr["is_deleted"]);
            }
            if (dr.Table.Columns.Contains("created_on") && dr["created_on"] != DBNull.Value)
            {
                objEntity.Created_On = Convert.ToDateTime(dr["created_on"]);
            }
            if (dr.Table.Columns.Contains("dts") && dr["dts"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["dts"]);
            }
            if (dr.Table.Columns.Contains("User_Count") && dr["User_Count"] != DBNull.Value)
            {
                objEntity.User_Count = Convert.ToInt32(dr["User_Count"]);
            }
            return objEntity;

        }
    }
}
