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
   public class LAPP_message_template_apply_to_histBAL: BaseBAL
    {
       LAPP_message_template_apply_to_histDAL objDal = new LAPP_message_template_apply_to_histDAL();
       public int SAVE_LAPP_MSSAGE_TEMPLATE_AAPLY_TO_Hist(LAPP_message_template_apply_to_hist objLAPP_message_template_apply_to_hist)
       {
           return objDal.SAVE_LAPP_MSSAGE_TEMPLATE_AAPLY_TO_Hist(objLAPP_message_template_apply_to_hist);
       }
    }
}
