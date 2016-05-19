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
    public class lapp_taskDAL : BaseDAL
    {
        public int Save_lapp_task(lapp_task objlapp_task)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            //lstParameter.Add(new MySqlParameter("task_Id", objlapp_task.task_Id));
            lstParameter.Add(new MySqlParameter("Individual_Id", objlapp_task.Individual_Id));
            lstParameter.Add(new MySqlParameter("Task_Type", objlapp_task.Task_Type));
            lstParameter.Add(new MySqlParameter("Status_ID", objlapp_task.Status_ID));
            lstParameter.Add(new MySqlParameter("Status", objlapp_task.Status));
            lstParameter.Add(new MySqlParameter("Due_Date", objlapp_task.Due_Date));
            lstParameter.Add(new MySqlParameter("Date_Completed", objlapp_task.Date_Completed));
            lstParameter.Add(new MySqlParameter("Comments", objlapp_task.Comments));

            lstParameter.Add(new MySqlParameter("Is_Active", objlapp_task.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objlapp_task.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objlapp_task.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objlapp_task.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objlapp_task.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objlapp_task.Modified_By));

            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_task_Save", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }

        public int Update_lapp_task(lapp_task objlapp_task, int task_Id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_task_Id", objlapp_task.task_Id));
            lstParameter.Add(new MySqlParameter("U_Individual_Id", objlapp_task.Individual_Id));
            lstParameter.Add(new MySqlParameter("U_Task_Type", objlapp_task.Task_Type));
            lstParameter.Add(new MySqlParameter("U_Status_ID", objlapp_task.Status_ID));
            lstParameter.Add(new MySqlParameter("U_Status", objlapp_task.Status));
            lstParameter.Add(new MySqlParameter("U_Due_Date", objlapp_task.Due_Date));
            lstParameter.Add(new MySqlParameter("U_Date_Completed", objlapp_task.Date_Completed));
            lstParameter.Add(new MySqlParameter("U_Comments", objlapp_task.Comments));

            lstParameter.Add(new MySqlParameter("U_Is_Active", objlapp_task.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objlapp_task.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Created_On", objlapp_task.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objlapp_task.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objlapp_task.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objlapp_task.Modified_By));
            // MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            //returnParam.Direction = ParameterDirection.ReturnValue;
            //lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_task_update", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }

        public List<lapp_task> Get_All_lapp_task()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_task_get_all");
            List<lapp_task> lstEntity = new List<lapp_task>();
            lapp_task objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public lapp_task Get_lapp_task_Get_by_task_Id(int G_task_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_task_Id", G_task_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_task_get_by_Id", lstParameter.ToArray());
            lapp_task objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public List<lapp_task> Get_lapp_task_Get_by_Individual_Id(int G_Individual_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Individual_Id", G_Individual_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_task_get_by_individual_Id", lstParameter.ToArray());
            List<lapp_task> lstEntity = new List<lapp_task>();
            lapp_task objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        private lapp_task FetchEntity(DataRow dr)
        {
            lapp_task objEntity = new lapp_task();
            if (dr.Table.Columns.Contains("task_Id") && dr["task_Id"] != DBNull.Value)
            {
                objEntity.task_Id = Convert.ToInt32(dr["task_Id"]);
            }
            if (dr.Table.Columns.Contains("Individual_Id") && dr["Individual_Id"] != DBNull.Value)
            {
                objEntity.Individual_Id = Convert.ToInt32(dr["Individual_Id"]);
            }
            if (dr.Table.Columns.Contains("Task_Type") && dr["Task_Type"] != DBNull.Value)
            {
                objEntity.Task_Type = Convert.ToString(dr["Task_Type"]);
            }
            if (dr.Table.Columns.Contains("Status_ID") && dr["Status_ID"] != DBNull.Value)
            {
                objEntity.Status_ID = Convert.ToInt32(dr["Status_ID"]);
            }
            if (dr.Table.Columns.Contains("Status") && dr["Status"] != DBNull.Value)
            {
                objEntity.Status = Convert.ToString(dr["Status"]);
            }
            if (dr.Table.Columns.Contains("Due_Date") && dr["Due_Date"] != DBNull.Value)
            {
                objEntity.Due_Date = Convert.ToString(dr["Due_Date"]);
            }
            if (dr.Table.Columns.Contains("Date_Completed") && dr["Date_Completed"] != DBNull.Value)
            {
                objEntity.Date_Completed = Convert.ToBoolean(dr["Date_Completed"]);
            }
            if (dr.Table.Columns.Contains("Comments") && dr["Comments"] != DBNull.Value)
            {
                objEntity.Comments = Convert.ToString(dr["Comments"]);
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
                objEntity.Created_By = Convert.ToString(dr["Created_By"]);
            }
            if (dr.Table.Columns.Contains("Modified_On") && dr["Modified_On"] != DBNull.Value)
            {
                objEntity.Modified_On = Convert.ToDateTime(dr["Modified_On"]);
            }
            if (dr.Table.Columns.Contains("Modified_By") && dr["Modified_By"] != DBNull.Value)
            {
                objEntity.Modified_By = Convert.ToString(dr["Modified_By"]);

            }


            return objEntity;

        }
    }
}
