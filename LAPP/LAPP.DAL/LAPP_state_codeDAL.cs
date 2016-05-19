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
    public class LAPP_state_codeDAL : BaseDAL
    {
        public LAPP_state_code Get_LAPP_state_code_BY_ID(int G_state_code_id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_state_code_id", G_state_code_id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_state_code_get_by_id", lstParameter.ToArray());
            LAPP_state_code objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public LAPP_state_code Get_LAPP_state_code_BY_State_Cd(string G_state_code)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_state_code", G_state_code));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_state_code_get_by_state_cd", lstParameter.ToArray());
            LAPP_state_code objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public List<LAPP_state_code> Get_All_LAPP_state_code()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_state_code_get_all");
            List<LAPP_state_code> lstEntity = new List<LAPP_state_code>();
            LAPP_state_code objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_state_code FetchEntity(DataRow dr)
        {
            LAPP_state_code objEntity = new LAPP_state_code();
            if (dr.Table.Columns.Contains("state_code_id") && dr["state_code_id"] != DBNull.Value)
            {
                objEntity.State_Code_Id = Convert.ToInt32(dr["state_code_id"]);
            }

            if (dr.Table.Columns.Contains("state_code") && dr["state_code"] != DBNull.Value)
            {
                objEntity.State_Code = Convert.ToString(dr["state_code"]);
            }

            if (dr.Table.Columns.Contains("state_name") && dr["state_name"] != DBNull.Value)
            {
                objEntity.State_Name = Convert.ToString(dr["state_name"]);
            }

            if (dr.Table.Columns.Contains("is_active") && dr["is_active"] != DBNull.Value)
            {
                objEntity.Is_Active = Convert.ToBoolean(dr["is_active"]);
            }
            if (dr.Table.Columns.Contains("is_delete") && dr["is_delete"] != DBNull.Value)
            {
                objEntity.Is_Deleted = Convert.ToBoolean(dr["is_delete"]);
            }
            if (dr.Table.Columns.Contains("created_on") && dr["created_on"] != DBNull.Value)
            {
                objEntity.Created_On = Convert.ToDateTime(dr["created_on"]);
            }
            if (dr.Table.Columns.Contains("dts") && dr["dts"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["dts"]);
            }
            if (dr.Table.Columns.Contains("Country_Name") && dr["Country_Name"] != DBNull.Value)
            {
                objEntity.Country_Name = Convert.ToString(dr["Country_Name"]);
            }
            return objEntity;

        }
    }
}
