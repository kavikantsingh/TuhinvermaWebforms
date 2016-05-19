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
    public class LAPP_individualBAL : BaseBAL
    {
        LAPP_IndividualDAL objDal = new LAPP_IndividualDAL();
        public int SaveLAPP_individual(LAPP_individual objLAPP_individual)
        {
            return objDal.SaveLAPP_individual(objLAPP_individual);
        }
        public int Update_LAPP_individual(LAPP_individual objLAPP_individual, int Individual_Id)
        {
            return objDal.Update_LAPP_individual(objLAPP_individual, Individual_Id);
        }
        public LAPP_individual Get_All_LAPP_individual_Get_BY_ID(int G_Individual_Id)
        {
            return objDal.Get_All_LAPP_individual_Get_BY_ID(G_Individual_Id);
        }
        public List<LAPP_individual> Get_All_LAPP_individual()
        {
            return objDal.Get_All_LAPP_individual();
        }
        public List<LAPP_individual> Get_All_LAPP_individual_WithName()
        {
            return objDal.Get_All_LAPP_individual_WithName();
        }
        public void Delete_LAPP_individual_By_Individual_Id(int Individual_Id)
        {
            objDal.Delete_LAPP_individual_By_Individual_Id(Individual_Id);
        }
        public int Archive_LAPP_individual_by_Individual_Id(LAPP_individual objLappIndividual)
        {
            return objDal.Archive_LAPP_individual_by_Individual_Id(objLappIndividual);
        }
        public void UnDelete_LAPP_individual_By_Individual_Id(int Individual_Id)
        {
            objDal.UnDelete_LAPP_individual_By_Individual_Id(Individual_Id);
        }
        public List<LAPP_individual> Search_LAPP_individual(string LicenseNumber, string SSN, string FirstName, string Last_Name, int StatusId, bool Is_Deleted)
        {
            return objDal.Search_LAPP_individual(LicenseNumber, SSN, FirstName, Last_Name, StatusId, Is_Deleted);
        } 
        
        public List<LAPP_individual> Search_LAPP_individual(string LicenseNumber, string SSN, string FirstName, string Last_Name)
        {
            return objDal.Search_LAPP_individual(LicenseNumber, SSN, FirstName, Last_Name);
        }
        public LAPP_individual Get_lapp_Individual_getby_IndividualId(int G_Individual_Id)
        {
            return objDal.Get_lapp_Individual_getby_IndividualId(G_Individual_Id);
        }
        public List<LAPP_individual> lapp_Individual_get_by_Individual_Id(int G_Individual_Id)
        {
            return objDal.lapp_Individual_get_by_Individual_Id(G_Individual_Id);
        }
        public List<LAPP_individual> Search_LAPP_individual(string LicenseNumber, string SSN, string FirstName, string Last_Name, bool Is_Deleted)
        {
            return objDal.Search_LAPP_individual(LicenseNumber, SSN, FirstName, Last_Name, Is_Deleted);
        }
    }
}
