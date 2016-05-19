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
    public class LAPP_codeDAL : BaseDAL
    {
        LAPP_code_typeDAL objCodeTyDal = new LAPP_code_typeDAL();
        public int Save_LAPP_code(LAPP_code objLAPP_code)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Code_ID", objLAPP_code.Code_ID));
            lstParameter.Add(new MySqlParameter("Code_Name", objLAPP_code.Code_Name));
            lstParameter.Add(new MySqlParameter("Code_Type_ID", objLAPP_code.Code_Type_ID));
            lstParameter.Add(new MySqlParameter("Code_Type_CD", objLAPP_code.Code_Type_CD));
            lstParameter.Add(new MySqlParameter("Code_Description", objLAPP_code.Code_Description));
            lstParameter.Add(new MySqlParameter("Display_Order", objLAPP_code.Display_Order));
            lstParameter.Add(new MySqlParameter("Default_Display", objLAPP_code.Default_Display));
            lstParameter.Add(new MySqlParameter("Created_On", objLAPP_code.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_code.Created_By));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_code.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_code.Is_Active));
            lstParameter.Add(new MySqlParameter("DTS", objLAPP_code.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_code_Save", true, lstParameter.ToArray());

            return returnValue;
        }

        public int Update_LAPP_code(LAPP_code objLAPP_code, int Code_ID)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Code_ID", Code_ID));
            lstParameter.Add(new MySqlParameter("U_Code_Name", objLAPP_code.Code_Name));
            lstParameter.Add(new MySqlParameter("U_Code_Type_ID", objLAPP_code.Code_Type_ID));
            lstParameter.Add(new MySqlParameter("U_Code_Type_CD", objLAPP_code.Code_Type_CD));
            lstParameter.Add(new MySqlParameter("U_Code_Description", objLAPP_code.Code_Description));
            lstParameter.Add(new MySqlParameter("U_Display_Order", objLAPP_code.Display_Order));
            lstParameter.Add(new MySqlParameter("U_Default_Display", objLAPP_code.Default_Display));
            lstParameter.Add(new MySqlParameter("U_Created_On", objLAPP_code.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLAPP_code.Created_By));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objLAPP_code.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objLAPP_code.Is_Active));
            lstParameter.Add(new MySqlParameter("U_DTS", objLAPP_code.DTS));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_code_Update", lstParameter.ToArray());
            return returnValue;
        }

        public LAPP_code Get_LAPP_code_BY_ID(int G_Code_ID)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Code_ID", G_Code_ID));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_code_get_by_id", lstParameter.ToArray());
            LAPP_code objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public void Delete_LAPP_code(int D_Code_ID)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_Code_ID", D_Code_ID));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_code_delete_by_id", lstParameter.ToArray());
        }
        public List<LAPP_code> Get_All_LAPP_code__by_Pager(int G_PageNo, int G_Pager)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("PageNo", G_PageNo));
            lstParameter.Add(new MySqlParameter("Pager", G_Pager));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_code_get_all_by_Pager", lstParameter.ToArray());
            List<LAPP_code> lstEntity = new List<LAPP_code>();
            LAPP_code objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<LAPP_code> Get_All_LAPP_code__by_Pager_Search(int Code_Type_ID, string KeyWord, int G_PageNo, int G_Pager)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Code_Type_ID", Code_Type_ID));
            lstParameter.Add(new MySqlParameter("Keyword", KeyWord));
            lstParameter.Add(new MySqlParameter("PageNo", G_PageNo));
            lstParameter.Add(new MySqlParameter("Pager", G_Pager));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_code_get_all_by_Pager_search", lstParameter.ToArray());
            List<LAPP_code> lstEntity = new List<LAPP_code>();
            LAPP_code objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public List<LAPP_code> Get_All_LAPP_code__by_PagerAnd_CodeTypeCd(string CodeTypeCd, int G_PageNo, int G_Pager)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("PageNo", G_PageNo));
            lstParameter.Add(new MySqlParameter("Pager", G_Pager));
            lstParameter.Add(new MySqlParameter("G_Code_Type_CD", CodeTypeCd));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_code_get_all_by_Pager_and_Code_Type_CD", lstParameter.ToArray());
            List<LAPP_code> lstEntity = new List<LAPP_code>();
            LAPP_code objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<LAPP_code> Get_All_LAPP_code()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_code_get_all");
            List<LAPP_code> lstEntity = new List<LAPP_code>();
            LAPP_code objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public List<LAPP_code> LAPP_code_get_all_as_professional_services()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_code_get_all_as_professional_services");
            List<LAPP_code> lstEntity = new List<LAPP_code>();
            LAPP_code objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public DataTable Get_All_LAPP_code_ds()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_code_get_all");
            return ds.Tables[0];
            //  return ds;
        }
        public DataTable LAPP_Report_Codes_Statistics_Misc_Report()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_Report_Codes_Statistics_Misc");
            return ds.Tables[0];
            //  return ds;
        }

        public DataTable LAPP_Report_Codes_Statistics_By_Sex_Report()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_Report_Codes_Statistics_By_Sex");
            return ds.Tables[0];
            //  return ds;
        }

        public DataTable LAPP_Report_Codes_Statistics_Report()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_Report_Codes_Statistics");
            DataTable dtMisc = LAPP_Report_Codes_Statistics_Misc_Report();
            DataTable dt = ds.Tables[0];
            DataTable dtSex = LAPP_Report_Codes_Statistics_By_Sex_Report();
            foreach (DataRow dr in dtMisc.Rows)
            {
                DataRow dr1 = dt.NewRow();
                dr1[0] = dr[0];
                dr1[1] = dr[1];
                dt.Rows.Add(dr1);

            }
            foreach (DataRow dr in dtSex.Rows)
            {
                DataRow dr1 = dt.NewRow();
                dr1[0] = dr[0];
                dr1[1] = dr[1];
                dt.Rows.Add(dr1);

            }
            return dt;
            //  return ds;
        }
        public List<LAPP_code> Get_All_LAPP_code_by_code_type_cd()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_code_get_all_by_code_type_CD");
            List<LAPP_code> lstEntity = new List<LAPP_code>();
            LAPP_code objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        public int Get_LAPP_code_get_Count()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_code_get_Count", lstParameter.ToArray());
            return Convert.ToInt32(ds.Tables[0].Rows[0][0]);
        }
        public LAPP_code LAPP_code_get_by_code_name(string Code_Name)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Code_Name", Code_Name));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_code_get_by_code_name", lstParameter.ToArray());
            LAPP_code objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        private LAPP_code FetchEntity(DataRow dr)
        {
            LAPP_code objEntity = new LAPP_code();
            if (dr.Table.Columns.Contains("Code_ID") && dr["Code_ID"] != DBNull.Value)
            {
                objEntity.Code_ID = Convert.ToInt32(dr["Code_ID"]);
            }
            if (dr.Table.Columns.Contains("Code_Name") && dr["Code_Name"] != DBNull.Value)
            {
                objEntity.Code_Name = Convert.ToString(dr["Code_Name"]);
            }

            if (dr.Table.Columns.Contains("Code_Type_ID") && dr["Code_Type_ID"] != DBNull.Value)
            {
                objEntity.Code_Type_ID = Convert.ToInt32(dr["Code_Type_ID"]);
                //objEntity.objCodeTy = objCodeTyDal.Get_LAPP_code_type_BY_ID(Convert.ToInt32(objEntity.Code_Type_ID));
            }

            if (dr.Table.Columns.Contains("Code_Type_CD") && dr["Code_Type_CD"] != DBNull.Value)
            {
                objEntity.Code_Type_CD = Convert.ToString(dr["Code_Type_CD"]);
            }
            if (dr.Table.Columns.Contains("Code_Description") && dr["Code_Description"] != DBNull.Value)
            {
                objEntity.Code_Description = Convert.ToString(dr["Code_Description"]);
            }
            if (dr.Table.Columns.Contains("Display_Order") && dr["Display_Order"] != DBNull.Value)
            {
                objEntity.Display_Order = Convert.ToInt32(dr["Display_Order"]);
            }
            if (dr.Table.Columns.Contains("Default_Display") && dr["Default_Display"] != DBNull.Value)
            {
                objEntity.Default_Display = Convert.ToBoolean(dr["Default_Display"]);
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
            if (dr.Table.Columns.Contains("NoOfRecords") && dr["NoOfRecords"] != DBNull.Value)
            {
                objEntity.NoOfRecord = Convert.ToInt32(dr["NoOfRecords"]);
            }
            if (dr.Table.Columns.Contains("CodeType") && dr["CodeType"] != DBNull.Value)
            {
                objEntity.CodeType = Convert.ToString(dr["CodeType"]);
            }
            return objEntity;

        }


    }
}
