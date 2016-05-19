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
    public class LAPP_role_BAL : BaseBAL
    {
        LAPP_role_DAL objDal = new LAPP_role_DAL();
        public int Save_LAPP_role(LAPP_role objLAPP_role)
        {
            return objDal.Save_LAPP_role(objLAPP_role);
        }
        public List<LAPP_role> Get_All_LAPP_role()
        {
            return objDal.Get_All_LAPP_role();
        }
        public LAPP_role Get_LAPP_role_BY_ID(int G_LAPP_role_id)
        {
            return objDal.Get_LAPP_role_BY_ID(G_LAPP_role_id);
        }

        public int Update_LAPP_role(LAPP_role objLAPP_role, int LAPP_role_id)
        {
            return objDal.Update_LAPP_role(objLAPP_role, LAPP_role_id);
        }
        public void Delete_LAPP_role_By_ID(int D_LAPP_role_id)
        {
            objDal.Delete_LAPP_role_By_ID(D_LAPP_role_id);

        }
    }
}
