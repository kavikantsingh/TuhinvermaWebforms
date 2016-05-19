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
    public class LAPP_serialsDAL : BaseDAL
    {
        public string Get_Receipt_No()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_serial_get_by_receipt_no");
            return ds.Tables[0].Rows[0][0].ToString();
        }
        public string Get_Investigative_Number()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_serial_get_by_Investigative_Number");

            int i = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());

            string str = DateTime.Now.Year.ToString() + i.ToString("0000");
            return str;

           // return ds.Tables[0].Rows[0][0].ToString();
        }
        public string LAPP_serial_get_LSI_Number()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, "SELECT MAX(REPLACE(nmi.License_Number,'0L','')) + 1 FROM LAPP_member_info nmi WHERE Left(nmi.License_Number,2) = '0L';");
            int maxNumber = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            string result = "0L" + string.Format("{0:d4}", maxNumber);
            return result;
        }
        public string LAPP_serial_get_EI_Number()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, "SELECT MAX(REPLACE(nmi.License_Number,'0T','')) + 1 FROM LAPP_member_info nmi WHERE Left(nmi.License_Number,2) = '0T';");
            int maxNumber = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            string result = "0T" + string.Format("{0:d4}", maxNumber) ;
            return result;
        }
        public string Get_License_Number()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, "SELECT MAX((nmi.License_Number)) + 1 FROM LAPP_member_info nmi WHERE Left(nmi.License_Number,2) != '0L' AND Left(nmi.License_Number,2) != '0T';");
            int maxNumber = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            string result = string.Format("{0:d4}", maxNumber);
            return result;
        }

        public int Get_By_Firm_Info_Business_Id()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_serial_by_firm_info_business_id");
            return Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
        }
        public int Get_By_Company_Id()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_serial_by_company_id");
            return Convert.ToInt32(ds.Tables[0].Rows[0][0]);
        }
        public int Get_By_Member_Info_Id()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_serial_by_member_info_id");
            return Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
        }

        public int Get_LAPP_serials_Counter_By_Query( string query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, query);
            return Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
        }

        private LAPP_serials FetchEntity(DataRow dr)
        {
            LAPP_serials objEntity = new LAPP_serials();
            if (dr.Table.Columns.Contains("Serial_Id") && dr["Serial_Id"] != DBNull.Value)
            {
                objEntity.Serial_Id = Convert.ToInt32(dr["Serial_Id"]);
            }
            if (dr.Table.Columns.Contains("SerialName") && dr["SerialName"] != DBNull.Value)
            {
                objEntity.SerialName = Convert.ToString(dr["SerialName"]);
            }
            if (dr.Table.Columns.Contains("SerialPrefix") && dr["SerialPrefix"] != DBNull.Value)
            {
                objEntity.SerialPrefix = Convert.ToString(dr["SerialPrefix"]);
            }
            if (dr.Table.Columns.Contains("SerialCounter") && dr["SerialCounter"] != DBNull.Value)
            {
                objEntity.SerialCounter = Convert.ToInt64(dr["SerialCounter"]);
            }
            if (dr.Table.Columns.Contains("DTS") && dr["DTS"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
            }
            return objEntity;

        }
    }
}
