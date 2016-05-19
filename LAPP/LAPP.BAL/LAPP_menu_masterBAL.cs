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


    public class LAPP_menu_master_BAL : BaseBAL
    {
        LAPP_menu_master_DAL objDal = new LAPP_menu_master_DAL();
        public int Save_LAPP_menu_master(LAPP_menu_master objLAPP_menu_master)
        {
            return objDal.Save_LAPP_menu_master(objLAPP_menu_master);
        }
        public List<LAPP_menu_master> Get_All_LAPP_menu_master()
        {
            return objDal.Get_All_LAPP_menu_master();
        }
        public LAPP_menu_master Get_LAPP_menu_master_BY_ID(int G_LAPP_menu_master_id)
        {
            return objDal.Get_LAPP_menu_master_BY_ID(G_LAPP_menu_master_id);
        }
        public LAPP_menu_master Get_LAPP_menu_master_by_menu_name(string G_LAPP_menu_name)
        {
            return objDal.Get_LAPP_menu_master_by_menu_name(G_LAPP_menu_name);
        }
        public int Update_LAPP_menu_master(LAPP_menu_master objLAPP_menu_master, int LAPP_menu_master_id)
        {
            return objDal.Update_LAPP_menu_master(objLAPP_menu_master, LAPP_menu_master_id);
        }
        public void Delete_LAPP_menu_master(int D_Member_Info_Id)
        {
            objDal.Delete_LAPP_menu_master(D_Member_Info_Id);
        }
        public LAPP_menu_master Get_LAPP_menu_master_by_url(string LAPP_menu_url)
        {
            return objDal.Get_LAPP_menu_master_by_url(LAPP_menu_url);
        }

        public LAPP_menu_master Get_All_LAPP_menu_master_by_role_id_with_lk_IsTrue(int G_LAPP_role_id)
        {
            {
                return objDal.Get_All_LAPP_menu_master_by_role_id_with_lk_IsTrue(G_LAPP_role_id);
            }
        }
    }
}
