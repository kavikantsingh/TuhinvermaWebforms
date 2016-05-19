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
    public class LAPP_administration_board_info_histBAL:BaseBAL
    {
       LAPP_administration_board_info_histDAL objDal = new LAPP_administration_board_info_histDAL();

       public int Save_LAPP_administration_board_info_hist(LAPP_administration_board_info_hist objLAPP_administration_board_info_hist)
        {
            return objDal.Save_LAPP_administration_board_info_hist(objLAPP_administration_board_info_hist);
        }
    }
}
