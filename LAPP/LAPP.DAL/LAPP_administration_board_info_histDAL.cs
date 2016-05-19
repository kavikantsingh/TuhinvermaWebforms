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
    public class LAPP_administration_board_info_histDAL : BaseDAL
    {
        public int Save_LAPP_administration_board_info_hist(LAPP_administration_board_info_hist objLAPP_administration_board_info_hist)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();

            lstParameter.Add(new MySqlParameter("Administartion_Board_Info_Id", objLAPP_administration_board_info_hist.Administartion_Board_Info_Id));
            lstParameter.Add(new MySqlParameter("Board_Info_Agency_Name", objLAPP_administration_board_info_hist.Board_Info_Agency_Name));
            lstParameter.Add(new MySqlParameter("Board_Info_Address_Line1", objLAPP_administration_board_info_hist.Board_Info_Address_Line1));
            lstParameter.Add(new MySqlParameter("Board_Info_Address_Line2", objLAPP_administration_board_info_hist.Board_Info_Address_Line2));
            lstParameter.Add(new MySqlParameter("Board_Info_City", objLAPP_administration_board_info_hist.Board_Info_City));
            lstParameter.Add(new MySqlParameter("Board_Info_State", objLAPP_administration_board_info_hist.Board_Info_State));
            lstParameter.Add(new MySqlParameter("Board_Info_Phone", objLAPP_administration_board_info_hist.Board_Info_Phone));
            lstParameter.Add(new MySqlParameter("Board_Info_Zip", objLAPP_administration_board_info_hist.Board_Info_Zip));
            lstParameter.Add(new MySqlParameter("Board_Info_Fax", objLAPP_administration_board_info_hist.Board_Info_Fax));
            lstParameter.Add(new MySqlParameter("Board_Info_Contact", objLAPP_administration_board_info_hist.Board_Info_Contact));
            lstParameter.Add(new MySqlParameter("Board_Info_Renewal_Form_Text", objLAPP_administration_board_info_hist.Board_Info_Renewal_Form_Text));
            lstParameter.Add(new MySqlParameter("Board_Info_Report_Data_Path", objLAPP_administration_board_info_hist.Board_Info_Report_Data_Path));
            lstParameter.Add(new MySqlParameter("Board_Info_Renewal_Date_AE", objLAPP_administration_board_info_hist.Board_Info_Renewal_Date_AE));
            lstParameter.Add(new MySqlParameter("Board_Info_Renewal_Date_FK", objLAPP_administration_board_info_hist.Board_Info_Renewal_Date_FK));
            lstParameter.Add(new MySqlParameter("Board_Info_Renewal_Date_LR", objLAPP_administration_board_info_hist.Board_Info_Renewal_Date_LR));
            lstParameter.Add(new MySqlParameter("Board_Info_Renewal_Date_SZ", objLAPP_administration_board_info_hist.Board_Info_Renewal_Date_SZ));
            lstParameter.Add(new MySqlParameter("Board_info_Renewal_Fee_1disc", objLAPP_administration_board_info_hist.Board_info_Renewal_Fee_1disc));
            lstParameter.Add(new MySqlParameter("Board_info_Renewal_Fee_2disc", objLAPP_administration_board_info_hist.Board_info_Renewal_Fee_2disc));
            lstParameter.Add(new MySqlParameter("Board_info_Renewal_Start_Before", objLAPP_administration_board_info_hist.Board_info_Renewal_Start_Before));
            lstParameter.Add(new MySqlParameter("Board_Info_Late_Disc", objLAPP_administration_board_info_hist.Board_Info_Late_Disc));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_administration_board_info_hist.Created_By));
            lstParameter.Add(new MySqlParameter("Board_Info_Comment", objLAPP_administration_board_info_hist.Board_Info_Comment));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_administration_board_info_hist.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_administration_board_info_hist.Is_Active));
            lstParameter.Add(new MySqlParameter("Created_On", objLAPP_administration_board_info_hist.Created_On));
            lstParameter.Add(new MySqlParameter("DTS", objLAPP_administration_board_info_hist.DTS));
            lstParameter.Add(new MySqlParameter("Action", objLAPP_administration_board_info_hist.Action));
            lstParameter.Add(new MySqlParameter("Modified_By", objLAPP_administration_board_info_hist.Modified_By));
            lstParameter.Add(new MySqlParameter("Modified_DTS", objLAPP_administration_board_info_hist.Modified_DTS));
            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_administration_board_info_hist_Save", true, lstParameter.ToArray());

            return returnValue;
        }
    }
}
