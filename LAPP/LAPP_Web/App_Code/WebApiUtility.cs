using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;

/// <summary>
/// Summary description for WebApiUtility
/// </summary>
public class WebApiUtility
{

    public WebApiUtility()
    {

    }

    public static void CallWebAPI<T>(string ApiUrl, object input, out object outputObj, string MethodType = "POST")
    {
        try
        {
            var httpWebRequest = (HttpWebRequest)WebRequest.Create(ApiUrl);
            httpWebRequest.ContentType = "application/json";
            httpWebRequest.Method = MethodType.ToLower();

            if (MethodType == "POST")
            {
                using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
                {
                    string json = new JavaScriptSerializer().Serialize(input);

                    streamWriter.Write(json);
                    streamWriter.Flush();
                    streamWriter.Close();

                    var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
                    using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
                    {
                        outputObj = JsonConvert.DeserializeObject<T>(streamReader.ReadToEnd());
                    }
                }
            }
            else
            {
                var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
                using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
                {
                    outputObj = JsonConvert.DeserializeObject<T>(streamReader.ReadToEnd());
                }
            }
        }
        catch (Exception ex)
        {
            outputObj = JsonConvert.DeserializeObject<T>("{\"Message\":\"" + ex.Message + "\",\"Status\":true,\"StatusCode\":\"00\",\"ResponseReason\":\"Error in Calling\"}");
        }

    }

}

#region Page

public class PageModuleRS : CommonRS
{
    public List<PageModule> PageModule { get; set; }
}

public class PageModule
{
    public int? PageModuleId { get; set; }
    public string PageModuleCode { get; set; }
    public string PageModuleName { get; set; }
    public string PageModuleDesc { get; set; }
    public int? MasterTransactionId { get; set; }
    public bool IsEnabled { get; set; }
    public bool IsReadOnly { get; set; }
    public bool IsActive { get; set; }
    public bool IsDeleted { get; set; }
    public int? CreatedBy { get; set; }
    public DateTime? CreatedOn { get; set; }
    public int? ModifiedBy { get; set; }
    public DateTime? ModifiedOn { get; set; }
}

public class PageModuleTabSubModuleRS : CommonRS
{
    public List<PageModuleTabSubModule> PageModuleTabSubModule { get; set; }
}

public class PageModuleTabSubModule
{
    public int PageModuleTabSubModuleId { get; set; }
    public string PageModuleTabSubModuleCode { get; set; }
    public string PageModuleTabSubModuleName { get; set; }
    public string PageModuleTabSubModuleDesc { get; set; }
    public int MasterTransactionId { get; set; }
    public int PageModuleId { get; set; }
    public bool IsEnabled { get; set; }
    public bool IsReadOnly { get; set; }
    public bool IsActive { get; set; }
    public bool IsDeleted { get; set; }
    public int CreatedBy { get; set; }
    public DateTime CreatedOn { get; set; }
    public int ModifiedBy { get; set; }
    public DateTime ModifiedOn { get; set; }
}

public class PageTabSectionRS : CommonRS
{
    public List<PageTabSection> PageTabSection { get; set; }
}

public class PageTabSection
{
    public int PageTabSectionId { get; set; }
    public string PageTabSectionCode { get; set; }
    public string PageTabSectionName { get; set; }
    public string PageTabSectionDesc { get; set; }
    public int MasterTransactionId { get; set; }
    public int PageModuleId { get; set; }
    public int PageModuleTabSubModuleId { get; set; }
    public bool IsEnabled { get; set; }
    public bool IsReadOnly { get; set; }
    public bool IsActive { get; set; }
    public bool IsDeleted { get; set; }
    public int CreatedBy { get; set; }
    public DateTime CreatedOn { get; set; }
    public int ModifiedBy { get; set; }
    public DateTime ModifiedOn { get; set; }
}

#endregion

#region ProviderLogin

public class ProviderLoginRQ
{
    public string Email { get; set; }
    public string Password { get; set; }
}

public class ProviderLoginRS
{
    public int? UserId { get; set; }
    public int? ProviderId { get; set; }
    public int? ApplicationId { get; set; }
    public int? IndividualId { get; set; }
    public int? IndividualNameId { get; set; }

    public string Message { get; set; }

    public string ApplicationStatus { get; set; }
    public string ResponseReason { get; set; }
    public string StatusCode { get; set; }

    public string Key { get; set; }

    public bool Status { get; set; }
    public bool IsPasswordTemporary { get; set; }
}

#endregion

#region IndividualDocumentRS

public class ProviderDocumentGETRS : CommonRS
{
    public List<ProviderDocumentGET> ProviderDocumentGET { get; set; }
}

public class ProviderDocumentGET
{
    public int? ProviderId { get; set; }
    public int? DocumentId { get; set; }
    public int? ProviderDocumentId { get; set; }

    public string DocumentTypeIdName { get; set; }
    public string DocumentTypeDesc { get; set; }
    public string DocumentName { get; set; }
    public string OtherDocumentTypeName { get; set; }
    public int DocumentTypeId { get; set; }
    public string DocumentPath { get; set; }
}

#endregion

#region IndividualDocumentUpload

public class IndividualDocumentUploadRQ
{
    public List<DocumentToUpload> DocumentUploadList { get; set; }
    public int? IndividualId { get; set; } //ProviderId
    public int? ApplicationId { get; set; }
    public string Email { get; set; }
    public bool SendEmail { get; set; }
    public int? TransactionId { get; set; }
}

public class DocumentToUpload
{
    public int? IndividualDocumentId { get; set; }
    public int? DocumentLkToPageTabSectionId { get; set; }
    public string DocumentLkToPageTabSectionCode { get; set; }
    public string DocumentTypeName { get; set; }
    public string DocumentPath { get; set; }
    public string DocNameWithExtention { get; set; }
    public string DocStrBase64 { get; set; }
    public DateTime? EffectiveDate { get; set; }
    public DateTime? EndDate { get; set; }
    public bool IsDocumentUploadedbyIndividual { get; set; }
    public bool IsDocumentUploadedbyStaff { get; set; }
    public string ReferenceNumber { get; set; }
    public int? DocumentId { get; set; }
    public string DocumentCd { get; set; }
    public int? DocumentTypeId { get; set; }
    public string OtherDocumentTypeName { get; set; }
}

public class IndividualDocumentUploadRS
{
    public List<IndividualDocumentUploadRQ> IndividualDocumentUploadList { get; set; }
    public string Message { get; set; }
    public bool Status { get; set; }
    public string StatusCode { get; set; }
    public string ResponseReason { get; set; }
}

#endregion

#region Document

public class DocumentMasterRS : CommonRS
{
    public List<DocumentMasterGET> DocumentMasterGET { get; set; }
}

public class DocumentMasterGET
{
    public int DocumentTypeId { get; set; }
    public string DocumentTypeIdName { get; set; }
    public string DocumentTypeDesc { get; set; }
    public int Max_size { get; set; }
}

public class ProviderDocumentRS : CommonRS
{
    public ProviderDocument ProviderDocument { get; set; }
}

public class ProviderDocument
{
    public int? ProviderDocumentId { get; set; }
    public int? ProviderId { get; set; }
    public int? ApplicationId { get; set; }
    public int? DocumentId { get; set; }
    public string DocumentCd { get; set; }
    public int? DocumentTypeId { get; set; }
    public string DocumentTypeIdName { get; set; }
    public int? DocumentLkToPageTabSectionId { get; set; }
    public string DocumentLkToPageTabSectionCode { get; set; }
    public string DocumentName { get; set; }
    public string OtherDocumentTypeName { get; set; }
    public string DocumentPath { get; set; }
    public DateTime? EffectiveDate { get; set; }
    public DateTime? EndDate { get; set; }
    public bool IsDocumentUploadedbyProvider { get; set; }
    public bool IsDocumentUploadedbyStaff { get; set; }
    public string ReferenceNumber { get; set; }
    public bool IsActive { get; set; }
    public bool IsDeleted { get; set; }

    public int? CreatedBy { get; set; }
    public DateTime? CreatedOn { get; set; }
    public int? ModifiedBy { get; set; }
    public DateTime? ModifiedOn { get; set; }
    public string ProviderDocumentGuid { get; set; }

    public string Base64Str { get; set; }
    public string Extension { get; set; }
}



#endregion

#region Common

public class CommonRS
{
    public string Message { get; set; }
    public bool Status { get; set; }
    public string StatusCode { get; set; }
    public string ResponseReason { get; set; }
}

public class Item
{
    public string Id { get; set; }
    public string Text { get; set; }
}

#endregion

#region BackOfficeLogin

public class BackOfficeLoginRQ
{
    public string Email { get; set; }
    public string Password { get; set; }
    public string LastName { get; set; }
    public string AccessCode { get; set; }
    public string LicenseNumber { get; set; }
    public string AppDomain { get; set; }
    public bool LoginWithoutEmail { get; set; }
}

public class BackOfficeLoginRS : CommonRS
{
    public string Key { get; set; }
    public int? UserID { get; set; }
    public int? IndividualID { get; set; }
    public UserInfo UserInfo { get; set; }
}

public class UserInfo
{
    public int? IndividualId { get; set; }
    public int? UserID { get; set; }
    public int? UserTypeID { get; set; }

    public string UserName { get; set; }
    public string UserTypeName { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Email { get; set; }

    public bool TemporaryPassword { get; set; }
}

#endregion

