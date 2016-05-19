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
    public class lapp_report_tableDAL : BaseDAL
    {
        public int Save_lapp_report_table(lapp_report_table objlapp_report_table)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Table_Name", objlapp_report_table.Table_Name));
            lstParameter.Add(new MySqlParameter("Table_Pk_Name", objlapp_report_table.Table_Pk_Name));
            lstParameter.Add(new MySqlParameter("Is_Active", objlapp_report_table.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objlapp_report_table.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objlapp_report_table.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objlapp_report_table.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objlapp_report_table.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objlapp_report_table.Modified_By));
            lstParameter.Add(new MySqlParameter("DTS", objlapp_report_table.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_report_table_Save", lstParameter.ToArray());
            return returnValue;
        }

        public int Update_lapp_report_table(lapp_report_table objlapp_report_table)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Table_ID", objlapp_report_table.Table_ID));
            lstParameter.Add(new MySqlParameter("U_Table_Name", objlapp_report_table.Table_Name));
            lstParameter.Add(new MySqlParameter("U_Table_Pk_Name", objlapp_report_table.Table_Pk_Name));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objlapp_report_table.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objlapp_report_table.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Created_On", objlapp_report_table.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objlapp_report_table.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objlapp_report_table.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objlapp_report_table.Modified_By));
            lstParameter.Add(new MySqlParameter("U_DTS", objlapp_report_table.DTS));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_report_table_Update", lstParameter.ToArray());
            return returnValue;
        }

        public lapp_report_table Get_lapp_report_table_Get_by_Table_ID(int G_Table_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Table_ID", G_Table_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_report_table_Get_By_Table_ID", lstParameter.ToArray());
            lapp_report_table objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public lapp_report_table Get_lapp_report_table_Get_by_Table_Name(string G_Table_Name)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Table_Name", G_Table_Name));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_report_table_Get_By_Table_Name", lstParameter.ToArray());
            lapp_report_table objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public lapp_report_table Get_lapp_report_table_By_Query(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            lapp_report_table objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public List<lapp_report_table> Get_All_lapp_report_table_By_Query(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            List<lapp_report_table> lstEntity = new List<lapp_report_table>();
            lapp_report_table objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<lapp_report_Columns> GetColumnByTableName(string TableName)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, "SHOW COLUMNS FROM " + TableName);
            List<lapp_report_Columns> lstEntity = new List<lapp_report_Columns>();
            lapp_report_Columns objEntity = null;
            string Prefix = TableName + ".";
            foreach (DataRow dr in ds.Tables[0].Rows)
            {

                objEntity = FetchEntity_Columns(dr, Prefix);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;

        }

        private lapp_report_Columns FetchEntity_Columns(DataRow dr, string ColumnPrefix)
        {
            lapp_report_Columns objEntity = new lapp_report_Columns();
            if (dr.Table.Columns.Contains("Field") && dr["Field"] != DBNull.Value)
            {
                objEntity.ColumnName = ColumnPrefix + Convert.ToString(dr["Field"]);
            }

            if (dr.Table.Columns.Contains("Type") && dr["Type"] != DBNull.Value)
            {
                objEntity.DataType = Convert.ToString(dr["Type"]);
            }
            //if (dr.Table.Columns.Contains("Null") && dr["Null"] != DBNull.Value)
            //{
            //    objEntity.Table_Pk_Name = Convert.ToString(dr["Null"]);
            //}
            if (dr.Table.Columns.Contains("Key") && dr["Key"] != DBNull.Value)
            {
                objEntity.Key = Convert.ToString(dr["Key"]);
            }
            if (dr.Table.Columns.Contains("Extra") && dr["Extra"] != DBNull.Value)
            {
                objEntity.Extra = Convert.ToString(dr["Extra"]);
            }
            if (dr.Table.Columns.Contains("Extra") && dr["Extra"] != DBNull.Value)
            {
                objEntity.Is_AutoIncreament = Convert.ToString(dr["Extra"]).ToLower() == "auto_increment" ? true : false;
            }
            if (dr.Table.Columns.Contains("Key") && dr["Key"] != DBNull.Value)
            {
                objEntity.Is_PrimaryKey = Convert.ToString(dr["Key"]).ToLower() == "pri" ? true : false;
            }
            return objEntity;
        }
        private lapp_report_table FetchEntity(DataRow dr)
        {
            lapp_report_table objEntity = new lapp_report_table();
            if (dr.Table.Columns.Contains("Table_ID") && dr["Table_ID"] != DBNull.Value)
            {
                objEntity.Table_ID = Convert.ToInt32(dr["Table_ID"]);
            }

            if (dr.Table.Columns.Contains("Table_Name") && dr["Table_Name"] != DBNull.Value)
            {
                objEntity.Table_Name = Convert.ToString(dr["Table_Name"]);
            }
            if (dr.Table.Columns.Contains("Table_Pk_Name") && dr["Table_Pk_Name"] != DBNull.Value)
            {
                objEntity.Table_Pk_Name = Convert.ToString(dr["Table_Pk_Name"]);
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
