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
   public class Lapp_application_status_typeDAL : BaseDAL
    {
       public int Save_Lapp_application_status_type(Lapp_application_status_type objLapp_application_status_type)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Name", objLapp_application_status_type.Name));
            lstParameter.Add(new MySqlParameter("Descripton", objLapp_application_status_type.Description));
            lstParameter.Add(new MySqlParameter("Is_Active", objLapp_application_status_type.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLapp_application_status_type.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objLapp_application_status_type.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objLapp_application_status_type.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objLapp_application_status_type.Modified_On));
            lstParameter.Add(new MySqlParameter("DTS", objLapp_application_status_type.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_application_status_type_Save", lstParameter.ToArray());
            return returnValue;
        }

       public int Update_Lapp_application_status_type(Lapp_application_status_type objLapp_application_status_type)
        {
            DBHelper objDB = new DBHelper();
            List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Status_Type_Id", objLapp_application_status_type.Status_Type_Id));
            lstParameter.Add(new MySqlParameter("Name", objLapp_application_status_type.Name));
            lstParameter.Add(new MySqlParameter("Descripton", objLapp_application_status_type.Description));
            lstParameter.Add(new MySqlParameter("Is_Active", objLapp_application_status_type.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLapp_application_status_type.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objLapp_application_status_type.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objLapp_application_status_type.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objLapp_application_status_type.Modified_On));
            lstParameter.Add(new MySqlParameter("DTS", objLapp_application_status_type.DTS));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_application_status_type_Update", lstParameter.ToArray());
            return returnValue;
        }

       public List<Lapp_application_status_type> Get_All_Lapp_application_status_type()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_application_status_type_get_all");
            List<Lapp_application_status_type> lstEntity = new List<Lapp_application_status_type>();
            Lapp_application_status_type objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
       public Lapp_application_status_type Get_Lapp_application_status_type_by_Status_Type_Id(int G_Status_Type_Id)
       {
           DataSet ds = new DataSet("DS");
           DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           lstParameter.Add(new MySqlParameter("G_Status_Type_Id", G_Status_Type_Id));
           ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_application_status_type_getby_Status_Type_Id", lstParameter.ToArray());
           Lapp_application_status_type objEntity = null;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               objEntity = FetchEntity(dr);
           }
           return objEntity;
       }
       private Lapp_application_status_type FetchEntity(DataRow dr)
       {
           Lapp_application_status_type objEntity = new Lapp_application_status_type();
           if (dr.Table.Columns.Contains("Status_Type_Id") && dr["Status_Type_Id"] != DBNull.Value)
           {
               objEntity.Status_Type_Id = Convert.ToInt32(dr["Status_Type_Id"]);
           }

           if (dr.Table.Columns.Contains("Name") && dr["Name"] != DBNull.Value)
           {
               objEntity.Name = Convert.ToString(dr["Name"]);
           }
           if (dr.Table.Columns.Contains("Description") && dr["Description"] != DBNull.Value)
           {
               objEntity.Description = Convert.ToString(dr["Description"]);
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
       
           if (dr.Table.Columns.Contains("DTS") && dr["DTS"] != DBNull.Value)
           {
               objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
           }

           return objEntity;
       }
    }
}
