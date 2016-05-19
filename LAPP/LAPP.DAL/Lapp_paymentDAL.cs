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
    public class Lapp_paymentDAL : BaseDAL
    {
        public int Save_Lapp_payment(Lapp_payment objLapp_payment)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Individual_ID", objLapp_payment.Individual_ID));
            lstParameter.Add(new MySqlParameter("Application_Type_ID", objLapp_payment.Application_Type_ID));
            lstParameter.Add(new MySqlParameter("Application_Type", objLapp_payment.Application_Type));
            lstParameter.Add(new MySqlParameter("Application_Number", objLapp_payment.Application_Number));
            lstParameter.Add(new MySqlParameter("Invoice_Number", objLapp_payment.Invoice_Number));
            lstParameter.Add(new MySqlParameter("Payment_From_ID", objLapp_payment.Payment_From_ID));
            lstParameter.Add(new MySqlParameter("Payment_From", objLapp_payment.Payment_From));
            lstParameter.Add(new MySqlParameter("Payment_mode_ID", objLapp_payment.Payment_mode_ID));
            lstParameter.Add(new MySqlParameter("Payment_mode", objLapp_payment.Payment_mode));
            lstParameter.Add(new MySqlParameter("Payment_Type_ID", objLapp_payment.Payment_Type_ID));
            lstParameter.Add(new MySqlParameter("Payment_Type", objLapp_payment.Payment_Type));
            lstParameter.Add(new MySqlParameter("Reference_Number", objLapp_payment.Reference_Number));
            lstParameter.Add(new MySqlParameter("Gateway_Response_Code", objLapp_payment.Gateway_Response_Code));
            lstParameter.Add(new MySqlParameter("Gateway_Reference_Number", objLapp_payment.Gateway_Reference_Number));
            lstParameter.Add(new MySqlParameter("Is_Credit", objLapp_payment.Is_Credit));
            lstParameter.Add(new MySqlParameter("Payment_Method_ID", objLapp_payment.Payment_Method_ID));
            lstParameter.Add(new MySqlParameter("Payment_Method", objLapp_payment.Payment_Method));
            lstParameter.Add(new MySqlParameter("Gateway_Response_Text", objLapp_payment.Gateway_Response_Text));
            lstParameter.Add(new MySqlParameter("Is_Active", objLapp_payment.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLapp_payment.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objLapp_payment.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objLapp_payment.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objLapp_payment.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objLapp_payment.Modified_By));
            lstParameter.Add(new MySqlParameter("DTS", objLapp_payment.DTS));
            lstParameter.Add(new MySqlParameter("Transaction_Date", objLapp_payment.Transaction_Date));
            lstParameter.Add(new MySqlParameter("Amount", objLapp_payment.Amount));

            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_payment_Save", true, lstParameter.ToArray());
            return returnValue;
        }

        public int Update_Lapp_payment(Lapp_payment objLapp_payment, int Payment_ID)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Payment_ID", objLapp_payment.Payment_ID));
            lstParameter.Add(new MySqlParameter("U_Individual_ID", objLapp_payment.Individual_ID));
            lstParameter.Add(new MySqlParameter("U_Application_Type_ID", objLapp_payment.Application_Type_ID));
            lstParameter.Add(new MySqlParameter("U_Application_Type", objLapp_payment.Application_Type));
            lstParameter.Add(new MySqlParameter("U_Application_Number", objLapp_payment.Application_Number));
            lstParameter.Add(new MySqlParameter("U_Invoice_Number", objLapp_payment.Invoice_Number));
            lstParameter.Add(new MySqlParameter("U_Payment_From_ID", objLapp_payment.Payment_From_ID));
            lstParameter.Add(new MySqlParameter("U_Payment_From", objLapp_payment.Payment_From));
            lstParameter.Add(new MySqlParameter("U_Payment_mode_ID", objLapp_payment.Payment_mode_ID));
            lstParameter.Add(new MySqlParameter("U_Payment_mode", objLapp_payment.Payment_mode));
            lstParameter.Add(new MySqlParameter("U_Payment_Type_ID", objLapp_payment.Payment_Type_ID));
            lstParameter.Add(new MySqlParameter("U_Payment_Type", objLapp_payment.Payment_Type));
            lstParameter.Add(new MySqlParameter("U_Reference_Number", objLapp_payment.Reference_Number));
            lstParameter.Add(new MySqlParameter("U_Gateway_Response_Code", objLapp_payment.Gateway_Response_Code));
            lstParameter.Add(new MySqlParameter("U_Gateway_Reference_Number", objLapp_payment.Gateway_Reference_Number));
            lstParameter.Add(new MySqlParameter("U_Is_Credit", objLapp_payment.Is_Credit));
            lstParameter.Add(new MySqlParameter("U_Payment_Method_ID", objLapp_payment.Payment_Method_ID));
            lstParameter.Add(new MySqlParameter("U_Payment_Method", objLapp_payment.Payment_Method));
            lstParameter.Add(new MySqlParameter("U_Gateway_Response_Text", objLapp_payment.Gateway_Response_Text));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objLapp_payment.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objLapp_payment.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Created_On", objLapp_payment.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLapp_payment.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objLapp_payment.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objLapp_payment.Modified_By));
            lstParameter.Add(new MySqlParameter("U_DTS", objLapp_payment.DTS));
            lstParameter.Add(new MySqlParameter("U_Transaction_Date", objLapp_payment.Transaction_Date));
            lstParameter.Add(new MySqlParameter("U_Amount", objLapp_payment.Amount));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_payment_Update", lstParameter.ToArray());
            return returnValue;
        }

        public List<Lapp_payment> Get_All_Lapp_payment()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_payment_get_all");
            List<Lapp_payment> lstEntity = new List<Lapp_payment>();
            Lapp_payment objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public Lapp_payment Get_Lapp_payment_Get_by_Payment_ID(int G_Payment_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Payment_ID", G_Payment_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_payment_get_by_Payment_ID", lstParameter.ToArray());
            Lapp_payment objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public List<Lapp_payment> Get_lapp_payment_get_by_ApplicantId(int G_Applicant_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Applicant_Id", G_Applicant_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_payment_get_by_ApplicantId", lstParameter.ToArray());
            List<Lapp_payment> lstEntity = new List<Lapp_payment>();
            Lapp_payment objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<Lapp_payment> Get_Lapp_payment_Get_by_Invoice_Number(string G_Invoice_Number)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Invoice_Number", G_Invoice_Number));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_payment_get_by_Invoice_Number", lstParameter.ToArray());
            List<Lapp_payment> lstEntity = new List<Lapp_payment>();
            Lapp_payment objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public Lapp_payment Get_Lapp_payment_Get_by_ApplicationNumber(string ApplicationNumber)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            ds = objDB.ExecuteDataSet(CommandType.Text, "select * from Lapp_payment where Application_Number = '" + ApplicationNumber + "'");
            Lapp_payment objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public Lapp_payment Get_Lapp_payment_Get_by_Invoice_Number_Object(string G_Invoice_Number)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            ds = objDB.ExecuteDataSet(CommandType.Text, "select * from Lapp_payment where Invoice_Number = '" + G_Invoice_Number + "'");
            Lapp_payment objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        private Lapp_payment FetchEntity(DataRow dr)
        {
            Lapp_payment objEntity = new Lapp_payment();
            if (dr.Table.Columns.Contains("Payment_ID") && dr["Payment_ID"] != DBNull.Value)
            {
                objEntity.Payment_ID = Convert.ToInt32(dr["Payment_ID"]);
            }

            if (dr.Table.Columns.Contains("Individual_ID") && dr["Individual_ID"] != DBNull.Value)
            {
                objEntity.Individual_ID = Convert.ToInt32(dr["Individual_ID"]);
            }
            if (dr.Table.Columns.Contains("Application_Type_ID") && dr["Application_Type_ID"] != DBNull.Value)
            {
                objEntity.Application_Type_ID = Convert.ToInt32(dr["Application_Type_ID"]);
            }
            if (dr.Table.Columns.Contains("Application_Type") && dr["Application_Type"] != DBNull.Value)
            {
                objEntity.Application_Type = Convert.ToString(dr["Application_Type"]);
            }

            if (dr.Table.Columns.Contains("Application_Type_Name") && dr["Application_Type_Name"] != DBNull.Value)
            {
                objEntity.Application_Type_Name = Convert.ToString(dr["Application_Type_Name"]);
            }

            if (dr.Table.Columns.Contains("Application_Number") && dr["Application_Number"] != DBNull.Value)
            {
                objEntity.Application_Number = Convert.ToString(dr["Application_Number"]);
            }
            if (dr.Table.Columns.Contains("Invoice_Number") && dr["Invoice_Number"] != DBNull.Value)
            {
                objEntity.Invoice_Number = Convert.ToString(dr["Invoice_Number"]);
            }
            if (dr.Table.Columns.Contains("Payment_From_ID") && dr["Payment_From_ID"] != DBNull.Value)
            {
                objEntity.Payment_From_ID = Convert.ToInt32(dr["Payment_From_ID"]);
            }
            if (dr.Table.Columns.Contains("Payment_From") && dr["Payment_From"] != DBNull.Value)
            {
                objEntity.Payment_From = Convert.ToString(dr["Payment_From"]);
            }
            if (dr.Table.Columns.Contains("Payment_mode_ID") && dr["Payment_mode_ID"] != DBNull.Value)
            {
                objEntity.Payment_mode_ID = Convert.ToInt32(dr["Payment_mode_ID"]);
            }

            if (dr.Table.Columns.Contains("Payment_mode") && dr["Payment_mode"] != DBNull.Value)
            {
                objEntity.Payment_mode = Convert.ToString(dr["Payment_mode"]);
            }
            if (dr.Table.Columns.Contains("Payment_Type_ID") && dr["Payment_Type_ID"] != DBNull.Value)
            {
                objEntity.Payment_Type_ID = Convert.ToInt32(dr["Payment_Type_ID"]);
            }
            if (dr.Table.Columns.Contains("Payment_Type") && dr["Payment_Type"] != DBNull.Value)
            {
                objEntity.Payment_Type = Convert.ToString(dr["Payment_Type"]);
            }
            if (dr.Table.Columns.Contains("Reference_Number") && dr["Reference_Number"] != DBNull.Value)
            {
                objEntity.Reference_Number = Convert.ToString(dr["Reference_Number"]);
            }
            if (dr.Table.Columns.Contains("Gateway_Response_Code") && dr["Gateway_Response_Code"] != DBNull.Value)
            {
                objEntity.Gateway_Response_Code = Convert.ToString(dr["Gateway_Response_Code"]);
            }
            if (dr.Table.Columns.Contains("Gateway_Reference_Number") && dr["Gateway_Reference_Number"] != DBNull.Value)
            {
                objEntity.Gateway_Reference_Number = Convert.ToString(dr["Gateway_Reference_Number"]);
            }
            if (dr.Table.Columns.Contains("Transaction_Date") && dr["Transaction_Date"] != DBNull.Value)
            {
                objEntity.Transaction_Date = Convert.ToDateTime(dr["Transaction_Date"]);
            }

            if (dr.Table.Columns.Contains("Amount") && dr["Amount"] != DBNull.Value)
            {
                objEntity.Amount = Convert.ToDecimal(dr["Amount"]);
            }
            if (dr.Table.Columns.Contains("Is_Credit") && dr["Is_Credit"] != DBNull.Value)
            {
                objEntity.Is_Credit = Convert.ToBoolean(dr["Is_Credit"]);
            }
            if (dr.Table.Columns.Contains("Payment_Method") && dr["Payment_Method"] != DBNull.Value)
            {
                objEntity.Payment_Method = Convert.ToString(dr["Payment_Method"]);
            }
            if (dr.Table.Columns.Contains("Payment_Method_ID") && dr["Payment_Method_ID"] != DBNull.Value)
            {
                objEntity.Payment_Method_ID = Convert.ToInt32(dr["Payment_Method_ID"]);
            }
            if (dr.Table.Columns.Contains("Gateway_Response_Text") && dr["Gateway_Response_Text"] != DBNull.Value)
            {
                objEntity.Gateway_Response_Text = Convert.ToString(dr["Gateway_Response_Text"]);
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
