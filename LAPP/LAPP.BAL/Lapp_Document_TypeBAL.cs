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
    public class Lapp_Document_TypeBAL : BaseBAL
    {
        Lapp_Document_TypeDAL objDAL = new Lapp_Document_TypeDAL();
        public int Save_Lapp_Document_Type(Lapp_Document_Type objLapp_Document_Type)
        {
            return objDAL.Save_Lapp_Document_Type(objLapp_Document_Type);
        }

        public int Update_Lapp_Document_Type(Lapp_Document_Type objLapp_Document_Type)
        {
            return objDAL.Update_Lapp_Document_Type(objLapp_Document_Type);
        }

        public List<Lapp_Document_Type> Get_All_Lapp_Document_Type()
        {
            return objDAL.Get_All_Lapp_Document_Type();
        }

        public Lapp_Document_Type Get_Lapp_Document_Type_By_document_ID(int G_document_ID)
        {
            return objDAL.Get_Lapp_Document_Type_By_document_ID(G_document_ID);
        }

        public Lapp_Document_Type Get_Lapp_Document_Type_By_Query_Single(string Query)
        {
            return objDAL.Get_Lapp_Document_Type_By_Query_Single(Query);
        }
        public List<Lapp_Document_Type> Get_All_lapp_document_type_By_Application_TypeID_And_Office()
        {
            return objDAL.Get_All_lapp_document_type_By_Application_TypeID_And_Office();
        }
        public List<Lapp_Document_Type> Get_All_lapp_document_type_By_Application_TypeID(int ApplicationTypeID)
        {
            return objDAL.Get_All_lapp_document_type_By_Application_TypeID(ApplicationTypeID);
        }
        public List<Lapp_Document_Type> Get_All_lapp_document_type_By_Application_TypeID_And_Applicant()
        {
            return objDAL.Get_All_lapp_document_type_By_Application_TypeID_And_Applicant();
        }
        public List<Lapp_Document_Type> Get_Lapp_Document_Type_By_Query_List(string Query)
        {
            return objDAL.Get_Lapp_Document_Type_By_Query_List(Query);
        }

        public List<Lapp_Document_Type> Get_All_lapp_document_type_For_New_ApplicationRequest()
        {
            return objDAL.Get_All_lapp_document_type_For_New_ApplicationRequest();

        }
        public List<Lapp_Document_Type> Get_All_lapp_document_type_For_Transfer_ApplicationRequest()
        {
            return objDAL.Get_All_lapp_document_type_For_Transfer_ApplicationRequest();

        }
    }
}
