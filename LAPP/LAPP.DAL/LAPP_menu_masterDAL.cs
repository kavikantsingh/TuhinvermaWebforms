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
    public class LAPP_menu_master_DAL : BaseDAL
    {
        public int Save_LAPP_menu_master(LAPP_menu_master objLAPP_menu_master)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("LAPP_menu_master_id", objLAPP_menu_master.LAPP_Menu_Master_Id));
            lstParameter.Add(new MySqlParameter("LAPP_menu_name", objLAPP_menu_master.LAPP_Menu_Name));
            lstParameter.Add(new MySqlParameter("LAPP_menu_description", objLAPP_menu_master.LAPP_Menu_Description));
            lstParameter.Add(new MySqlParameter("LAPP_menu_url", objLAPP_menu_master.LAPP_Menu_Url));
            lstParameter.Add(new MySqlParameter("LAPP_menu_level", objLAPP_menu_master.LAPP_Menu_Level));
            lstParameter.Add(new MySqlParameter("LAPP_parrent_id", objLAPP_menu_master.LAPP_Parrent_Id));
            lstParameter.Add(new MySqlParameter("LAPP_menu_field1", objLAPP_menu_master.LAPP_Menu_Field1));
            lstParameter.Add(new MySqlParameter("LAPP_menu_field2", objLAPP_menu_master.LAPP_Menu_Field2));
            lstParameter.Add(new MySqlParameter("LAPP_menu_field3", objLAPP_menu_master.LAPP_Menu_Field3));
            lstParameter.Add(new MySqlParameter("is_active", objLAPP_menu_master.Is_Active));
            lstParameter.Add(new MySqlParameter("is_deleted", objLAPP_menu_master.Is_Deleted));
            lstParameter.Add(new MySqlParameter("created_on", objLAPP_menu_master.Created_On));
            lstParameter.Add(new MySqlParameter("dts", objLAPP_menu_master.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_menu_master_Save", true, lstParameter.ToArray());

            return returnValue;
        }

        public int Update_LAPP_menu_master(LAPP_menu_master objLAPP_menu_master, int LAPP_menu_master_id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_LAPP_menu_master_id", LAPP_menu_master_id));
            lstParameter.Add(new MySqlParameter("U_LAPP_menu_name", objLAPP_menu_master.LAPP_Menu_Name));
            lstParameter.Add(new MySqlParameter("U_LAPP_menu_description", objLAPP_menu_master.LAPP_Menu_Description));
            lstParameter.Add(new MySqlParameter("U_LAPP_menu_url", objLAPP_menu_master.LAPP_Menu_Url));
            lstParameter.Add(new MySqlParameter("U_LAPP_menu_level", objLAPP_menu_master.LAPP_Menu_Level));
            lstParameter.Add(new MySqlParameter("U_LAPP_parrent_id", objLAPP_menu_master.LAPP_Parrent_Id));
            lstParameter.Add(new MySqlParameter("U_LAPP_menu_field1", objLAPP_menu_master.LAPP_Menu_Field1));
            lstParameter.Add(new MySqlParameter("U_LAPP_menu_field2", objLAPP_menu_master.LAPP_Menu_Field2));
            lstParameter.Add(new MySqlParameter("U_LAPP_menu_field3", objLAPP_menu_master.LAPP_Menu_Field3));
            lstParameter.Add(new MySqlParameter("U_is_active", objLAPP_menu_master.Is_Active));
            lstParameter.Add(new MySqlParameter("U_is_deleted", objLAPP_menu_master.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_created_on", objLAPP_menu_master.Created_On));
            lstParameter.Add(new MySqlParameter("U_dts", objLAPP_menu_master.DTS));
            // MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            //returnParam.Direction = ParameterDirection.ReturnValue;
            //lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_menu_master_update", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }

        public LAPP_menu_master Get_LAPP_menu_master_BY_ID(int G_LAPP_menu_master_id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_LAPP_menu_master_id", G_LAPP_menu_master_id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_menu_master_get_by_id", lstParameter.ToArray());
            LAPP_menu_master objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public LAPP_menu_master Get_All_LAPP_menu_master_by_role_id_with_lk_IsTrue(int G_LAPP_role_id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_LAPP_role_id", G_LAPP_role_id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_menu_master_get_all_by_role_id_with_lk_IsTrue", lstParameter.ToArray());
            LAPP_menu_master objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public LAPP_menu_master Get_LAPP_menu_master_by_menu_name(string G_LAPP_menu_name)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_LAPP_menu_name", G_LAPP_menu_name));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_menu_master_get_by_menu_name", lstParameter.ToArray());
            LAPP_menu_master objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public void Delete_LAPP_menu_master(int D_Member_Info_Id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_Member_Info_Id", D_Member_Info_Id));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_menu_master_delete_by_id", lstParameter.ToArray());


        }

        public List<LAPP_menu_master> Get_All_LAPP_menu_master()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_menu_master_get_all");
            List<LAPP_menu_master> lstEntity = new List<LAPP_menu_master>();
            LAPP_menu_master objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public LAPP_menu_master Get_LAPP_menu_master_by_url(string LAPP_menu_url)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_LAPP_menu_url", LAPP_menu_url));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_menu_master_get_by_url", lstParameter.ToArray());
            LAPP_menu_master objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }


        private LAPP_menu_master FetchEntity(DataRow dr)
        {
            LAPP_menu_master objEntity = new LAPP_menu_master();
            if (dr.Table.Columns.Contains("LAPP_menu_master_id") && dr["LAPP_menu_master_id"] != DBNull.Value)
            {
                objEntity.LAPP_Menu_Master_Id = Convert.ToInt32(dr["LAPP_menu_master_id"]);
            }
            if (dr.Table.Columns.Contains("LAPP_menu_name") && dr["LAPP_menu_name"] != DBNull.Value)
            {
                objEntity.LAPP_Menu_Name = Convert.ToString(dr["LAPP_menu_name"]);
            }
            if (dr.Table.Columns.Contains("LAPP_menu_description") && dr["LAPP_menu_description"] != DBNull.Value)
            {
                objEntity.LAPP_Menu_Description = Convert.ToString(dr["LAPP_menu_description"]);
            }
            if (dr.Table.Columns.Contains("LAPP_menu_url") && dr["LAPP_menu_url"] != DBNull.Value)
            {
                objEntity.LAPP_Menu_Url = Convert.ToString(dr["LAPP_menu_url"]);
            }
            if (dr.Table.Columns.Contains("LAPP_menu_level") && dr["LAPP_menu_level"] != DBNull.Value)
            {
                objEntity.LAPP_Menu_Level = Convert.ToInt32(dr["LAPP_menu_level"]);
            }
            if (dr.Table.Columns.Contains("LAPP_parrent_id") && dr["LAPP_parrent_id"] != DBNull.Value)
            {
                objEntity.LAPP_Parrent_Id = Convert.ToInt32(dr["LAPP_parrent_id"]);
            }

            if (dr.Table.Columns.Contains("LAPP_menu_field1") && dr["LAPP_menu_field1"] != DBNull.Value)
            {
                objEntity.LAPP_Menu_Field1 = Convert.ToString(dr["LAPP_menu_field1"]);
            }
            if (dr.Table.Columns.Contains("LAPP_menu_field2") && dr["LAPP_menu_field2"] != DBNull.Value)
            {
                objEntity.LAPP_Menu_Field2 = Convert.ToString(dr["LAPP_menu_field2"]);
            }
            else
            {
                objEntity.LAPP_Menu_Field2 = "";
            }
            if (dr.Table.Columns.Contains("LAPP_menu_field3") && dr["LAPP_menu_field3"] != DBNull.Value)
            {
                objEntity.LAPP_Menu_Field3 = Convert.ToString(dr["LAPP_menu_field3"]);
            }
            else
            {
                objEntity.LAPP_Menu_Field3 = "";
            }

            if (dr.Table.Columns.Contains("is_active") && dr["is_active"] != DBNull.Value)
            {
                objEntity.Is_Active = Convert.ToBoolean(dr["is_active"]);
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
            return objEntity;

        }
    }
}
