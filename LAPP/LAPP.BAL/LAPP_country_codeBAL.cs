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
    public class LAPP_country_codeBAL : BaseBAL
    {
        LAPP_country_codeDAL objDal = new LAPP_country_codeDAL();

        public List<LAPP_country_code> Get_All_LAPP_country_code()
        {
            return objDal.Get_All_LAPP_country_code();
        }

        public LAPP_country_code Get_LAPP_country_code_BY_Country_Cd(string G_country_code)
        {
            return objDal.Get_LAPP_country_code_BY_Country_Cd(G_country_code);
        }
    }
}
