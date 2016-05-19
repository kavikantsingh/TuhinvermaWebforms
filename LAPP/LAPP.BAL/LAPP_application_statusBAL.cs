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
    public class LAPP_application_statusBAL : BaseBAL
    {
        LAPP_application_statusDAL objDal = new LAPP_application_statusDAL();
        public int Save_LAPP_application_status(LAPP_application_status objLAPP_application_status)
        {
            return objDal.Save_LAPP_application_status(objLAPP_application_status);
        }
        public int Update_LAPP_application_status(LAPP_application_status objLAPP_application_status, int status_id)
        {
            return objDal.Update_LAPP_application_status(objLAPP_application_status, status_id);
        }
        public LAPP_application_status Get_LAPP_application_status_Get_By_ID(int G_status_id)
        {
            return objDal.Get_LAPP_application_status_Get_By_ID(G_status_id);
        }
        public List<LAPP_application_status> Get_All_LAPP_application_status()
        {
            return objDal.Get_All_LAPP_application_status();
        }
        public List<LAPP_application_status> LAPP_application_status_get_by_Status_Type_Id(int G_Status_Type_Id)
        {
            return objDal.LAPP_application_status_get_by_Status_Type_Id(G_Status_Type_Id);
        }
    }
}
