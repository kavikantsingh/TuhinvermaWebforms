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
    public class LAPP_code_typeBAL : BaseBAL
    {
        LAPP_code_typeDAL objDal = new LAPP_code_typeDAL();
        public int Save_LAPP_code_type(LAPP_code_type objLAPP_code_type)
        {
            return objDal.Save_LAPP_code_type(objLAPP_code_type);
        }
        public int Update_LAPP_code_type(LAPP_code_type objLAPP_code_type, int Code_Type_Id)
        {
            return objDal.Update_LAPP_code_type(objLAPP_code_type, Code_Type_Id);
        }

        public LAPP_code_type Get_LAPP_code_type_BY_ID(int G_Code_Type_Id)
        {
            return objDal.Get_LAPP_code_type_BY_ID(G_Code_Type_Id);
        }

        public void Delete_LAPP_code_type(int D_Code_Type_Id)
        {
            objDal.Delete_LAPP_code_type(D_Code_Type_Id);
        }
        public List<LAPP_code_type> Get_All_LAPP_code_type()
        {
            return objDal.Get_All_LAPP_code_type();
        }
        public List<LAPP_code_type> Get_All_LAPP_code__by_Pager(int G_PageNo, int G_Pager)
        {
            return objDal.Get_All_LAPP_code_type__by_Pager(G_PageNo, G_Pager);
        }

        public int Get_LAPP_code_type_count()
        {
            return objDal.Get_LAPP_code_type_count();
        }
    }
}
