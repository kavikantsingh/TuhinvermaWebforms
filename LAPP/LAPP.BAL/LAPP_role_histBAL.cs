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
    public class LAPP_role_histBAL : BaseBAL
    {
        LAPP_role_histDAL objDAL = new LAPP_role_histDAL();
        public int Save_LAPP_role_hist(LAPP_role_hist objLAPP_role_hist)
        {
            return objDAL.Save_LAPP_role_hist(objLAPP_role_hist);
        }
    }
}
