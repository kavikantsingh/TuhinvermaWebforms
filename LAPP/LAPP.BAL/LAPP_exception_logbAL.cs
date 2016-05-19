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
    public class LAPP_exception_log_BAL : BaseBAL
    {
        LAPP_exception_log_DAL objDal = new LAPP_exception_log_DAL();
        public int Save_LAPP_exception_log(LAPP_exception_log objLAPP_exception_log)
        {
            return objDal.Save_LAPP_exception_log(objLAPP_exception_log);
        }
        public List<LAPP_exception_log> Get_All_Member()
        {
            return objDal.Get_ALL_LAPP_exception_log();
        }
        public int Update_LAPP_exception_log(LAPP_exception_log objLAPP_exception_log, int exception_log_id)
        {

            return objDal.Update_LAPP_exception_log(objLAPP_exception_log, exception_log_id);
        }
    }
}
