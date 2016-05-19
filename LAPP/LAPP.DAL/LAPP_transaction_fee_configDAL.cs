using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;
using LAPP.ENTITY;
namespace LAPP.DAL
{
    public class LAPP_transaction_fee_configDAL : BaseDAL
    {
        public int Save_LAPP_transaction_fee_config(LAPP_transaction_fee_config obLAPP_transaction_fee_config)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Transaction_Fee_Config_Id", obLAPP_transaction_fee_config.Transaction_Fee_Config_Id));
            lstParameter.Add(new MySqlParameter("Config_Name", obLAPP_transaction_fee_config.Config_Name));
            lstParameter.Add(new MySqlParameter("ACH_Fee", obLAPP_transaction_fee_config.ACH_Fee));
            lstParameter.Add(new MySqlParameter("CreditCard_Fee", obLAPP_transaction_fee_config.CreditCard_Fee));
            lstParameter.Add(new MySqlParameter("Effective_Date", obLAPP_transaction_fee_config.Effective_Date));
            lstParameter.Add(new MySqlParameter("End_Date", obLAPP_transaction_fee_config.End_Date));
            lstParameter.Add(new MySqlParameter("Remark", obLAPP_transaction_fee_config.Remark));
            lstParameter.Add(new MySqlParameter("Created_By", obLAPP_transaction_fee_config.Created_By));
            lstParameter.Add(new MySqlParameter("Created_On", obLAPP_transaction_fee_config.Created_On));
            lstParameter.Add(new MySqlParameter("Is_Active", obLAPP_transaction_fee_config.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", obLAPP_transaction_fee_config.Is_Deleted));
            lstParameter.Add(new MySqlParameter("DTS", obLAPP_transaction_fee_config.DTS));

            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_transaction_fee_config_Save", true, lstParameter.ToArray());

            return returnValue;
        }

        public int Update_LAPP_transaction_fee_config(LAPP_transaction_fee_config obLAPP_transaction_fee_config, int Transaction_Fee_Config_Id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Transaction_Fee_Config_Id", obLAPP_transaction_fee_config.Transaction_Fee_Config_Id));
            lstParameter.Add(new MySqlParameter("U_Config_Name", obLAPP_transaction_fee_config.Config_Name));
            lstParameter.Add(new MySqlParameter("U_ACH_Fee", obLAPP_transaction_fee_config.ACH_Fee));
            lstParameter.Add(new MySqlParameter("U_CreditCard_Fee", obLAPP_transaction_fee_config.CreditCard_Fee));
            lstParameter.Add(new MySqlParameter("U_Effective_Date", obLAPP_transaction_fee_config.Effective_Date));
            lstParameter.Add(new MySqlParameter("U_End_Date", obLAPP_transaction_fee_config.End_Date));
            lstParameter.Add(new MySqlParameter("U_Remark", obLAPP_transaction_fee_config.Remark));
            lstParameter.Add(new MySqlParameter("U_Created_By", obLAPP_transaction_fee_config.Created_By));
            lstParameter.Add(new MySqlParameter("U_Created_On", obLAPP_transaction_fee_config.Created_On));
            lstParameter.Add(new MySqlParameter("U_Is_Active", obLAPP_transaction_fee_config.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", obLAPP_transaction_fee_config.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_DTS", obLAPP_transaction_fee_config.DTS));

            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_transaction_fee_config_Update", lstParameter.ToArray());
            return returnValue;
        }


        public LAPP_transaction_fee_config Get_LAPP_transaction_fee_config_By_ID(int G_Transaction_Fee_Config_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Transaction_Fee_Config_Id", G_Transaction_Fee_Config_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_transaction_fee_config_get_by_id", lstParameter.ToArray());
            LAPP_transaction_fee_config objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public double Get_LAPP_transaction_fee_config_ACH_Fee()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); 
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_transaction_fee_config_get_ACH_Fee", lstParameter.ToArray());
            return Convert.ToDouble(ds.Tables[0].Rows[0][0]);
        }

        public double Get_LAPP_transaction_fee_config_CC_Fee()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_transaction_fee_config_get_CC_Fee", lstParameter.ToArray());
            return Convert.ToDouble(ds.Tables[0].Rows[0][0]);
        }

        public void Delete_LAPP_transaction_fee_config_by_Id(int D_Transaction_Fee_Config_Id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_Transaction_Fee_Config_Id", D_Transaction_Fee_Config_Id));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_transaction_fee_config_delete_by_Id", lstParameter.ToArray());
        }

        public List<LAPP_transaction_fee_config> Get_All_LAPP_transaction_fee_config()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_transaction_fee_config_get_all");
            List<LAPP_transaction_fee_config> lstEntity = new List<LAPP_transaction_fee_config>();
            LAPP_transaction_fee_config objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_transaction_fee_config FetchEntity(DataRow dr)
        {
            LAPP_transaction_fee_config objEntity = new LAPP_transaction_fee_config();
            if (dr.Table.Columns.Contains("Transaction_Fee_Config_Id") && dr["Transaction_Fee_Config_Id"] != DBNull.Value)
            {
                objEntity.Transaction_Fee_Config_Id = Convert.ToInt32(dr["Transaction_Fee_Config_Id"]);
            }
            if (dr.Table.Columns.Contains("Config_Name") && dr["Config_Name"] != DBNull.Value)
            {
                objEntity.Config_Name = Convert.ToString(dr["Config_Name"]);
            }
            if (dr.Table.Columns.Contains("ACH_Fee") && dr["ACH_Fee"] != DBNull.Value)
            {
                objEntity.ACH_Fee = Convert.ToDouble(dr["ACH_Fee"]);
            }
            if (dr.Table.Columns.Contains("CreditCard_Fee") && dr["CreditCard_Fee"] != DBNull.Value)
            {
                objEntity.CreditCard_Fee = Convert.ToDouble(dr["CreditCard_Fee"]);
            }
            if (dr.Table.Columns.Contains("Effective_Date") && dr["Effective_Date"] != DBNull.Value)
            {
                objEntity.Effective_Date = Convert.ToDateTime(dr["Effective_Date"]);
            }

            if (dr.Table.Columns.Contains("End_Date") && dr["End_Date"] != DBNull.Value)
            {
                objEntity.End_Date = Convert.ToDateTime(dr["End_Date"]);
            }

            if (dr.Table.Columns.Contains("Remark") && dr["Remark"] != DBNull.Value)
            {
                objEntity.Remark = Convert.ToString(dr["Remark"]);
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
            if (dr.Table.Columns.Contains("Created_On") && dr["Created_On"] != DBNull.Value)
            {
                objEntity.Created_On = Convert.ToDateTime(dr["Created_On"]);
            }
            if (dr.Table.Columns.Contains("DTS") && dr["DTS"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
            }
            return objEntity;

        }
    }
}
