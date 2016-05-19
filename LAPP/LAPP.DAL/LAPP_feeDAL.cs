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
    public class LAPP_feeDAL : BaseDAL
    {
        public int Save_LAPP_fee(LAPP_fee objLAPP_fee)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Fee_ID", objLAPP_fee.Fee_ID));
            lstParameter.Add(new MySqlParameter("Fee_Type_ID", objLAPP_fee.Fee_Type_ID));
            lstParameter.Add(new MySqlParameter("Fee_Name", objLAPP_fee.Fee_Name));
            lstParameter.Add(new MySqlParameter("Fee_Description", objLAPP_fee.Fee_Description));
            lstParameter.Add(new MySqlParameter("Fee_Amount", objLAPP_fee.Fee_Amount));
            lstParameter.Add(new MySqlParameter("Fee_Additonal_Amount", objLAPP_fee.Fee_Additonal_Amount));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_fee.Created_By));
            lstParameter.Add(new MySqlParameter("Created_On", objLAPP_fee.Created_On));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_fee.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_fee.Is_Active));
            lstParameter.Add(new MySqlParameter("DTS", objLAPP_fee.DTS));

            lstParameter.Add(new MySqlParameter("Effective_Date", objLAPP_fee.Effective_Date));
            lstParameter.Add(new MySqlParameter("End_Date", objLAPP_fee.End_Date));
            lstParameter.Add(new MySqlParameter("Display_Order", objLAPP_fee.Display_Order));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_fee_Save", true, lstParameter.ToArray());

            return returnValue;
        }

        public int Update_LAPP_fee(LAPP_fee objLAPP_fee, int Fee_ID)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Fee_ID", Fee_ID));
            lstParameter.Add(new MySqlParameter("U_Fee_Type_ID", objLAPP_fee.Fee_Type_ID));
            lstParameter.Add(new MySqlParameter("U_Fee_Name", objLAPP_fee.Fee_Name));
            lstParameter.Add(new MySqlParameter("U_Fee_Description", objLAPP_fee.Fee_Description));
            lstParameter.Add(new MySqlParameter("U_Fee_Amount", objLAPP_fee.Fee_Amount));
            lstParameter.Add(new MySqlParameter("U_Fee_Additonal_Amount", objLAPP_fee.Fee_Additonal_Amount));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLAPP_fee.Created_By));
            lstParameter.Add(new MySqlParameter("U_Created_On", objLAPP_fee.Created_On));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objLAPP_fee.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objLAPP_fee.Is_Active));
            lstParameter.Add(new MySqlParameter("U_DTS", objLAPP_fee.DTS));
            lstParameter.Add(new MySqlParameter("U_Effective_Date", objLAPP_fee.Effective_Date));
            lstParameter.Add(new MySqlParameter("U_End_Date", objLAPP_fee.End_Date));
            lstParameter.Add(new MySqlParameter("U_Display_Order", objLAPP_fee.Display_Order));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_fee_Update", lstParameter.ToArray());
            return returnValue;
        }

        public LAPP_fee Get_LAPP_fee_BY_ID(int G_Fee_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Fee_ID", G_Fee_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_fee_get_by_id", lstParameter.ToArray());
            LAPP_fee objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public void Delete_LAPP_fee(int D_Fee_ID)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_Fee_ID", D_Fee_ID));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_fee_delete_by_id", lstParameter.ToArray());
        }

        public List<LAPP_fee> Get_All_LAPP_fee()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_fee_get_all");
            List<LAPP_fee> lstEntity = new List<LAPP_fee>();
            LAPP_fee objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<LAPP_fee> Get_All_LAPP_fee_by_fee_type_Id()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_fee-get_all_by_fee_type_id");
            List<LAPP_fee> lstEntity = new List<LAPP_fee>();
            LAPP_fee objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        private LAPP_fee FetchEntity(DataRow dr)
        {
            LAPP_fee objEntity = new LAPP_fee();
            if (dr.Table.Columns.Contains("Fee_ID") && dr["Fee_ID"] != DBNull.Value)
            {
                objEntity.Fee_ID = Convert.ToInt32(dr["Fee_ID"]);
            }
            if (dr.Table.Columns.Contains("Fee_Type_ID") && dr["Fee_Type_ID"] != DBNull.Value)
            {
                objEntity.Fee_Type_ID = Convert.ToInt32(dr["Fee_Type_ID"]);
            }
            if (dr.Table.Columns.Contains("Fee_Name") && dr["Fee_Name"] != DBNull.Value)
            {
                objEntity.Fee_Name = Convert.ToString(dr["Fee_Name"]);
            }

            if (dr.Table.Columns.Contains("Fee_Description") && dr["Fee_Description"] != DBNull.Value)
            {
                objEntity.Fee_Description = Convert.ToString(dr["Fee_Description"]);
            }
            if (dr.Table.Columns.Contains("Fee_Amount") && dr["Fee_Amount"] != DBNull.Value)
            {
                objEntity.Fee_Amount = Convert.ToDecimal(dr["Fee_Amount"]);
            }
            if (dr.Table.Columns.Contains("Fee_Additonal_Amount") && dr["Fee_Additonal_Amount"] != DBNull.Value)
            {
                objEntity.Fee_Additonal_Amount = Convert.ToDecimal(dr["Fee_Additonal_Amount"]);
            }
            if (dr.Table.Columns.Contains("Created_By") && dr["Created_By"] != DBNull.Value)
            {
                objEntity.Created_By = Convert.ToInt32(dr["Created_By"]);
            }
            if (dr.Table.Columns.Contains("Created_On") && dr["Created_On"] != DBNull.Value)
            {
                objEntity.Created_On = Convert.ToDateTime(dr["Created_On"]);
            }
            if (dr.Table.Columns.Contains("Is_Deleted") && dr["Is_Deleted"] != DBNull.Value)
            {
                objEntity.Is_Deleted = Convert.ToBoolean(dr["Is_Deleted"]);
            }
            if (dr.Table.Columns.Contains("Is_Active") && dr["Is_Active"] != DBNull.Value)
            {
                objEntity.Is_Active = Convert.ToBoolean(dr["Is_Active"]);
            }
            if (dr.Table.Columns.Contains("DTS") && dr["DTS"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
            }
            if (dr.Table.Columns.Contains("Effective_Date") && dr["Effective_Date"] != DBNull.Value)
            {
                objEntity.Effective_Date = Convert.ToDateTime(dr["Effective_Date"]);
            }
            if (dr.Table.Columns.Contains("End_Date") && dr["End_Date"] != DBNull.Value)
            {
                objEntity.End_Date = Convert.ToDateTime(dr["End_Date"]);
            }
            if (dr.Table.Columns.Contains("Display_Order") && dr["Display_Order"] != DBNull.Value)
            {
                objEntity.Display_Order = Convert.ToInt32(dr["Display_Order"]);
            }
            return objEntity;

        }
    }
}
