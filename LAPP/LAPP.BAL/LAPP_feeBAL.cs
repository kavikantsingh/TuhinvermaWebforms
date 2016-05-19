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
    public class LAPP_feeBAL : BaseBAL
    {
        LAPP_feeDAL objDal = new LAPP_feeDAL();
        public int Save_LAPP_fee(LAPP_fee objLAPP_fee)
        {
            return objDal.Save_LAPP_fee(objLAPP_fee);
        }
        public int Update_LAPP_fee(LAPP_fee objLAPP_fee, int Fee_ID)
        {
            return objDal.Update_LAPP_fee(objLAPP_fee, Fee_ID);
        }
        public LAPP_fee Get_LAPP_fee_BY_ID(int G_Fee_ID)
        {
            return objDal.Get_LAPP_fee_BY_ID(G_Fee_ID);
        }
        public void Delete_LAPP_fee(int D_Fee_ID)
        {
            objDal.Delete_LAPP_fee(D_Fee_ID);
        }
        public List<LAPP_fee> Get_All_LAPP_fee()
        {
            return objDal.Get_All_LAPP_fee();
        }
        public List<LAPP_fee> Get_All_LAPP_fee_by_fee_type_Id()
        {
            return objDal.Get_All_LAPP_fee_by_fee_type_Id();
        }
    }
}
