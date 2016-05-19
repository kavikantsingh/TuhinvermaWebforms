using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LAPP.ENTITY;
using LAPP.BAL;

/// <summary>
/// Summary description for PermissionHandler
/// </summary>
public class PermissionHandler
{
    public PermissionHandler()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static bool UserHasPermission(string Action, string MenuName, System.Web.UI.Page Page)
    {
        return true;
        bool HasPermission = false;
        bool isFirmOrMember = false;
        //LAPP_role_menu_master_lk objLk = new LAPP_role_menu_master_lk();
        //LAPP_role_menu_master_lkBAL objLkBAL = new LAPP_role_menu_master_lkBAL();
        //LAPP_menu_master_BAL objMenuBal = new LAPP_menu_master_BAL();
        //LAPP_menu_master objMenuMaster = new LAPP_menu_master();

        LAPP_role_menu_master_lk objLk = new LAPP_role_menu_master_lk();
        List<LAPP_role_menu_master_lk> lstLk = new List<LAPP_role_menu_master_lk>();
        LAPP_role_menu_master_lkBAL objLkBAL = new LAPP_role_menu_master_lkBAL();
        LAPP_menu_master objMenu = new LAPP_menu_master();
        LAPP_menu_master_BAL objMenuBAL = new LAPP_menu_master_BAL();
        List<LAPP_menu_master> lstMenu = new List<LAPP_menu_master>();
        if (HttpContext.Current.Session["lstMenu"] != null && HttpContext.Current.Session["lstLk"] != null)
        {
            lstLk = (List<LAPP_role_menu_master_lk>)HttpContext.Current.Session["lstLk"];
            lstMenu = (List<LAPP_menu_master>)HttpContext.Current.Session["lstMenu"];
            if (lstMenu != null && lstMenu.Count > 0 && lstLk != null && lstLk.Count > 0)
            {
                objMenu = lstMenu.Find(x => x.LAPP_Menu_Name.ToLower().Contains(MenuName.ToLower()));

                //objMenu = lstMenu[0];// objMenuBAL.Get_LAPP_menu_master_by_url(pageName);
                if (objMenu != null)
                {
                    int menuId = objMenu.LAPP_Menu_Master_Id;
                    objLk = lstLk.Find(x => x.LAPP_Menu_Master_Id == menuId);// objLk = objLkBAL.Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(menuId, UIHelper.RoleIdBySession());
                    if (objLk != null)
                    {
                        if (objLk.F)
                        {
                            HasPermission = true;
                        }
                        else if (Action.ToUpper() == "C" && objLk.C)
                        {
                            HasPermission = true;
                        }
                        else if (Action.ToUpper() == "R" && objLk.R)
                        {
                            HasPermission = true;
                        }
                        else if (Action.ToUpper() == "U" && objLk.U)
                        {
                            HasPermission = true;
                        }
                        else if (Action.ToUpper() == "D" && objLk.D)
                        {
                            HasPermission = true;
                        }
                        else
                        {
                            HasPermission = false;
                        }
                    }


                }
            }
        }


        //objMenuMaster = objMenuBal.Get_LAPP_menu_master_by_menu_name(MenuName);
        //if (objMenuMaster != null)
        //{

        //    int menuId = objMenuMaster.LAPP_Menu_Master_Id;
        //    objLk = objLkBAL.Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(menuId, UIHelper.RoleIdBySession());
        //    if (objLk != null)
        //    {
        //        if (objLk.F)
        //        {
        //            HasPermission = true;
        //        }
        //        else if (Action.ToUpper() == "C" && objLk.C)
        //        {
        //            HasPermission = true;
        //        }
        //        else if (Action.ToUpper() == "R" && objLk.R)
        //        {
        //            HasPermission = true;
        //        }
        //        else if (Action.ToUpper() == "U" && objLk.U)
        //        {
        //            HasPermission = true;
        //        }
        //        else if (Action.ToUpper() == "D" && objLk.D)
        //        {
        //            HasPermission = true;
        //        }
        //        else
        //        {
        //            HasPermission = false;
        //        }
        //    }

        //}
        if (!HasPermission)
        {

            if (MenuName.ToLower() == "members info" || MenuName.ToLower() == "firm info")
            {
                MessageBox.RunJsInUpdatePanel_WithMessage(Page, "javascript:disableTabs();", "Sorry you do not have permission to perform this action.", 2);
            }
            else
            {
                MessageBox.Show(Page, "Sorry you do not have permission to perform this action.", 2);
            }
        }
        return HasPermission;
    }
    public static void LoginRedirection(string backUrl = "Dashboard.aspx")
    {
        List<LAPP_role_menu_master_lk> lstLk = new List<LAPP_role_menu_master_lk>();
        LAPP_role_menu_master_lkBAL objLkBAL = new LAPP_role_menu_master_lkBAL();
        List<LAPP_menu_master> lstMenu = new List<LAPP_menu_master>();
        LAPP_menu_master_BAL objMenuBAL = new LAPP_menu_master_BAL();
        //Load menu
        if (HttpContext.Current.Session["lstMenu"] == null || HttpContext.Current.Session["lstLk"] == null)
        {

            lstMenu = objMenuBAL.Get_All_LAPP_menu_master();
            HttpContext.Current.Session["lstMenu"] = lstMenu;



            lstLk = objLkBAL.Get_LAPP_role_menu_master_lk_By_role_ID(UIHelper.RoleIdBySession());
            HttpContext.Current.Session["lstLk"] = lstLk;
        }
        //end load menu

        string pageName = System.IO.Path.GetFileName(backUrl).ToString();
        LAPP_role_menu_master_lk objLk = new LAPP_role_menu_master_lk();

        LAPP_menu_master objMenu = new LAPP_menu_master();

        if (HttpContext.Current.Session["lstMenu"] != null && HttpContext.Current.Session["lstLk"] != null)
        {
            lstLk = (List<LAPP_role_menu_master_lk>)HttpContext.Current.Session["lstLk"];
            lstMenu = (List<LAPP_menu_master>)HttpContext.Current.Session["lstMenu"];
            if (lstMenu != null && lstMenu.Count > 0 && lstLk != null && lstLk.Count > 0)
            {
                objMenu = lstMenu.Find(x => x.LAPP_Menu_Url.Contains(pageName));// objMenuBAL.Get_LAPP_menu_master_by_url(pageName);
                if (objMenu != null)
                {
                    int menuId = objMenu.LAPP_Menu_Master_Id;
                    objLk = lstLk.Find(x => x.LAPP_Menu_Master_Id == menuId && x.LAPP_Role_Id == UIHelper.RoleIdBySession());// objLkBAL.Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(menuId, UIHelper.RoleIdBySession());
                    if (objLk != null)
                    {
                        if (objLk.F || objLk.C || objLk.D || objLk.R || objLk.U)
                        {
                            HttpContext.Current.Response.Redirect("~/LAPP_UI_Backoffice/UI/Dashboard.aspx", false);
                        }
                        else
                        {
                            LAPP_menu_master_BAL objMenuBal = new LAPP_menu_master_BAL();
                            List<LAPP_menu_master> lstMaster = new List<LAPP_menu_master>();

                            objLk = new LAPP_role_menu_master_lk();
                            objLk = lstLk.Find(x => x.R);// == objMenu.LAPP_Menu_Master_Id && x.LAPP_Role_Id == UIHelper.RoleIdBySession());// objLkBAL.Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(objMenu.LAPP_Menu_Master_Id, UIHelper.RoleIdBySession());
                            if (objLk != null && (objLk.F || objLk.C || objLk.D || objLk.R || objLk.U))
                            {
                                objMenu = new LAPP_menu_master();
                                objMenu = lstMenu.Find(x => x.LAPP_Menu_Master_Id == objLk.LAPP_Menu_Master_Id);
                                if (objMenu != null)
                                {
                                    string url = objMenu.LAPP_Menu_Url.Replace("../", "");
                                    HttpContext.Current.Response.Redirect(url, false);
                                }
                            }
                            else
                            {
                                HttpContext.Current.Session.Clear();
                                HttpContext.Current.Response.Redirect("~/LAPP_UI_Backoffice/Default.aspx?error=not athorized");
                            }

                        }
                    }
                    else
                    {
                        HttpContext.Current.Session.Clear();
                        HttpContext.Current.Response.Redirect("~/LAPP_UI_Backoffice/Default.aspx?error=not athorized");
                    }
                }
                else
                {
                    HttpContext.Current.Session.Clear();
                    HttpContext.Current.Response.Redirect("~/LAPP_UI_Backoffice/Default.aspx?error=not athorized");
                }
            }
            else
            {
                HttpContext.Current.Session.Clear();
                HttpContext.Current.Response.Redirect("~/LAPP_UI_Backoffice/Default.aspx?error=not athorized");
            }
        }
        else
        {
            HttpContext.Current.Session.Clear();
            HttpContext.Current.Response.Redirect("~/LAPP_UI_Backoffice/Default.aspx?error=not athorized");
        }
    }


}