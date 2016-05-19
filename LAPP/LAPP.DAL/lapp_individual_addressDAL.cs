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
    public class lapp_individual_addressDAL : BaseDAL
    {

        public int Save_lapp_individual_address(lapp_individual_address objlapp_individual_address)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            //lstParameter.Add(new MySqlParameter("Address_Id", objlapp_individual_address.Address_Id));
            lstParameter.Add(new MySqlParameter("Individual_Id", objlapp_individual_address.Individual_Id));
            lstParameter.Add(new MySqlParameter("Street", objlapp_individual_address.Street));
            lstParameter.Add(new MySqlParameter("City", objlapp_individual_address.City));
            lstParameter.Add(new MySqlParameter("State", objlapp_individual_address.State));
            lstParameter.Add(new MySqlParameter("Zip", objlapp_individual_address.Zip));
            lstParameter.Add(new MySqlParameter("Country", objlapp_individual_address.Country));
            lstParameter.Add(new MySqlParameter("Phone", objlapp_individual_address.Phone));
            lstParameter.Add(new MySqlParameter("Cell", objlapp_individual_address.Cell));
            lstParameter.Add(new MySqlParameter("Email", objlapp_individual_address.Email));
            lstParameter.Add(new MySqlParameter("Status_ID", objlapp_individual_address.Status_ID));
            lstParameter.Add(new MySqlParameter("Status", objlapp_individual_address.Status));
            lstParameter.Add(new MySqlParameter("Date_of_Beginning", objlapp_individual_address.Date_of_Beginning));
            lstParameter.Add(new MySqlParameter("Date_of_Ending", objlapp_individual_address.Date_of_Ending));
            lstParameter.Add(new MySqlParameter("Comments", objlapp_individual_address.Comments));
            lstParameter.Add(new MySqlParameter("Is_Active", objlapp_individual_address.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objlapp_individual_address.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objlapp_individual_address.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objlapp_individual_address.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objlapp_individual_address.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objlapp_individual_address.Modified_By));
            lstParameter.Add(new MySqlParameter("Is_Mark_As_Bad_Address", objlapp_individual_address.Is_Mark_As_Bad_Address));

            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_individual_address_Save", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }

        public int Update_lapp_individual_address(lapp_individual_address objlapp_individual_address, int Address_Id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Address_Id", Address_Id));
            lstParameter.Add(new MySqlParameter("U_Individual_Id", objlapp_individual_address.Individual_Id));
            lstParameter.Add(new MySqlParameter("U_Street", objlapp_individual_address.Street));
            lstParameter.Add(new MySqlParameter("U_City", objlapp_individual_address.City));
            lstParameter.Add(new MySqlParameter("U_State", objlapp_individual_address.State));
            lstParameter.Add(new MySqlParameter("U_Zip", objlapp_individual_address.Zip));
            lstParameter.Add(new MySqlParameter("U_Country", objlapp_individual_address.Country));
            lstParameter.Add(new MySqlParameter("U_Phone", objlapp_individual_address.Phone));
            lstParameter.Add(new MySqlParameter("U_Cell", objlapp_individual_address.Cell));
            lstParameter.Add(new MySqlParameter("U_Email", objlapp_individual_address.Email));
            lstParameter.Add(new MySqlParameter("U_Status_ID", objlapp_individual_address.Status_ID));
            lstParameter.Add(new MySqlParameter("U_Status", objlapp_individual_address.Status));
            lstParameter.Add(new MySqlParameter("U_Date_of_Beginning", objlapp_individual_address.Date_of_Beginning));
            lstParameter.Add(new MySqlParameter("U_Date_of_Ending", objlapp_individual_address.Date_of_Ending));
            lstParameter.Add(new MySqlParameter("U_Comments", objlapp_individual_address.Comments));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objlapp_individual_address.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objlapp_individual_address.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Created_On", objlapp_individual_address.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objlapp_individual_address.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objlapp_individual_address.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objlapp_individual_address.Modified_By));
            lstParameter.Add(new MySqlParameter("U_Is_Mark_As_Bad_Address", objlapp_individual_address.Is_Mark_As_Bad_Address));
            //MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            //returnParam.Direction = ParameterDirection.ReturnValue;
            //lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_individual_address_update", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }

        public List<lapp_individual_address> Get_All_lapp_individual_address()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_individual_address_get_all");
            List<lapp_individual_address> lstEntity = new List<lapp_individual_address>();
            lapp_individual_address objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public lapp_individual_address Get_lapp_individual_address_Get_by_Address_Id(int G_Address_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Address_Id", G_Address_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_individual_address_get_by_Address_Id", lstParameter.ToArray());
            lapp_individual_address objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public lapp_individual_address Get_by_lapp_individual_address_by_individual_Id(int G_Individual_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Individual_Id", G_Individual_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_individual_address_get_by_individual_Id", lstParameter.ToArray());
            lapp_individual_address objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public List<lapp_individual_address> Get_lapp_individual_address_Get_by_Individual_Id(int G_Individual_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Individual_Id", G_Individual_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_individual_address_get_by_individual_Id", lstParameter.ToArray());
            List<lapp_individual_address> lstEntity = new List<lapp_individual_address>();
            lapp_individual_address objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        private lapp_individual_address FetchEntity(DataRow dr)
        {
            lapp_individual_address objEntity = new lapp_individual_address();
            if (dr.Table.Columns.Contains("Address_Id") && dr["Address_Id"] != DBNull.Value)
            {
                objEntity.Address_Id = Convert.ToInt32(dr["Address_Id"]);
            }
            if (dr.Table.Columns.Contains("Individual_Id") && dr["Individual_Id"] != DBNull.Value)
            {
                objEntity.Individual_Id = Convert.ToInt32(dr["Individual_Id"]);
            }
            if (dr.Table.Columns.Contains("Street") && dr["Street"] != DBNull.Value)
            {
                objEntity.Street = Convert.ToString(dr["Street"]);
            }
            if (dr.Table.Columns.Contains("State") && dr["State"] != DBNull.Value)
            {
                objEntity.State = Convert.ToString(dr["State"]);
            }
            if (dr.Table.Columns.Contains("City") && dr["City"] != DBNull.Value)
            {
                objEntity.City = Convert.ToString(dr["City"]);
            }
            if (dr.Table.Columns.Contains("Zip") && dr["Zip"] != DBNull.Value)
            {
                objEntity.Zip = Convert.ToString(dr["Zip"]);
            }
            if (dr.Table.Columns.Contains("Country") && dr["Country"] != DBNull.Value)
            {
                objEntity.Country = Convert.ToString(dr["Country"]);
            }
            if (dr.Table.Columns.Contains("Cell") && dr["Cell"] != DBNull.Value)
            {
                objEntity.Cell = Convert.ToString(dr["Cell"]);
            }
            if (dr.Table.Columns.Contains("Phone") && dr["Phone"] != DBNull.Value)
            {
                objEntity.Phone = Convert.ToString(dr["Phone"]);
            }
            if (dr.Table.Columns.Contains("Email") && dr["Email"] != DBNull.Value)
            {
                objEntity.Email = Convert.ToString(dr["Email"]);
            }
            if (dr.Table.Columns.Contains("Status_ID") && dr["Status_ID"] != DBNull.Value)
            {
                objEntity.Status_ID = Convert.ToInt32(dr["Status_ID"]);
            }
            if (dr.Table.Columns.Contains("Status") && dr["Status"] != DBNull.Value)
            {
                objEntity.Status = Convert.ToString(dr["Status"]);
            }
            if (dr.Table.Columns.Contains("Date_of_Ending") && dr["Date_of_Ending"] != DBNull.Value)
            {
                objEntity.Date_of_Ending = Convert.ToString(dr["Date_of_Ending"]);
            }
            if (dr.Table.Columns.Contains("Date_of_Beginning") && dr["Date_of_Beginning"] != DBNull.Value)
            {
                objEntity.Date_of_Beginning = Convert.ToString(dr["Date_of_Beginning"]);
            }
            if (dr.Table.Columns.Contains("Comments") && dr["Comments"] != DBNull.Value)
            {
                objEntity.Comments = Convert.ToString(dr["Comments"]);
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
                objEntity.Created_By = Convert.ToString(dr["Created_By"]);
            }
            if (dr.Table.Columns.Contains("Modified_On") && dr["Modified_On"] != DBNull.Value)
            {
                objEntity.Modified_On = Convert.ToDateTime(dr["Modified_On"]);
            }
            if (dr.Table.Columns.Contains("Modified_By") && dr["Modified_By"] != DBNull.Value)
            {
                objEntity.Modified_By = Convert.ToString(dr["Modified_By"]);

            }
            if (dr.Table.Columns.Contains("Created_by_Name") && dr["Created_by_Name"] != DBNull.Value)
            {
                objEntity.Created_by_Name = Convert.ToString(dr["Created_by_Name"]);

            }
            if (dr.Table.Columns.Contains("Modified_by_Name") && dr["Modified_by_Name"] != DBNull.Value)
            {
                objEntity.Modified_by_Name = Convert.ToString(dr["Modified_by_Name"]);

            }
            if (dr.Table.Columns.Contains("Is_Mark_As_Bad_Address") && dr["Is_Mark_As_Bad_Address"] != DBNull.Value)
            {
                objEntity.Is_Mark_As_Bad_Address = Convert.ToBoolean(dr["Is_Mark_As_Bad_Address"]);
            }

            return objEntity;

        }
    }
}
