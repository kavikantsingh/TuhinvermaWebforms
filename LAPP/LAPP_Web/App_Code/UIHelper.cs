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
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using LAPP.BAL;


/// <summary>
/// Summary description for UIHelper
/// </summary>
public class UIHelper
{
    public UIHelper()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    #region Image Helper

    public static string UploadImage(FileUpload fileUploadControl, string saveFilePath, ref string fileName, bool isThumbnailRequired, int thumbWidth, int thumbHeight)
    {
        string message = string.Empty;
        if (fileUploadControl.HasFile)
        {
            try
            {


                if (fileUploadControl.PostedFile.ContentType == "image/jpg" ||

                    fileUploadControl.PostedFile.ContentType == "image/jpeg" ||

                    fileUploadControl.PostedFile.ContentType == "image/png" ||

                    fileUploadControl.PostedFile.ContentType == "image/gif" ||

                    fileUploadControl.PostedFile.ContentType == "image/bmp")
                {

                    if (fileUploadControl.PostedFile.ContentLength < Convert.ToInt32(ConfigurationManager.AppSettings["MaxFileUploadSize"]))
                    {
                        string fileExtension = Path.GetExtension(fileUploadControl.FileName);
                        fileName = Guid.NewGuid().ToString() + fileExtension;
                        fileUploadControl.SaveAs(saveFilePath + fileName);
                        string thumbSourceFileName = fileName;

                        if (isThumbnailRequired)

                            GetThumbNailImage(saveFilePath, thumbSourceFileName, thumbWidth, thumbHeight);
                    }
                    else
                        message = "Upload status: The file has exceeded the maximum file size limit. !";
                }
                else
                    message = "Upload status: Only JPEG, JPG, GIF, BMP and PNG files are accepted !!";
            }
            catch (Exception ex)
            {
                message = "Error: The file could not be uploaded. Try again !!";
            }

        }
        else
        {

            message = "No file selected.";

        }
        return message;
    }
    public static string GetThumbNailImage(string path, string fileName, int width, int height)
    {
        string thumbedImageName = "thumbed_" + fileName;//.Substring(0, fileName.Length - 4) + "_thumbed" + fileName.Substring(fileName.Length - 4, 4);
        //Create a thumb nail image
        System.Drawing.Image actualImage = System.Drawing.Image.FromFile(Path.Combine(path, fileName));
        System.Drawing.Image thumbedImage = actualImage.GetThumbnailImage(width, height, null, IntPtr.Zero);
        thumbedImage.Save(Path.Combine(path, thumbedImageName));
        return thumbedImageName;
    }
    public static string UploadDocument(FileUpload fileUploadControl, string saveFilePath, string fileName)
    {
        string message = string.Empty;
        if (fileUploadControl.HasFile)
        {
            try
            {



                if (fileUploadControl.PostedFile.ContentType == "application/pdf" ||  //for pdf

                    fileUploadControl.PostedFile.ContentType == "application/msword" ||  //for rtf, doc

                    fileUploadControl.PostedFile.ContentType == "application/vnd.openxmlformats-officedocument.wordprocessingml.document" || //for docx

                    fileUploadControl.PostedFile.ContentType == "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" || //for xlsx

                    fileUploadControl.PostedFile.ContentType == "application/vnd.ms-excel" || //for xls

                    fileUploadControl.PostedFile.ContentType == "application/vnd.ms-powerpoint" || //for powerpoint

                    fileUploadControl.PostedFile.ContentType == "application/vnd.openxmlformats-officedocument.presentationml.presentation" || //for pptx

                    fileUploadControl.PostedFile.ContentType == "image/jpg" ||

                    fileUploadControl.PostedFile.ContentType == "image/jpeg" ||

                    fileUploadControl.PostedFile.ContentType == "image/png" ||

                    fileUploadControl.PostedFile.ContentType == "image/gif" ||

                    fileUploadControl.PostedFile.ContentType == "image/bmp")
                {

                    if (fileUploadControl.PostedFile.ContentLength < Convert.ToInt32(ConfigurationManager.AppSettings["MaxFileUploadSize"]))
                    {

                        fileUploadControl.SaveAs(saveFilePath + fileName);
                    }
                    else
                        message = "Upload status: The file has exceeded the maximum file size limit. !";
                }
                else
                    message = "Upload status: Only PDF, DOC, DOCX, XLS, XLSX, PPT, PPTX JPEG, JPG, GIF, BMP,ICO and PNG files are accepted !!";
            }
            catch (Exception ex)
            {
                message = "Error: The file could not be uploaded. Try again !!";
            }
        }
        else
        {
            message = "No file selected.";
        }
        return message;
    }

    #endregion

    public static string GetClientIP()
    {
        return HttpContext.Current.Request.UserHostAddress;
    }

    #region SessionHandler

    public static Int32 GetApplicationId()
    {
        // String Username = string.Empty;
        //SessionManager objSessionManager = new SessionManager();
        //sUserLoginInfo sLoginInfo = objSessionManager.GetLoggedInUserInfo();
        // if (sLoginInfo != null)
        // {
        return 24;
        // }
        // else
        // {
        //    return 0;
        //}
    }

    public static Int32 GetIndividualId()
    {
        // String Username = string.Empty;
        //SessionManager objSessionManager = new SessionManager();
        //sUserLoginInfo sLoginInfo = objSessionManager.GetLoggedInUserInfo();
        // if (sLoginInfo != null)
        // {
        return 1;
        // }
        // else
        // {
        //    return 0;
        //}
    }

    public static Int32 GetProviderId()
    {
        // String Username = string.Empty;
        //SessionManager objSessionManager = new SessionManager();
        //sUserLoginInfo sLoginInfo = objSessionManager.GetLoggedInUserInfo();
        // if (sLoginInfo != null)
        // {
        return 646;
        // }
        // else
        // {
        //    return 0;
        //}
    }

    public static Guid GetCurrentSessionID()
    {
        try
        {

            if (HttpContext.Current.Session["SessionId"] != null)
            {
                return (Guid)HttpContext.Current.Session["SessionId"];

            }
            else
            {
                return SessionManager.CreateSession(UIHelper.UserIDBySession());
            }
        }
        catch (Exception ex)
        {
            return Guid.NewGuid();
        }


        //HttpCookie SessionTicket = HttpContext.Current.Request.Cookies["SessionTicket"];
        //if (SessionTicket != null)
        //{
        //    string strSessionObjecJson = Encryption.Base64Decrypt(SessionTicket.Value);
        //    Session objSession = JsonConvert.DeserializeObject<Session>(strSessionObjecJson);
        //    if (objSession != null)
        //    {
        //        return objSession.SessionID;
        //    }
        //    else
        //    {
        //        Guid objGuid = Guid.NewGuid();
        //        return objGuid;
        //    }
        //}
        //else
        //{
        //    Guid objGuid = Guid.NewGuid();
        //    return objGuid;
        //}


        //SessionManager objSessionManager = new SessionManager();
        //sUserLoginInfo objLoginInfo = objSessionManager.GetLoggedInUserInfo();
        //if (objLoginInfo != null)
        //{
        //    return objLoginInfo.SessionID;
        //}
        //else
        //{
        //    Guid objGuid = Guid.NewGuid();
        //    return objGuid;
        //}

        //Guid objGuid = new Guid("ca761232ed4211cebacd00aa0057b223");
        //return objGuid;
    }
    public static Int32 UserIDBySession()
    {
        String Username = string.Empty;
        SessionManager objSessionManager = new SessionManager();
        sUserLoginInfo sLoginInfo = objSessionManager.GetLoggedInUserInfo();
        if (sLoginInfo != null)
        {
            return sLoginInfo.UserID;
        }
        else
        {
            return 0;
        }
    }
    public static Int32 UserIDBySession(bool Is_Parrent_ID)
    {
        String Username = string.Empty;
        SessionManager objSessionManager = new SessionManager();
        sUserLoginInfo sLoginInfo = objSessionManager.GetLoggedInUserInfo();
        if (sLoginInfo != null)
        {

            return sLoginInfo.UserID;

        }
        else
        {
            return 0;
        }
    }

    public static void ProcessLogout()
    {
        LAPP_user_membershipBAL objUMemberShipBAL = new LAPP_user_membershipBAL();

        LAPP_user_membership objMember = objUMemberShipBAL.Get_User_Membership_By_User_Id(UserIDBySession());
        if (objMember != null)
        {
            HttpContext.Current.Session.Abandon();
            objMember.Last_Lockout_Date = DateTime.Now;
            objUMemberShipBAL.Update_User_Membership(objMember, objMember.User_Id);
            SessionManager.ProcessLogout();
        }
        else
        {
            HttpContext.Current.Session.Abandon();
            SessionManager.ProcessLogout();
        }
    }
    #endregion

    #region Configuration
    public static string GetKey()
    {
        return ConfigurationManager.AppSettings["Key"];
    }
    public static string GetVerifyUrl()
    {
        return ConfigurationManager.AppSettings["url"].ToString();
    }
    public static string GetServerUrlMain()
    {
        return ConfigurationManager.AppSettings["ServerUrlMain"].ToString();
    }
    public static string GetServerUrlPublic()
    {
        return ConfigurationManager.AppSettings["ServerUrlPublic"].ToString();
    }
    public static string GetServerUrlPublicCorporate()
    {
        return ConfigurationManager.AppSettings["ServerUrlPublicCorporate"].ToString();
    }
    #endregion

    #region Public encryption helper

    public static string EncryptString(string Message, string Passphrase)
    {
        byte[] Results;

        System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();
        MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();

        byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(Passphrase));

        TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();

        TDESAlgorithm.Key = TDESKey;

        TDESAlgorithm.Mode = CipherMode.ECB;

        TDESAlgorithm.Padding = PaddingMode.PKCS7;


        byte[] DataToEncrypt = UTF8.GetBytes(Message);
        try
        {
            ICryptoTransform Encryptor = TDESAlgorithm.CreateEncryptor();
            Results = Encryptor.TransformFinalBlock(DataToEncrypt, 0, DataToEncrypt.Length);

        }

        finally
        {
            TDESAlgorithm.Clear();
            HashProvider.Clear();

        }
        return Convert.ToBase64String(Results);

    }
    public static string DecryptString(string Message, string Passphrase)
    {

        byte[] Results;

        System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();
        MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();

        byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(Passphrase));

        TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();

        TDESAlgorithm.Key = TDESKey;

        TDESAlgorithm.Mode = CipherMode.ECB;

        TDESAlgorithm.Padding = PaddingMode.PKCS7;

        byte[] DataToDecrypt = Convert.FromBase64String(Message);

        try
        {
            ICryptoTransform Decryptor = TDESAlgorithm.CreateDecryptor();
            Results = Decryptor.TransformFinalBlock(DataToDecrypt, 0, DataToDecrypt.Length);
        }

        finally
        {
            TDESAlgorithm.Clear();
            HashProvider.Clear();
        }

        return UTF8.GetString(Results);

    }
    public static string generateRendomString(int NumberOfStrings)
    {
        var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        var random = new Random();
        var result = new string(Enumerable.Repeat(chars, NumberOfStrings).Select(s => s[random.Next(s.Length)]).ToArray());
        return result;
    }
    public static string GetUniqueKey(int maxSize)
    {
        char[] chars = new char[62];
        chars =
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".ToCharArray();
        byte[] data = new byte[1];
        RNGCryptoServiceProvider crypto = new RNGCryptoServiceProvider();
        crypto.GetNonZeroBytes(data);
        data = new byte[maxSize];
        crypto.GetNonZeroBytes(data);
        StringBuilder result = new StringBuilder(maxSize);
        foreach (byte b in data)
        {
            result.Append(chars[b % (chars.Length)]);
        }
        return result.ToString();
    }
    public static DateTime DefaultDate()
    {
        return Convert.ToDateTime("10-01-1913").Date;//.GetDateTimeFormats("MM/DD/YYYY");
    }

    #endregion

    #region Include Js Or Css

    public static string AddJs(string Path)
    {
        Control obj = new Control();
        StringBuilder sb = new StringBuilder();
        sb.Append("<script type=\"text/javascript\"");
        sb.Append(" src=\"");
        sb.Append(obj.ResolveUrl(Path));
        sb.Append("\"></script>");
        return sb.ToString();
    }
    public static string AddCss(string Path)
    {
        Control obj = new Control();
        StringBuilder sb = new StringBuilder();
        sb.Append("<link rel=\"stylesheet\" type=\"text/css\"");
        sb.Append(" href=\"");
        sb.Append(obj.ResolveUrl(Path));
        sb.Append("\" />");
        return sb.ToString();
    }

    #endregion
    public static bool IsLoggedIn()
    {

        if (UIHelper.UserIDBySession() > 0)
        {
            SessionManager objSessionManager = new SessionManager();
            // sUserLoginInfo sLoginInfo = SessionManager.GetSessionObject<sUserLoginInfo>("sObjLoginInfo");
            sUserLoginInfo sLoginInfo = objSessionManager.GetLoggedInUserInfo();
            if (sLoginInfo != null)
            {
                return true;
            }
            return false;
        }
        return false;
    }
    public static string UserNameBySession()
    {

        String Username = string.Empty;
        SessionManager objSessionManager = new SessionManager();
        sUserLoginInfo sLoginInfo = objSessionManager.GetLoggedInUserInfo();
        if (sLoginInfo != null)
        {
            return sLoginInfo.UserName;
        }
        else
        {
            return string.Empty;
        }
    }
    public static bool IsChildUser()
    {
        bool status = false;
        LAPP_user objUser = new LAPP_user();
        LAPP_userBAL objUserBal = new LAPP_userBAL();
        objUser = objUserBal.Get_User_Info_By_User_Id(UserIDBySession());
        if (objUser != null)
        {
            status = true;
        }
        return status;

    }
    public static int RoleIdBySession()
    {
        SessionManager objSessionManager = new SessionManager();
        sUserLoginInfo sLoginInfo = objSessionManager.GetLoggedInUserInfo();
        if (sLoginInfo != null)
        {
            return sLoginInfo.RoleId;
        }
        else
        {
            return 0;
        }
    }
    public static string UserEmailBySession()
    {
        String Username = string.Empty;
        SessionManager objSessionManager = new SessionManager();
        sUserLoginInfo sLoginInfo = objSessionManager.GetLoggedInUserInfo();
        if (sLoginInfo != null)
        {
            return sLoginInfo.EmailID;
        }
        else
        {
            return string.Empty;
        }
    }

    public static bool IsAdmin()
    {

        bool status = false;
        LAPP_user objUser = new LAPP_user();
        LAPP_userBAL objUserBal = new LAPP_userBAL();
        objUser = objUserBal.Get_User_Info_By_User_Id(UserIDBySession());
        if (objUser != null)
        {

        }
        return status;
    }


    public static bool IsTest
    {
        get
        {
            return true;
        }
    }





    // --- Created By Ankit --- //
    public static Int32 ProviderIdFromSession()
    {
        String Username = string.Empty;
        SessionManager objS = new SessionManager();
        sSchoolLoginInfo sInfo = objS.GetLoggedInSchoolProviderInfo();
        if (sInfo != null)
        {
            return sInfo.ProviderId;
        }
        else
        {
            return 0;
        }
    }

    public static Int32 ApplicationIdFromSession()
    {
        String Username = string.Empty;
        SessionManager objS = new SessionManager();
        sSchoolLoginInfo sInfo = objS.GetLoggedInSchoolProviderInfo();
        if (sInfo != null)
        {
            return sInfo.ApplicationId;
        }
        else
        {
            return 0;
        }
    }

    public static Int32 GetProviderUserIdFromSession()
    {
        String Username = string.Empty;
        SessionManager objS = new SessionManager();
        sSchoolLoginInfo sInfo = objS.GetLoggedInSchoolProviderInfo();
        if (sInfo != null)
        {
            return sInfo.UserId;
        }
        else
        {
            return 0;
        }
    }

    public static string GetProviderKeyFromSession()
    {
        String Username = string.Empty;
        SessionManager objS = new SessionManager();
        sSchoolLoginInfo sInfo = objS.GetLoggedInSchoolProviderInfo();
        if (sInfo != null)
        {
            return sInfo.Key;
        }
        else
        {
            return "";
        }
    }

    //public static string GetInstructionIdFromSession()
    //{
    //    String Username = string.Empty;
    //    SessionManager objS = new SessionManager();
    //    sSchoolLoginInfo sInfo = objS.GetLoggedInSchoolProviderInfo();
    //    if (sInfo != null)
    //    {
    //        return sInfo.Key;
    //    }
    //    else
    //    {
    //        return "";
    //    }
    //}

    // --- Created By Ankit --- //


}

public class GenericToDataTable
{
    /// <summary>
    /// Default Constructor
    /// </summary>
    private GenericToDataTable()
    { }

    /// <summary>
    ///
    /// </summary>
    /// <typeparam name=”T”>Custome Class </typeparam>
    /// <param name=”lst”>List Of The Custome Class</param>
    /// <returns> Return the class datatbl </returns>
    public static DataTable ConvertTo<T>(IList<T> lst)
    {
        //create DataTable Structure
        DataTable tbl = CreateTable<T>();
        Type entType = typeof(T);
        PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(entType);
        //get the list item and add into the list
        foreach (T item in lst)
        {
            DataRow row = tbl.NewRow();
            foreach (PropertyDescriptor prop in properties)
            {
                row[prop.Name] = prop.GetValue(item);
            }
            tbl.Rows.Add(row);
        }
        return tbl;
    }
    /// <summary>
    ///
    /// </summary>
    /// <typeparam name=”T”>Custome Class</typeparam>
    /// <returns></returns>
    public static DataTable CreateTable<T>()
    {
        //T –> ClassName
        Type entType = typeof(T);
        //set the datatable name as class name
        DataTable tbl = new DataTable(entType.Name);
        //get the property list
        PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(entType);
        foreach (PropertyDescriptor prop in properties)
        {
            //add property as column
            tbl.Columns.Add(prop.Name, prop.PropertyType);
        }
        return tbl;
    }

}
public class Encryption64
{
    static private byte[] key = {

    };
    static private byte[] IV = {
        0x12,
        0x34,
        0x56,
        0x78,
        0x90,
        0xab,
        0xcd,
        0xef

    };
    public static string DecryptString(string stringToDecrypt, string sEncryptionKey)
    {
        byte[] inputByteArray = new byte[stringToDecrypt.Length + 1];
        try
        {
            //key = System.Text.Encoding.UTF8.GetBytes(Strings.Left(sEncryptionKey, 8));
            key = System.Text.Encoding.UTF8.GetBytes(sEncryptionKey.Substring(0, 8));
            DESCryptoServiceProvider des = new DESCryptoServiceProvider();
            inputByteArray = Convert.FromBase64String(stringToDecrypt);
            MemoryStream ms = new MemoryStream();
            CryptoStream cs = new CryptoStream(ms, des.CreateDecryptor(key, IV), CryptoStreamMode.Write);
            cs.Write(inputByteArray, 0, inputByteArray.Length);
            cs.FlushFinalBlock();
            System.Text.Encoding encoding = System.Text.Encoding.UTF8;
            return encoding.GetString(ms.ToArray());



        }
        catch (Exception e)
        {
            return e.Message;
        }
    }
    public static string EncryptString(string stringToEncrypt, string SEncryptionKey)
    {
        try
        {
            //key = System.Text.Encoding.UTF8.GetBytes(Strings.Left(SEncryptionKey, 8));
            key = System.Text.Encoding.UTF8.GetBytes(SEncryptionKey.Substring(0, 8));
            DESCryptoServiceProvider des = new DESCryptoServiceProvider();
            byte[] inputByteArray = Encoding.UTF8.GetBytes(stringToEncrypt);
            MemoryStream ms = new MemoryStream();
            CryptoStream cs = new CryptoStream(ms, des.CreateEncryptor(key, IV), CryptoStreamMode.Write);
            cs.Write(inputByteArray, 0, inputByteArray.Length);
            cs.FlushFinalBlock();
            return Convert.ToBase64String(ms.ToArray());
        }
        catch (Exception e)
        {
            return e.Message;
        }
    }    

}


