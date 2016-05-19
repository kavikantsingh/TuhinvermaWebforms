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
    public class LAPP_user_membershipDAL : BaseDAL
    {
        public int Save_LAPP_User_Membership(LAPP_user_membership objLAPP_user_membership)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("user_id", objLAPP_user_membership.User_Id));
            lstParameter.Add(new MySqlParameter("user_name", objLAPP_user_membership.User_Name));
            lstParameter.Add(new MySqlParameter("password", Encryption.Base64Encrypt(objLAPP_user_membership.Password)));
            lstParameter.Add(new MySqlParameter("passwordformat", objLAPP_user_membership.PasswordFormat));
            lstParameter.Add(new MySqlParameter("passwordsalt", objLAPP_user_membership.PasswordSalt));
            lstParameter.Add(new MySqlParameter("is_default_password", objLAPP_user_membership.Is_Default_Password));
            lstParameter.Add(new MySqlParameter("mobilepin", objLAPP_user_membership.MobilePIN));
            lstParameter.Add(new MySqlParameter("email", objLAPP_user_membership.Email));
            lstParameter.Add(new MySqlParameter("loweredemail", objLAPP_user_membership.LoweredEmail));
            lstParameter.Add(new MySqlParameter("passwordquestion", objLAPP_user_membership.PasswordQuestion));
            lstParameter.Add(new MySqlParameter("password_answer", objLAPP_user_membership.Password_Answer));
            lstParameter.Add(new MySqlParameter("is_locked_out", objLAPP_user_membership.Is_Locked_Out));
            lstParameter.Add(new MySqlParameter("last_login_date", objLAPP_user_membership.Last_Login_Date));
            lstParameter.Add(new MySqlParameter("last_password_changed_date", objLAPP_user_membership.Last_Password_Changed_Date));
            lstParameter.Add(new MySqlParameter("last_lockout_date", objLAPP_user_membership.Last_Lockout_Date));
            lstParameter.Add(new MySqlParameter("failed_password_attempt_count", objLAPP_user_membership.Failed_Password_Attempt_Count));
            lstParameter.Add(new MySqlParameter("failed_password_answer_attempt_count", objLAPP_user_membership.Failed_Password_Answer_Attempt_Count));
            lstParameter.Add(new MySqlParameter("last_activity_date", objLAPP_user_membership.Last_Activity_Date));
            lstParameter.Add(new MySqlParameter("comment", objLAPP_user_membership.Comment));
            lstParameter.Add(new MySqlParameter("created_on", objLAPP_user_membership.Created_On));
            lstParameter.Add(new MySqlParameter("is_active", objLAPP_user_membership.Is_Active));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_user_membership.Created_By));
            lstParameter.Add(new MySqlParameter("is_deleted", objLAPP_user_membership.Is_Deleted));
            lstParameter.Add(new MySqlParameter("dts", objLAPP_user_membership.DTS));
            lstParameter.Add(new MySqlParameter("Is_Archived", objLAPP_user_membership.Is_Archived));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", MySqlDbType.Int32);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_user_membership_save", true, lstParameter.ToArray());

            return returnValue;
        }
        public int Update_User_Membership(LAPP_user_membership objLAPP_user_membership, int userid)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_user_id", userid));
            lstParameter.Add(new MySqlParameter("U_user_name", objLAPP_user_membership.User_Name));
            lstParameter.Add(new MySqlParameter("U_password", Encryption.Base64Encrypt(objLAPP_user_membership.Password)));
            lstParameter.Add(new MySqlParameter("U_passwordformat", objLAPP_user_membership.PasswordFormat));
            lstParameter.Add(new MySqlParameter("U_passwordsalt", objLAPP_user_membership.PasswordSalt));
            lstParameter.Add(new MySqlParameter("U_is_default_password", objLAPP_user_membership.Is_Default_Password));
            lstParameter.Add(new MySqlParameter("U_mobilepin", objLAPP_user_membership.MobilePIN));
            lstParameter.Add(new MySqlParameter("U_email", objLAPP_user_membership.Email));
            lstParameter.Add(new MySqlParameter("U_loweredemail", objLAPP_user_membership.LoweredEmail));
            lstParameter.Add(new MySqlParameter("U_passwordquestion", objLAPP_user_membership.PasswordQuestion));
            lstParameter.Add(new MySqlParameter("U_password_answer", objLAPP_user_membership.Password_Answer));
            lstParameter.Add(new MySqlParameter("U_is_locked_out", objLAPP_user_membership.Is_Locked_Out));
            lstParameter.Add(new MySqlParameter("U_last_login_date", objLAPP_user_membership.Last_Login_Date));
            lstParameter.Add(new MySqlParameter("U_last_password_changed_date", objLAPP_user_membership.Last_Password_Changed_Date));
            lstParameter.Add(new MySqlParameter("U_last_lockout_date", objLAPP_user_membership.Last_Lockout_Date));
            lstParameter.Add(new MySqlParameter("U_failed_password_attempt_count", objLAPP_user_membership.Failed_Password_Attempt_Count));
            lstParameter.Add(new MySqlParameter("U_failed_password_answer_attempt_count", objLAPP_user_membership.Failed_Password_Answer_Attempt_Count));
            lstParameter.Add(new MySqlParameter("U_last_activity_date", objLAPP_user_membership.Last_Activity_Date));
            lstParameter.Add(new MySqlParameter("U_comment", objLAPP_user_membership.Comment));
            lstParameter.Add(new MySqlParameter("U_created_on", objLAPP_user_membership.Created_On));
            lstParameter.Add(new MySqlParameter("U_is_active", objLAPP_user_membership.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLAPP_user_membership.Created_By));
            lstParameter.Add(new MySqlParameter("U_is_deleted", objLAPP_user_membership.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_dts", objLAPP_user_membership.DTS));
            lstParameter.Add(new MySqlParameter("U_Is_Archived", objLAPP_user_membership.Is_Archived));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_user_membership_update", lstParameter.ToArray());
            return returnValue;

        }
        public void Delete_User_Membership_By_Id(int userid)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_user_id", userid));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_user_membership_delete_by_id", lstParameter.ToArray());


        }
        public LAPP_user_membership Get_User_Membership_By_User_Id(int userid)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_user_id", userid));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_user_membership_get_by_id", lstParameter.ToArray());
            LAPP_user_membership objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public LAPP_user_membership Get_User_Membership_By_User_Id_Qry(int userid)
        {
            string Query = "SELECT *,u.first_name,u.last_name,u.middle_name FROM lapp_user_membership m LEFT OUTER JOIN lapp_user u ON m.user_id = u.user_id WHERE m.is_deleted =0 AND m.user_id =" + userid;
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            LAPP_user_membership objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public List<LAPP_user_membership> Get_All_User_Membership()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_user_membership_get_all");
            List<LAPP_user_membership> lstEntity = new List<LAPP_user_membership>();
            LAPP_user_membership objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public LAPP_user_membership GetUser_MembershipByEmaiIDAndPassword(string Email, string Password)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_email", Email));
            lstParameter.Add(new MySqlParameter("G_password", Password));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_user_membership_get_by_email_password", lstParameter.ToArray());
            LAPP_user_membership objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }



        public LAPP_user_membership GetUser_MembershipByEmaiID(string Email)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_email", Email));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_user_membership_get_by_email", lstParameter.ToArray());
            LAPP_user_membership objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public LAPP_user_membership Validate_Email(string Email)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_email", Email));

            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_user_membership_get_by_Emailid", lstParameter.ToArray());
            LAPP_user_membership objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        private LAPP_user_membership FetchEntity(DataRow dr)
        {
            LAPP_user_membership objEntity = new LAPP_user_membership();
            if (dr.Table.Columns.Contains("user_id") && dr["user_id"] != DBNull.Value)
            {
                objEntity.User_Id = Convert.ToInt32(dr["user_id"]);
                //LAPP_userDAL objUserDal = new LAPP_userDAL();
                //objEntity.objUser = objUserDal.Get_User_Info_By_User_Id(objEntity.User_Id);
            }
            if (dr.Table.Columns.Contains("user_name") && dr["user_name"] != DBNull.Value)
            {
                objEntity.User_Name = Convert.ToString(dr["user_name"]);
            }
            if (dr.Table.Columns.Contains("password") && dr["password"] != DBNull.Value)
            {
                objEntity.Password = Encryption.Base64Decrypt(Convert.ToString(dr["password"]));
            }
            if (dr.Table.Columns.Contains("passwordformat") && dr["passwordformat"] != DBNull.Value)
            {
                objEntity.PasswordFormat = Convert.ToInt32(dr["passwordformat"]);
            }
            if (dr.Table.Columns.Contains("passwordsalt") && dr["passwordsalt"] != DBNull.Value)
            {
                objEntity.PasswordSalt = Convert.ToString(dr["passwordsalt"]);
            }
            if (dr.Table.Columns.Contains("is_default_password") && dr["is_default_password"] != DBNull.Value)
            {
                objEntity.Is_Default_Password = Convert.ToBoolean(dr["is_default_password"]);
            }
            if (dr.Table.Columns.Contains("mobilepin") && dr["mobilepin"] != DBNull.Value)
            {
                objEntity.MobilePIN = Convert.ToString(dr["mobilepin"]);
            }
            if (dr.Table.Columns.Contains("email") && dr["email"] != DBNull.Value)
            {
                objEntity.Email = Convert.ToString(dr["email"]);
            }
            if (dr.Table.Columns.Contains("loweredemail") && dr["loweredemail"] != DBNull.Value)
            {
                objEntity.LoweredEmail = Convert.ToString(dr["loweredemail"]);
            }
            if (dr.Table.Columns.Contains("passwordquestion") && dr["passwordquestion"] != DBNull.Value)
            {
                objEntity.PasswordQuestion = Convert.ToString(dr["passwordquestion"]);
            }
            if (dr.Table.Columns.Contains("password_answer") && dr["password_answer"] != DBNull.Value)
            {
                objEntity.Password_Answer = Convert.ToString(dr["password_answer"]);

            }
            if (dr.Table.Columns.Contains("is_locked_out") && dr["is_locked_out"] != DBNull.Value)
            {
                objEntity.Is_Locked_Out = Convert.ToBoolean(dr["is_locked_out"]);
            }
            if (dr.Table.Columns.Contains("last_login_date") && dr["last_login_date"] != DBNull.Value)
            {
                objEntity.Last_Login_Date = Convert.ToDateTime(dr["last_login_date"]);
            }
            if (dr.Table.Columns.Contains("last_password_changed_date") && dr["last_password_changed_date"] != DBNull.Value)
            {
                objEntity.Last_Password_Changed_Date = Convert.ToDateTime(dr["last_password_changed_date"]);
            }
            if (dr.Table.Columns.Contains("last_lockout_date") && dr["last_lockout_date"] != DBNull.Value)
            {
                objEntity.Last_Lockout_Date = Convert.ToDateTime(dr["last_lockout_date"]);
            }
            if (dr.Table.Columns.Contains("failed_password_attempt_count") && dr["failed_password_attempt_count"] != DBNull.Value)
            {
                objEntity.Failed_Password_Attempt_Count = Convert.ToInt32(dr["failed_password_attempt_count"]);
            }
            if (dr.Table.Columns.Contains("failed_password_answer_attempt_count") && dr["failed_password_answer_attempt_count"] != DBNull.Value)
            {
                objEntity.Failed_Password_Answer_Attempt_Count = Convert.ToInt32(dr["failed_password_answer_attempt_count"]);
            }
            if (dr.Table.Columns.Contains("last_activity_date") && dr["last_activity_date"] != DBNull.Value)
            {
                objEntity.Last_Activity_Date = Convert.ToDateTime(dr["last_activity_date"]);
            }
            if (dr.Table.Columns.Contains("comment") && dr["comment"] != DBNull.Value)
            {
                objEntity.Comment = Convert.ToString(dr["comment"]);
            }
            if (dr.Table.Columns.Contains("created_on") && dr["created_on"] != DBNull.Value)
            {
                objEntity.Created_On = Convert.ToDateTime(dr["created_on"]);
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
            if (dr.Table.Columns.Contains("dts") && dr["dts"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["dts"]);
            }

            if (dr.Table.Columns.Contains("Is_Archived") && dr["Is_Archived"] != DBNull.Value)
            {
                objEntity.Is_Archived = Convert.ToBoolean(dr["Is_Archived"]);
            }

            //-------------------------------------User Table Fetch----------------------------------------//

            if (dr.Table.Columns.Contains("first_name") && dr["first_name"] != DBNull.Value)
            {
                objEntity.first_name = Convert.ToString(dr["first_name"]);
            }
            if (dr.Table.Columns.Contains("last_name") && dr["last_name"] != DBNull.Value)
            {
                objEntity.last_name = Convert.ToString(dr["last_name"]);
            }

            if (dr.Table.Columns.Contains("middle_name") && dr["middle_name"] != DBNull.Value)
            {
                objEntity.middle_name = Convert.ToString(dr["middle_name"]);
            }

            return objEntity;

        }

    }
}
