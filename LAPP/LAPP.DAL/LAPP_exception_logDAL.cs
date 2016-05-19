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
    public class LAPP_exception_log_DAL : BaseDAL
    {
        public int Save_LAPP_exception_log(LAPP_exception_log objLAPP_exception_log)
        {

            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            objLAPP_exception_log.Thread = objLAPP_exception_log.Thread.Replace("'", "\\'");
            objLAPP_exception_log.Context = objLAPP_exception_log.Context.Replace("'", "\\'");
            objLAPP_exception_log.Logger = objLAPP_exception_log.Logger.Replace("'", "\\'");
            objLAPP_exception_log.Url = objLAPP_exception_log.Url.Replace("'", "\\'");
            objLAPP_exception_log.Message = objLAPP_exception_log.Message.Replace("'", "\\'");
            objLAPP_exception_log.Exception = objLAPP_exception_log.Exception.Replace("'", "\\'");



            string Query = "INSERT INTO LAPP_exception_log(date, thread, context, level, logger, message, exception, user_id, reference_id, reference_type_id, url) VALUES (";
            Query += "now()";
            Query += ",'" + objLAPP_exception_log.Thread.Replace("'", "\'") + "'";
            Query += ",'" + objLAPP_exception_log.Context.Replace("'", "\'") + "'";
            Query += ",'" + objLAPP_exception_log.Level + "'";
            Query += ",'" + objLAPP_exception_log.Logger.Replace("'", "\'") + "'";
            Query += ",'" + objLAPP_exception_log.Message + "'";
            Query += ",'" + objLAPP_exception_log.Exception + "'";
            Query += "," + objLAPP_exception_log.User_Id + "";
            Query += "," + objLAPP_exception_log.Reference_Id + "";
            Query += ",'" + objLAPP_exception_log.Reference_Type_Id + "'";
            Query += ",'" + objLAPP_exception_log.Url + "'";
            Query += ")";
            int returnValue = objDB.ExecuteNonQuery(CommandType.Text, Query);
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
            //DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ////lstParameter.Add(new MySqlParameter("exception_log_id", objLAPP_exception_log.Exception_Log_Id));
            //lstParameter.Add(new MySqlParameter("date", objLAPP_exception_log.Date));
            //lstParameter.Add(new MySqlParameter("thread", objLAPP_exception_log.Thread));
            //lstParameter.Add(new MySqlParameter("context", objLAPP_exception_log.Context));
            //lstParameter.Add(new MySqlParameter("level", objLAPP_exception_log.Level));
            //lstParameter.Add(new MySqlParameter("logger", objLAPP_exception_log.Logger));
            //lstParameter.Add(new MySqlParameter("message", objLAPP_exception_log.Message));
            //lstParameter.Add(new MySqlParameter("exception", objLAPP_exception_log.Exception));
            //lstParameter.Add(new MySqlParameter("user_id", objLAPP_exception_log.User_Id));
            //lstParameter.Add(new MySqlParameter("reference_id", objLAPP_exception_log.Reference_Id));
            //lstParameter.Add(new MySqlParameter("reference_type_id", objLAPP_exception_log.Reference_Type_Id));
            //lstParameter.Add(new MySqlParameter("url", objLAPP_exception_log.Url));

            //// MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            ////returnParam.Direction = ParameterDirection.ReturnValue;
            ////lstParameter.Add(returnParam);
            //int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_exception_log_SAVE", lstParameter.ToArray());
            ////Convert.ToInt32(returnParam.Value);
            //return returnValue;
        }

        public int Update_LAPP_exception_log(LAPP_exception_log objLAPP_exception_log, int exception_log_id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_exception_log_id", objLAPP_exception_log.Exception_Log_Id));
            lstParameter.Add(new MySqlParameter("U_date", objLAPP_exception_log.Date));
            lstParameter.Add(new MySqlParameter("U_thread", objLAPP_exception_log.Thread));
            lstParameter.Add(new MySqlParameter("U_context", objLAPP_exception_log.Context));
            lstParameter.Add(new MySqlParameter("U_level", objLAPP_exception_log.Level));
            lstParameter.Add(new MySqlParameter("U_logger", objLAPP_exception_log.Logger));
            lstParameter.Add(new MySqlParameter("U_message", objLAPP_exception_log.Message));
            lstParameter.Add(new MySqlParameter("U_exception", objLAPP_exception_log.Exception));
            lstParameter.Add(new MySqlParameter("U_user_id", objLAPP_exception_log.User_Id));
            lstParameter.Add(new MySqlParameter("U_reference_id", objLAPP_exception_log.Reference_Id));
            lstParameter.Add(new MySqlParameter("U_reference_type_id", objLAPP_exception_log.Reference_Type_Id));
            lstParameter.Add(new MySqlParameter("U_url", objLAPP_exception_log.Url));

            // MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            //returnParam.Direction = ParameterDirection.ReturnValue;
            //lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_exception_log_UPDATE", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }
        //public boe_member_info Get_All_Member_Info_By_Member_Id(int memberid)
        //{
        //    DataSet ds = new DataSet("DS");
        //    DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
        //    lstParameter.Add(new MySqlParameter("MemberInfoId", memberid));
        //    ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "getBoeMemberInfoById", lstParameter.ToArray());
        //    boe_member_info objEntity = null;
        //    foreach (DataRow dr in ds.Tables[0].Rows)
        //    {
        //        objEntity = FetchEntity(dr);
        //    }
        //    return objEntity;


        //}
        //public void Delete_Member_Info_By_Id(int memberid)
        //{
        //    DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
        //    lstParameter.Add(new MySqlParameter("D_Member_Info_Id", memberid));
        //    objDB.ExecuteNonQuery(CommandType.StoredProcedure, "Delete_Member_Info_By_Id", lstParameter.ToArray());


        //}

        public List<LAPP_exception_log> Get_ALL_LAPP_exception_log()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_exception_log_Get_ALL");
            List<LAPP_exception_log> lstEntity = new List<LAPP_exception_log>();
            LAPP_exception_log objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_exception_log FetchEntity(DataRow dr)
        {
            LAPP_exception_log objEntity = new LAPP_exception_log();
            if (dr.Table.Columns.Contains("exception_log_id") && dr["exception_log_id"] != DBNull.Value)
            {
                objEntity.Exception_Log_Id = Convert.ToInt32(dr["exception_log_id"]);
            }
            if (dr.Table.Columns.Contains("date") && dr["date"] != DBNull.Value)
            {
                objEntity.Date = Convert.ToDateTime(dr["date"]);
            }
            if (dr.Table.Columns.Contains("thread") && dr["thread"] != DBNull.Value)
            {
                objEntity.Thread = Convert.ToString(dr["thread"]);
            }

            if (dr.Table.Columns.Contains("context") && dr["context"] != DBNull.Value)
            {
                objEntity.Context = Convert.ToString(dr["context"]);
            }

            if (dr.Table.Columns.Contains("level") && dr["level"] != DBNull.Value)
            {
                objEntity.Level = Convert.ToString(dr["level"]);
            }

            if (dr.Table.Columns.Contains("logger") && dr["logger"] != DBNull.Value)
            {
                objEntity.Logger = Convert.ToString(dr["logger"]);
            }

            if (dr.Table.Columns.Contains("message") && dr["message"] != DBNull.Value)
            {
                objEntity.Message = Convert.ToString(dr["message"]);
            }

            if (dr.Table.Columns.Contains("exception") && dr["exception"] != DBNull.Value)
            {
                objEntity.Exception = Convert.ToString(dr["exception"]);
            }

            if (dr.Table.Columns.Contains("user_id") && dr["user_id"] != DBNull.Value)
            {
                objEntity.User_Id = Convert.ToInt32(dr["user_id"]);
            }

            if (dr.Table.Columns.Contains("reference_id") && dr["reference_id"] != DBNull.Value)
            {
                objEntity.Reference_Id = Convert.ToInt32(dr["reference_id"]);
            }
            if (dr.Table.Columns.Contains("reference_type_id") && dr["reference_type_id"] != DBNull.Value)
            {
                objEntity.Reference_Type_Id = Convert.ToString(dr["reference_type_id"]);

            }
            if (dr.Table.Columns.Contains("url") && dr["url"] != DBNull.Value)
            {
                objEntity.Url = Convert.ToString(dr["url"]);
            }
            return objEntity;

        }
    }
}
