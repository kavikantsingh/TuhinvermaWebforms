using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;
using System.Data.SqlClient;
using LAPP.ENTITY;
using LAPP.DAL;
namespace LAPP.BAL
{
    public class LAPP_transaction_fee_configBAL : BaseBAL
    {

        LAPP_transaction_fee_configDAL objDAL = new LAPP_transaction_fee_configDAL();
        public int Save_LAPP_transaction_fee_config(LAPP_transaction_fee_config obLAPP_transaction_fee_config)
        {
            return objDAL.Save_LAPP_transaction_fee_config(obLAPP_transaction_fee_config);
        }
        public int Update_LAPP_transaction_fee_config(LAPP_transaction_fee_config obLAPP_transaction_fee_config, int Transaction_Fee_Config_Id)
        {
            return objDAL.Update_LAPP_transaction_fee_config(obLAPP_transaction_fee_config, Transaction_Fee_Config_Id);
        }
        public LAPP_transaction_fee_config Get_LAPP_transaction_fee_config_By_ID(int G_Transaction_Fee_Config_Id)
        {
            return objDAL.Get_LAPP_transaction_fee_config_By_ID(G_Transaction_Fee_Config_Id);
        }
        public void Delete_LAPP_transaction_fee_config_by_Id(int D_Transaction_Fee_Config_Id)
        {
            objDAL.Delete_LAPP_transaction_fee_config_by_Id(D_Transaction_Fee_Config_Id);
        }
        public List<LAPP_transaction_fee_config> Get_All_LAPP_transaction_fee_config()
        {
            return objDAL.Get_All_LAPP_transaction_fee_config();
        }
        public double Get_LAPP_transaction_fee_config_ACH_Fee()
        {
            return objDAL.Get_LAPP_transaction_fee_config_ACH_Fee();
        }
        public double Get_LAPP_transaction_fee_config_CC_Fee()
        {
            return objDAL.Get_LAPP_transaction_fee_config_CC_Fee();
        }
    }
}
