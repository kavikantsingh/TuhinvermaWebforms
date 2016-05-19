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
   public class LAPP_code_histBAL : BaseBAL
    {
       LAPP_code_histDAL objDAL = new LAPP_code_histDAL();
       public int Save_LAPP_code_hist(LAPP_code_hist objLAPP_code_hist)
        {
            return objDAL.Save_LAPP_code_hist(objLAPP_code_hist);
        }



    }
}
