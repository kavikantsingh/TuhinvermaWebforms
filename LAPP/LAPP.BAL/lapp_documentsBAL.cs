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
    public class lapp_documentsBAL : BaseBAL
    {
        lapp_documentsDAL objDAL = new lapp_documentsDAL();
        public int Save_lapp_documents(lapp_documents objlapp_documents)
        {
            return objDAL.Save_lapp_documents(objlapp_documents);
        }
        public int Update_lapp_documents(lapp_documents objlapp_documents, int Document_Id)
        {
            return objDAL.Update_lapp_documents(objlapp_documents, Document_Id);
        }
        public List<lapp_documents> Get_All_lapp_documents()
        {
            return objDAL.Get_All_lapp_documents();
        }
        public lapp_documents Get_lapp_documents_Get_by_Document_Id(int G_Document_Id)
        {
            return objDAL.Get_lapp_documents_Get_by_Document_Id(G_Document_Id);
        }
        public List<lapp_documents> Get_lapp_documents_Get_by_Individual_Id(int G_Individual_Id)
        {
            return objDAL.Get_lapp_documents_Get_by_Individual_Id(G_Individual_Id);
        }

    }
}
