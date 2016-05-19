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
    public class lapp_notesDAL : BaseDAL
    {
        public int Save_lapp_notes(lapp_notes objlapp_notes)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            //lstParameter.Add(new MySqlParameter("Note_Id", objlapp_notes.Note_Id));
            lstParameter.Add(new MySqlParameter("Individual_Id", objlapp_notes.Individual_Id));
            lstParameter.Add(new MySqlParameter("Note", objlapp_notes.Note));

            lstParameter.Add(new MySqlParameter("Is_Active", objlapp_notes.Is_Active));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objlapp_notes.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Created_On", objlapp_notes.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objlapp_notes.Created_By));
            lstParameter.Add(new MySqlParameter("Modified_On", objlapp_notes.Modified_On));
            lstParameter.Add(new MySqlParameter("Modified_By", objlapp_notes.Modified_By));

            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_notes_Save", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }

        public int Update_lapp_notes(lapp_notes objlapp_notes, int Note_Id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Note_Id", objlapp_notes.Note_Id));
            lstParameter.Add(new MySqlParameter("U_Individual_Id", objlapp_notes.Individual_Id));
            lstParameter.Add(new MySqlParameter("U_Note_Id", objlapp_notes.Note_Id));

            lstParameter.Add(new MySqlParameter("U_Is_Active", objlapp_notes.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objlapp_notes.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Created_On", objlapp_notes.Created_On));
            lstParameter.Add(new MySqlParameter("U_Created_By", objlapp_notes.Created_By));
            lstParameter.Add(new MySqlParameter("U_Modified_On", objlapp_notes.Modified_On));
            lstParameter.Add(new MySqlParameter("U_Modified_By", objlapp_notes.Modified_By));
            // MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            //returnParam.Direction = ParameterDirection.ReturnValue;
            //lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "lapp_notes_update", lstParameter.ToArray());
            //Convert.ToInt32(returnParam.Value);
            return returnValue;
        }

        public List<lapp_notes> Get_All_lapp_notes()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_notes_get_all");
            List<lapp_notes> lstEntity = new List<lapp_notes>();
            lapp_notes objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        public lapp_notes Get_lapp_notes_Get_by_Note_Id(int G_Note_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Note_Id", G_Note_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_notes_get_by_Id", lstParameter.ToArray());
            lapp_notes objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }
        public List<lapp_notes> Get_lapp_notes_Get_by_Individual_Id(int G_Individual_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Individual_Id", G_Individual_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "lapp_notes_get_by_individual_Id", lstParameter.ToArray());
            List<lapp_notes> lstEntity = new List<lapp_notes>();
            lapp_notes objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }
        private lapp_notes FetchEntity(DataRow dr)
        {
            lapp_notes objEntity = new lapp_notes();
            if (dr.Table.Columns.Contains("Note_Id") && dr["Note_Id"] != DBNull.Value)
            {
                objEntity.Note_Id = Convert.ToInt32(dr["Note_Id"]);
            }
            if (dr.Table.Columns.Contains("Individual_Id") && dr["Individual_Id"] != DBNull.Value)
            {
                objEntity.Individual_Id = Convert.ToInt32(dr["Individual_Id"]);
            }
            if (dr.Table.Columns.Contains("Note") && dr["Note"] != DBNull.Value)
            {
                objEntity.Note = Convert.ToString(dr["Note"]);
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
            if (dr.Table.Columns.Contains("Create_By_Name") && dr["Create_By_Name"] != DBNull.Value)
            {
                objEntity.Create_By_Name = Convert.ToString(dr["Create_By_Name"]);

            }

            return objEntity;

        }
    }
}
