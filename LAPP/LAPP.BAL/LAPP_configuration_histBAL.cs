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
    public class LAPP_configuration_histBAL : BaseBAL
    {
        LAPP_configuration_histDAL objDal = new LAPP_configuration_histDAL();
        public int Save_LAPP_configuration_hist(LAPP_configuration_hist objLAPP_configuration_hist)
        {
            return objDal.Save_LAPP_configuration_hist(objLAPP_configuration_hist);
        }

        public int Update_LAPP_configuration_hist(LAPP_configuration_hist objLAPP_configuration_hist, int Configuration_Id)
        {
            return objDal.Update_LAPP_configuration_hist(objLAPP_configuration_hist, Configuration_Id);
        }
        public LAPP_configuration_hist Get_LAPP_configuration_hist_BY_ID(int G_Configuration_Id)
        {
            return objDal.Get_LAPP_configuration_hist_BY_ID(G_Configuration_Id);
        }
        public void Delete_LAPP_configuration_hist(int D_Configuration_Id)
        {
            objDal.Delete_LAPP_configuration_hist(D_Configuration_Id);
        }
        public List<LAPP_configuration_hist> Get_All_LAPP_configuration_hist()
        {
            return objDal.Get_All_LAPP_configuration_hist();
        }
    }
}
