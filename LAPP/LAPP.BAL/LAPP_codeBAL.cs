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
    public class LAPP_codeBAL : BaseBAL
    {
        LAPP_codeDAL objDAL = new LAPP_codeDAL();
        public int Save_LAPP_code(LAPP_code objLAPP_code)
        {
            return objDAL.Save_LAPP_code(objLAPP_code);
        }
        public int Update_LAPP_code(LAPP_code objLAPP_code, int Code_ID)
        {
            return objDAL.Update_LAPP_code(objLAPP_code, Code_ID);
        }
        public LAPP_code Get_LAPP_code_BY_ID(int G_Code_ID)
        {
            return objDAL.Get_LAPP_code_BY_ID(G_Code_ID);
        }
        public void Delete_LAPP_code(int D_Code_ID)
        {
            objDAL.Delete_LAPP_code(D_Code_ID);
        }
        public List<LAPP_code> Get_All_LAPP_code()
        {
            return objDAL.Get_All_LAPP_code();
        }
        public List<LAPP_code> Get_All_LAPP_code_by_code_type_cd()
        {
            return objDAL.Get_All_LAPP_code_by_code_type_cd();
        }
        public List<LAPP_code> Get_All_LAPP_code__by_Pager(int G_PageNo, int G_Pager)
        {
            return objDAL.Get_All_LAPP_code__by_Pager(G_PageNo, G_Pager);
        }

        public int Get_LAPP_code_get_Count()
        {
            return objDAL.Get_LAPP_code_get_Count();
        }

        public DataTable LAPP_Report_Codes_Statistics_Report()
        {
            return objDAL.LAPP_Report_Codes_Statistics_Report();
        }
        public DataTable LAPP_Report_Codes_Statistics_Misc_Report()
        {
            return objDAL.LAPP_Report_Codes_Statistics_Misc_Report();
        }
        public DataTable LAPP_Report_Codes_Statistics_By_Sex_Report()
        {
            return objDAL.LAPP_Report_Codes_Statistics_By_Sex_Report();
        }
        public List<LAPP_code> Get_All_LAPP_code__by_PagerAnd_CodeTypeCd(string CodeTypeCd, int G_PageNo, int G_Pager)
        {
            return objDAL.Get_All_LAPP_code__by_PagerAnd_CodeTypeCd(CodeTypeCd, G_PageNo, G_Pager);
        }

        public List<LAPP_code> Get_All_LAPP_code__by_Pager_Search(int Code_Type_ID, string KeyWord, int G_PageNo, int G_Pager)
        {
            return objDAL.Get_All_LAPP_code__by_Pager_Search(Code_Type_ID, KeyWord, G_PageNo, G_Pager);

        }

        public LAPP_code LAPP_code_get_by_code_name(string Code_Name)
        {
            return objDAL.LAPP_code_get_by_code_name(Code_Name);
        }
        public List<LAPP_code> LAPP_code_get_all_as_professional_services()
        {
            return objDAL.LAPP_code_get_all_as_professional_services();
        }
    }

}
