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
    public class LAPP_country_codeDAL : BaseDAL
    {
        public LAPP_country_code Get_LAPP_country_code_BY_Country_Cd(string G_country_code)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_country_code", G_country_code));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_country_code_get_by_country_code", lstParameter.ToArray());
            LAPP_country_code objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public List<LAPP_country_code> Get_All_LAPP_country_code()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_country_code_get_all");
            List<LAPP_country_code> lstEntity = new List<LAPP_country_code>();
            LAPP_country_code objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_country_code FetchEntity(DataRow dr)
        {
            LAPP_country_code objEntity = new LAPP_country_code();
            if (dr.Table.Columns.Contains("country_code") && dr["country_code"] != DBNull.Value)
            {
                objEntity.Country_Code = Convert.ToString(dr["country_code"]);
            }

            if (dr.Table.Columns.Contains("country_name") && dr["country_name"] != DBNull.Value)
            {
                objEntity.Country_Name = Convert.ToString(dr["country_name"]);
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
