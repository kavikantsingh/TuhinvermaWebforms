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
    public class LAPP_userBAL : BaseBAL
    {
        LAPP_userDAL objDal = new LAPP_userDAL();
        public int Save_LAPP_User(LAPP_user objLAPP_user)
        {
            return objDal.Save_LAPP_User(objLAPP_user);
        }
        public List<LAPP_user> Get_All_User()
        {
            return objDal.Get_All_User();
        }
        public LAPP_user Get_User_Info_By_User_Id(int userid)
        {
            return objDal.Get_User_Info_By_User_Id(userid);
        }

        public int Update_User_Info(LAPP_user objLAPP_user, int userid)
        {
            return objDal.Update_User_Info(objLAPP_user, userid);
        }
        public void Delete_User_Info_By_User_Id(int userid)
        {
            objDal.Delete_User_Info_By_user_Id(userid);

        }
        public int Archive_LAPP_User_Info_by_User_Id(LAPP_user objBOE_USER_INFO)
        {
            return objDal.Archive_LAPP_user_Info_by_user_Id(objBOE_USER_INFO);
        }
        public void UnDelete_User_Info_By_User_Id(int U_User_ID)
        {
            objDal.UnDelete_User_Info_By_user_Id(U_User_ID);
        }

        public List<LAPP_user> Get_User_With_Membership()
        {
            return objDal.Get_User_List_By_Query("select a.*,b.email from lapp_user a   INNER JOIN lapp_user_membership b ON a.user_id = b.user_id   WHERE a.LAPP_role_id != 1 and b.is_deleted = 0 AND a.is_deleted =0");

        }

        public LAPP_user Get_User_With_Membership(int UserId)
        {
            return objDal.Get_User_By_Query("select a.*,b.email from lapp_user a   INNER JOIN lapp_user_membership b ON a.user_id = b.user_id   WHERE a.LAPP_role_id != 1 and b.is_deleted = 0 AND a.is_deleted =0 and a.User_id=" + UserId);

        }
    }
}
