using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using LAPP.ENTITY;
using LAPP.DAL;
using System.Data.SqlClient;

namespace LAPP.BAL
{
    public class LAPP_message_template_apply_toBAL : BaseBAL
    {
        LAPP_message_template_apply_toDAL objDAL = new LAPP_message_template_apply_toDAL();

        public int SAVE_NAVBOE_MSSAGE_TAMPLATE_APPLY_TO(LAPP_message_template_apply_to objLAPP_mess_temp_apply_to)
        {
            return objDAL.SAVE_LAPP_MSSAGE_TEMPLATE_AAPLY_TO(objLAPP_mess_temp_apply_to);

        }

        public int Update_NAVBOE_MSSAGE_TAMPLATE_APPLY_TO(LAPP_message_template_apply_to objLAPP_mess_temp_apply_to, int Apply_ID)
        {
            return objDAL.UPDATE_LAPP_MSSAGE_TEMPLATE_AAPLY_TO(objLAPP_mess_temp_apply_to, Apply_ID);
        }

        public List<LAPP_message_template_apply_to> GET_All__NAVBOE_MSSAGE_TAMPLATE_APPLY_TO()
        {
            return objDAL.Get_All_LAPP_message_template_apply_to();
        }

        public LAPP_message_template_apply_to GET_NAVBOE_MSSAGE_TAMPLATE_APPLY_TO_BY_ID(int G_Apply_ID)
        {
            return objDAL.Get_LAPP_message_template_apply_to_BY_ID(G_Apply_ID);
        }

        public void DELETE_NAVBOE_MSSAGE_TAMPLATE_APPLY_TO(int D_Apply_ID)
        {
            objDAL.Delete_LAPP_message_template_apply_to(D_Apply_ID);
        }
    }
}
