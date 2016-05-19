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
    public class LAPP_administration_board_infoBAL : BaseBAL
    {
        LAPP_administration_board_infoDAL objDal = new LAPP_administration_board_infoDAL();

        public int Save_LAPP_administration_board_info(LAPP_administration_board_info objLAPP_administration_board_info)
        {
            return objDal.Save_LAPP_administration_board_info(objLAPP_administration_board_info);
        }
        public int Update_LAPP_administration_board_info(LAPP_administration_board_info objLAPP_administration_board_info, int Administartion_Board_Info_Id)
        {
            return objDal.Update_LAPP_administration_board_info(objLAPP_administration_board_info, Administartion_Board_Info_Id);
        }

        public List<LAPP_administration_board_info> Get_All_LAPP_administration_board_info()
        {
            return objDal.Get_All_LAPP_administration_board_info();
        }

        public LAPP_administration_board_info Get_LAPP_administration_board_info_BY_ID(int G_Administartion_Board_Info_Id)
        {
            return objDal.Get_LAPP_administration_board_info_BY_ID(G_Administartion_Board_Info_Id);
        }

        public void Delete_LAPP_administration_board_info(int D_Administartion_Board_Info_Id)
        {
            objDal.Delete_LAPP_administration_board_info(D_Administartion_Board_Info_Id);
        }

    }
}
