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
    public class lapp_applicant_individual_login_infoBAL : BaseBAL
    {
        lapp_applicant_individual_login_infoDAL objDAL = new lapp_applicant_individual_login_infoDAL();
        public int Save_lapp_applicant_individual_login_info(lapp_applicant_individual_login_info objLapp_applicant_info)
        {
            return objDAL.Save_lapp_applicant_individual_login_info(objLapp_applicant_info);
        }

        public int Update_lapp_applicant_individual_login_info(lapp_applicant_individual_login_info objLapp_applicant_info)
        {
            return objDAL.Update_lapp_applicant_individual_login_info(objLapp_applicant_info);
        }

        public List<lapp_applicant_individual_login_info> Get_All_lapp_applicant_individual_login_info()
        {
            return objDAL.Get_All_lapp_applicant_individual_login_info();
        }

        public lapp_applicant_individual_login_info Get_lapp_applicant_individual_login_info_By_Applicant_ID(int G_Applicant_ID)
        {
            return objDAL.Get_lapp_applicant_individual_login_info_By_Applicant_ID(G_Applicant_ID);
        }

        public lapp_applicant_individual_login_info Get_lapp_applicant_individual_login_info_By_Application_Number(string G_Application_Number)
        {
            return objDAL.Get_lapp_applicant_individual_login_info_By_Application_Number(G_Application_Number);
        }

        public lapp_applicant_individual_login_info Get_lapp_applicant_individual_login_info_Email(string G_Applicant_Email)
        {
            return objDAL.Get_lapp_applicant_individual_login_info_Email(G_Applicant_Email);
        }

        public lapp_applicant_individual_login_info Get_Lapp_applicant_info_By_Query_Single(string Query)
        {
            return objDAL.Get_Lapp_applicant_info_By_Query_Single(Query);
        }

        public List<lapp_applicant_individual_login_info> Get_Lapp_applicant_info_By_Query_List(string Query)
        {
            return objDAL.Get_Lapp_applicant_info_By_Query_List(Query);
        }


        public lapp_applicant_individual_login_info Get_lapp_applicant_individual_login_infoBAL_Get_BY_Email_and_Password(string G_User_Name, string G_Password)
        {
            return objDAL.Get_lapp_applicant_individual_login_infoBAL_Get_BY_Email_and_Password(G_User_Name, G_Password);
        }
    }
}
