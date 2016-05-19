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
   public  class LAPP_code_type_histBAL :BaseBAL
    {
       LAPP_code_type_histDAL objDal = new LAPP_code_type_histDAL();
       public int Save_LAPP_code_type_hist(LAPP_code_type_hist objLAPP_code_type_hist)
        {
            return objDal.Save_LAPP_code_type_hist(objLAPP_code_type_hist);
        }

    }
}
