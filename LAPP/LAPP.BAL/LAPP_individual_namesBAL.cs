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
   public class LAPP_individual_namesBAL:BaseBAL
    {
       LAPP_individual_namesDAL objDal = new LAPP_individual_namesDAL();
       public int Save_LAPP_individual_names(LAPP_individual_names objLAPP_individual_names)
       {
           return objDal.Save_LAPP_individual_names(objLAPP_individual_names);
       }
       public int Update_LAPP_individual_names(LAPP_individual_names objLAPP_individual_names, int Name_id)
       {
           return objDal.Update_LAPP_individual_names(objLAPP_individual_names, Name_id);
       }
       public LAPP_individual_names Get_LAPP_individual_names_Get_BY_ID(int G_Name_id)
       {
           return objDal.Get_LAPP_individual_names_Get_BY_ID(G_Name_id);
       }
       public List<LAPP_individual_names> Get_All_LAPP_individual_names()
       {
           return objDal.Get_All_LAPP_individual_names();
       }
       public List<LAPP_individual_names> Get_LAPP_individual_names_Get_BY_Indiviual_Id(int G_Individual_Id)
       {
           return objDal.Get_LAPP_individual_names_Get_BY_Indiviual_Id(G_Individual_Id);
       }
       public LAPP_individual_names Get_by_LAPP_individual_names_by_Indiviual_Id(int G_Individual_Id)
       {
           return objDal.Get_by_LAPP_individual_names_by_Indiviual_Id(G_Individual_Id);
       }
    }
}
