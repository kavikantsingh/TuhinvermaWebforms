using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using LAPP.BAL;
using LAPP.CORE;
using LAPP.ENTITY;

/// <summary>
/// Summary description for NotificationHelper
/// </summary>
public class NotificationHelper
{
	public NotificationHelper()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    

    #region Other
    public static bool SendEmail_PasswordReset(string Email, string FullName, LAPP_user_membership objIndividualLoginInfo)
    {
        LAPP_page_alert_message objAlert = new LAPP_page_alert_message();
        LAPP_page_alert_messageBAL objAlertBal = new LAPP_page_alert_messageBAL();
        // objAlert = objAlertBal.Get_LAPP_page_alert_message_by_Template_Name("Password Reset");
        objAlert = NotificationDBHelper.PasswordReset();
        if (objAlert != null)
        {

            string message = objAlert.Message.ToString();
            message = message.Replace("#Password#", objIndividualLoginInfo.Password);
            message = message.Replace("#UserID#", Email);
            message = message.Replace("#Date#", DateTime.Now.ToShortDateString());
            message = message.Replace("#FullName#", FullName);
            string ResetLink = GNF.GetPrefixURLApplicationBackOffice() + "UI/ResetPassword.aspx?id=" + Encryption.Base64Encrypt("UserID=" + objIndividualLoginInfo.User_Id + "&Email=" + objIndividualLoginInfo.Email + "&linkType=email");
            message = message.Replace("#ResetLink#", ResetLink);
            return EmailHelper.SendMail(Email, objAlert.Template_Subject, message, true);
        }
        return false;
    }
    

    public static string Get_DocumentType(int ApplicationTypeID)
    {
        string Div = "";
        List<Lapp_Document_Type> lstDocType = new List<Lapp_Document_Type>();
        Lapp_Document_TypeBAL objDocType = new Lapp_Document_TypeBAL();
        lstDocType = objDocType.Get_All_lapp_document_type_By_Application_TypeID(ApplicationTypeID);
        if (lstDocType != null && lstDocType.Count > 0)
        {
            Div += "<ul>";
            lstDocType = lstDocType.Where(x => x.Applicant).ToList();
            foreach (Lapp_Document_Type obj in lstDocType)
            {
                Div += "<li>" + obj.Document_Name + "</li>";

            }
            Div += "</ul>";
        }
        return Div;
    }

     
    
    #endregion

    

   
    private static string GetLoginDetailTemplate()
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("<p style='color: rgb(0, 0, 0); font-size: 14px; line-height: 20.7999992370605px;'><span style='font-size:12px;'>Member login credentials can be find below</span></p>");

        sb.Append("<p style='color: rgb(0, 0, 0); font-size: 14px; line-height: 20.7999992370605px;'><span style='font-size:12px;'>Userid (Email):&nbsp;<strong>#Email#</strong></span></p>");

        sb.Append("<p style='color: rgb(0, 0, 0); font-size: 14px; line-height: 20.7999992370605px;'><span style='font-size:12px;'>Password:&nbsp;<strong>#Password#</strong></span></p>");

        sb.Append("<p style='color: rgb(0, 0, 0); font-size: 14px; line-height: 20.7999992370605px;'>&nbsp;</p>");
        return sb.ToString();
    }
   
}