using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using LAPP.ENTITY;
using LAPP.CORE;
namespace LAPP.DAL
{
    public class LAPP_IndividualDAL : BaseDAL
    {
        public int SaveLAPP_individual(LAPP_individual objLAPP_individual)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Status_ID", objLAPP_individual.Status_ID));
            lstParameter.Add(new MySqlParameter("Status", objLAPP_individual.Status));
            lstParameter.Add(new MySqlParameter("SSN", Encryption.Base64Encrypt(objLAPP_individual.SSN)));
            lstParameter.Add(new MySqlParameter("License_Number", objLAPP_individual.License_Number));
            lstParameter.Add(new MySqlParameter("Issued_On", objLAPP_individual.Issued_On));
            lstParameter.Add(new MySqlParameter("Last_Updated", objLAPP_individual.Last_Updated));
            lstParameter.Add(new MySqlParameter("Expired_On", objLAPP_individual.Expired_On));
            lstParameter.Add(new MySqlParameter("Dob", Encryption.Base64Encrypt(objLAPP_individual.Dob)));
            lstParameter.Add(new MySqlParameter("Gender", objLAPP_individual.Gender));
            lstParameter.Add(new MySqlParameter("PlaceOfBirth", objLAPP_individual.PlaceOfBirth));
            lstParameter.Add(new MySqlParameter("Email", objLAPP_individual.Email));
            lstParameter.Add(new MySqlParameter("Comments", objLAPP_individual.Comments));
            lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_individual.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_individual.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Is_Archive", objLAPP_individual.Is_Archive));
            lstParameter.Add(new MySqlParameter("Created_On", objLAPP_individual.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_individual.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objLAPP_individual.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objLAPP_individual.Modified_By));
            lstParameter.Add(new MySqlParameter("Is_Mark_As_Bad_Address", objLAPP_individual.Is_Mark_As_Bad_Address));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_Individual_Save", true, lstParameter.ToArray());
            return returnValue;
        }
        public int Update_LAPP_individual(LAPP_individual objLAPP_individual, int Individual_Id)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Individual_Id", objLAPP_individual.Individual_Id));
            lstParameter.Add(new MySqlParameter("U_Status_ID", objLAPP_individual.Status_ID));
            lstParameter.Add(new MySqlParameter("U_Status", objLAPP_individual.Status));
            lstParameter.Add(new MySqlParameter("U_SSN", Encryption.Base64Encrypt(objLAPP_individual.SSN)));
            lstParameter.Add(new MySqlParameter("U_License_Number", objLAPP_individual.License_Number));
            lstParameter.Add(new MySqlParameter("U_Issued_On", objLAPP_individual.Issued_On));
            lstParameter.Add(new MySqlParameter("U_Last_Updated", objLAPP_individual.Last_Updated));
            lstParameter.Add(new MySqlParameter("U_Expired_On", objLAPP_individual.Expired_On));
            lstParameter.Add(new MySqlParameter("U_Dob", Encryption.Base64Encrypt(objLAPP_individual.Dob)));
            lstParameter.Add(new MySqlParameter("U_Gender", objLAPP_individual.Gender));
            lstParameter.Add(new MySqlParameter("U_PlaceOfBirth", objLAPP_individual.PlaceOfBirth));
            lstParameter.Add(new MySqlParameter("U_Email", objLAPP_individual.Email));
            lstParameter.Add(new MySqlParameter("U_Comments", objLAPP_individual.Comments));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objLAPP_individual.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objLAPP_individual.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Is_Archive", objLAPP_individual.Is_Archive));
            lstParameter.Add(new MySqlParameter("U_Created_On", objLAPP_individual.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLAPP_individual.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objLAPP_individual.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objLAPP_individual.Modified_By));
            lstParameter.Add(new MySqlParameter("U_Is_Mark_As_Bad_Address", objLAPP_individual.Is_Mark_As_Bad_Address));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_Individual_Update", lstParameter.ToArray());
            return returnValue;
        }
        public LAPP_individual Get_All_LAPP_individual_Get_BY_ID(int G_Individual_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Individual_Id", G_Individual_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_Individual_get_by_Individual_Id", lstParameter.ToArray());
            LAPP_individual objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public LAPP_individual Get_lapp_Individual_getby_IndividualId(int G_Individual_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Individual_Id", G_Individual_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_Individual_getby_IndividualId", lstParameter.ToArray());
            LAPP_individual objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public List<LAPP_individual> Get_All_LAPP_individual()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_Individual_get_all");
            List<LAPP_individual> lstEntity = new List<LAPP_individual>();
            LAPP_individual objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<LAPP_individual> lapp_Individual_get_by_Individual_Id(int G_Individual_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Individual_Id", G_Individual_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_Individual_getby_IndividualId", lstParameter.ToArray());
            List<LAPP_individual> lstEntity = new List<LAPP_individual>();
            LAPP_individual objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<LAPP_individual> Get_All_LAPP_individual_WithName()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_individual_get_all_WithName");
            List<LAPP_individual> lstEntity = new List<LAPP_individual>();
            LAPP_individual objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public void Delete_LAPP_individual_By_Individual_Id(int Individual_Id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_Individual_Id", Individual_Id));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_individual_delete_by_Individual_id", lstParameter.ToArray());

        }
        public void UnDelete_LAPP_individual_By_Individual_Id(int Individual_Id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_Individual_Id", Individual_Id));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_individual_Undelete_by_Individual_id", lstParameter.ToArray());

        }

        public int Archive_LAPP_individual_by_Individual_Id(LAPP_individual objLappIndividual)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Individual_Id", objLappIndividual.Individual_Id));
            lstParameter.Add(new MySqlParameter("U_Is_Archive", objLappIndividual.Is_Archive));

            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_individual_Archieve_by_Individual_id", lstParameter.ToArray());
            return returnValue;
        }

        public List<LAPP_individual> Search_LAPP_individual(string LicenseNumber, string SSN, string FirstName, string Last_Name, int StatusId, bool Is_Deleted)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            string prefix = "SELECT i.License_Number, N.First_Name,N.Last_Name,i.Individual_Id,AppSta.Color_Code ";
            string qry = " FROM LAPP_individual i ";
            qry += " LEFT OUTER JOIN lapp_individual_names AS N ON N.Individual_Id = i.Individual_Id ";
            qry += " LEFT OUTER JOIN lapp_application_status AS AppSta ON AppSta.status_id = i.Status_ID ";
            qry += " WHERE AppSta.Is_Deleted = 0 AND i.Is_Deleted= " + (Is_Deleted ? 1 : 0) + " ";
            if (!String.IsNullOrEmpty(SSN))
            {
                SSN = Encryption.Base64Encrypt(SSN);
                qry += " and i.SSN = '" + SSN + "'";

            }
            else if (StatusId > 0)
            {

                qry += " and i.Status_ID = '" + StatusId + "'";

            }
            else if (!String.IsNullOrEmpty(LicenseNumber))
            {

                qry += " and i.License_Number = '" + LicenseNumber + "'";

            }
            else if (!String.IsNullOrEmpty(FirstName) && !String.IsNullOrEmpty(Last_Name))
            {

                qry += " and  N.First_Name LIKE '%" + FirstName + "%' and N.Last_Name LIKE '%" + Last_Name + "%'";
            }

            else if (!String.IsNullOrEmpty(FirstName))
            {
                qry += "and N.First_Name LIKE '%" + FirstName + "%'";
            }
            else if (!String.IsNullOrEmpty(Last_Name))
            {
                qry += "and N.Last_Name LIKE '%" + Last_Name + "%'";
            }
            string completeQuery = prefix + qry;

            ds = objDB.ExecuteDataSet(CommandType.Text, completeQuery);
            //DataSet ds2 = new DataSet();
            //ds2 = objDB.ExecuteDataSet(CommandType.Text, "Select Count(*) " + qry);

            List<LAPP_individual> lstEntity = new List<LAPP_individual>();
            LAPP_individual objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<LAPP_individual> Search_LAPP_individual(string LicenseNumber, string SSN, string FirstName, string Last_Name, bool Is_Deleted)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            string prefix = "SELECT i.License_Number, N.First_Name,N.Last_Name,i.Individual_Id,AppSta.Color_Code ";
            string qry = " FROM LAPP_individual i ";
            qry += " LEFT OUTER JOIN lapp_individual_names AS N ON N.Individual_Id = i.Individual_Id ";
            qry += " LEFT OUTER JOIN lapp_application_status AS AppSta ON AppSta.status_id = i.Status_ID ";
            qry += " WHERE AppSta.Is_Deleted = 0 AND i.Is_Deleted= " + (Is_Deleted ? 1 : 0) + " ";
            if (!String.IsNullOrEmpty(SSN))
            {
                SSN = Encryption.Base64Encrypt(SSN);
                qry += " and i.SSN = '" + SSN + "'";

            }

            else if (!String.IsNullOrEmpty(LicenseNumber))
            {

                qry += " and i.License_Number = '" + LicenseNumber + "'";

            }
            else if (!String.IsNullOrEmpty(FirstName) && !String.IsNullOrEmpty(Last_Name))
            {

                qry += " and  N.First_Name LIKE '%" + FirstName + "%' and N.Last_Name LIKE '%" + Last_Name + "%'";
            }

            else if (!String.IsNullOrEmpty(FirstName))
            {
                qry += "and N.First_Name LIKE '%" + FirstName + "%'";
            }
            else if (!String.IsNullOrEmpty(Last_Name))
            {
                qry += "and N.Last_Name LIKE '%" + Last_Name + "%'";
            }
            string completeQuery = prefix + qry;

            ds = objDB.ExecuteDataSet(CommandType.Text, completeQuery);
            //DataSet ds2 = new DataSet();
            //ds2 = objDB.ExecuteDataSet(CommandType.Text, "Select Count(*) " + qry);

            List<LAPP_individual> lstEntity = new List<LAPP_individual>();
            LAPP_individual objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<LAPP_individual> Search_LAPP_individual(string LicenseNumber, string SSN, string FirstName, string Last_Name)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            string prefix = "SELECT i.*,  N.First_Name,N.Last_Name, AppSta.Color_Code ";
            string qry = " FROM LAPP_individual i ";
            qry += " LEFT OUTER JOIN lapp_individual_names AS N ON N.Individual_Id = i.Individual_Id ";
            qry += " LEFT OUTER JOIN lapp_application_status AS AppSta ON AppSta.status_id = i.Status_ID ";
            qry += " WHERE AppSta.Is_Deleted = 0   ";
            if (!String.IsNullOrEmpty(SSN))
            {
                SSN = Encryption.Base64Encrypt(SSN);
                qry += " and i.SSN = '" + SSN + "'";

            }

            else if (!String.IsNullOrEmpty(LicenseNumber))
            {

                qry += " and i.License_Number = '" + LicenseNumber + "'";

            }
            else if (!String.IsNullOrEmpty(FirstName) && !String.IsNullOrEmpty(Last_Name))
            {

                qry += " and  N.First_Name LIKE '%" + FirstName + "%' and N.Last_Name LIKE '%" + Last_Name + "%'";
            }

            else if (!String.IsNullOrEmpty(FirstName))
            {
                qry += "and N.First_Name LIKE '%" + FirstName + "%'";
            }
            else if (!String.IsNullOrEmpty(Last_Name))
            {
                qry += "and N.Last_Name LIKE '%" + Last_Name + "%'";
            }
            string completeQuery = prefix + qry;

            ds = objDB.ExecuteDataSet(CommandType.Text, completeQuery);
            //DataSet ds2 = new DataSet();
            //ds2 = objDB.ExecuteDataSet(CommandType.Text, "Select Count(*) " + qry);

            List<LAPP_individual> lstEntity = new List<LAPP_individual>();
            LAPP_individual objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_individual FetchEntity(DataRow dr)
        {
            LAPP_individual objEntity = new LAPP_individual();
            if (dr.Table.Columns.Contains("Individual_Id") && dr["Individual_Id"] != DBNull.Value)
            {
                objEntity.Individual_Id = Convert.ToInt32(dr["Individual_Id"]);
            }
            if (dr.Table.Columns.Contains("Status_ID") && dr["Status_ID"] != DBNull.Value)
            {
                objEntity.Status_ID = Convert.ToInt32(dr["Status_ID"]);
            }
            if (dr.Table.Columns.Contains("Status") && dr["Status"] != DBNull.Value)
            {
                objEntity.Status = Convert.ToString(dr["Status"]);
            }
            if (dr.Table.Columns.Contains("SSN") && dr["SSN"] != DBNull.Value)
            {
                objEntity.SSN = Encryption.Base64Decrypt(Convert.ToString(dr["SSN"]));
            }
            if (dr.Table.Columns.Contains("License_Number") && dr["License_Number"] != DBNull.Value)
            {
                objEntity.License_Number = Convert.ToString(dr["License_Number"]);
            }
            if (dr.Table.Columns.Contains("Issued_On") && dr["Issued_On"] != DBNull.Value)
            {
                objEntity.Issued_On = Convert.ToString(dr["Issued_On"]);
            }
            if (dr.Table.Columns.Contains("Last_Updated") && dr["Last_Updated"] != DBNull.Value)
            {
                objEntity.Last_Updated = Convert.ToString(dr["Last_Updated"]);
            }
            if (dr.Table.Columns.Contains("Expired_On") && dr["Expired_On"] != DBNull.Value)
            {
                objEntity.Expired_On = Convert.ToString(dr["Expired_On"]);
            }
            if (dr.Table.Columns.Contains("Dob") && dr["Dob"] != DBNull.Value)
            {
                objEntity.Dob = Encryption.Base64Decrypt(Convert.ToString(dr["Dob"]));
            }
            if (dr.Table.Columns.Contains("Gender") && dr["Gender"] != DBNull.Value)
            {
                objEntity.Gender = Convert.ToString(dr["Gender"]);
            }
            if (dr.Table.Columns.Contains("PlaceOfBirth") && dr["PlaceOfBirth"] != DBNull.Value)
            {
                objEntity.PlaceOfBirth = Convert.ToString(dr["PlaceOfBirth"]);
            }
            if (dr.Table.Columns.Contains("Email") && dr["Email"] != DBNull.Value)
            {
                objEntity.Email = Convert.ToString(dr["Email"]);
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
            if (dr.Table.Columns.Contains("Is_Archive") && dr["Is_Archive"] != DBNull.Value)
            {
                objEntity.Is_Archive = Convert.ToBoolean(dr["Is_Archive"]);
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

            if (dr.Table.Columns.Contains("First_Name") && dr["First_Name"] != DBNull.Value)
            {
                objEntity.First_Name = Convert.ToString(dr["First_Name"]);
            }

            if (dr.Table.Columns.Contains("Last_Name") && dr["Last_Name"] != DBNull.Value)
            {
                objEntity.Last_Name = Convert.ToString(dr["Last_Name"]);
            }
            if (dr.Table.Columns.Contains("Middle_Name") && dr["Middle_Name"] != DBNull.Value)
            {
                objEntity.Middle_Name = Convert.ToString(dr["Middle_Name"]);
            }
            if (dr.Table.Columns.Contains("Color_Code") && dr["Color_Code"] != DBNull.Value)
            {
                objEntity.Color_Code = Convert.ToString(dr["Color_Code"]);
            }
            if (dr.Table.Columns.Contains("Is_Mark_As_Bad_Address") && dr["Is_Mark_As_Bad_Address"] != DBNull.Value)
            {
                objEntity.Is_Mark_As_Bad_Address = Convert.ToBoolean(dr["Is_Mark_As_Bad_Address"]);
            }

            return objEntity;
        }
    }
}
