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
    public class LAPP_audit_info_DAL : BaseDAL
    {
        public int Save_LAPP_audit_info(LAPP_audit_info objLAPP_audit_info)
        {

            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("audit_info_id", objLAPP_audit_info.Audit_Info_Id));
            lstParameter.Add(new MySqlParameter("host_address", objLAPP_audit_info.Host_Address));
            lstParameter.Add(new MySqlParameter("original_url", objLAPP_audit_info.Original_Url));
            lstParameter.Add(new MySqlParameter("page_name", objLAPP_audit_info.Page_Name));
            lstParameter.Add(new MySqlParameter("refferal_url", objLAPP_audit_info.Refferal_Url));
            lstParameter.Add(new MySqlParameter("session_id", objLAPP_audit_info.Session_Id));
            lstParameter.Add(new MySqlParameter("time", objLAPP_audit_info.Time));
            lstParameter.Add(new MySqlParameter("user_id", objLAPP_audit_info.User_Id));
            lstParameter.Add(new MySqlParameter("visit_count", objLAPP_audit_info.Visit_Count));
            lstParameter.Add(new MySqlParameter("browser_type", objLAPP_audit_info.Browser_Type));
            lstParameter.Add(new MySqlParameter("plateform", objLAPP_audit_info.Plateform));
            lstParameter.Add(new MySqlParameter("is_javascript_enabled", objLAPP_audit_info.Is_Javascript_Enabled));
            lstParameter.Add(new MySqlParameter("is_cookie_enabled", objLAPP_audit_info.Is_Cookie_Enabled));
            lstParameter.Add(new MySqlParameter("is_crawler", objLAPP_audit_info.Is_Crawler));
            lstParameter.Add(new MySqlParameter("is_activeX_control_enabled", objLAPP_audit_info.Is_ActiveX_Control_Enabled));
            // MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            //returnParam.Direction = ParameterDirection.ReturnValue;
            //lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_audit_info_save", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }
        public int Update_LAPP_audit_info(LAPP_audit_info objLAPP_audit_info, int audit_info_id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_audit_info_id", objLAPP_audit_info.Audit_Info_Id));
            lstParameter.Add(new MySqlParameter("U_host_address", objLAPP_audit_info.Host_Address));
            lstParameter.Add(new MySqlParameter("U_original_url", objLAPP_audit_info.Original_Url));
            lstParameter.Add(new MySqlParameter("U_page_name", objLAPP_audit_info.Page_Name));
            lstParameter.Add(new MySqlParameter("U_refferal_url", objLAPP_audit_info.Refferal_Url));
            lstParameter.Add(new MySqlParameter("U_session_id", objLAPP_audit_info.Session_Id));
            lstParameter.Add(new MySqlParameter("U_time", objLAPP_audit_info.Time));
            lstParameter.Add(new MySqlParameter("U_user_id", objLAPP_audit_info.User_Id));
            lstParameter.Add(new MySqlParameter("U_visit_count", objLAPP_audit_info.Visit_Count));
            lstParameter.Add(new MySqlParameter("U_browser_type", objLAPP_audit_info.Browser_Type));
            lstParameter.Add(new MySqlParameter("U_plateform", objLAPP_audit_info.Plateform));
            lstParameter.Add(new MySqlParameter("U_is_javascript_enabled", objLAPP_audit_info.Is_Javascript_Enabled));
            lstParameter.Add(new MySqlParameter("U_is_cookie_enabled", objLAPP_audit_info.Is_Cookie_Enabled));
            lstParameter.Add(new MySqlParameter("U_is_crawler", objLAPP_audit_info.Is_Crawler));
            lstParameter.Add(new MySqlParameter("U_is_activeX_control_enabled", objLAPP_audit_info.Is_ActiveX_Control_Enabled));
            // MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            //returnParam.Direction = ParameterDirection.ReturnValue;
            //lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_audit_info_Update", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }
        public LAPP_audit_info Get_LAPP_audit_info_Get_BY_ID(int G_audit_info_id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_audit_info_id", G_audit_info_id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_audit_info_Get_BY_ID", lstParameter.ToArray());
            LAPP_audit_info objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public void Delete_LAPP_audit_info_By_ID(int auditinfoid)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_audit_info_id", auditinfoid));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_audit_info_Delete_By_ID", lstParameter.ToArray());


        }
        public List<LAPP_audit_info> Get_All_LAPP_audit_info()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_audit_info_GET_ALL");
            List<LAPP_audit_info> lstEntity = new List<LAPP_audit_info>();
            LAPP_audit_info objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        private LAPP_audit_info FetchEntity(DataRow dr)
        {
            LAPP_audit_info objEntity = new LAPP_audit_info();
            if (dr.Table.Columns.Contains("audit_info_id") && dr["audit_info_id"] != DBNull.Value)
            {
                objEntity.Audit_Info_Id = Convert.ToInt32(dr["audit_info_id"]);
            }
            if (dr.Table.Columns.Contains("host_address") && dr["host_address"] != DBNull.Value)
            {
                objEntity.Host_Address = Convert.ToString(dr["host_address"]);
            }
            if (dr.Table.Columns.Contains("original_url") && dr["original_url"] != DBNull.Value)
            {
                objEntity.Original_Url = Convert.ToString(dr["original_url"]);
            }

            if (dr.Table.Columns.Contains("page_name") && dr["page_name"] != DBNull.Value)
            {
                objEntity.Page_Name = Convert.ToString(dr["page_name"]);
            }
            if (dr.Table.Columns.Contains("refferal_url") && dr["refferal_url"] != DBNull.Value)
            {
                objEntity.Refferal_Url = Convert.ToString(dr["refferal_url"]);
            }
            if (dr.Table.Columns.Contains("session_id") && dr["session_id"] != DBNull.Value)
            {
                objEntity.Session_Id = Convert.ToString(dr["session_id"]);
            }
            if (dr.Table.Columns.Contains("time") && dr["time"] != DBNull.Value)
            {
                objEntity.Time = Convert.ToDateTime(dr["time"]);
            }
            if (dr.Table.Columns.Contains("user_id") && dr["user_id"] != DBNull.Value)
            {
                objEntity.User_Id = Convert.ToInt32(dr["user_id"]);
            }
            if (dr.Table.Columns.Contains("visit_count") && dr["visit_count"] != DBNull.Value)
            {
                objEntity.Visit_Count = Convert.ToInt32(dr["visit_count"]);
            }
            if (dr.Table.Columns.Contains("browser_type") && dr["browser_type"] != DBNull.Value)
            {
                objEntity.Browser_Type = Convert.ToString(dr["browser_type"]);
            }
            if (dr.Table.Columns.Contains("plateform") && dr["plateform"] != DBNull.Value)
            {
                objEntity.Plateform = Convert.ToString(dr["plateform"]);

            }
            if (dr.Table.Columns.Contains("is_javascript_enabled") && dr["is_javascript_enabled"] != DBNull.Value)
            {
                objEntity.Is_Javascript_Enabled = Convert.ToBoolean(dr["is_javascript_enabled"]);
            }
            if (dr.Table.Columns.Contains("is_cookie_enabled") && dr["is_cookie_enabled"] != DBNull.Value)
            {
                objEntity.Is_Cookie_Enabled = Convert.ToBoolean(dr["is_cookie_enabled"]);
            }
            if (dr.Table.Columns.Contains("is_crawler") && dr["is_crawler"] != DBNull.Value)
            {
                objEntity.Is_Crawler = Convert.ToBoolean(dr["is_crawler"]);

            }
            if (dr.Table.Columns.Contains("is_activeX_control_enabled") && dr["is_activeX_control_enabled"] != DBNull.Value)
            {
                objEntity.Is_ActiveX_Control_Enabled = Convert.ToBoolean(dr["is_activeX_control_enabled"]);
            }

            return objEntity;

        }
    }
}
