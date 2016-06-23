using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web.UI.WebControls;

public partial class Module_UI_School_SchoolApplication_ucDocumentUpload : System.Web.UI.UserControl
{

    public string key = UIHelper.GetProviderKeyFromSession();
    public string providerId = UIHelper.ProviderIdFromSession().ToString();
    public string userId = UIHelper.GetProviderUserIdFromSession().ToString();
    public string applicationId = UIHelper.ApplicationIdFromSession().ToString();

    public string docType { get; set; }

    public string docId { get; set; }
    public string docCode { get; set; }

    public static readonly List<string> fileExtension = new List<string> { ".TXT", ".DOC", ".PDF", ".DOCX" };

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetDocumentTypeList();
            GetAllDocs();
            if (!string.IsNullOrWhiteSpace(docType))
            {
                ddlDocType.SelectedValue = docType;
                ddlDocType.Enabled = false;
            }
        }
    }

    protected void btnDocUpload_Click(object sender, EventArgs e)
    {
        string error = "";

        if (txtDocumentName.Text == "" || ddlDocType.SelectedValue == "" || !(fuDocUpload.HasFile))
            error = "Please fill *required fileds.";

        if (error.Length > 0)
        {
            lblError.Visible = true;
            lblError.Text = error;
            return;
        }

        if (fuDocUpload.HasFile)
        {
            string extension = Path.GetExtension(fuDocUpload.FileName);

            if (fileExtension.Contains(extension.ToUpperInvariant()))
            {
                try
                {
                    byte[] fileData = null;
                    using (var binaryReader = new BinaryReader(fuDocUpload.PostedFile.InputStream))
                    {
                        fileData = binaryReader.ReadBytes(fuDocUpload.PostedFile.ContentLength);
                    }
                    string Base64File = Convert.ToBase64String(fileData);

                    string WebAPIUrl = "http://96.31.91.68/lappws/api/Provider/ProviderDocumentSave/" + key;

                    ProviderDocument objUpload = new ProviderDocument()
                    {
                        ApplicationId = Convert.ToInt32(applicationId),
                        CreatedBy = Convert.ToInt32(userId),
                        CreatedOn = DateTime.Now,
                        DocumentCd = docCode,
                        DocumentId = Convert.ToInt32(docId),
                        DocumentLkToPageTabSectionCode = "",
                        DocumentLkToPageTabSectionId = 0,
                        DocumentName = txtDocumentName.Text.Trim(),
                        DocumentPath = "",
                        DocumentTypeId = Convert.ToInt32(ddlDocType.SelectedValue),
                        DocumentTypeIdName = ddlDocType.SelectedItem.Text,
                        EffectiveDate = null,
                        EndDate = null,
                        IsActive = true,
                        IsDeleted = false,
                        IsDocumentUploadedbyProvider = true,
                        IsDocumentUploadedbyStaff = false,
                        ModifiedBy = 0,
                        ModifiedOn = null,
                        OtherDocumentTypeName = "",
                        ProviderDocumentGuid = "",
                        ProviderDocumentId = 0,
                        ProviderId = Convert.ToInt32(providerId),
                        ReferenceNumber = "",
                        Base64Str = Base64File,
                        Extension = extension
                    };

                    Object obj;
                    WebApiUtility.CallWebAPI<ProviderDocumentGETRS>(WebAPIUrl, objUpload, out obj, "POST");
                    var res = (ProviderDocumentGETRS)obj;

                    if (res.Status)
                    {
                        lblError.Visible = false;
                        lblSuccess.Visible = true;
                        lblSuccess.Text = "Document has been uploaded successfully.";
                        txtDocumentName.Text = "";

                        GetAllDocs();
                    }
                    else
                    {
                        lblError.Visible = true;
                        lblError.Text = "Oops! some error occurred. <br/>" + res.Message;
                    }

                }
                catch (Exception ex)
                {
                    lblError.Visible = true;
                    lblError.Text = "Oops! some error occurred. <br/>" + ex.Message;
                }
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Only .txt/.doc/.docx/.pdf file types allowed.<br/>";
            }
        }
    }

    public void GetDocumentTypeList()
    {
        string WebAPIUrl = string.Empty;
        WebAPIUrl = "http://96.31.91.68/lappws/api/Document/DocumentGetDocumentTypeName/" + key + "?DocId=" + docId + "&DocCode=" + docCode;

        Object obj;
        WebApiUtility.CallWebAPI<DocumentMasterRS>(WebAPIUrl, null, out obj, "GET");
        var res = (DocumentMasterRS)obj;

        if (res.Status)
        {
            if (res.DocumentMasterGET != null && res.DocumentMasterGET.Count > 0)
            {
                var lst = res.DocumentMasterGET.Select(o => new Item { Id = o.DocumentTypeId.ToString(), Text = o.DocumentTypeIdName }).ToList();
                ddlDocType.DataSource = lst;
                ddlDocType.DataTextField = "Text";
                ddlDocType.DataValueField = "Id";
                ddlDocType.DataBind();
            }
        }
    }

    public void GetAllDocs()
    {
        rptDocumentList.DataSource = new List<ProviderDocumentGET>();
        rptDocumentList.DataBind();

        string WebAPIUrl = string.Empty;
        WebAPIUrl = "http://96.31.91.68/lappws/api/Provider/ProviderGetProviderDocumentByProviderIdAndDocumentId/" + key + "?ProviderId=" + providerId + "&DocumentId=" + docId + "&ApplicationId=" + applicationId;

        Object obj;
        WebApiUtility.CallWebAPI<ProviderDocumentGETRS>(WebAPIUrl, null, out obj, "GET");
        var res = (ProviderDocumentGETRS)obj;

        if (res.Status)
        {
            rptDocumentList.DataSource = res.ProviderDocumentGET;
            rptDocumentList.DataBind();
        }
    }

    protected void rptDocumentList_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete" && e.CommandArgument.ToString() != "")
        {
            string WebAPIUrl = "http://96.31.91.68/lappws/api/Provider/ProviderDocumentDelete/" + key + "?ProviderDocId=" + e.CommandArgument + "&UserId=" + userId + "&ProviderId=" + providerId + "&ApplicationId=" + applicationId;

            Object obj;
            WebApiUtility.CallWebAPI<ProviderDocumentRS>(WebAPIUrl, null, out obj, "POST");
            var res = (ProviderDocumentRS)obj;

            if (res.Status)
            {
                lblError.Visible = false;
                lblSuccess.Visible = true;
                lblSuccess.Text = "Document has been successfully deleted.";

                GetAllDocs();
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Oops! some error occurred. <br/>" + res.Message;
            }
        }
    }

    #region Extension-Size-Check-Function
    //ToDo
    #endregion

}