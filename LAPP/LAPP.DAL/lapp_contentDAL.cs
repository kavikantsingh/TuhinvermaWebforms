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
   public class lapp_contentDAL : BaseDAL
    {
       public int Save_lapp_content(lapp_content objlapp_content)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Content_ID", objlapp_content.Content_ID));
            lstParameter.Add(new MySqlParameter("Name", objlapp_content.Name));
            lstParameter.Add(new MySqlParameter("Content_Text", objlapp_content.Content_Text));
            lstParameter.Add(new MySqlParameter("Is_Active", objlapp_content.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objlapp_content.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objlapp_content.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objlapp_content.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objlapp_content.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objlapp_content.Modified_By));
            lstParameter.Add(new MySqlParameter("DTS", objlapp_content.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_content_Save", lstParameter.ToArray());
            return returnValue;
        }

        public int Update_lapp_content(lapp_content objlapp_content)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Content_ID", objlapp_content.Content_ID));
            lstParameter.Add(new MySqlParameter("U_Name", objlapp_content.Name));
            lstParameter.Add(new MySqlParameter("U_Content_Text", objlapp_content.Content_Text));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objlapp_content.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objlapp_content.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Created_On", objlapp_content.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objlapp_content.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objlapp_content.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objlapp_content.Modified_By));
            lstParameter.Add(new MySqlParameter("U_DTS", objlapp_content.DTS));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_content_Update", lstParameter.ToArray());
            return returnValue;
        }

        public List<lapp_content> Get_All_lapp_content()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_content_getall");
            List<lapp_content> lstEntity = new List<lapp_content>();
            lapp_content objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<lapp_content> Get_All_lapp_contentby_ContentId(int G_Content_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Content_ID", G_Content_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_content_getall", lstParameter.ToArray());
            List<lapp_content> lstEntity = new List<lapp_content>();
            lapp_content objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public lapp_content Get_lapp_content_by_Content_ID(int G_Content_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Content_ID", G_Content_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_content_getby_Content_ID", lstParameter.ToArray());
            lapp_content objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        private lapp_content FetchEntity(DataRow dr)
        {
            lapp_content objEntity = new lapp_content();
            if (dr.Table.Columns.Contains("Content_ID") && dr["Content_ID"] != DBNull.Value)
            {
                objEntity.Content_ID = Convert.ToInt32(dr["Content_ID"]);
            }

            if (dr.Table.Columns.Contains("Name") && dr["Name"] != DBNull.Value)
            {
                objEntity.Name = Convert.ToString(dr["Name"]);
            }
            if (dr.Table.Columns.Contains("Content_Text") && dr["Content_Text"] != DBNull.Value)
            {
                objEntity.Content_Text = Convert.ToString(dr["Content_Text"]);
            }

            if (dr.Table.Columns.Contains("Is_Active") && dr["Is_Active"] != DBNull.Value)
            {
                objEntity.Is_Active = Convert.ToBoolean(dr["Is_Active"]);
            }
            if (dr.Table.Columns.Contains("Is_Deleted") && dr["Is_Deleted"] != DBNull.Value)
            {
                objEntity.Is_Deleted = Convert.ToBoolean(dr["Is_Deleted"]);
            }
            if (dr.Table.Columns.Contains("Created_On") && dr["Created_On"] != DBNull.Value)
            {
                objEntity.Created_On = Convert.ToDateTime(dr["Created_On"]);
            }
            if (dr.Table.Columns.Contains("Created_By") && dr["Created_By"] != DBNull.Value)
            {
                objEntity.Created_By = Convert.ToInt32(dr["Created_By"]);
            }
            if (dr.Table.Columns.Contains("Modified_On") && dr["Modified_On"] != DBNull.Value)
            {
                objEntity.Modified_On = Convert.ToDateTime(dr["Modified_On"]);
            }
            if (dr.Table.Columns.Contains("Modified_By") && dr["Modified_By"] != DBNull.Value)
            {
                objEntity.Modified_By = Convert.ToInt32(dr["Modified_By"]);
            }
            if (dr.Table.Columns.Contains("DTS") && dr["DTS"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
            }

            return objEntity;
        }
    }
}
