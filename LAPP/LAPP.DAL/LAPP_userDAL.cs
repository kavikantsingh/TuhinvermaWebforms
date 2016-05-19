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
    public class LAPP_userDAL : BaseDAL
    {
        public int Save_LAPP_User(LAPP_user objLAPP_user)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("user_id", objLAPP_user.User_Id));
            lstParameter.Add(new MySqlParameter("LAPP_role_id", objLAPP_user.LAPP_Role_Id));
            lstParameter.Add(new MySqlParameter("first_name", objLAPP_user.First_Name));
            lstParameter.Add(new MySqlParameter("last_name", objLAPP_user.Last_Name));
            lstParameter.Add(new MySqlParameter("middle_name", objLAPP_user.Middle_Name));
            lstParameter.Add(new MySqlParameter("gender", objLAPP_user.Gender));
            lstParameter.Add(new MySqlParameter("date_of_birth", objLAPP_user.Date_Of_Birth));
            lstParameter.Add(new MySqlParameter("address", objLAPP_user.Address));
            lstParameter.Add(new MySqlParameter("is_active", objLAPP_user.Is_Active));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_user.Created_By));
            lstParameter.Add(new MySqlParameter("is_deleted", objLAPP_user.Is_Deleted));
            lstParameter.Add(new MySqlParameter("created_on", objLAPP_user.Created_On));
            lstParameter.Add(new MySqlParameter("dts", objLAPP_user.DTS));
            lstParameter.Add(new MySqlParameter("Is_Archived", objLAPP_user.Is_Archived));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", MySqlDbType.Int32);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_user_save_fn", true, lstParameter.ToArray());

            return returnValue;
        }

        public int Update_User_Info(LAPP_user objLAPP_user, int userid)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_user_id", userid));
            lstParameter.Add(new MySqlParameter("U_LAPP_role_id", objLAPP_user.LAPP_Role_Id));
            lstParameter.Add(new MySqlParameter("U_first_name", objLAPP_user.First_Name));
            lstParameter.Add(new MySqlParameter("U_last_name", objLAPP_user.Last_Name));
            lstParameter.Add(new MySqlParameter("U_middle_name", objLAPP_user.Middle_Name));
            lstParameter.Add(new MySqlParameter("U_gender", objLAPP_user.Gender));
            lstParameter.Add(new MySqlParameter("U_date_of_birth", objLAPP_user.Date_Of_Birth));
            lstParameter.Add(new MySqlParameter("U_address", objLAPP_user.Address));
            lstParameter.Add(new MySqlParameter("U_is_active", objLAPP_user.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLAPP_user.Created_By));
            lstParameter.Add(new MySqlParameter("U_is_deleted", objLAPP_user.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_created_on", objLAPP_user.Created_On));
            lstParameter.Add(new MySqlParameter("U_dts", objLAPP_user.DTS));
            lstParameter.Add(new MySqlParameter("U_Is_Archived", objLAPP_user.Is_Archived));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_user_update", lstParameter.ToArray());
            return returnValue;

        }

        public void Delete_User_Info_By_user_Id(int D_user_id)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_user_id", D_user_id));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_user_delete_by_user_id", lstParameter.ToArray());
        }

        public void UnDelete_User_Info_By_user_Id(int user_id)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_user_id", user_id));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_user_undelete_by_user_id", lstParameter.ToArray());
        }

        public int Archive_LAPP_user_Info_by_user_Id(LAPP_user objBOE_USER_INFO)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_user_id", objBOE_USER_INFO.User_Id));
            lstParameter.Add(new MySqlParameter("U_Is_Archived", objBOE_USER_INFO.Is_Archived));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_user_archive_by_user_id", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;


        }
        public LAPP_user Get_User_Info_By_User_Id(int userid)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_user_id", userid));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_user_get_by_id", lstParameter.ToArray());
            LAPP_user objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;


        }

        public List<LAPP_user> Get_All_User()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_user_get_all");
            List<LAPP_user> lstEntity = new List<LAPP_user>();
            LAPP_user objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<LAPP_user> Get_User_List_By_Query(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            List<LAPP_user> lstEntity = new List<LAPP_user>();
            LAPP_user objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public LAPP_user Get_User_By_Query(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            LAPP_user objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        private LAPP_user FetchEntity(DataRow dr)
        {
            LAPP_user objEntity = new LAPP_user();

            //if (dr["user_id"] != DBNull.Value)
            //{
            //    objEntity.user_id = Convert.ToInt32(dr["user_id"]);

            //    if (objEntity.user_id > 0)
            //    {
            //        objEntity.objusermembership = objUserMemberDAL.Get_User_Membership_By_User_Id(objEntity.user_id);
            //    }
            //    objEntity.user_id = Convert.ToInt32(dr["user_id"]);
            //}

            if (dr.Table.Columns.Contains("user_id") && dr["user_id"] != DBNull.Value)
            {
                objEntity.User_Id = Convert.ToInt32(dr["user_id"]);
            }
            if (dr.Table.Columns.Contains("LAPP_role_id") && dr["LAPP_role_id"] != DBNull.Value)
            {
                objEntity.LAPP_Role_Id = Convert.ToInt32(dr["LAPP_role_id"]);
            }

            if (dr.Table.Columns.Contains("Email") && dr["Email"] != DBNull.Value)
            {
                objEntity.Email = Convert.ToString(dr["Email"]);
            }

            if (dr.Table.Columns.Contains("first_name") && dr["first_name"] != DBNull.Value)
            {
                objEntity.First_Name = Convert.ToString(dr["first_name"]);
            }
            if (dr.Table.Columns.Contains("last_name") && dr["last_name"] != DBNull.Value)
            {
                objEntity.Last_Name = Convert.ToString(dr["last_name"]);
            }
            if (dr.Table.Columns.Contains("middle_name") && dr["middle_name"] != DBNull.Value)
            {
                objEntity.Middle_Name = Convert.ToString(dr["middle_name"]);
            }
            if (dr.Table.Columns.Contains("gender") && dr["gender"] != DBNull.Value)
            {
                objEntity.Gender = Convert.ToBoolean(dr["gender"]);
            }
            if (dr.Table.Columns.Contains("date_of_birth") && dr["date_of_birth"] != DBNull.Value)
            {
                objEntity.Date_Of_Birth = Convert.ToDateTime(dr["date_of_birth"]);
            }
            if (dr.Table.Columns.Contains("address") && dr["address"] != DBNull.Value)
            {
                objEntity.Address = Convert.ToString(dr["address"]);
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
            if (dr.Table.Columns.Contains("Is_Archived") && dr["Is_Archived"] != DBNull.Value)
            {
                objEntity.Is_Archived = Convert.ToBoolean(dr["Is_Archived"]);
            }
            return objEntity;

        }


    }
}
