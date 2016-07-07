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
   public class Lapp_application_feeDAL:BaseDAL
    {
       public int Save_Lapp_application_fee(Lapp_application_fee objLapp_application_fee)
       {
           DBHelper objDB = new DBHelper();
           List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           lstParameter.Add(new MySqlParameter("Name", objLapp_application_fee.Name));
           lstParameter.Add(new MySqlParameter("Description", objLapp_application_fee.Description));
           lstParameter.Add(new MySqlParameter("Fee", objLapp_application_fee.Fee));
           lstParameter.Add(new MySqlParameter("Late_Fee", objLapp_application_fee.Late_Fee));
           lstParameter.Add(new MySqlParameter("Is_Active", objLapp_application_fee.Is_Active));
           lstParameter.Add(new MySqlParameter("Is_Deleted", objLapp_application_fee.Is_Deleted));
           lstParameter.Add(new MySqlParameter("Created_On", objLapp_application_fee.Created_On));
           lstParameter.Add(new MySqlParameter("Created_By", objLapp_application_fee.Created_By));
           lstParameter.Add(new MySqlParameter("Modified_On", objLapp_application_fee.Modified_On));
           lstParameter.Add(new MySqlParameter("Modified_By", objLapp_application_fee.Modified_By));
           lstParameter.Add(new MySqlParameter("DTS", objLapp_application_fee.DTS));
           MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
           returnParam.Direction = ParameterDirection.ReturnValue;
           lstParameter.Add(returnParam);
           int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_application_fee_Save", lstParameter.ToArray());
           return returnValue;
       }

       public int Update_Lapp_application_fee(Lapp_application_fee objLapp_application_fee, int Application_ID)
       {
           DBHelper objDB = new DBHelper();
           List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           lstParameter.Add(new MySqlParameter("U_Application_ID", objLapp_application_fee.Application_ID));
           lstParameter.Add(new MySqlParameter("U_Name", objLapp_application_fee.Name));
           lstParameter.Add(new MySqlParameter("U_Description", objLapp_application_fee.Description));
           lstParameter.Add(new MySqlParameter("U_Fee", objLapp_application_fee.Fee));
           lstParameter.Add(new MySqlParameter("U_Late_Fee", objLapp_application_fee.Late_Fee));
           lstParameter.Add(new MySqlParameter("U_Is_Active", objLapp_application_fee.Is_Active));
           lstParameter.Add(new MySqlParameter("U_Is_Deleted", objLapp_application_fee.Is_Deleted));
           lstParameter.Add(new MySqlParameter("U_Created_On", objLapp_application_fee.Created_On));
           lstParameter.Add(new MySqlParameter("U_Created_By", objLapp_application_fee.Created_By));
           lstParameter.Add(new MySqlParameter("U_Modified_On", objLapp_application_fee.Modified_On));
           lstParameter.Add(new MySqlParameter("U_Modified_By", objLapp_application_fee.Modified_By));
           lstParameter.Add(new MySqlParameter("U_DTS", objLapp_application_fee.DTS));
           int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_application_fee_Update", lstParameter.ToArray());
           return returnValue;
       }

       public List<Lapp_application_fee> Get_All_Lapp_application_fee()
       {
           DataSet ds = new DataSet("DS");
           DBHelper objDB = new DBHelper();
           ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_application_fee_get_all");
           List<Lapp_application_fee> lstEntity = new List<Lapp_application_fee>();
           Lapp_application_fee objEntity = null;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               objEntity = FetchEntity(dr);
               if (objEntity != null)
                   lstEntity.Add(objEntity);
           }
           return lstEntity;
       }

       public List<Lapp_application_fee> Get_Lapp_application_fee()
       {
           DataSet ds = new DataSet("DS");
           DBHelper objDB = new DBHelper();
           ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_application_fee_all");
           List<Lapp_application_fee> lstEntity = new List<Lapp_application_fee>();
           Lapp_application_fee objEntity = null;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               objEntity = FetchEntity(dr);
               if (objEntity != null)
                   lstEntity.Add(objEntity);
           }
           return lstEntity;
       }
       public Lapp_application_fee Get_Lapp_application_fee_Get_by_Application_ID(int G_Application_ID)
       {
           DataSet ds = new DataSet("DS");
           DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           lstParameter.Add(new MySqlParameter("G_Application_ID", G_Application_ID));
           ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_application_fee_get_by_Application_ID", lstParameter.ToArray());
           Lapp_application_fee objEntity = null;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               objEntity = FetchEntity(dr);
           }
           return objEntity;
       }

       private Lapp_application_fee FetchEntity(DataRow dr)
       {
           Lapp_application_fee objEntity = new Lapp_application_fee();
           if (dr.Table.Columns.Contains("Application_ID") && dr["Application_ID"] != DBNull.Value)
           {
               objEntity.Application_ID = Convert.ToInt32(dr["Application_ID"]);
           }

           if (dr.Table.Columns.Contains("Name") && dr["Name"] != DBNull.Value)
           {
               objEntity.Name = Convert.ToString(dr["Name"]);
           }
           if (dr.Table.Columns.Contains("Description") && dr["Description"] != DBNull.Value)
           {
               objEntity.Description = Convert.ToString(dr["Description"]);
           }

           if (dr.Table.Columns.Contains("Fee") && dr["Fee"] != DBNull.Value)
           {
               objEntity.Fee = Convert.ToDecimal(dr["Fee"]);
           }
           if (dr.Table.Columns.Contains("Late_Fee") && dr["Late_Fee"] != DBNull.Value)
           {
               objEntity.Late_Fee = Convert.ToDecimal(dr["Late_Fee"]);
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

       
       public List<LAPP_MasterTransaction> Get_All_LAPP_MasterTransaction()
       {
           DataSet ds = new DataSet("DS");
           DBHelper objDB = new DBHelper();
           ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_MasterTransaction_get_all");
           List<LAPP_MasterTransaction> lstEntity = new List<LAPP_MasterTransaction>();
           LAPP_MasterTransaction objEntity = null;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               objEntity = FetchMasterTransactionEntity(dr);
               if (objEntity != null)
                   lstEntity.Add(objEntity);
           }
           return lstEntity;
       }

       public List<LAPP_DeficiencyTemplate> Get_All_LAPP_DeficiencyTemplate()
       {
           DataSet ds = new DataSet("DS");
           DBHelper objDB = new DBHelper();
           ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_deficiencytemplate_get_all");
           List<LAPP_DeficiencyTemplate> lstEntity = new List<LAPP_DeficiencyTemplate>();
           LAPP_DeficiencyTemplate objEntity = null;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               objEntity = FetchDeficiencyTemplateEntity(dr);
               if (objEntity != null)
                   lstEntity.Add(objEntity);
           }
           return lstEntity;
       }

       private LAPP_MasterTransaction FetchMasterTransactionEntity(DataRow dr)
       {
           LAPP_MasterTransaction objEntity = new LAPP_MasterTransaction();
           if (dr.Table.Columns.Contains("MasterTransactionId") && dr["MasterTransactionId"] != DBNull.Value)
           {
               objEntity.MasterTransactionId = Convert.ToInt32(dr["MasterTransactionId"]);
           }
           if (dr.Table.Columns.Contains("MasterTransactionName") && dr["MasterTransactionName"] != DBNull.Value)
           {
               objEntity.MasterTransactionName = Convert.ToString(dr["MasterTransactionName"]);
           }

           return objEntity;
       }

       private LAPP_DeficiencyTemplate FetchDeficiencyTemplateEntity(DataRow dr)
       {
           LAPP_DeficiencyTemplate objEntity = new LAPP_DeficiencyTemplate();
           if (dr.Table.Columns.Contains("DeficiencyTemplateID") && dr["DeficiencyTemplateID"] != DBNull.Value)
           {
               objEntity.Deficiency_Template_ID = Convert.ToInt32(dr["DeficiencyTemplateID"]);
           }
           if (dr.Table.Columns.Contains("DeficiencyTemplateName") && dr["DeficiencyTemplateName"] != DBNull.Value)
           {
               objEntity.Deficiency_Template_Name = Convert.ToString(dr["DeficiencyTemplateName"]);
           }

           return objEntity;
       }

    }
}
