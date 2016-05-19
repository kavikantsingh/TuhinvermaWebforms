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
    public class lapp_individual_application_lkBAL : BaseBAL
    {
        lapp_individual_application_lkDAL objDAL = new lapp_individual_application_lkDAL();
        public void Save_lapp_individual_application_lk(lapp_individual_application_lk objlapp_individual_application_lk)
        {
            objDAL.Save_lapp_individual_application_lk(objlapp_individual_application_lk);
        }
        public int Update_lapp_individual_application_lk(lapp_individual_application_lk objlapp_individual_application_lk)
        {
            return objDAL.Update_lapp_individual_application_lk(objlapp_individual_application_lk);
        }
        public lapp_individual_application_lk Get_lapp_individual_application_lk_By_Individual_Id(int G_Individual_Id)
        {
            return objDAL.Get_lapp_individual_application_lk_By_Individual_Id(G_Individual_Id);
        }
        public lapp_individual_application_lk Get_lapp_individual_application_lk_By_ApplicationType_ID(int G_ApplicationType_ID)
        {
            return objDAL.Get_lapp_individual_application_lk_By_ApplicationType_ID(G_ApplicationType_ID);
        }
        public lapp_individual_application_lk Get_lapp_individual_application_lk_get_byAppnoandIndividualid(string G_Application_Number, int G_Individual_Id)
        {
            return objDAL.Get_lapp_individual_application_lk_get_byAppnoandIndividualid(G_Application_Number, G_Individual_Id);
        }
        public lapp_individual_application_lk Get_lapp_individual_application_lk_get_byApplicationNumberApplicantIDANDApplicationTypeID(string G_Application_Number, int G_Applicant_ID, int G_ApplicationType_ID)
        {
            return objDAL.Get_lapp_individual_application_lk_get_byApplicationNumberApplicantIDANDApplicationTypeID(G_Application_Number, G_Applicant_ID, G_ApplicationType_ID);
        }
        public List<lapp_individual_application_lk> Get_All_lapp_individual_application_lk_By_Applicant_ID(int G_Applicant_ID)
        {
            return objDAL.Get_All_lapp_individual_application_lk_By_Applicant_ID(G_Applicant_ID);
        }

        public lapp_individual_application_lk Get_ByApplicationNumber(string ApplicationNumber)
        {
            return objDAL.Get_ByApplicationNumber(ApplicationNumber);
        }
        public lapp_individual_application_lk Get_ByRequestApplicationNumber(string ApplicationNumber, int ApplicationType_ID)
        {
            return objDAL.Get_ByRequestApplicationNumber(ApplicationNumber, ApplicationType_ID);
        }

        public lapp_individual_application_lk Get_lapp_individual_application_lk_ByApplicationNumber(string ApplicationNumber)
        {
            return objDAL.Get_lapp_individual_application_lk_ByApplicationNumber(ApplicationNumber);
        }

        public List<lapp_individual_application_lk> Get_lapp_individual_application_lk_By_Query(string Query)
        {
            return objDAL.Get_lapp_individual_application_lk_By_Query(Query);
        }
        public List<lapp_individual_application_lk> Get_lapp_individual_application_lk_List_By_Individual_Id(int IndividualId)
        {
            return objDAL.Get_lapp_individual_application_lk_By_Query("select * from lapp_individual_application_lk where Individual_Id=" + IndividualId);
        }

        public void Update_Individual_Id_InLk(int Applicant_Id, int Individual_Id)
        {
            objDAL.Update_Individual_Id_InLk("Update lapp_individual_application_lk set Individual_Id=" + Individual_Id + " where Applicant_Id =" + Applicant_Id);
        }
    }
}
