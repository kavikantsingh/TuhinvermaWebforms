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
    public class lapp_license_print_queue_holderBAL:BaseBAL
    {
        lapp_license_print_queue_holderDAL objDAL = new lapp_license_print_queue_holderDAL();
        public int Save_lapp_license_print_queue_holder(lapp_license_print_queue_holder objlapp_license_print_queue_holder)
        {
            return objDAL.Save_lapp_license_print_queue_holder(objlapp_license_print_queue_holder);
        }

        public int Update_lapp_license_print_queue_holder(lapp_license_print_queue_holder objlapp_license_print_queue_holder)
        {
            return objDAL.Update_lapp_license_print_queue_holder(objlapp_license_print_queue_holder);
        }

        public List<lapp_license_print_queue_holder> Get_All_lapp_license_print_queue_holder(bool G_Is_Printed)
        {
            return objDAL.Get_All_lapp_license_print_queue_holder(G_Is_Printed);
        }

        public List<lapp_license_print_queue_holder> Get_All_lapp_license_print_queue_holder_By_Application_No(string G_Application_No)
        {
            return objDAL.Get_All_lapp_license_print_queue_holder_By_Application_No(G_Application_No);
        }

        public lapp_license_print_queue_holder Get_lapp_license_print_queue_holder_By_Application_No(string G_Application_No)
        {
            return objDAL.Get_lapp_license_print_queue_holder_By_Application_No(G_Application_No);
        }


        public List<lapp_license_print_queue_holder> Get_All_lapp_license_print_queue_holder_By_License_Number(string G_License_Number)
        {
            return objDAL.Get_All_lapp_license_print_queue_holder_By_License_Number(G_License_Number);
        }

        public lapp_license_print_queue_holder Get_lapp_license_print_queue_holder_By_License_Number(string G_License_Number)
        {
            return objDAL.Get_lapp_license_print_queue_holder_By_License_Number(G_License_Number);
        }

        public lapp_license_print_queue_holder Get_lapp_license_print_queue_holder_By_Queue_Id(string G_Queue_Id)
        {
            return objDAL.Get_lapp_license_print_queue_holder_By_Queue_Id(G_Queue_Id);
        }

        public lapp_license_print_queue_holder Get_lapp_license_print_queue_holder_By_Individual_Id(string G_Individual_Id)
        {
            return objDAL.Get_lapp_license_print_queue_holder_By_Individual_Id(G_Individual_Id);
        }

        public List<lapp_license_print_queue_holder> Search_lapp_license_print_queue_holder_BY_Name_License_Application(string First_Name, string Last_Name, string ApplicationNumber, string LicenseNumber)
        {
            string QueryCommon = "SELECT  nph.First_Name,nph.Last_Name,nph.License_Number,nph.Application_NO,(select Name from lapp_application_fee where Application_Id=nph.Application_Type_Id) as 'Application_Type_Name'  FROM lapp_license_print_queue_holder nph WHERE Is_Printed=0 and ";
            QueryCommon += "  CONCAT(nph.first_Name,' ',nph.Last_Name,' ',nph.License_Number,' ',nph.Application_No) LIKE '%" + First_Name + "%%" + Last_Name + "%%" + LicenseNumber + "%%" + ApplicationNumber + "%'";
            return objDAL.Get_All_lapp_license_print_queue_holder_By_Query(QueryCommon);
        }
    }
}
