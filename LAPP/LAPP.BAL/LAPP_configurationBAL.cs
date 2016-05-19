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
    public class LAPP_configurationBAL : BaseBAL
    {
        LAPP_configurationDAL objDal = new LAPP_configurationDAL();
        public int Save_LAPP_configuration(LAPP_configuration objLAPP_configuration)
        {
            return objDal.Save_LAPP_configuration(objLAPP_configuration);
        }
        public int Update_LAPP_configuration(LAPP_configuration objLAPP_configuration, int Configuration_Id)
        {
            return objDal.Update_LAPP_configuration(objLAPP_configuration, Configuration_Id);
        }
        public LAPP_configuration Get_LAPP_configuration_BY_ID(int G_Configuration_Id)
        {
            return objDal.Get_LAPP_configuration_BY_ID(G_Configuration_Id);
        }
        public void Delete_LAPP_configuration(int D_Configuration_Id)
        {
            objDal.Delete_LAPP_configuration(D_Configuration_Id);
        }
        public List<LAPP_configuration> Get_All_LAPP_configuration()
        {
            return objDal.Get_All_LAPP_configuration();
        }
    }
}
 