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
    public class Lapp_application_feeBAL:BaseBAL
    {
        Lapp_application_feeDAL objDAL = new Lapp_application_feeDAL();

        public int Save_Lapp_application_fee(Lapp_application_fee objLapp_application_fee)
        {
            return objDAL.Save_Lapp_application_fee(objLapp_application_fee);
        }

        public int Update_Lapp_application_fee(Lapp_application_fee objLapp_application_fee, int Application_ID)
        {
            return objDAL.Update_Lapp_application_fee(objLapp_application_fee, Application_ID);
        }

        public List<Lapp_application_fee> Get_All_Lapp_application_fee()
        {
            return objDAL.Get_All_Lapp_application_fee();
        }

        public List<LAPP_MasterTransaction> Get_All_MasterTransaction()
        {
            return objDAL.Get_All_LAPP_MasterTransaction();
        }

        public List<LAPP_DeficiencyTemplate> Get_All_LAPP_DeficiencyTemplate()
        {
            return objDAL.Get_All_LAPP_DeficiencyTemplate();
        }

        public List<Lapp_application_fee> Get_Lapp_application_fee()
        {
            return objDAL.Get_Lapp_application_fee();
        }

        public Lapp_application_fee Get_Lapp_application_fee_Get_by_Application_ID(int G_Application_ID)
        {
            return objDAL.Get_Lapp_application_fee_Get_by_Application_ID(G_Application_ID);
        }
    }
}
