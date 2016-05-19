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
   public class lapp_license_print_queue_holderDAL:BaseDAL
    {
       public int Save_lapp_license_print_queue_holder(lapp_license_print_queue_holder objlapp_license_print_queue_holder)
       {
           DBHelper objDB = new DBHelper();
           List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           lstParameter.Add(new MySqlParameter("Individual_Id", objlapp_license_print_queue_holder.Individual_Id));
           lstParameter.Add(new MySqlParameter("Application_No", objlapp_license_print_queue_holder.Application_No));
           lstParameter.Add(new MySqlParameter("Application_Type_Name", objlapp_license_print_queue_holder.Application_Type_Name));
           lstParameter.Add(new MySqlParameter("Application_Type_Id", objlapp_license_print_queue_holder.Application_Type_Id));
           lstParameter.Add(new MySqlParameter("First_Name", objlapp_license_print_queue_holder.First_Name));
           lstParameter.Add(new MySqlParameter("Last_Name", objlapp_license_print_queue_holder.Last_Name));
           lstParameter.Add(new MySqlParameter("License_Number", objlapp_license_print_queue_holder.License_Number));
           lstParameter.Add(new MySqlParameter("Is_Printed", objlapp_license_print_queue_holder.Is_Printed));
           lstParameter.Add(new MySqlParameter("Printed_On", objlapp_license_print_queue_holder.Printed_On));
           lstParameter.Add(new MySqlParameter("Created_By", objlapp_license_print_queue_holder.Created_By));
           lstParameter.Add(new MySqlParameter("Is_Active", objlapp_license_print_queue_holder.Is_Active));
           lstParameter.Add(new MySqlParameter("Is_Deleted", objlapp_license_print_queue_holder.Is_Deleted));
           lstParameter.Add(new MySqlParameter("Created_On", objlapp_license_print_queue_holder.Created_On));
           lstParameter.Add(new MySqlParameter("DTS", objlapp_license_print_queue_holder.DTS));
           MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
           returnParam.Direction = ParameterDirection.ReturnValue;
           lstParameter.Add(returnParam);
           int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_license_print_queue_holder_Save",true, lstParameter.ToArray());
           return returnValue;
       }

       public int Update_lapp_license_print_queue_holder(lapp_license_print_queue_holder objlapp_license_print_queue_holder)
       {
           DBHelper objDB = new DBHelper();
           List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           lstParameter.Add(new MySqlParameter("U_Individual_Id", objlapp_license_print_queue_holder.Individual_Id));
           lstParameter.Add(new MySqlParameter("U_Application_No", objlapp_license_print_queue_holder.Application_No));
           lstParameter.Add(new MySqlParameter("U_Application_Type_Name", objlapp_license_print_queue_holder.Application_Type_Name));
           lstParameter.Add(new MySqlParameter("U_Application_Type_Id", objlapp_license_print_queue_holder.Application_Type_Id));
           lstParameter.Add(new MySqlParameter("U_First_Name", objlapp_license_print_queue_holder.First_Name));
           lstParameter.Add(new MySqlParameter("U_Last_Name", objlapp_license_print_queue_holder.Last_Name));
           lstParameter.Add(new MySqlParameter("U_License_Number", objlapp_license_print_queue_holder.License_Number));
           lstParameter.Add(new MySqlParameter("U_Is_Printed", objlapp_license_print_queue_holder.Is_Printed));
           lstParameter.Add(new MySqlParameter("U_Printed_On", objlapp_license_print_queue_holder.Printed_On));
           lstParameter.Add(new MySqlParameter("U_Created_By", objlapp_license_print_queue_holder.Created_By));
           lstParameter.Add(new MySqlParameter("U_Is_Active", objlapp_license_print_queue_holder.Is_Active));
           lstParameter.Add(new MySqlParameter("U_Is_Deleted", objlapp_license_print_queue_holder.Is_Deleted));
           lstParameter.Add(new MySqlParameter("U_Created_On", objlapp_license_print_queue_holder.Created_On));
           lstParameter.Add(new MySqlParameter("U_DTS", objlapp_license_print_queue_holder.DTS));
           int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_license_print_queue_holder_Update", lstParameter.ToArray());
           return returnValue;
       }

       public List<lapp_license_print_queue_holder> Get_All_lapp_license_print_queue_holder(bool G_Is_Printed)
       {
           DataSet ds = new DataSet("DS");
           DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           ds = objDB.ExecuteDataSet(CommandType.Text, "select a.First_Name,a.Last_Name,a.License_Number,a.Application_NO,(select Name from lapp_application_fee where Application_Id=a.Application_Type_Id) as 'Application_Type_Name' from lapp_license_print_queue_holder a where Is_Printed ="+G_Is_Printed);
           List<lapp_license_print_queue_holder>lstEntity = new List<lapp_license_print_queue_holder>();
           lapp_license_print_queue_holder objEntity = null;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               objEntity = FetchEntity(dr);
               if (objEntity != null)
                   lstEntity.Add(objEntity);
           }
           return lstEntity;
       }

       public List<lapp_license_print_queue_holder> Get_All_lapp_license_print_queue_holder_By_Application_No(string G_Application_No)
       {
           DataSet ds = new DataSet("DS");
           DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           ds = objDB.ExecuteDataSet(CommandType.Text, "select * from lapp_license_print_queue_holder where Application_No='" + G_Application_No +"' and Is_Deleted!=1");
           List<lapp_license_print_queue_holder> lstEntity = new List<lapp_license_print_queue_holder>();
           lapp_license_print_queue_holder objEntity = null;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               objEntity = FetchEntity(dr);
               if (objEntity != null)
                   lstEntity.Add(objEntity);
           }
           return lstEntity;
       }

       public lapp_license_print_queue_holder Get_lapp_license_print_queue_holder_By_Application_No(string G_Application_No)
       {
           DataSet ds = new DataSet("DS");
           DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           ds = objDB.ExecuteDataSet(CommandType.Text, "select * from lapp_license_print_queue_holder where Application_No='" + G_Application_No +"' and Is_Deleted!=1");
           lapp_license_print_queue_holder objEntity = null;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               objEntity = FetchEntity(dr);
           }
           return objEntity;
       }

       public List<lapp_license_print_queue_holder> Get_All_lapp_license_print_queue_holder_By_License_Number(string G_License_Number)
       {
           DataSet ds = new DataSet("DS");
           DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           ds = objDB.ExecuteDataSet(CommandType.Text, "select * from lapp_license_print_queue_holder where License_Number='" + G_License_Number + "' and Is_Deleted!=1");
           List<lapp_license_print_queue_holder> lstEntity = new List<lapp_license_print_queue_holder>();
           lapp_license_print_queue_holder objEntity = null;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               objEntity = FetchEntity(dr);
               if (objEntity != null)
                   lstEntity.Add(objEntity);
           }
           return lstEntity;
       }

       public lapp_license_print_queue_holder Get_lapp_license_print_queue_holder_By_License_Number(string G_License_Number)
       {
           DataSet ds = new DataSet("DS");
           DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           ds = objDB.ExecuteDataSet(CommandType.Text, "select * from lapp_license_print_queue_holder where License_Number='" + G_License_Number + "' and Is_Deleted!=1");
           lapp_license_print_queue_holder objEntity = null;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               objEntity = FetchEntity(dr);
           }
           return objEntity;
       }

       public lapp_license_print_queue_holder Get_lapp_license_print_queue_holder_By_Queue_Id(string G_Queue_Id)
       {
           DataSet ds = new DataSet("DS");
           DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           ds = objDB.ExecuteDataSet(CommandType.Text, "select * from lapp_license_print_queue_holder where Queue_Id='" + G_Queue_Id + "' and Is_Deleted!=1");
           lapp_license_print_queue_holder objEntity = null;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               objEntity = FetchEntity(dr);
           }
           return objEntity;
       }

       public lapp_license_print_queue_holder Get_lapp_license_print_queue_holder_By_Individual_Id(string G_Individual_Id)
       {
           DataSet ds = new DataSet("DS");
           DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           ds = objDB.ExecuteDataSet(CommandType.Text, "select * from lapp_license_print_queue_holder where Individual_Id='" + G_Individual_Id + "' and Is_Deleted!=1");
           lapp_license_print_queue_holder objEntity = null;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               objEntity = FetchEntity(dr);
           }
           return objEntity;
       }

       public List<lapp_license_print_queue_holder> Get_All_lapp_license_print_queue_holder_By_Query(string Query)
       {
           DataSet ds = new DataSet("DS");
           DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
           ds = objDB.ExecuteDataSet(CommandType.Text, Query);
           List<lapp_license_print_queue_holder> lstEntity = new List<lapp_license_print_queue_holder>();
           lapp_license_print_queue_holder objEntity = null;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               objEntity = FetchEntity(dr);
               if (objEntity != null)
                   lstEntity.Add(objEntity);
           }
           return lstEntity;
       }

       public lapp_license_print_queue_holder FetchEntity(DataRow dr)
       {

           lapp_license_print_queue_holder objEntity = new lapp_license_print_queue_holder();
           if (dr.Table.Columns.Contains("Queue_Id") && dr["Queue_Id"] != DBNull.Value)
           {
               objEntity.Queue_Id = Convert.ToInt32(dr["Queue_Id"]);
           }
           if (dr.Table.Columns.Contains("Individual_Id") && dr["Individual_Id"] != DBNull.Value)
           {
               objEntity.Individual_Id = Convert.ToInt32(dr["Individual_Id"]);
           }
           if (dr.Table.Columns.Contains("Application_No") && dr["Application_No"] != DBNull.Value)
           {
               objEntity.Application_No = Convert.ToString(dr["Application_No"]);
           }
           if (dr.Table.Columns.Contains("Application_Type_Name") && dr["Application_Type_Name"] != DBNull.Value)
           {
               objEntity.Application_Type_Name = Convert.ToString(dr["Application_Type_Name"]);
           }
           if (dr.Table.Columns.Contains("Application_Type_Id") && dr["Application_Type_Id"] != DBNull.Value)
           {
               objEntity.Application_Type_Id = Convert.ToInt32(dr["Application_Type_Id"]);
           }
           if (dr.Table.Columns.Contains("First_Name") && dr["First_Name"] != DBNull.Value)
           {
               objEntity.First_Name = Convert.ToString(dr["First_Name"]);
           }
           if (dr.Table.Columns.Contains("Last_Name") && dr["Last_Name"] != DBNull.Value)
           {
               objEntity.Last_Name = Convert.ToString(dr["Last_Name"]);
           }
           if (dr.Table.Columns.Contains("License_Number") && dr["License_Number"] != DBNull.Value)
           {
               objEntity.License_Number = Convert.ToString(dr["License_Number"]);
           }
           if (dr.Table.Columns.Contains("Is_Printed") && dr["Is_Printed"] != DBNull.Value)
           {
               objEntity.Is_Printed = Convert.ToBoolean(dr["Is_Printed"]);
           }

           if (dr.Table.Columns.Contains("Printed_On") && dr["Printed_On"] != DBNull.Value)
           {
               objEntity.Printed_On = Convert.ToString(dr["Printed_On"]);
           }
           if (dr.Table.Columns.Contains("Created_By") && dr["Created_By"] != DBNull.Value)
           {
               objEntity.Created_By = Convert.ToInt32(dr["Created_By"]);
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
           if (dr.Table.Columns.Contains("DTS") && dr["DTS"] != DBNull.Value)
           {
               objEntity.DTS = Convert.ToDateTime(dr["DTS"]);
           }
           return objEntity;
       }


   
    }
}
