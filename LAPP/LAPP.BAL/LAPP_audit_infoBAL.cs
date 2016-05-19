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
    public class LAPP_audit_info_BAL : BaseBAL
    {
        LAPP_audit_info_DAL objDal = new LAPP_audit_info_DAL();
        public int Save_LAPP_audit_info_save(LAPP_audit_info objLAPP_audit_info)
        {
            return objDal.Save_LAPP_audit_info(objLAPP_audit_info);
        }
        public List<LAPP_audit_info> Get_All_LAPP_audit_info()
        {
            return objDal.Get_All_LAPP_audit_info();
        }
        public LAPP_audit_info Get_LAPP_audit_info_Get_BY_ID(int G_audit_info_id)
        {
            return objDal.Get_LAPP_audit_info_Get_BY_ID(G_audit_info_id);
        }

        public int Update_LAPP_audit_info_save(LAPP_audit_info objLAPP_audit_info, int audit_info_id)
        {
            return objDal.Update_LAPP_audit_info(objLAPP_audit_info, audit_info_id);
        }
        public void Delete_LAPP_audit_info_By_ID(int auditinfoid)
        {
            objDal.Delete_LAPP_audit_info_By_ID(auditinfoid);

        }
    }
}
