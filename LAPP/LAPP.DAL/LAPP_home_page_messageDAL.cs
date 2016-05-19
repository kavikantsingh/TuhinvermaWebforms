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
    public class LAPP_home_page_messageDAL : BaseDAL
    {
        public int Save_LAPP_home_page_message(LAPP_home_page_message objLAPP_home_page_message)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("home_page_message_id", objLAPP_home_page_message.Home_Page_Message_Id));
            lstParameter.Add(new MySqlParameter("message_type", objLAPP_home_page_message.Message_Type));
            lstParameter.Add(new MySqlParameter("message_content", objLAPP_home_page_message.Message_Content));
            lstParameter.Add(new MySqlParameter("start_date", objLAPP_home_page_message.Start_Date));
            lstParameter.Add(new MySqlParameter("end_date", objLAPP_home_page_message.End_Date));
            lstParameter.Add(new MySqlParameter("sort_order", objLAPP_home_page_message.Sort_Order));
            lstParameter.Add(new MySqlParameter("is_active", objLAPP_home_page_message.Is_Active));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_home_page_message.Created_By));
            lstParameter.Add(new MySqlParameter("is_deleted", objLAPP_home_page_message.Is_Deleted));
            lstParameter.Add(new MySqlParameter("created_on", objLAPP_home_page_message.Created_On));
            lstParameter.Add(new MySqlParameter("dts", objLAPP_home_page_message.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_home_page_message_Save", true, lstParameter.ToArray());

            return returnValue;
        }

        public int Update_LAPP_home_page_message(LAPP_home_page_message objLAPP_home_page_message, int home_page_message_id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_home_page_message_id", home_page_message_id));
            lstParameter.Add(new MySqlParameter("U_message_type", objLAPP_home_page_message.Message_Type));
            lstParameter.Add(new MySqlParameter("U_message_content", objLAPP_home_page_message.Message_Content));
            lstParameter.Add(new MySqlParameter("U_start_date", objLAPP_home_page_message.Start_Date));
            lstParameter.Add(new MySqlParameter("U_end_date", objLAPP_home_page_message.End_Date));
            lstParameter.Add(new MySqlParameter("U_sort_order", objLAPP_home_page_message.Sort_Order));
            lstParameter.Add(new MySqlParameter("U_is_active", objLAPP_home_page_message.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLAPP_home_page_message.Created_By));
            lstParameter.Add(new MySqlParameter("U_is_deleted", objLAPP_home_page_message.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_created_on", objLAPP_home_page_message.Created_On));
            lstParameter.Add(new MySqlParameter("U_dts", objLAPP_home_page_message.DTS));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_home_page_message_update", lstParameter.ToArray());
            return returnValue;
        }

        public LAPP_home_page_message Get_LAPP_home_page_message_by_date(DateTime G_Date, int Message_Type)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Date", G_Date)); lstParameter.Add(new MySqlParameter("G_Type", Message_Type));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_home_page_message_get_by_date", lstParameter.ToArray());
            LAPP_home_page_message objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }    
 public LAPP_home_page_message Get_LAPP_home_page_message_BY_ID(int G_home_page_message_id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_home_page_message_id", G_home_page_message_id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_home_page_message_get_by_id", lstParameter.ToArray());
            LAPP_home_page_message objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
 public LAPP_home_page_message Get_LAPP_home_page_message_BY_startdat_enddate(DateTime G_start_date, DateTime G_end_date, int Message_Type)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_start_date", G_start_date));
            lstParameter.Add(new MySqlParameter("G_end_date", G_end_date)); lstParameter.Add(new MySqlParameter("G_Type", Message_Type));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_home_page_message_get_by_startdate_enddate", lstParameter.ToArray());
            LAPP_home_page_message objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public void Delete_LAPP_home_page_messager(int D_home_page_message_id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_home_page_message_id", D_home_page_message_id));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_home_page_message_delete_by_id", lstParameter.ToArray());
        }

        public List<LAPP_home_page_message> Get_All_LAPP_home_page_message()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_home_page_message_get_all");
            List<LAPP_home_page_message> lstEntity = new List<LAPP_home_page_message>();
            LAPP_home_page_message objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_home_page_message FetchEntity(DataRow dr)
        {
            LAPP_home_page_message objEntity = new LAPP_home_page_message();
            if (dr.Table.Columns.Contains("home_page_message_id") && dr["home_page_message_id"] != DBNull.Value)
            {
                objEntity.Home_Page_Message_Id = Convert.ToInt32(dr["home_page_message_id"]);
            }

            if (dr.Table.Columns.Contains("message_type") && dr["message_type"] != DBNull.Value)
            {
                objEntity.Message_Type = Convert.ToInt32(dr["message_type"]);
            }

            if (dr.Table.Columns.Contains("message_content") && dr["message_content"] != DBNull.Value)
            {
                objEntity.Message_Content = Convert.ToString(dr["message_content"]);
            }

            if (dr.Table.Columns.Contains("start_date") && dr["start_date"] != DBNull.Value)
            {
                objEntity.Start_Date = Convert.ToDateTime(dr["start_date"]);
            }

            if (dr.Table.Columns.Contains("end_date") && dr["end_date"] != DBNull.Value)
            {
                objEntity.End_Date = Convert.ToDateTime(dr["end_date"]);
            }

            if (dr.Table.Columns.Contains("sort_order") && dr["sort_order"] != DBNull.Value)
            {
                objEntity.Sort_Order = Convert.ToInt32(dr["sort_order"]);
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
            return objEntity;

        }
    }
}
