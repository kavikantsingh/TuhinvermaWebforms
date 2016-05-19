using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System.Configuration;


/// <summary>
/// Summary description for SessionManager
/// </summary>
public class SessionManager
{

    public SessionManager()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public const string EncryptionKey = "8004746986ARYANPANDAY@EBSCLUCKNOW";
    public void ValidateSession()
    {
        if (HttpContext.Current.Session["LoggedInUserInfo"] == null)
        {
            HttpCookie LoginTicket = HttpContext.Current.Request.Cookies["LoginTicket"];
            if (LoginTicket != null)
            {
                sUserLoginInfo objUserInfo = GetLoggedInUserInfo();
                if (objUserInfo != null)
                {
                    HttpContext.Current.Session["LoggedInUserInfo"] = objUserInfo;
                    LoginTicket.Expires = DateTime.Now.AddHours(1);
                    HttpContext.Current.Response.Cookies.Add(LoginTicket);
                }
            }
            else
            {
                string referelURL = HttpContext.Current.Server.MapPath(System.Configuration.ConfigurationManager.AppSettings["LoginUrl"]) + "?refURL=" + HttpContext.Current.Request.RawUrl;
                HttpContext.Current.Response.Redirect(referelURL, false);
            }
        }

    }
    public void SetCookie(string TicketInfo)
    {
        string EncryptedTicket = Encryption64.EncryptString(TicketInfo, EncryptionKey);
        HttpCookie LoginTicket = new HttpCookie("LoginTicket");
        LoginTicket.Value = EncryptedTicket;
        LoginTicket.Expires = DateTime.Now.AddHours(1);
        HttpContext.Current.Response.Cookies.Add(LoginTicket);
    }

    public HttpCookie GetLoginTicketCookie()
    {
        HttpCookie LoginTicket = HttpContext.Current.Request.Cookies["LoginTicket"];
        if (LoginTicket != null)
        {
            return LoginTicket;
        }
        else
        {
            return null;
        }
    }
    public void RemoverCookie()
    {
        HttpCookie LoginTicket = HttpContext.Current.Request.Cookies["LoginTicket"];
        if (LoginTicket != null)
        {
            LoginTicket.Expires = DateTime.Now.AddDays(-1);
            HttpContext.Current.Response.Cookies.Add(LoginTicket);
            HttpContext.Current.Session["LoggedInUserInfo"] = null;

            HttpCookie CCL = HttpContext.Current.Request.Cookies["CCL"];
            if (CCL != null)
            {
                int Client_Code = 0;
                CCL.Value = Encryption64.EncryptString(Client_Code.ToString(), EncryptionKey);
                CCL.Expires = DateTime.Now.AddDays(-1);
                HttpContext.Current.Response.Cookies.Add(CCL);

            }
        }

    }
    public void RemoverCookie(string CookieName)
    {
        HttpCookie LoginTicket = HttpContext.Current.Request.Cookies[CookieName];
        if (LoginTicket != null)
        {
            LoginTicket.Expires = DateTime.Now.AddYears(-1);
            HttpContext.Current.Response.Cookies.Add(LoginTicket);
        }

    }
    public sUserLoginInfo GetLoggedInUserInfo()
    {
        try
        {
            if (HttpContext.Current.Session["sObjeUserLoginInfo"] != null)
            {
                sUserLoginInfo sObjeUserLoginInfo = (sUserLoginInfo)HttpContext.Current.Session["sObjeUserLoginInfo"];
                return sObjeUserLoginInfo;
            }
            else
            {
                return null;
            }
        }
        catch (Exception ex)
        {
            return null;
        }
        //HttpCookie LoginTicket = GetLoginTicketCookie();
        //if (LoginTicket == null)
        //{
        //    return null;
        //}
        //sUserLoginInfo ObjLoggedInUserInfo;
        //if (LoginTicket != null)
        //{
        //    string DecryptedTicket = Encryption64.DecryptString(LoginTicket.Value, EncryptionKey);
        //    string[] str = DecryptedTicket.Split('-');

        //    ObjLoggedInUserInfo = JsonConvert.DeserializeObject<sUserLoginInfo>(DecryptedTicket);

        //    //ObjLoggedInUserInfo = new sUserLoginInfo();
        //    //ObjLoggedInUserInfo.UserID = Convert.ToInt32(str[0]);
        //    //ObjLoggedInUserInfo.EmailID = str[1];
        //    //ObjLoggedInUserInfo.UserName = str[2];
        //    return ObjLoggedInUserInfo;
        //}
        //else
        //{
        //    return null;
        //}

    }

    public static Guid CreateSession(int UserID)
    {

        sObjSession objSession = new LAPP.ENTITY.Enumerations.sObjSession();
        // HttpCookie LoginTicket = HttpContext.Current.Request.Cookies["SessionTicket"];
        if (HttpContext.Current.Session["objSession"] != null)
        {
            objSession = (sObjSession)HttpContext.Current.Session["objSession"];
            return objSession.SessionID;
        }

        else
        {
            objSession = new sObjSession();
            Guid objGuid = Guid.NewGuid();
            objSession.SessionID = objGuid;
            objSession.UserID = UserID;
            objSession.CreatedOn = DateTime.Now;
            HttpContext.Current.Session["objSession"] = objSession;
        }
        return objSession.SessionID;
    }
    public static void SetSession(string ObjectName, object obj)
    {
        HttpContext.Current.Session[ObjectName] = obj;
    }
    public static T GetSessionObject<T>(string ObjectName)
    {
        //SessionVariableBAL objSessionVariableBAL = new SessionVariableBAL();
        //string Json = string.Empty;

        //if (objSessionVariableBAL.SESSIONVARIABLE_GET_By_SessionID_VariableName(UIHelper.GetCurrentSessionID(), ObjectName) != null)
        //{
        //    Json = objSessionVariableBAL.SESSIONVARIABLE_GET_By_SessionID_VariableName(UIHelper.GetCurrentSessionID(), ObjectName).SessionObjectValue;

        //}
        T obj = (T)HttpContext.Current.Session[ObjectName];
        return obj;

    }
    public static void RemoveSessionObject(string ObjectName)
    {
        HttpContext.Current.Session.Remove(ObjectName);

        //if (objSessionVariableBAL.SESSIONVARIABLE_GET_By_SessionID_VariableName(UIHelper.GetCurrentSessionID(), ObjectName) != null)
        //{
        //    objSessionVariableBAL.SESSIONVARIABLE_GET_By_SessionID_VariableName(UIHelper.GetCurrentSessionID(), ObjectName);
        //}

    }
    public static void DeleteCompleteSessionBy(string ObjectName)
    {
        HttpContext.Current.Session.Remove(ObjectName);
    }
    public static void ClearSession()
    {
        HttpContext.Current.Session.RemoveAll();
    }
    public static void ProcessLogout()
    {
        SessionManager objSessionMgr = new SessionManager();
        sUserLoginInfo objLoginInfo = objSessionMgr.GetLoggedInUserInfo();
        if (objLoginInfo != null)
        {
            ClearSession();
            objSessionMgr.RemoverCookie();
        }
        //SessionManager.ClearSession();
        //HttpContext.Current.Response.Redirect("~/Default.aspx");
        HttpContext.Current.Response.Redirect("~/LAPP_UI_Backoffice/UI/Login.aspx",false);
    }
    public static void SESSION_Cleanup_Old_Value()
    {
    }


}