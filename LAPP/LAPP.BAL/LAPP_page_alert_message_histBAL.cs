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
    public class LAPP_page_alert_message_histBAL : BaseBAL
    {
        LAPP_page_alert_message_histDAL objDal = new LAPP_page_alert_message_histDAL();
        public int Save_LAPP_page_alert_message_hist(LAPP_page_alert_message_hist objLAPP_page_alert_message_hist)
        {
            return objDal.Save_LAPP_page_alert_message_hist(objLAPP_page_alert_message_hist);
        }
    }
}
