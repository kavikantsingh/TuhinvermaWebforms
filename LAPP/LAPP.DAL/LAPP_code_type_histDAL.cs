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
    public class LAPP_code_type_histDAL:BaseDAL
    {
        public int Save_LAPP_code_type_hist(LAPP_code_type_hist objLAPP_code_type_hist)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Code_Type_Id", objLAPP_code_type_hist.Code_Type_Id));
            lstParameter.Add(new MySqlParameter("Code_Type_CD", objLAPP_code_type_hist.Code_Type_CD));
            lstParameter.Add(new MySqlParameter("Code_Type_Description", objLAPP_code_type_hist.Code_Type_Description));
            lstParameter.Add(new MySqlParameter("Created_On", objLAPP_code_type_hist.Created_On));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_code_type_hist.Created_By));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_code_type_hist.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_code_type_hist.Is_Active));
            lstParameter.Add(new MySqlParameter("DTS", objLAPP_code_type_hist.DTS));
            lstParameter.Add(new MySqlParameter("Action", objLAPP_code_type_hist.Action));
            lstParameter.Add(new MySqlParameter("Modified_By", objLAPP_code_type_hist.Modified_By));
            lstParameter.Add(new MySqlParameter("Modified_DTS", objLAPP_code_type_hist.Modified_DTS));

            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_code_type_hist_Save", true, lstParameter.ToArray());

            return returnValue;
        }

    }
}
