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
    public class LAPP_administration_board_infoDAL : BaseDAL
    {
        public int Save_LAPP_administration_board_info(LAPP_administration_board_info objLAPP_administration_board_info)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            lstParameter.Add(new MySqlParameter("Administartion_Board_Info_Id", objLAPP_administration_board_info.Administartion_Board_Info_Id));
            lstParameter.Add(new MySqlParameter("Board_Info_Agency_Name", objLAPP_administration_board_info.Board_Info_Agency_Name));
            lstParameter.Add(new MySqlParameter("Board_Info_Address_Line1", objLAPP_administration_board_info.Board_Info_Address_Line1));
            lstParameter.Add(new MySqlParameter("Board_Info_Address_Line2", objLAPP_administration_board_info.Board_Info_Address_Line2));
            lstParameter.Add(new MySqlParameter("Board_Info_City", objLAPP_administration_board_info.Board_Info_City));
            lstParameter.Add(new MySqlParameter("Board_Info_State", objLAPP_administration_board_info.Board_Info_State));
            lstParameter.Add(new MySqlParameter("Board_Info_Phone", objLAPP_administration_board_info.Board_Info_Phone));
            lstParameter.Add(new MySqlParameter("Board_Info_Zip", objLAPP_administration_board_info.Board_Info_Zip));
            lstParameter.Add(new MySqlParameter("Board_Info_Fax", objLAPP_administration_board_info.Board_Info_Fax));
            lstParameter.Add(new MySqlParameter("Board_Info_Contact", objLAPP_administration_board_info.Board_Info_Contact));
            lstParameter.Add(new MySqlParameter("Board_Info_Renewal_Form_Text", objLAPP_administration_board_info.Board_Info_Renewal_Form_Text));
            lstParameter.Add(new MySqlParameter("Board_Info_Report_Data_Path", objLAPP_administration_board_info.Board_Info_Report_Data_Path));
            lstParameter.Add(new MySqlParameter("Board_Info_Renewal_Date_AE", objLAPP_administration_board_info.Board_Info_Renewal_Date_AE));
            lstParameter.Add(new MySqlParameter("Board_Info_Renewal_Date_FK", objLAPP_administration_board_info.Board_Info_Renewal_Date_FK));
            lstParameter.Add(new MySqlParameter("Board_Info_Renewal_Date_LR", objLAPP_administration_board_info.Board_Info_Renewal_Date_LR));
            lstParameter.Add(new MySqlParameter("Board_Info_Renewal_Date_SZ", objLAPP_administration_board_info.Board_Info_Renewal_Date_SZ));
            lstParameter.Add(new MySqlParameter("Board_info_Renewal_Fee_1disc", objLAPP_administration_board_info.Board_info_Renewal_Fee_1disc));
            lstParameter.Add(new MySqlParameter("Board_info_Renewal_Fee_2disc", objLAPP_administration_board_info.Board_info_Renewal_Fee_2disc));
            lstParameter.Add(new MySqlParameter("Board_Info_Late_Disc", objLAPP_administration_board_info.Board_Info_Late_Disc));
            lstParameter.Add(new MySqlParameter("Board_Info_Comment", objLAPP_administration_board_info.Board_Info_Comment));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_administration_board_info.Created_By));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_administration_board_info.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_administration_board_info.Is_Active));
            lstParameter.Add(new MySqlParameter("Created_On", objLAPP_administration_board_info.Created_On));
            lstParameter.Add(new MySqlParameter("DTS", objLAPP_administration_board_info.DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_administration_board_info_Save", true, lstParameter.ToArray());

            return returnValue;
        }

        public int Update_LAPP_administration_board_info(LAPP_administration_board_info objLAPP_administration_board_info, int Administartion_Board_Info_Id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("U_Administartion_Board_Info_Id", Administartion_Board_Info_Id));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Agency_Name", objLAPP_administration_board_info.Board_Info_Agency_Name));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Address_Line1", objLAPP_administration_board_info.Board_Info_Address_Line1));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Address_Line2", objLAPP_administration_board_info.Board_Info_Address_Line2));
            lstParameter.Add(new MySqlParameter("U_Board_Info_City", objLAPP_administration_board_info.Board_Info_City));
            lstParameter.Add(new MySqlParameter("U_Board_Info_State", objLAPP_administration_board_info.Board_Info_State));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Phone", objLAPP_administration_board_info.Board_Info_Phone));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Zip", objLAPP_administration_board_info.Board_Info_Zip));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Fax", objLAPP_administration_board_info.Board_Info_Fax));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Contact", objLAPP_administration_board_info.Board_Info_Contact));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Renewal_Form_Text", objLAPP_administration_board_info.Board_Info_Renewal_Form_Text));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Report_Data_Path", objLAPP_administration_board_info.Board_Info_Report_Data_Path));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Renewal_Date_AE", objLAPP_administration_board_info.Board_Info_Renewal_Date_AE));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Renewal_Date_FK", objLAPP_administration_board_info.Board_Info_Renewal_Date_FK));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Renewal_Date_LR", objLAPP_administration_board_info.Board_Info_Renewal_Date_LR));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Renewal_Date_SZ", objLAPP_administration_board_info.Board_Info_Renewal_Date_SZ));
            lstParameter.Add(new MySqlParameter("U_Board_info_Renewal_Start_Before", objLAPP_administration_board_info.Board_info_Renewal_Start_Before));
            lstParameter.Add(new MySqlParameter("U_Board_info_Renewal_Fee_1disc", objLAPP_administration_board_info.Board_info_Renewal_Fee_1disc));
            lstParameter.Add(new MySqlParameter("U_Board_info_Renewal_Fee_2disc", objLAPP_administration_board_info.Board_info_Renewal_Fee_2disc));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Late_Disc", objLAPP_administration_board_info.Board_Info_Late_Disc));
            lstParameter.Add(new MySqlParameter("U_Board_Info_Comment", objLAPP_administration_board_info.Board_Info_Comment));
            lstParameter.Add(new MySqlParameter("U_Created_By", objLAPP_administration_board_info.Created_By));
            lstParameter.Add(new MySqlParameter("U_Is_Deleted", objLAPP_administration_board_info.Is_Deleted));
            lstParameter.Add(new MySqlParameter("U_Is_Active", objLAPP_administration_board_info.Is_Active));
            lstParameter.Add(new MySqlParameter("U_Created_On", objLAPP_administration_board_info.Created_On));
            lstParameter.Add(new MySqlParameter("U_DTS", objLAPP_administration_board_info.DTS));
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_administration_board_info_Update", lstParameter.ToArray());
            return returnValue;
        }


        public LAPP_administration_board_info Get_LAPP_administration_board_info_BY_ID(int G_Administartion_Board_Info_Id)
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("G_Administartion_Board_Info_Id", G_Administartion_Board_Info_Id));
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_administration_board_info_get_by_id", lstParameter.ToArray());
            LAPP_administration_board_info objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
            }
            return objEntity;
        }

        public void Delete_LAPP_administration_board_info(int D_Administartion_Board_Info_Id)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("D_Administartion_Board_Info_Id", D_Administartion_Board_Info_Id));
            objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_administration_board_info_delete_by_id", lstParameter.ToArray());
        }

        public List<LAPP_administration_board_info> Get_All_LAPP_administration_board_info()
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.StoredProcedure, "LAPP_administration_board_info_get_all");
            List<LAPP_administration_board_info> lstEntity = new List<LAPP_administration_board_info>();
            LAPP_administration_board_info objEntity = null;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                objEntity = FetchEntity(dr);
                if (objEntity != null)
                    lstEntity.Add(objEntity);
            }
            return lstEntity;
        }

        private LAPP_administration_board_info FetchEntity(DataRow dr)
        {
            LAPP_administration_board_info objEntity = new LAPP_administration_board_info();
            if (dr.Table.Columns.Contains("Administartion_Board_Info_Id") && dr["Administartion_Board_Info_Id"] != DBNull.Value)
            {
                objEntity.Administartion_Board_Info_Id = Convert.ToInt32(dr["Administartion_Board_Info_Id"]);
            }
            if (dr.Table.Columns.Contains("Board_Info_Agency_Name") && dr["Board_Info_Agency_Name"] != DBNull.Value)
            {
                objEntity.Board_Info_Agency_Name = Convert.ToString(dr["Board_Info_Agency_Name"]);
            }
            if (dr.Table.Columns.Contains("Board_Info_Address_Line1") && dr["Board_Info_Address_Line1"] != DBNull.Value)
            {
                objEntity.Board_Info_Address_Line1 = Convert.ToString(dr["Board_Info_Address_Line1"]);
            }
            if (dr.Table.Columns.Contains("Board_Info_Address_Line2") && dr["Board_Info_Address_Line2"] != DBNull.Value)
            {
                objEntity.Board_Info_Address_Line2 = Convert.ToString(dr["Board_Info_Address_Line2"]);
            }
            if (dr.Table.Columns.Contains("Board_Info_City") && dr["Board_Info_City"] != DBNull.Value)
            {
                objEntity.Board_Info_City = Convert.ToString(dr["Board_Info_City"]);
            }
            if (dr.Table.Columns.Contains("Board_Info_State") && dr["Board_Info_State"] != DBNull.Value)
            {
                objEntity.Board_Info_State = Convert.ToString(dr["Board_Info_State"]);
            }
            if (dr.Table.Columns.Contains("Board_Info_Phone") && dr["Board_Info_Phone"] != DBNull.Value)
            {
                objEntity.Board_Info_Phone = Convert.ToString(dr["Board_Info_Phone"]);
            }
            if (dr.Table.Columns.Contains("Board_Info_Zip") && dr["Board_Info_Zip"] != DBNull.Value)
            {
                objEntity.Board_Info_Zip = Convert.ToString(dr["Board_Info_Zip"]);
            }
            if (dr.Table.Columns.Contains("Board_Info_Fax") && dr["Board_Info_Fax"] != DBNull.Value)
            {
                objEntity.Board_Info_Fax = Convert.ToString(dr["Board_Info_Fax"]);
            }
            if (dr.Table.Columns.Contains("Board_Info_Contact") && dr["Board_Info_Contact"] != DBNull.Value)
            {
                objEntity.Board_Info_Contact = Convert.ToString(dr["Board_Info_Contact"]);
            }
            if (dr.Table.Columns.Contains("Board_Info_Renewal_Form_Text") && dr["Board_Info_Renewal_Form_Text"] != DBNull.Value)
            {
                objEntity.Board_Info_Renewal_Form_Text = Convert.ToString(dr["Board_Info_Renewal_Form_Text"]);
            }
            if (dr.Table.Columns.Contains("Board_Info_Report_Data_Path") && dr["Board_Info_Report_Data_Path"] != DBNull.Value)
            {
                objEntity.Board_Info_Report_Data_Path = Convert.ToString(dr["Board_Info_Report_Data_Path"]);
            }

            if (dr.Table.Columns.Contains("Board_Info_Renewal_Date_AE") && dr["Board_Info_Renewal_Date_AE"] != DBNull.Value)
            {
                objEntity.Board_Info_Renewal_Date_AE = Convert.ToDateTime(dr["Board_Info_Renewal_Date_AE"]);
            }
            if (dr.Table.Columns.Contains("Board_Info_Renewal_Date_FK") && dr["Board_Info_Renewal_Date_FK"] != DBNull.Value)
            {
                objEntity.Board_Info_Renewal_Date_FK = Convert.ToDateTime(dr["Board_Info_Renewal_Date_FK"]);
            }
            if (dr.Table.Columns.Contains("Board_Info_Renewal_Date_LR") && dr["Board_Info_Renewal_Date_LR"] != DBNull.Value)
            {
                objEntity.Board_Info_Renewal_Date_LR = Convert.ToDateTime(dr["Board_Info_Renewal_Date_LR"]);
            }

            if (dr.Table.Columns.Contains("Board_Info_Renewal_Date_SZ") && dr["Board_Info_Renewal_Date_SZ"] != DBNull.Value)
            {
                objEntity.Board_Info_Renewal_Date_SZ = Convert.ToDateTime(dr["Board_Info_Renewal_Date_SZ"]);
            }
            if (dr.Table.Columns.Contains("Board_info_Renewal_Start_Before") && dr["Board_info_Renewal_Start_Before"] != DBNull.Value)
            {
                objEntity.Board_info_Renewal_Start_Before = Convert.ToInt32(dr["Board_info_Renewal_Start_Before"]);
            }
            if (dr.Table.Columns.Contains("Board_info_Renewal_Fee_1disc") && dr["Board_info_Renewal_Fee_1disc"] != DBNull.Value)
            {
                objEntity.Board_info_Renewal_Fee_1disc = Convert.ToDouble(dr["Board_info_Renewal_Fee_1disc"]);
            }

            if (dr.Table.Columns.Contains("Board_info_Renewal_Fee_2disc") && dr["Board_info_Renewal_Fee_2disc"] != DBNull.Value)
            {
                objEntity.Board_info_Renewal_Fee_2disc = Convert.ToDouble(dr["Board_info_Renewal_Fee_2disc"]);
            }

            if (dr.Table.Columns.Contains("Board_Info_Late_Disc") && dr["Board_Info_Late_Disc"] != DBNull.Value)
            {
                objEntity.Board_Info_Late_Disc = Convert.ToDouble(dr["Board_Info_Late_Disc"]);
            }

            if (dr.Table.Columns.Contains("Board_Info_Comment") && dr["Board_Info_Comment"] != DBNull.Value)
            {
                objEntity.Board_Info_Comment = Convert.ToString(dr["Board_Info_Comment"]);
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
