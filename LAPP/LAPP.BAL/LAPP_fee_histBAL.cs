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
   public class LAPP_fee_histBAL:BaseBAL
    {
        LAPP_fee_histDAL objDal = new LAPP_fee_histDAL();
        public int Save_LAPP_fee_hist(LAPP_fee_hist objLAPP_fee_hist)
        {
            return objDal.Save_LAPP_fee_hist(objLAPP_fee_hist);
        }
    }
}
