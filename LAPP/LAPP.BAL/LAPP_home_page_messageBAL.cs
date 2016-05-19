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
    public class LAPP_home_page_messageBAL : BaseBAL
    {
        LAPP_home_page_messageDAL objDal = new LAPP_home_page_messageDAL();

        public int Save_LAPP_home_page_message(LAPP_home_page_message objLAPP_home_page_message)
        {
            return objDal.Save_LAPP_home_page_message(objLAPP_home_page_message);
        }

        public int Update_LAPP_home_page_message(LAPP_home_page_message objLAPP_home_page_message, int U_home_page_message_id)
        {
            return objDal.Update_LAPP_home_page_message(objLAPP_home_page_message, U_home_page_message_id);
        }

        public List<LAPP_home_page_message> Get_All_LAPP_home_page_message()
        {
            return objDal.Get_All_LAPP_home_page_message();
        }
        public LAPP_home_page_message Get_LAPP_home_page_message_BY_startdat_enddate(DateTime G_start_date, DateTime G_end_date, int Message_Type)
        {
            return objDal.Get_LAPP_home_page_message_BY_startdat_enddate(G_start_date, G_end_date,Message_Type);
        }

        public LAPP_home_page_message Get_LAPP_home_page_message_BY_ID(int G_home_page_message_id)
        {
            return objDal.Get_LAPP_home_page_message_BY_ID(G_home_page_message_id);
        }

        public void Delete_LAPP_home_page_messager(int D_home_page_message_id)
        {
            objDal.Delete_LAPP_home_page_messager(D_home_page_message_id);
        }
        public LAPP_home_page_message Get_LAPP_home_page_message_by_date(DateTime G_Date, int Message_Type)
        {
            return objDal.Get_LAPP_home_page_message_by_date(G_Date,Message_Type);
        }
    }
}
