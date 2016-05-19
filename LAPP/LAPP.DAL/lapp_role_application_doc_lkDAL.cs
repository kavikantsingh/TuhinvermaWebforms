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
    public class lapp_role_application_doc_lkDAL:BaseDAL
    {
        public int Save_lapp_role_application_doc_lk(lapp_role_application_doc_lk objlapp_role_application_doc_lk)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Role_ID", objlapp_role_application_doc_lk.Role_ID));
            lstParameter.Add(new MySqlParameter("Application_ID", objlapp_role_application_doc_lk.Application_ID));
            lstParameter.Add(new MySqlParameter("C", objlapp_role_application_doc_lk.C));
            lstParameter.Add(new MySqlParameter("R", objlapp_role_application_doc_lk.R));
            lstParameter.Add(new MySqlParameter("U", objlapp_role_application_doc_lk.U));
            lstParameter.Add(new MySqlParameter("D", objlapp_role_application_doc_lk.D));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_role_application_doc_lk_Save", lstParameter.ToArray());
            return returnValue;
        }

        public int Update_lapp_role_application_doc_lk(lapp_role_application_doc_lk objlapp_role_application_doc_lk)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Doc_ID", objlapp_role_application_doc_lk.Doc_ID));
            lstParameter.Add(new MySqlParameter("U_Role_ID", objlapp_role_application_doc_lk.Role_ID));
            lstParameter.Add(new MySqlParameter("U_Application_ID", objlapp_role_application_doc_lk.Application_ID));
            lstParameter.Add(new MySqlParameter("U_C", objlapp_role_application_doc_lk.C));
            lstParameter.Add(new MySqlParameter("U_R", objlapp_role_application_doc_lk.R));
            lstParameter.Add(new MySqlParameter("U_U", objlapp_role_application_doc_lk.U));
            lstParameter.Add(new MySqlParameter("U_D", objlapp_role_application_doc_lk.D));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_role_application_doc_lk_Update", lstParameter.ToArray());
            return returnValue;
        }

        public lapp_role_application_doc_lk Get_lapp_role_application_doc_lk_Get_by_Doc_ID(int G_Doc_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Doc_ID", G_Doc_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_role_application_doc_lk_Get_By_Doc_ID", lstParameter.ToArray());
            lapp_role_application_doc_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public lapp_role_application_doc_lk Get_lapp_role_application_doc_lk_Get_by_Application_ID(int G_Application_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Application_ID", G_Application_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_role_application_doc_lk_By_Application_ID", lstParameter.ToArray());
            lapp_role_application_doc_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public List<lapp_role_application_doc_lk> Get_All_lapp_role_application_doc_lk(int G_Role_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Role_ID", G_Role_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_role_application_doc_lk_get_all",lstParameter.ToArray());
            List<lapp_role_application_doc_lk> lstEntity = new List<lapp_role_application_doc_lk>();
            lapp_role_application_doc_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public lapp_role_application_doc_lk Get_lapp_role_application_doc_lk_table_By_Query(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            lapp_role_application_doc_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public List<lapp_role_application_doc_lk> Get_All_lapp_role_application_doc_lk_By_Query(string Query)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, Query);
            List<lapp_role_application_doc_lk> lstEntity = new List<lapp_role_application_doc_lk>();
            lapp_role_application_doc_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private lapp_role_application_doc_lk FetchEntity(DataRow dr)
        {
            lapp_role_application_doc_lk objEntity = new lapp_role_application_doc_lk();
            if (dr.Table.Columns.Contains("Doc_ID") && dr["Doc_ID"] != DBNull.Value)
            {
                objEntity.Doc_ID = Convert.ToInt32(dr["Doc_ID"]);
            }
            if (dr.Table.Columns.Contains("Role_ID") && dr["Role_ID"] != DBNull.Value)
            {
                objEntity.Role_ID = Convert.ToInt32(dr["Role_ID"]);
            }
            if (dr.Table.Columns.Contains("Application_ID") && dr["Application_ID"] != DBNull.Value)
            {
                objEntity.Application_ID = Convert.ToInt32(dr["Application_ID"]);
            }

            if (dr.Table.Columns.Contains("C") && dr["C"] != DBNull.Value)
            {
                objEntity.C = Convert.ToBoolean(dr["C"]);
            }
            if (dr.Table.Columns.Contains("R") && dr["R"] != DBNull.Value)
            {
                objEntity.R = Convert.ToBoolean(dr["R"]);
            }
            if (dr.Table.Columns.Contains("U") && dr["U"] != DBNull.Value)
            {
                objEntity.U = Convert.ToBoolean(dr["U"]);
            }
            if (dr.Table.Columns.Contains("D") && dr["D"] != DBNull.Value)
            {
                objEntity.D = Convert.ToBoolean(dr["D"]);
            }
            if (dr.Table.Columns.Contains("Name") && dr["Name"] != DBNull.Value)
            {
                objEntity.Name = Convert.ToString(dr["Name"]);
            }
            return objEntity;
        }

    }
}
