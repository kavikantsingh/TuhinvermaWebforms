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

   public class LAPP_code_histDAL :BaseDAL
    {
       public int Save_LAPP_code_hist(LAPP_code_hist objnLAPP_code_hist)
       {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Code_ID", objnLAPP_code_hist.Code_ID));
            lstParameter.Add(new MySqlParameter("Code_Name", objnLAPP_code_hist.Code_Name));
            lstParameter.Add(new MySqlParameter("Code_Type_ID", objnLAPP_code_hist.Code_Type_ID));
            lstParameter.Add(new MySqlParameter("Code_Type_CD", objnLAPP_code_hist.Code_Type_CD));
            lstParameter.Add(new MySqlParameter("Code_Description", objnLAPP_code_hist.Code_Description));
            lstParameter.Add(new MySqlParameter("Display_Order", objnLAPP_code_hist.Display_Order));
            lstParameter.Add(new MySqlParameter("Default_Display", objnLAPP_code_hist.Default_Display));
            lstParameter.Add(new MySqlParameter("Created_On", objnLAPP_code_hist.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objnLAPP_code_hist.Created_By));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objnLAPP_code_hist.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Is_Active", objnLAPP_code_hist.Is_Active));
            lstParameter.Add(new MySqlParameter("DTS", objnLAPP_code_hist.DTS));
            lstParameter.Add(new MySqlParameter("Action", objnLAPP_code_hist.Action));
            lstParameter.Add(new MySqlParameter("Modified_By", objnLAPP_code_hist.Modified_By));
            lstParameter.Add(new MySqlParameter("Modified_DTS", objnLAPP_code_hist.Modified_DTS));

            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_code_hist_Save", true, lstParameter.ToArray());

            return returnValue;
       
        }
   
    }
}
