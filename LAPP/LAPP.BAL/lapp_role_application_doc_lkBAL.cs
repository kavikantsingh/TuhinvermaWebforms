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
    public class lapp_role_application_doc_lkBAL:BaseBAL
    {
        lapp_role_application_doc_lkDAL objDAL = new lapp_role_application_doc_lkDAL();
        public int Save_lapp_role_application_doc_lk(lapp_role_application_doc_lk objlapp_role_application_doc_lk)
        {
            return objDAL.Save_lapp_role_application_doc_lk(objlapp_role_application_doc_lk);
        }

        public int Update_lapp_role_application_doc_lk(lapp_role_application_doc_lk objlapp_role_application_doc_lk)
        {
            return objDAL.Update_lapp_role_application_doc_lk(objlapp_role_application_doc_lk);
        }

        public lapp_role_application_doc_lk Get_lapp_role_application_doc_lk_Get_by_Doc_ID(int G_Doc_ID)
        {
            return objDAL.Get_lapp_role_application_doc_lk_Get_by_Doc_ID(G_Doc_ID);
        }

        public lapp_role_application_doc_lk Get_lapp_role_application_doc_lk_Get_by_Application_ID(int G_Application_ID)
        {
            return objDAL.Get_lapp_role_application_doc_lk_Get_by_Application_ID(G_Application_ID);
        }

        public lapp_role_application_doc_lk Get_lapp_role_application_doc_lk_table_By_Query(string Query)
        {
            return objDAL.Get_lapp_role_application_doc_lk_table_By_Query(Query);
        }

        public List<lapp_role_application_doc_lk> Get_All_lapp_role_application_doc_lk(int G_Role_ID)
        {
            return objDAL.Get_All_lapp_role_application_doc_lk(G_Role_ID);
        }

        public List<lapp_role_application_doc_lk> Get_All_lapp_role_application_doc_lk_By_Query(string Query)
        {
            return objDAL.Get_All_lapp_role_application_doc_lk_By_Query(Query);
        }
    }
}
