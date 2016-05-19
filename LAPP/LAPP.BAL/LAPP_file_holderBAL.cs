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
    public class LAPP_file_holderBAL : BaseBAL
    {
        LAPP_file_holderDAL objDal = new LAPP_file_holderDAL();
        public int Save_LAPP_file_holder(LAPP_file_holder objLAPP_file_holder)
        {
            return objDal.Save_LAPP_file_holder(objLAPP_file_holder);
        }
        public int Update_LAPP_file_holder(LAPP_file_holder objLAPP_file_holder, int File_Id)
        {
            return objDal.Update_LAPP_file_holder(objLAPP_file_holder, File_Id);
        }
        public LAPP_file_holder Get_LAPP_file_holder_Get_BY_ID(int G_File_Id)
        {
            return objDal.Get_LAPP_file_holder_Get_BY_ID(G_File_Id);
        }
        public List<LAPP_file_holder> Get_All_LAPP_file_holder()
        {
            return objDal.Get_All_LAPP_file_holder();
        }
        public List<LAPP_file_holder> Get_All_LAPP_file_holder_By_Application_Number(string G_Application_Number)
        {
            return objDal.Get_All_LAPP_file_holder_By_Application_Number(G_Application_Number);
        }
        public void UpdateLAPP_file_holder_BY_Query(string Query)
        {
            objDal.UpdateLAPP_file_holder_BY_Query(Query);
        }

        public LAPP_file_holder Get_LAPP_file_holder_Get_BY_ApplicantId_DocType(int ApplicantId, int DocumentType)
        {
            return objDal.Get_LAPP_file_holder_Get_BY_ApplicantId_DocType(ApplicantId, DocumentType);
        }

        public LAPP_file_holder Get_LAPP_file_holder_Get_BY_ApplicantNumber_DocType(string ApplicantNumber, int DocumentType)
        {
            return objDal.Get_LAPP_file_holder_Get_BY_ApplicantNumber_DocType(ApplicantNumber, DocumentType);
        }

        public List<LAPP_file_holder> Get_LAPP_file_holder_Get_BY_ApplicantNumber_DocType_list(string ApplicantNumber, int DocumentType)
        {
            return objDal.Get_LAPP_file_holder_Get_BY_ApplicantNumber_DocType_list(ApplicantNumber, DocumentType);
        }

        public List<LAPP_file_holder> Get_All_LAPP_file_holder_By_Applicant_Id(int ApplicantId)
        {
            return objDal.Get_All_LAPP_file_holder_By_Applicant_Id(ApplicantId);
        }

        public List<LAPP_file_holder> Get_All_LAPP_file_holder_By_Applicant_Id_AND_FileType_Id(int ApplicantId)
        {
            return objDal.Get_All_LAPP_file_holder_By_Applicant_Id_AND_FileType_Id(ApplicantId);
        }

        public void Delete_Profile_ImageBasedOn_ApplicationNumber(string ApplicationNumber)
        {
            objDal.UpdateLAPP_file_holder_BY_Query("delete from LAPP_file_holder where Application_Number='" + ApplicationNumber + "' and File_Type_Id=0");
        }
        public List<LAPP_file_holder> Get_All_LAPP_file_holder_By_Individual_Id(int Individual_Id)
        {
            return objDal.Get_All_LAPP_file_holder_By_Individual_Id(Individual_Id);
        }
        public LAPP_file_holder Get_LAPP_file_holder_Get_BY_Individual_DocType(int Individual_Id, int DocumentType)
        {
            return objDal.Get_LAPP_file_holder_Get_BY_Individual_DocType(Individual_Id, DocumentType);
        }

        public List<LAPP_file_holder> Get_All_LAPP_file_holder_By_Application_Type_Id(int G_Application_Type_Id, int G_Individual_Id)
        {
            return objDal.Get_All_LAPP_file_holder_By_Application_Type_Id(G_Application_Type_Id, G_Individual_Id);
        }

        public void Update_Individual_Id_by_Applicant_ID(int Applicant_ID, int Individual_Id)
        {
            objDal.UpdateLAPP_file_holder_BY_Query("Update LAPP_file_holder SET Individual_Id = " + Individual_Id + " Where Applicant_ID = " + Applicant_ID );
        }
    }
}
