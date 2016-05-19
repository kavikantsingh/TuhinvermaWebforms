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
    public class LAPP_role_menu_master_lkDAL : BaseDAL
    {
        public int Save_LAPP_role_menu_master_lk(LAPP_role_menu_master_lk objLAPP_role_menu_master_lk)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("LAPP_role_id", objLAPP_role_menu_master_lk.LAPP_Role_Id));
            lstParameter.Add(new MySqlParameter("LAPP_menu_master_id", objLAPP_role_menu_master_lk.LAPP_Menu_Master_Id));
            lstParameter.Add(new MySqlParameter("full", objLAPP_role_menu_master_lk.F));
            lstParameter.Add(new MySqlParameter("c", objLAPP_role_menu_master_lk.C));
            lstParameter.Add(new MySqlParameter("r", objLAPP_role_menu_master_lk.R));
            lstParameter.Add(new MySqlParameter("u", objLAPP_role_menu_master_lk.U));
            lstParameter.Add(new MySqlParameter("d", objLAPP_role_menu_master_lk.D));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_role_menu_master_lk_save", true, lstParameter.ToArray());
            return returnValue;
        }

        public int Update_LAPP_role_menu_master_lk(LAPP_role_menu_master_lk objLAPP_role_menu_master_lk)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("u_LAPP_role_id", objLAPP_role_menu_master_lk.LAPP_Role_Id));
            lstParameter.Add(new MySqlParameter("u_LAPP_menu_master_id", objLAPP_role_menu_master_lk.LAPP_Menu_Master_Id));
            lstParameter.Add(new MySqlParameter("u_full", objLAPP_role_menu_master_lk.F));
            lstParameter.Add(new MySqlParameter("u_c", objLAPP_role_menu_master_lk.C));
            lstParameter.Add(new MySqlParameter("u_r", objLAPP_role_menu_master_lk.R));
            lstParameter.Add(new MySqlParameter("u_u", objLAPP_role_menu_master_lk.U));
            lstParameter.Add(new MySqlParameter("u_d", objLAPP_role_menu_master_lk.D));
            //MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            //returnParam.Direction = ParameterDirection.ReturnValue;
            //lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_role_menu_master_lk_update", lstParameter.ToArray());
            return returnValue;
        }

        public List<LAPP_role_menu_master_lk> Get_LAPP_role_menu_master_lk_By_role_ID(int G_LAPP_role_id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_LAPP_role_id", G_LAPP_role_id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_role_menu_master_lk_get_by_LAPP_role_id", lstParameter.ToArray());
            List<LAPP_role_menu_master_lk> lstEntity = new List<LAPP_role_menu_master_lk>();
            LAPP_role_menu_master_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public LAPP_role_menu_master_lk Get_LAPP_role_menu_master_lk_By_Master_ID(int G_LAPP_menu_master_id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_LAPP_menu_master_id", G_LAPP_menu_master_id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_role_menu_master_lk_get_by_LAPP_menu_master_id", lstParameter.ToArray());
            LAPP_role_menu_master_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public LAPP_role_menu_master_lk Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(int G_LAPP_menu_master_id, int G_Role_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_LAPP_menu_master_id", G_LAPP_menu_master_id));
            lstParameter.Add(new MySqlParameter("G_Role_Id", G_Role_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_role_menu_master_lk_get_by_master_id_and_role_id", lstParameter.ToArray());
            LAPP_role_menu_master_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public void Delete_LAPP_role_menu_master_lk_By_Role_ID(int D_LAPP_role_id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_LAPP_role_id", D_LAPP_role_id));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_role_menu_master_lk_delete_by_role_id", lstParameter.ToArray());
        }

        public void Delete_LAPP_role_menu_master_lk_By_Master_ID(int D_LAPP_menu_master_id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_LAPP_menu_master_id", D_LAPP_menu_master_id));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_role_menu_master_lk_delete_by_menu_master_id", lstParameter.ToArray());
        }

        public List<LAPP_role_menu_master_lk> Get_All_LAPP_role_menu_master_lk()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_role_menu_master_lk_get_All");
            List<LAPP_role_menu_master_lk> lstEntity = new List<LAPP_role_menu_master_lk>();
            LAPP_role_menu_master_lk objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_role_menu_master_lk FetchEntity(DataRow dr)
        {
            LAPP_role_menu_master_lk objEntity = new LAPP_role_menu_master_lk();
            if (dr.Table.Columns.Contains("LAPP_role_id") && dr["LAPP_role_id"] != DBNull.Value)
            {
                objEntity.LAPP_Role_Id = Convert.ToInt32(dr["LAPP_role_id"]);
            }
            if (dr.Table.Columns.Contains("LAPP_menu_master_id") && dr["LAPP_menu_master_id"] != DBNull.Value)
            {
                objEntity.LAPP_Menu_Master_Id = Convert.ToInt32(dr["LAPP_menu_master_id"]);
            }

            if (dr.Table.Columns.Contains("full") && dr["full"] != DBNull.Value)
            {
                objEntity.F = Convert.ToBoolean(dr["full"]);
            }
            if (dr.Table.Columns.Contains("c") && dr["c"] != DBNull.Value)
            {
                objEntity.C = Convert.ToBoolean(dr["c"]);
            }
            if (dr.Table.Columns.Contains("r") && dr["r"] != DBNull.Value)
            {
                objEntity.R = Convert.ToBoolean(dr["r"]);
            }
            if (dr.Table.Columns.Contains("u") && dr["u"] != DBNull.Value)
            {
                objEntity.U = Convert.ToBoolean(dr["u"]);
            }
            if (dr.Table.Columns.Contains("d") && dr["d"] != DBNull.Value)
            {
                objEntity.D = Convert.ToBoolean(dr["d"]);
            }
            return objEntity;

        }
    }
}
