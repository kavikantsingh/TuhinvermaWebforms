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
   public class Lapp_application_status_typeBAL : BaseBAL
    {
       Lapp_application_status_typeDAL objDal = new Lapp_application_status_typeDAL();
       public int Save_Lapp_application_status_type(Lapp_application_status_type objLapp_application_status_type)
       {
           return objDal.Save_Lapp_application_status_type(objLapp_application_status_type);
       }
       public int Update_Lapp_application_status_type(Lapp_application_status_type objLapp_application_status_type)
       {
           return objDal.Update_Lapp_application_status_type(objLapp_application_status_type);
       }
       public List<Lapp_application_status_type> Get_All_Lapp_application_status_type()
       {
           return objDal.Get_All_Lapp_application_status_type();
       }
       public Lapp_application_status_type Get_Lapp_application_status_type_by_Status_Type_Id(int G_Status_Type_Id)
       {
           return objDal.Get_Lapp_application_status_type_by_Status_Type_Id(G_Status_Type_Id);
       }
    }
}
