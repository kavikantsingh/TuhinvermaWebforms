using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI.WebControls;
using System.Xml;
using Microsoft.VisualBasic;
using System.Web.UI;
using System.Data.OleDb;
using LAPP.BAL;
using LAPP.ENTITY;

using System.Web.Security;


/// <summary>
/// Summary description for BaseAdminPage
/// </summary>
public class BaseUserPage : System.Web.UI.MasterPage
{
    string backbackUrl = HttpContext.Current.Request.Url.AbsoluteUri;
    public BaseUserPage()
    {

    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);

        if (UIHelper.UserIDBySession() > 0)
        {
            bool HasPermission = true;// false;
            Page page = HttpContext.Current.Handler as Page;
            string str = Request.Url.GetLeftPart(UriPartial.Path);
            string pageName = System.IO.Path.GetFileName(str).ToString();
            if (pageName.Contains("?"))
            {
                int index = pageName.IndexOf("?");
                if (index > 0)
                    pageName = pageName.Substring(0, index);

            }
            if (page != null && !String.IsNullOrEmpty(pageName))
            {
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
                        objMenu = lstMenu.Find(x => x.LAPP_Menu_Url.ToLower().Contains(pageName.ToLower()));

                        //objMenu = lstMenu[0];// objMenuBAL.Get_LAPP_menu_master_by_url(pageName);
                        if (objMenu != null)
                        {
                            int menuId = objMenu.LAPP_Menu_Master_Id;
                            objLk = lstLk.Find(x => x.LAPP_Menu_Master_Id == menuId);
                            //objLk = objLkBAL.Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(menuId, UIHelper.RoleIdBySession());
                            if (objLk != null)
                            {
                                if (objLk.F || objLk.C || objLk.D || objLk.R || objLk.U)
                                {
                                    HasPermission = true;
                                }
                            }
                        }

                    }
                }
            } if (pageName.ToLower().Contains("rchangepassword"))
            {
                HasPermission = true;
            }
            if (!HasPermission)
            {
                PermissionHandler.LoginRedirection();

            }
        }
        else
        {
            HttpContext.Current.Response.Redirect("~/LAPP_UI_Backoffice/Default.aspx?backUrl=" + backbackUrl);
        }
    }
}
public class BasePageReportMaster : System.Web.UI.MasterPage
{
    string backbackUrl = HttpContext.Current.Request.Url.AbsoluteUri;
    public BasePageReportMaster()
    {

    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);

        if (UIHelper.UserIDBySession() > 0)
        {
            //bool HasPermission = false;
            //Page page = HttpContext.Current.Handler as Page;
            //string pageName = System.IO.Path.GetFileName(Request.Url.ToString()).ToString();
            //if (page != null && !String.IsNullOrEmpty(pageName))
            //{
            //    LAPP_role_menu_master_lk objLk = new LAPP_role_menu_master_lk();
            //    LAPP_role_menu_master_lkBAL objLkBAL = new LAPP_role_menu_master_lkBAL();
            //    LAPP_menu_master objMenu = new LAPP_menu_master();
            //    LAPP_menu_master_BAL objMenuBAL = new LAPP_menu_master_BAL();
            //    objMenu = objMenuBAL.Get_LAPP_menu_master_by_url(pageName);
            //    if (objMenu != null)
            //    {
            //        int menuId = objMenu.LAPP_Menu_Master_Id;
            //        objLk = objLkBAL.Get_LAPP_role_menu_master_lk_get_by_master_id_and_role_id(menuId, UIHelper.RoleIdBySession());
            //        if (objLk != null)
            //        {
            //            if (objLk.F || objLk.C || objLk.D || objLk.R || objLk.U)
            //            {
            //                HasPermission = true;
            //            }
            //        }
            //    }
            //}
            //if (!HasPermission)
            //{
            //    HttpContext.Current.Session.Clear();
            //    HttpContext.Current.Response.Redirect("~/Default.aspx?error=not athorized");
            //}
        }
        else
        {
            HttpContext.Current.Response.Redirect("~/LAPP_UI_Backoffice/Default.aspx?backUrl=" + backbackUrl);
        }
    }
}
public class BaseLoggedInPage : System.Web.UI.Page
{
    string backbackUrl = HttpContext.Current.Request.Url.AbsoluteUri;
    public BaseLoggedInPage()
    {

    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);

        if (UIHelper.UserIDBySession() > 0)
        {

            HttpContext.Current.Response.Redirect("~/LAPP_UI_Backoffice/UI/Dashboard.aspx");
        }
        else
        {

        }
    }
}

//public class SessionManager
//{
//   // public const string EncryptionKey = "8004746986ARYANPANDAY@EBSCLUCKNOW";


//}
public class BaseMaintainancePage : System.Web.UI.Page
{

    public BaseMaintainancePage()
    {

    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);

        //if (GNF.IsAppInTestMode())
        //{
        //    HttpContext.Current.Response.Redirect("~/Trucking/Permit/UI/Maintainance.aspx",false);
        //}
        //else
        //{

        //}
    }
}