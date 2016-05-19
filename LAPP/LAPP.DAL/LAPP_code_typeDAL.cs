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
    public class LAPP_code_typeDAL : BaseDAL
    {
        public int Save_LAPP_code_type(LAPP_code_type objLAPP_code_type)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Code_Type_Id", objLAPP_code_type.Code_Type_Id));
            lstParameter.Add(new MySqlParameter("Code_Type_CD", objLAPP_code_type.Code_Type_CD));
            lstParameter.Add(new MySqlParameter("Code_Type_Description", objLAPP_code_type.Code_Type_Description));
            lstParameter.Add(new MySqlParameter("Created_On", objLAPP_code_type.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_code_type.Created_By));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_code_type.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_code_type.Is_Active));
            lstParameter.Add(new MySqlParameter("DTS", objLAPP_code_type.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_code_type_Save", true, lstParameter.ToArray());

            return returnValue;
        }

        public int Update_LAPP_code_type(LAPP_code_type objLAPP_code_type, int Code_Type_Id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Code_Type_Id", Code_Type_Id));
            lstParameter.Add(new MySqlParameter("U_Code_Type_CD", objLAPP_code_type.Code_Type_CD));
            lstParameter.Add(new MySqlParameter("U_Code_Type_Description", objLAPP_code_type.Code_Type_Description));
            lstParameter.Add(new MySqlParameter("U_Created_On", objLAPP_code_type.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLAPP_code_type.Created_By));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objLAPP_code_type.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objLAPP_code_type.Is_Active));
            lstParameter.Add(new MySqlParameter("U_DTS", objLAPP_code_type.DTS));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_code_type_Update", lstParameter.ToArray());
            return returnValue;
        }

        public LAPP_code_type Get_LAPP_code_type_BY_ID(int G_Code_Type_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Code_Type_ID", G_Code_Type_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_code_type_get_by_id", lstParameter.ToArray());
            LAPP_code_type objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public void Delete_LAPP_code_type(int D_Code_Type_ID)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_Code_Type_ID", D_Code_Type_ID));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_code_type_delete_by_id", lstParameter.ToArray());
        }

        public List<LAPP_code_type> Get_All_LAPP_code_type()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_code_type_get_all");
            List<LAPP_code_type> lstEntity = new List<LAPP_code_type>();
            LAPP_code_type objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        
        public int Get_LAPP_code_type_count()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_code_type_get_count", lstParameter.ToArray());
            return Convert.ToInt32(ds.Tables[0].Rows[0][0]);
        }

        public List<LAPP_code_type> Get_All_LAPP_code_type__by_Pager(int G_PageNo, int G_Pager)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("PageNo", G_PageNo));
            lstParameter.Add(new MySqlParameter("Pager", G_Pager));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_code_Type_get_all_by_Pager", lstParameter.ToArray());
            List<LAPP_code_type> lstEntity = new List<LAPP_code_type>();
            LAPP_code_type objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_code_type FetchEntity(DataRow dr)
        {
            LAPP_code_type objEntity = new LAPP_code_type();
            if (dr.Table.Columns.Contains("Code_Type_Id") && dr["Code_Type_Id"] != DBNull.Value)
            {
                objEntity.Code_Type_Id = Convert.ToInt32(dr["Code_Type_Id"]);
            }
            if (dr.Table.Columns.Contains("Code_Type_CD") && dr["Code_Type_CD"] != DBNull.Value)
            {
                objEntity.Code_Type_CD = Convert.ToString(dr["Code_Type_CD"]);
            }
            if (dr.Table.Columns.Contains("Code_Type_Description") && dr["Code_Type_Description"] != DBNull.Value)
            {
                objEntity.Code_Type_Description = Convert.ToString(dr["Code_Type_Description"]);
            }
            if (dr.Table.Columns.Contains("Created_On") && dr["Created_On"] != DBNull.Value)
            {
                objEntity.Created_On = Convert.ToDateTime(dr["Created_On"]);
            }
            if (dr.Table.Columns.Contains("Created_By") && dr["Created_By"] != DBNull.Value)
            {
                objEntity.Created_By = Convert.ToInt32(dr["Created_By"]);
            }
            if (dr.Table.Columns.Contains("Is_Deleted") && dr["Is_Deleted"] != DBNull.Value)
            {
                objEntity.Is_Deleted = Convert.ToBoolean(dr["Is_Deleted"]);
            }
            if (dr.Table.Columns.Contains("Is_Active") && dr["Is_Active"] != DBNull.Value)
            {
                objEntity.Is_Active = Convert.ToBoolean(dr["Is_Active"]);
            }

            if (dr.Table.Columns.Contains("DTS") && dr["DTS"] != DBNull.Value)
            {
                objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
            }
            return objEntity;
        }
    }
}
