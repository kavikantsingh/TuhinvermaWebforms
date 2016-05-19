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
    public class LAPP_fee_histDAL : BaseDAL
    {
        public int Save_LAPP_fee_hist(LAPP_fee_hist objLAPP_fee_hist)
        {
            DBHelper objDB = new DBHelper(); List<MySqlParameter> lstParameter = new List<MySqlParameter>();
            lstParameter.Add(new MySqlParameter("Fee_ID", objLAPP_fee_hist.Fee_ID));
            lstParameter.Add(new MySqlParameter("Fee_Type_ID", objLAPP_fee_hist.Fee_Type_ID));
            lstParameter.Add(new MySqlParameter("Fee_Name", objLAPP_fee_hist.Fee_Name));
            lstParameter.Add(new MySqlParameter("Fee_Description", objLAPP_fee_hist.Fee_Description));
            lstParameter.Add(new MySqlParameter("Fee_Amount", objLAPP_fee_hist.Fee_Amount));
            lstParameter.Add(new MySqlParameter("Fee_Additonal_Amount", objLAPP_fee_hist.Fee_Additonal_Amount));
            lstParameter.Add(new MySqlParameter("Created_By", objLAPP_fee_hist.Created_By));
            lstParameter.Add(new MySqlParameter("Created_On", objLAPP_fee_hist.Created_On));
            lstParameter.Add(new MySqlParameter("Is_Deleted", objLAPP_fee_hist.Is_Deleted));
            lstParameter.Add(new MySqlParameter("Is_Active", objLAPP_fee_hist.Is_Active));
            lstParameter.Add(new MySqlParameter("DTS", objLAPP_fee_hist.DTS));
            lstParameter.Add(new MySqlParameter("Effective_Date", objLAPP_fee_hist.Effective_Date));
            lstParameter.Add(new MySqlParameter("End_Date", objLAPP_fee_hist.End_Date));
            lstParameter.Add(new MySqlParameter("Action", objLAPP_fee_hist.Action));
            lstParameter.Add(new MySqlParameter("Modified_By", objLAPP_fee_hist.Modified_By));
            lstParameter.Add(new MySqlParameter("Modified_DTS", objLAPP_fee_hist.Modified_DTS));

            MySqlParameter returnParam = new MySqlParameter("ReturnParam", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            lstParameter.Add(returnParam);
            int returnValue = objDB.ExecuteNonQuery(CommandType.StoredProcedure, "LAPP_fee_hist_Save", true, lstParameter.ToArray());

            return returnValue;

        }
    }
}
