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
    public class LAPP_page_alert_messageBAL : BaseBAL
    {
        LAPP_page_alert_messageDAL objDal = new LAPP_page_alert_messageDAL();

        public int Save_LAPP_page_alert_message(LAPP_page_alert_message objLAPP_page_alert_message)
        {
            return objDal.Save_LAPP_page_alert_message(objLAPP_page_alert_message);
        }

        public int Update_LAPP_page_alert_message(LAPP_page_alert_message objLAPP_page_alert_message, int U_page_alert_message_id)
        {
            return objDal.Update_LAPP_page_alert_message(objLAPP_page_alert_message, U_page_alert_message_id);
        }

        public List<LAPP_page_alert_message> Get_All_LAPP_page_alert_message()
        {
            return objDal.Get_All_LAPP_home_page_message();
        }

        public LAPP_page_alert_message Get_LAPP_page_alert_message_BY_ID(int G_page_alert_message_id)
        {
            return objDal.Get_LAPP_page_alert_message_BY_ID(G_page_alert_message_id);
        }

        public void Delete_LAPP_page_alert_message(int D_page_alert_message_id)
        {
            objDal.Delete_LAPP_page_alert_message(D_page_alert_message_id);

        }
        public LAPP_page_alert_message Get_LAPP_page_alert_message_by_Apply_Id(int G_Apply_ID)
        {
            return objDal.Get_LAPP_page_alert_message_by_Apply_Id(G_Apply_ID);
        
        }

        public List<LAPP_page_alert_message> Get_LAPP_page_alert_message_by_Template_Name(string G_Template_Name)
        {
           return objDal.Get_LAPP_page_alert_message_by_Template_Name(G_Template_Name);
        }

        public List<LAPP_page_alert_message> Get_lapp_page_alert_message_GetBy_AppTyId_template_name(int G_template_type_id, string G_template_name)
        {
            return objDal.Get_lapp_page_alert_message_GetBy_AppTyId_template_name(G_template_type_id, G_template_name);
        }

        public List<LAPP_page_alert_message> Get_lapp_page_alert_message_GetBy_AppTyId(int G_template_type_id)
        {
            return objDal.Get_lapp_page_alert_message_GetBy_AppTyId(G_template_type_id);
        }
        public List<LAPP_page_alert_message> Get_lapp_page_alert_message_GetBy_template_name(string G_template_name)
        {
            return objDal.Get_lapp_page_alert_message_GetBy_template_name(G_template_name);
        }
    }
}
