using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LAPP.ENTITY;

/// <summary>
/// Summary description for BrowserInfo
/// </summary>
public class BrowserInfo
{
    public BrowserInfo()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static LAPP_audit_info GetobjAuditInfo()
    {
        LAPP_audit_info objAuditInfo = new LAPP_audit_info();
        HttpBrowserCapabilities obj = HttpContext.Current.Request.Browser;
        objAuditInfo.Browser_Type = obj != null ? obj.Browser : string.Empty;
        objAuditInfo.Host_Address = HttpContext.Current.Request.Url.Host;
        objAuditInfo.Is_ActiveX_Control_Enabled = obj.ActiveXControls;
        objAuditInfo.Is_Cookie_Enabled = obj.Cookies;
        objAuditInfo.Is_Crawler = obj.Crawler;
        objAuditInfo.Is_Javascript_Enabled = obj.JavaScript;
        objAuditInfo.Original_Url = HttpContext.Current.Request.Url.AbsoluteUri;
        objAuditInfo.Page_Name = GetCurrentPageName();
        objAuditInfo.Plateform = System.Environment.OSVersion.VersionString;
        objAuditInfo.Refferal_Url = HttpContext.Current.Request.RawUrl;
        objAuditInfo.Session_Id = "";
        objAuditInfo.Time = DateTime.Now;
        objAuditInfo.Visit_Count = 10;
        return objAuditInfo;
    }

    public static string GetCurrentPageName()
    {
        string sPath = string.Empty;//HttpContext.Current.Request.Url.AbsolutePath;
        string[] strarry = sPath.Split('/');
        int lengh = strarry.Length;
        string sRet = strarry[lengh - 1];
        return sRet;
    }
    public static bool IsBrowserTypeFireFox()
    {
        HttpBrowserCapabilities obj = HttpContext.Current.Request.Browser;
        if (obj != null && obj.Browser.ToLower().Contains("firefox"))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public static bool IsBrowserTypeChrome()
    {
        HttpBrowserCapabilities obj = HttpContext.Current.Request.Browser;
        if (obj != null && obj.Browser.ToLower().Contains("chrome"))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}