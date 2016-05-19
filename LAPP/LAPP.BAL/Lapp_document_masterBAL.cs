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
    public class Lapp_document_masterBAL:BaseBAL
    {
        Lapp_document_masterDAL objDAL = new Lapp_document_masterDAL();
        public int Save_Lapp_document_master(Lapp_document_master objLapp_document_master)
        {
            return objDAL.Save_Lapp_document_master(objLapp_document_master);
        }

        public int Update_Lapp_document_master(Lapp_document_master objLapp_document_master)
        {
            return objDAL.Update_Lapp_document_master(objLapp_document_master);
        }

        public List<Lapp_document_master> Get_All_Lapp_document_master()
        {
            return objDAL.Get_All_Lapp_document_master();
        }

        public Lapp_document_master Get_Lapp_document_master_Get_by_Document_ID(int G_Document_ID)
        {
            return objDAL.Get_Lapp_document_master_Get_by_Document_ID(G_Document_ID);
        }

        public Lapp_document_master Get_Lapp_document_master_By_Query(string Query)
        {
            return objDAL.Get_Lapp_document_master_By_Query(Query);
        }

        public List<Lapp_document_master> Get_All_Lapp_document_master_By_AplicantID(int Applicant_ID)
        {
            return objDAL.Get_All_Lapp_document_master_By_AplicantID(Applicant_ID);
        }

        public List<Lapp_document_master> Get_All_Lapp_document_master_By_IndividualID(int IndividualID)
        {
            return objDAL.Get_All_Lapp_document_master_By_IndividualID(IndividualID);
        }
    }
}
