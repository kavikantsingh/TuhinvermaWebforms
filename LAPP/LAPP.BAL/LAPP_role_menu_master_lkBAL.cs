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
    public class LAPP_role_menu_master_lkBAL : BaseBAL
    {
        LAPP_role_menu_master_lkDAL objDal = new LAPP_role_menu_master_lkDAL();
        public int Save_LAPP_role_menu_master_lk(LAPP_role_menu_master_lk objLAPP_role_menu_master_lk)
        {
            return objDal.Save_LAPP_role_menu_master_lk(objLAPP_role_menu_master_lk);
        }

        public int Update_LAPP_role_menu_master_lk(LAPP_role_menu_master_lk objLAPP_role_menu_master_lk)
        {
            return objDal.Update_LAPP_role_menu_master_lk(objLAPP_role_menu_master_lk);
        }

        public List<LAPP_role_menu_master_lk> Get_All_LAPP_role_menu_master_lk()
        {
            return objDal.Get_All_LAPP_role_menu_master_lk();
        }

        public List<LAPP_role_menu_master_lk> Get_LAPP_role_menu_master_lk_By_role_ID(int G_LAPP_role_id)
        {
            return objDal.Get_LAPP_role_menu_master_lk_By_role_ID(G_LAPP_role_id);
        }

        public LAPP_role_menu_master_lk Get_LAPP_role_menu_master_lk_By_Master_ID(int G_LAPP_menu_master_id)
        {
            return objDal.Get_LAPP_role_menu_master_lk_By_Master_ID(G_LAPP_menu_master_id);
        }
        public LAPP_role_menu_master_lk Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(int G_LAPP_menu_master_id, int G_Role_Id)
        {
           return objDal.Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(G_LAPP_menu_master_id, G_Role_Id);
        }
        public void Delete_LAPP_role_menu_master_lk_By_Role_ID(int D_LAPP_role_id)
        {
            objDal.Delete_LAPP_role_menu_master_lk_By_Role_ID(D_LAPP_role_id);
        }

        public void Delete_LAPP_role_menu_master_lk_By_Master_ID(int D_LAPP_menu_master_id)
        {
            objDal.Delete_LAPP_role_menu_master_lk_By_Master_ID(D_LAPP_menu_master_id);
        }
    }
}
