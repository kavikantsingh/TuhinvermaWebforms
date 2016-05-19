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
   public class LAPP_home_page_message_histBAL :BaseBAL
    {
        LAPP_home_page_message_histDAL objDal = new LAPP_home_page_message_histDAL();

        public int Save_LAPP_home_page_message_hist(LAPP_home_page_message_hist objLAPP_home_page_message_hist)
        {
            return objDal.Save_LAPP_home_page_message_hist(objLAPP_home_page_message_hist);
        }

    }
}
