using LAPP.BAL;
using LAPP.ENTITY;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_ucNavigation : System.Web.UI.UserControl
{
    #region Class Property

    public int Role_ID
    {
        get
        {
            return UIHelper.RoleIdBySession();
        }
        //set
        //{
        //    ViewState["Role_ID"] = value;
        //}
    }
    #endregion

    #region Page Event Handler
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GenrateMenu();
        }
    }

    #endregion

    #region Private Methods

    private void GenrateMenu()
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("<ul class=\"nav-mainlinks custom-background\">");
        sb.AppendLine();
        if (Session["Menu"] != null)
        {
            sb.Append(Session["Menu"].ToString());
        }
        else
        {
            string str = getLineString();
            sb.Append(str);
            Session["Menu"] = str;
        }

        sb.AppendLine();
        sb.Append("</ul>");
        ltrMenu.Text = sb.ToString();
    }
    private string getLineString()
    {


        LAPP_role_menu_master_lk objLk = new LAPP_role_menu_master_lk();
        LAPP_role_menu_master_lkBAL objLkBAL = new LAPP_role_menu_master_lkBAL();
        LAPP_menu_master_BAL objMenuBal = new LAPP_menu_master_BAL();
        List<LAPP_menu_master> lstMaster = new List<LAPP_menu_master>();
        List<LAPP_role_menu_master_lk> lstLk = new List<LAPP_role_menu_master_lk>();
        LAPP_menu_master_BAL objMenuBAL = new LAPP_menu_master_BAL();
        List<LAPP_menu_master> lstMenu = new List<LAPP_menu_master>();
        //Load menu

        LAPP_user_membership objMembership = new LAPP_user_membership();
        LAPP_user_membershipBAL objBAL = new LAPP_user_membershipBAL();

        objMembership = objBAL.Get_User_Membership_By_User_Id(UIHelper.UserIDBySession());
        if (objMembership != null)
        {
            objBAL.Update_User_Membership(objMembership, UIHelper.UserIDBySession());
        }

        if (HttpContext.Current.Session["lstMenu"] == null || HttpContext.Current.Session["lstLk"] == null)
        {

            lstMenu = objMenuBal.Get_All_LAPP_menu_master();
            HttpContext.Current.Session["lstMenu"] = lstMenu;



            lstLk = objLkBAL.Get_LAPP_role_menu_master_lk_By_role_ID(UIHelper.RoleIdBySession());
            HttpContext.Current.Session["lstLk"] = lstLk;
        }
        //end load menu



        if (HttpContext.Current.Session["lstMenu"] != null && HttpContext.Current.Session["lstLk"] != null)
        {
            lstLk = (List<LAPP_role_menu_master_lk>)HttpContext.Current.Session["lstLk"];
            lstMenu = (List<LAPP_menu_master>)HttpContext.Current.Session["lstMenu"];
            if (lstMenu != null && lstMenu.Count > 0 && lstLk != null && lstLk.Count > 0)
            {
                lstMenu = lstMenu.OrderBy(x => x.LAPP_Menu_Field1).ToList();
                string str = string.Empty;
                foreach (LAPP_menu_master objMenu in lstMenu)
                {
                    if (objMenu.LAPP_Menu_Level == 1)
                    {
                        objLk = null;
                        objLk = lstLk.Where(x => x.LAPP_Menu_Master_Id == objMenu.LAPP_Menu_Master_Id && x.LAPP_Role_Id == Role_ID).ToList()[0];

                        if (objLk != null)
                        {
                            if (objLk.D || objLk.C || objLk.F || objLk.R || objLk.U)
                            {
                                string target = objMenu.LAPP_Menu_Field2.Trim() != "" ? "target='" + objMenu.LAPP_Menu_Field2 + "'" : "";

                                str += " <li class=\"custom-background-dark-hover\" id=\"li" + objMenu.LAPP_Menu_Name.Replace(" ", "") + "\">";
                                str += "<a class=\"\" href=\"" + objMenu.LAPP_Menu_Url.Trim() + "\" " + target + " >";
                                str += objMenu.LAPP_Menu_Name.Trim() + "</a>";
                                List<LAPP_menu_master> lstMenuMaster2 = new List<LAPP_menu_master>();
                                lstMenuMaster2 = lstMenu.Where(x => x.LAPP_Parrent_Id == objMenu.LAPP_Menu_Master_Id).ToList();
                                if (lstMenuMaster2 != null && lstMenuMaster2.Count > 0)
                                {
                                    if (objMenu.LAPP_Menu_Name.ToLower() == "administration")
                                    {
                                        str += "<ul class=\"maxWidth\">";
                                    }
                                    else if (objMenu.LAPP_Menu_Name.ToLower() == "reports")
                                    {
                                        str += "<ul class=\"maxWidth\">";
                                    }
                                    else
                                    {
                                        str += "<ul>";
                                    }
                                    foreach (LAPP_menu_master objMenu2 in lstMenuMaster2)
                                    {
                                        if (objMenu2.LAPP_Menu_Level == 2)
                                        {
                                            objLk = null;
                                            //  objLk = objLkBAL.Get_LAPP_role_menu_master_lk_By_Master_ID(objMenu2.LAPP_Menu_Master_Id);
                                            objLk = lstLk.Where(x => x.LAPP_Menu_Master_Id == objMenu2.LAPP_Menu_Master_Id && x.LAPP_Role_Id == Role_ID).ToList()[0];// objLkBAL.Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(objMenu2.LAPP_Menu_Master_Id, this.Role_ID);
                                            if (objLk != null)
                                            {
                                                if (objLk.D || objLk.C || objLk.F || objLk.R || objLk.U)
                                                {
                                                    string target2 = objMenu2.LAPP_Menu_Field2.Trim() != "" ? "target='" + objMenu2.LAPP_Menu_Field2 + "'" : "";
                                                    str += "<li><a class=\"\" href=\"" + objMenu2.LAPP_Menu_Url.Trim() + "\" " + target2 + ">" + objMenu2.LAPP_Menu_Name.Trim() + "</a>";
                                                    List<LAPP_menu_master> lstMenuMaster3 = new List<LAPP_menu_master>();
                                                    lstMenuMaster3 = lstMenu.Where(x => x.LAPP_Parrent_Id == objMenu2.LAPP_Menu_Master_Id).ToList();
                                                    if (lstMenuMaster3 != null && lstMenuMaster3.Count > 0)
                                                    {
                                                        str += "<ul>";
                                                        foreach (LAPP_menu_master objMenu3 in lstMenuMaster3)
                                                        {
                                                            if (objMenu3.LAPP_Menu_Level == 3)
                                                            {

                                                                objLk = null;
                                                                // objLk = objLkBAL.Get_LAPP_role_menu_master_lk_By_Master_ID(objMenu3.LAPP_Menu_Master_Id);
                                                                objLk = lstLk.Where(x => x.LAPP_Menu_Master_Id == objMenu3.LAPP_Menu_Master_Id && x.LAPP_Role_Id == Role_ID).ToList()[0]; //objLkBAL.Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(objMenu3.LAPP_Menu_Master_Id, this.Role_ID);

                                                                if (objLk != null)
                                                                {
                                                                    if (objLk.D || objLk.C || objLk.F || objLk.R || objLk.U)
                                                                    {
                                                                        try
                                                                        {
                                                                            string target3 = objMenu3.LAPP_Menu_Field2.Trim() != "" ? "target='" + objMenu3.LAPP_Menu_Field2 + "'" : "";
                                                                            str += "<li><a href=\"" + objMenu3.LAPP_Menu_Url.Trim() + "\" " + target3 + ">";
                                                                            str += objMenu3.LAPP_Menu_Name.Trim();
                                                                            str += "</a>";
                                                                            List<LAPP_menu_master> lstMenuMaster4 = new List<LAPP_menu_master>();
                                                                            lstMenuMaster4 = lstMenu.Where(x => x.LAPP_Parrent_Id == objMenu3.LAPP_Menu_Master_Id).ToList();
                                                                            if (lstMenuMaster4 != null && lstMenuMaster4.Count > 0)
                                                                            {
                                                                                str += "<ul>";
                                                                                foreach (LAPP_menu_master objMenu4 in lstMenuMaster4)
                                                                                {
                                                                                    if (objMenu4.LAPP_Menu_Level == 4)
                                                                                    {

                                                                                        objLk = null;
                                                                                        // objLk = objLkBAL.Get_LAPP_role_menu_master_lk_By_Master_ID(objMenu3.LAPP_Menu_Master_Id);
                                                                                        objLk = lstLk.Where(x => x.LAPP_Menu_Master_Id == objMenu4.LAPP_Menu_Master_Id && x.LAPP_Role_Id == Role_ID).ToList()[0]; //objLkBAL.Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(objMenu3.LAPP_Menu_Master_Id, this.Role_ID);

                                                                                        if (objLk != null)
                                                                                        {
                                                                                            if (objLk.D || objLk.C || objLk.F || objLk.R || objLk.U)
                                                                                            {
                                                                                                string target4 = objMenu4.LAPP_Menu_Field2.Trim() != "" ? "target='" + objMenu4.LAPP_Menu_Field2 + "'" : "";
                                                                                                str += "<li><a href=\"" + objMenu4.LAPP_Menu_Url.Trim() + "\" " + target4 + ">";
                                                                                                str += objMenu4.LAPP_Menu_Name.Trim();
                                                                                                str += "</a>";
                                                                                                str += "</li>";
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                                str += "</ul>";
                                                                            }
                                                                            str += "</li>";
                                                                        }
                                                                        catch (Exception ex)
                                                                        {

                                                                        }
                                                                    }
                                                                }


                                                            }
                                                        }
                                                        str += "</ul>";
                                                    }
                                                    str += "</li>";
                                                }
                                            }

                                        }
                                    } str += "</ul>";
                                }
                                str += "</li>";
                            }
                        }
                    }
                }

                return str;
            }
        }
        return "";
    }

    #endregion
}