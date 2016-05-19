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
    public class lapp_application_fee_detailsBAL : BaseBAL
    {
        lapp_application_fee_detailsDAL objDAL = new lapp_application_fee_detailsDAL();
        public int Save_lapp_application_fee_details(lapp_application_fee_details objlapp_application_fee_details)
        {
            return objDAL.Save_lapp_application_fee_details(objlapp_application_fee_details);
        }
        public int Update_lapp_application_fee_details(lapp_application_fee_details objlapp_application_fee_details)
        {
            return objDAL.Update_lapp_application_fee_details(objlapp_application_fee_details);
        }
        public lapp_application_fee_details Get_lapp_application_fee_details_BY_ID(int G_Fee_Detail_Id)
        {
            return objDAL.Get_lapp_application_fee_details_BY_ID(G_Fee_Detail_Id);
        }
        public List<lapp_application_fee_details> Get_All_lapp_application_fee_details()
        {
            return objDAL.Get_All_lapp_application_fee_details();
        }
        public List<lapp_application_fee_details> Get_All_lapp_application_fee_details_by_Application_Id(int G_Application_Id)
        {
            return objDAL.Get_All_lapp_application_fee_details_by_Application_Id(G_Application_Id);
        }

        public List<lapp_application_fee_details> Get_All_lapp_application_fee_details_For_ApplicationRequest_NewApplication()
        {
            return objDAL.Get_All_lapp_application_fee_details_by_Query("select * from lapp_application_fee_details WHERE Application_Id IN( 1,3) order by sort_order; ");
        }
        public List<lapp_application_fee_details> Get_All_lapp_application_fee_details_For_ApplicationRequest_TransferApplication()
        {
            return objDAL.Get_All_lapp_application_fee_details_by_Query("select * from lapp_application_fee_details WHERE Application_Id IN( 1,4) order by sort_order; ");
        }
        public List<lapp_application_fee_details> Get_All_lapp_application_fee_details_For_NewApplication()
        {
            return objDAL.Get_All_lapp_application_fee_details_by_Query("select * from lapp_application_fee_details WHERE Application_Id IN(3) order by sort_order; ");
        }
        public List<lapp_application_fee_details> Get_All_lapp_application_fee_details_For_TransferApplication()
        {
            return objDAL.Get_All_lapp_application_fee_details_by_Query("select * from lapp_application_fee_details WHERE Application_Id IN( 4) order by sort_order; ");
        }

        public List<lapp_application_fee_details> Get_All_lapp_application_fee_details_For_DuplicateLicenseApplication()
        {
            return objDAL.Get_All_lapp_application_fee_details_by_Query("select * from lapp_application_fee_details WHERE Application_Id IN( 6) order by sort_order; ");
        }

        public lapp_application_fee_details Get_Total_lapp_application_fee_details_For_ApplicationRequest_NewApplication()
        {
            return objDAL.Get_lapp_application_fee_details_by_Query("select sum(fee) as 'Fee' from lapp_application_fee_details WHERE Application_Id IN( 1,3); ");
        }
        public lapp_application_fee_details Get_Total_lapp_application_fee_details_For_ApplicationRequest_TransferApplication()
        {
            return objDAL.Get_lapp_application_fee_details_by_Query("select sum(fee) as 'Fee' from lapp_application_fee_details WHERE Application_Id IN( 1,4); ");
        }
        public lapp_application_fee_details Get_Total_lapp_application_fee_details_For_NewApplication()
        {
            return objDAL.Get_lapp_application_fee_details_by_Query("select sum(fee) as 'Fee' from lapp_application_fee_details WHERE Application_Id IN(3); ");
        }
        public lapp_application_fee_details Get_Total_lapp_application_fee_details_For_TransferApplication()
        {
            return objDAL.Get_lapp_application_fee_details_by_Query("select sum(fee) as 'Fee' from lapp_application_fee_details WHERE Application_Id IN( 4); ");
        }

        public List<lapp_application_fee_details> Get_All_lapp_application_fee_details_For_ApplicationRequest()
        {
            return objDAL.Get_All_lapp_application_fee_details_by_Query("select * from lapp_application_fee_details WHERE Application_Id IN( 1) order by sort_order; ");

        }

        public List<lapp_application_fee_details> Get_All_lapp_application_fee_details_For_ID(int ID)
        {
            return objDAL.Get_All_lapp_application_fee_details_by_Query("select * from lapp_application_fee_details WHERE Application_Id =" + ID + " order by sort_order; ");
        }
    }
}
