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
    public class lapp_application_fee_detailsDAL : BaseDAL
    {
        public int Save_lapp_application_fee_details(lapp_application_fee_details objlapp_application_fee_details)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            //lstParameter.Add(new MySqlParameter("Fee_Detail_Id", objlapp_application_fee_details.Fee_Detail_Id));
            lstParameter.Add(new MySqlParameter("Application_Id", objlapp_application_fee_details.Application_Id));
            lstParameter.Add(new MySqlParameter("Application_Name", objlapp_application_fee_details.Application_Name));
            lstParameter.Add(new MySqlParameter("Fee", objlapp_application_fee_details.Fee));
            lstParameter.Add(new MySqlParameter("Late_Fee", objlapp_application_fee_details.Late_Fee));
            lstParameter.Add(new MySqlParameter("Sort_order", objlapp_application_fee_details.Sort_order));
            lstParameter.Add(new MySqlParameter("Created_By", objlapp_application_fee_details.Created_By));
            lstParameter.Add(new MySqlParameter("Created_On", objlapp_application_fee_details.Created_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objlapp_application_fee_details.Modified_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objlapp_application_fee_details.Modified_On));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objlapp_application_fee_details.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Is_Active", objlapp_application_fee_details.Is_Active));
            lstParameter.Add(new MySqlParameter("DTS", objlapp_application_fee_details.DTS));

            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_application_fee_details_Save", true, lstParameter.ToArray());

            return returnValue;
        }

        public int Update_lapp_application_fee_details(lapp_application_fee_details objlapp_application_fee_details)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Fee_Detail_Id", objlapp_application_fee_details.Fee_Detail_Id));
            lstParameter.Add(new MySqlParameter("U_Application_Id", objlapp_application_fee_details.Application_Id));
            lstParameter.Add(new MySqlParameter("U_Application_Name", objlapp_application_fee_details.Application_Name));
            lstParameter.Add(new MySqlParameter("U_Fee", objlapp_application_fee_details.Fee));
            lstParameter.Add(new MySqlParameter("U_Late_Fee", objlapp_application_fee_details.Late_Fee));
            lstParameter.Add(new MySqlParameter("U_Sort_order", objlapp_application_fee_details.Sort_order));
            lstParameter.Add(new MySqlParameter("U_Created_By", objlapp_application_fee_details.Created_By));
            lstParameter.Add(new MySqlParameter("U_Created_On", objlapp_application_fee_details.Created_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objlapp_application_fee_details.Modified_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objlapp_application_fee_details.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objlapp_application_fee_details.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objlapp_application_fee_details.Is_Active));
            lstParameter.Add(new MySqlParameter("U_DTS", objlapp_application_fee_details.DTS));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_application_fee_details_update", lstParameter.ToArray());
            return returnValue;
        }

        public lapp_application_fee_details Get_lapp_application_fee_details_BY_ID(int G_Fee_Detail_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Fee_Details_Id", G_Fee_Detail_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_application_fee_details_get_by_ID", lstParameter.ToArray());
            lapp_application_fee_details objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public List<lapp_application_fee_details> Get_All_lapp_application_fee_details()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_application_fee_details_get_all");
            List<lapp_application_fee_details> lstEntity = new List<lapp_application_fee_details>();
            lapp_application_fee_details objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<lapp_application_fee_details> Get_All_lapp_application_fee_details_by_Application_Id(int G_Application_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Application_Id", G_Application_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_application_fee_details_get_by_Application_Id", lstParameter.ToArray());
            List<lapp_application_fee_details> lstEntity = new List<lapp_application_fee_details>();
            lapp_application_fee_details objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<lapp_application_fee_details> Get_All_lapp_application_fee_details_by_Query(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            List<lapp_application_fee_details> lstEntity = new List<lapp_application_fee_details>();
            lapp_application_fee_details objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public lapp_application_fee_details Get_lapp_application_fee_details_by_Query(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            lapp_application_fee_details objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        private lapp_application_fee_details FetchEntity(DataRow dr)
        {
            lapp_application_fee_details objEntity = new lapp_application_fee_details();
            if (dr.Table.Columns.Contains("Fee_Detail_Id") && dr["Fee_Detail_Id"] != DBNull.Value)
            {
                objEntity.Fee_Detail_Id = Convert.ToInt32(dr["Fee_Detail_Id"]);
            }
            if (dr.Table.Columns.Contains("Application_Id") && dr["Application_Id"] != DBNull.Value)
            {
                objEntity.Application_Id = Convert.ToInt32(dr["Application_Id"]);
            }
            if (dr.Table.Columns.Contains("Application_Name") && dr["Application_Name"] != DBNull.Value)
            {
                objEntity.Application_Name = Convert.ToString(dr["Application_Name"]);
            }
            if (dr.Table.Columns.Contains("Fee") && dr["Fee"] != DBNull.Value)
            {
                objEntity.Fee = Convert.ToDecimal(dr["Fee"]);
            }
            if (dr.Table.Columns.Contains("Late_Fee") && dr["Late_Fee"] != DBNull.Value)
            {
                objEntity.Late_Fee = Convert.ToDecimal(dr["Late_Fee"]);
            }

            if (dr.Table.Columns.Contains("Sort_order") && dr["Sort_order"] != DBNull.Value)
            {
                objEntity.Sort_order = Convert.ToInt32(dr["Sort_order"]);
            }

            if (dr.Table.Columns.Contains("Created_By") && dr["Created_By"] != DBNull.Value)
            {
                objEntity.Created_By = Convert.ToInt32(dr["Created_By"]);
            }
            if (dr.Table.Columns.Contains("Created_On") && dr["Created_On"] != DBNull.Value)
            {
                objEntity.Created_On = Convert.ToDateTime(dr["Created_On"]);
            }
            if (dr.Table.Columns.Contains("Modified_By") && dr["Modified_By"] != DBNull.Value)
            {
                objEntity.Modified_By = Convert.ToInt32(dr["Modified_By"]);
            }
            if (dr.Table.Columns.Contains("Modified_On") && dr["Modified_On"] != DBNull.Value)
            {
                objEntity.Modified_On = Convert.ToDateTime(dr["Modified_On"]);
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

            return objEntity;

        }
    }
}
