
using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Text;


/// <summary>
/// Summary description for MessageBox
/// </summary>
public class MessageBox
{
    #region Constructor
    public MessageBox()
    {
        //
        // TODO: Add constructor logic here 
        //
    }
    #endregion
    #region Void
    public static void Show(UpdatePanel updatepanel, string message, int type = 1)
    {
         string msg= message.Replace("'", "\\'");
        // ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", "alert('" + message + "')", true);
        ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", "javascript:window.top.MessageShow('" + msg + "','" + type.ToString() + "');", true);
    }
    public static void Show(Page updatepanel, string message, int type = 1)
    {
        string msg= message.Replace("'", "\\'");

        ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", "javascript:window.top.MessageShow('" + msg + "','" + type.ToString() + "');", true);
    }

    public static void Show_Second(UpdatePanel updatepanel, string message, int type = 1)
    {
         string msg= message.Replace("'", "\\'");
        // ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", "alert('" + message + "')", true);
        ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", "javascript:window.top.MessageShow_Second('" + msg + "','" + type.ToString() + "');", true);
    }
    public static void Show_Second(Page updatepanel, string message, int type = 1)
    {
         string msg= message.Replace("'", "\\'");
        ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", "javascript:window.top.MessageShow_Second('" + msg + "','" + type.ToString() + "');", true);
    }

    public static void Show_Third(UpdatePanel updatepanel, string message, int type = 1)
    {
         string msg= message.Replace("'", "\\'");
        // ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", "alert('" + message + "')", true);
        ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", "javascript:window.top.MessageShow_Third('" + msg + "','" + type.ToString() + "');", true);
    }
    public static void Show_Third(Page updatepanel, string message, int type = 1)
    {
         string msg= message.Replace("'", "\\'");
        ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", "javascript:window.top.MessageShow_Third('" + msg + "','" + type.ToString() + "');", true);
    }
    //public static void Show(UpdatePanel updatepanel, string message)
    //{
    //    ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", "javascript:ShowAlertPopup('" + message + "')", true);
    //}

    public static void RunJsInUpdatePanel(UpdatePanel updatepanel, string JsFunctionName)
    {
        ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", JsFunctionName, true);
    }
    public static void RunJsInUpdatePanel(Page Page, string JsFunctionName)
    {
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "MessageBox", JsFunctionName, true);
    }
    public static void RunJsInUpdatePanel_WithMessage(UpdatePanel updatepanel, string JsFunctionName, string message, int type = 1)
    {
         string msg= message.Replace("'", "\\'");
        ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", JsFunctionName + "MessageShow('" + msg + "','" + type.ToString() + "');", true);
        // ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", MessageShow, true);
    }
    public static void RunJsInUpdatePanel_WithMessage(Page Page, string JsFunctionName, string message, int type = 1)
    {
         string msg= message.Replace("'", "\\'");
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "MessageBox", JsFunctionName + "MessageShow('" + msg + "','" + type.ToString() + "');", true);
    }
    //public static void Show(Page page, string message, int type = 1)
    //{
    //    // ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", "alert('" + message + "')", true);
    //    ScriptManager.RegisterStartupScript(page, page.GetType(), "MessageBox", "javascript:window.top.MessageShow('" + message + "','" + type.ToString() + "')", true);
    //}

    public static void alertShow(Page page, string key, string message)
    {
         string msg= message.Replace("'", "\\'");
        ScriptManager.RegisterStartupScript(page, page.GetType(), key, "alert('" + msg + "')", true);

    }
    public static void alertShow(Page page, string key, string message, string url)
    {
         string msg= message.Replace("'", "\\'");
        ScriptManager.RegisterStartupScript(page, page.GetType(), key, "alert('" + msg + "',window.location.href='" + url + "')", true);

    }

    #endregion

    public static string ExceptBlanks(string str)
    {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.Length; i++)
        {
            char c = str[i];
            switch (c)
            {
                case '\r':
                case '\n':
                case '\t':
                case ' ':

                    continue;
                default:
                    sb.Append(c);

                    break;
            }
        }
        return sb.ToString();
    }

    public static string ErrorDiv(string str)
    {
        string strError = "<div class=\"alert_text\" id=\"alert_text\">";

        strError += str;
        strError += "<div onclick='javascrpt:slideUp(this);' id=\"closeExError\" class=\"closeExError\"><span>X</span></div></div>";
        strError += "<script type=\"text/javascript\">function slideUp() { var div = document.getElementById(\"exError\"); div.innerHTML =''; }</script>";

        return strError;
    }
    public static string BuildValidationMessage(string str, int MessageType = 1)
    {
        string DivOk = "  <div id=\"DivAlertMessage\" class='alertMessageCustom' onclick=\"RemoveElement(this);\" style=\"margin: 10px auto;    text-align: left;    width: 80%;\"><div class=\"confirmbox\"><span class=\"ok\"></span>" + str + "</div></div>";
        string DivError = "   <div id=\"DivAlertMessage\" class='alertMessageCustom'  onclick=\"RemoveElement(this);\" style=\"margin: 10px auto;    text-align: left;    width: 80%;\"><div class=\"errorbox\"><span class=\"notok\"></span><ul>" + str + "</ul></div></div>";
        if (MessageType == 1)
        {
            return DivOk;
        }
        else
        {
            return DivError;
        }
    }

}

public class Messages
{
    public static string SaveSuccess()
    {
        return "Save Successfully";
    }
    public static string UpdateSuccess()
    {
        return "Updated Successfully";
    }
    public static string DeleteSuccess()
    {
        return "Deleted Successfully";
    }
}