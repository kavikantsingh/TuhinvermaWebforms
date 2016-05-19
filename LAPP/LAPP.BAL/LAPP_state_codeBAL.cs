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
    public class LAPP_state_codeBAL : BaseBAL
    {
        LAPP_state_codeDAL objDal = new LAPP_state_codeDAL();

        public List<LAPP_state_code> Get_All_LAPP_state_code()
        {
            return objDal.Get_All_LAPP_state_code();
        }

        public LAPP_state_code Get_LAPP_state_code_BY_ID(int G_state_code_id)
        {
            return objDal.Get_LAPP_state_code_BY_ID(G_state_code_id);
        }

        public LAPP_state_code Get_LAPP_state_code_BY_State_Cd(string G_state_code)
        {
            return objDal.Get_LAPP_state_code_BY_State_Cd(G_state_code);
        }

    }
}
