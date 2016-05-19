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
    public class LAPP_user_membershipBAL : BaseBAL
    {
        LAPP_user_membershipDAL objDal = new LAPP_user_membershipDAL();
        public int Save_LAPP_User_Membership(LAPP_user_membership objLAPP_user_membership)
        {
            return objDal.Save_LAPP_User_Membership(objLAPP_user_membership);
        }
        public List<LAPP_user_membership> Get_All_User_Membership()
        {
            return objDal.Get_All_User_Membership();
        }
        public LAPP_user_membership Get_User_Membership_By_User_Id(int userid)
        {
            return objDal.Get_User_Membership_By_User_Id(userid);
        }

        public int Update_User_Membership(LAPP_user_membership objLAPP_user_membership, int userid)
        {
            return objDal.Update_User_Membership(objLAPP_user_membership, userid);
        }
        public void Delete_User_Membership_By_Id(int userid)
        {
            objDal.Delete_User_Membership_By_Id(userid);

        }
        public LAPP_user_membership Get_User_Membership_By_User_Id_Qry(int userid)
        {
            return objDal.Get_User_Membership_By_User_Id_Qry(userid);
        }

        public LAPP_user_membership GetUser_MembershipByEmaiIDAndPassword(string Email, string Password)
        {
            return objDal.GetUser_MembershipByEmaiIDAndPassword(Email, Password);
        }
        public LAPP_user_membership Validate_Email(string Email)
        {
            return objDal.Validate_Email(Email);
        }

        public LAPP_user_membership GetUser_MembershipByEmaiID(string Email)
        {
            return objDal.GetUser_MembershipByEmaiID(Email);
        }
    }
}
