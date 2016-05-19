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
    public class LAPP_role_histDAL : BaseDAL
    {
        public int Save_LAPP_role_hist(LAPP_role_hist objLAPP_role_hist)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("LAPP_Role_Id", objLAPP_role_hist.LAPP_Role_Id));
            lstParameter.Add(new MySqlParameter("LAPP_Role_Name", objLAPP_role_hist.LAPP_Role_Name));
            lstParameter.Add(new MySqlParameter("LAPP_Role_Description", objLAPP_role_hist.LAPP_Role_Description));
            lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_role_hist.Is_Active));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_role_hist.Created_By));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_role_hist.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objLAPP_role_hist.Created_On));
            lstParameter.Add(new MySqlParameter("DTS", objLAPP_role_hist.DTS));
            lstParameter.Add(new MySqlParameter("Action", objLAPP_role_hist.Action));
            lstParameter.Add(new MySqlParameter("Modified_By", objLAPP_role_hist.Modified_By));
            lstParameter.Add(new MySqlParameter("Modified_DTS", objLAPP_role_hist.Modified_DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_role_hist_save", true, lstParameter.ToArray());

            return returnValue;
        }

        private LAPP_role_hist FetchEntity(DataRow dr)
        {
            LAPP_role_hist objEntity = new LAPP_role_hist();
            if (dr.Table.Columns.Contains("LAPP_Role_Id") && dr["LAPP_Role_Id"] != DBNull.Value)
            {
                objEntity.LAPP_Role_Id = Convert.ToInt32(dr["LAPP_Role_Id"]);
            }
            if (dr.Table.Columns.Contains("LAPP_Role_Name") && dr["LAPP_Role_Name"] != DBNull.Value)
            {
                objEntity.LAPP_Role_Name = Convert.ToString(dr["LAPP_Role_Name"]);
            }
            if (dr.Table.Columns.Contains("LAPP_Role_Description") && dr["LAPP_Role_Description"] != DBNull.Value)
            {
                objEntity.LAPP_Role_Description = Convert.ToString(dr["LAPP_Role_Description"]);
            }
            if (dr.Table.Columns.Contains("Is_Active") && dr["Is_Active"] != DBNull.Value)
            {
                objEntity.Is_Active = Convert.ToBoolean(dr["Is_Active"]);
            }
            if (dr.Table.Columns.Contains("Created_By") && dr["Created_By"] != DBNull.Value)
            {
                objEntity.Created_By = Convert.ToInt32(dr["Created_By"]);
            }
            if (dr.Table.Columns.Contains("Is_Deleted") && dr["Is_Deleted"] != DBNull.Value)
            {
                objEntity.Is_Deleted = Convert.ToBoolean(dr["Is_Deleted"]);
            }
            if (dr.Table.Columns.Contains("Created_On") && dr["Created_On"] != DBNull.Value)
            {
                objEntity.Created_On = Convert.ToDateTime(dr["Created_On"]);
            }
            if (dr.Table.Columns.Contains("DTS") && dr["DTS"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
            }
            if (dr.Table.Columns.Contains("Action") && dr["Action"] != DBNull.Value)
            {
                objEntity.Action = Convert.ToString(dr["Action"]);
            }
            if (dr.Table.Columns.Contains("Modified_By") && dr["Modified_By"] != DBNull.Value)
            {
                objEntity.Modified_By = Convert.ToInt32(dr["Modified_By"]);
            }
            if (dr.Table.Columns.Contains("Modified_DTS") && dr["Modified_DTS"] != DBNull.Value)
            {
                objEntity.Modified_DTS = Convert.ToDateTime(dr["Modified_DTS"]);
            }
            return objEntity;

        }
    }
}
