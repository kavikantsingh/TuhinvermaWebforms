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
   public class lapp_contentBAL : BaseBAL
    {
       lapp_contentDAL objDal = new lapp_contentDAL();
       public int Save_lapp_content(lapp_content objlapp_content)
       {
           return objDal.Save_lapp_content(objlapp_content);
       }
       public int Update_lapp_content(lapp_content objlapp_content)
       {
           return objDal.Update_lapp_content(objlapp_content);
       }
       public List<lapp_content> Get_All_lapp_content()
       {
           return objDal.Get_All_lapp_content();
       }
       public lapp_content Get_lapp_content_by_Content_ID(int G_Content_ID)
       {
           return objDal.Get_lapp_content_by_Content_ID(G_Content_ID);
       }
       public List<lapp_content> Get_All_lapp_contentby_ContentId(int G_Content_ID)
       {
           return objDal.Get_All_lapp_contentby_ContentId(G_Content_ID);
       }
    }
}
