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
   public class lapp_application_deficiency_reasonBAL : BaseBAL
    {
       lapp_application_deficiency_reasonDAL objDal = new lapp_application_deficiency_reasonDAL();
       public int Save_lapp_application_deficiency_reason(lapp_application_deficiency_reason objlapp_application_deficiency_reason)
       {
           return objDal.Save_lapp_application_deficiency_reason(objlapp_application_deficiency_reason);
       }
        public int Save_lapp_deficiency_template(LAPP_DeficiencyTemplate objlapp_deficiency_template)
        {
            return objDal.Save_lapp_deficiency_template(objlapp_deficiency_template);
        }
        public int Update_lapp_application_deficiency_reason(lapp_application_deficiency_reason objlapp_application_deficiency_reason)
       {
           return objDal.Update_lapp_application_deficiency_reason(objlapp_application_deficiency_reason);
       }
        public int Update_lapp_deficiency_template(LAPP_DeficiencyTemplate objlapp_deficiency_template)
        {
            return objDal.Update_lapp_deficiency_template(objlapp_deficiency_template);
        }
        public List<lapp_application_deficiency_reason> Get_All_lapp_application_deficiency_reason()
       {
           return objDal.Get_All_lapp_application_deficiency_reason();
       }
       public lapp_application_deficiency_reason Get_lapp_application_deficiency_reason_by_Deficiency_ID(int G_Deficiency_ID)
       {
           return objDal.Get_lapp_application_deficiency_reason_by_Deficiency_ID(G_Deficiency_ID);
       }
       public List<lapp_application_deficiency_reason> Get_lapp_application_deficiency_reason_By_Query_List(string Query)
       {
           return objDal.Get_lapp_application_deficiency_reason_By_Query_List(Query);
       }
        public List<LAPP_DeficiencyTemplate> Get_lapp_application_Deficiency_Template_By_Query_List(string Query)
        {
            return objDal.Get_lapp_application_Deficiency_Template_By_Query_List(Query);
        }
        public LAPP_DeficiencyTemplate Get_lapp_deficiency_template_Deficiency_template_ID(int G_Deficiency_Template_ID)
        {
            return objDal.Get_lapp_deficiency_template_Deficiency_template_ID(G_Deficiency_Template_ID);
        }
    }
}

