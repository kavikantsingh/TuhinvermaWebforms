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

    public string docId { get; set; }
    public string docCode { get; set; }

    public string docTypeId { get; set; }
    public string docTypeName { get; set; }

    public bool isSimple { get; set; }

    public static readonly List<string> fileExtension = new List<string> { ".TXT", ".DOC", ".PDF", ".DOCX" };
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (isSimple)
            {
                upSimple.Visible = true;
                upComplex.Visible = false;
            }
            else
            {
                upSimple.Visible = false;
                upComplex.Visible = true;
            }

            GetDocumentTypeList();
            GetAllDocs();

            if (!string.IsNullOrWhiteSpace(docTypeId))
            {
                ddlDocType.SelectedValue = docTypeId;
                ddlDocType.Enabled = false;
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
                if (isSimple)
                {
                    if (lst.Count == 1)
                    {
                        docTypeName = lst.FirstOrDefault().Text;
                        docTypeId = lst.FirstOrDefault().Id;

                        //Fill Label Text
                        lblSimpleDocText.Text = lst.FirstOrDefault().Text;
                    }
                    else
                    {
                        lblSimpleError.Visible = true;
                        lblSimpleError.Text = "Oops! Multiple Document Type Exist";
                        return;
                    }
                }
                else
                {
                    ddlDocType.DataSource = lst;
                    ddlDocType.DataTextField = "Text";
                    ddlDocType.DataValueField = "Id";
                    ddlDocType.DataBind();
                }
            }
        }
    }

    public void GetAllDocs()
    {
        rptDocumentList.DataSource = null;// new List<ProviderDocumentGET>();
        rptDocumentList.DataBind();

        rptSimpleDocumentList.DataSource = null;// new List<ProviderDocumentGET>();
        rptSimpleDocumentList.DataBind();

        string WebAPIUrl = string.Empty;
        WebAPIUrl = "http://96.31.91.68/lappws/api/Provider/ProviderGetProviderDocumentByProviderIdAndDocumentId/" + key + "?ProviderId=" + providerId + "&DocumentId=" + docId + "&ApplicationId=" + applicationId;

        Object obj;
        WebApiUtility.CallWebAPI<ProviderDocumentGETRS>(WebAPIUrl, null, out obj, "GET");
        var res = (ProviderDocumentGETRS)obj;

        if (res.Status)
        {
            if (isSimple)
            {
                rptSimpleDocumentList.DataSource = res.ProviderDocumentGET;
                rptSimpleDocumentList.DataBind();
            }
            else
            {
                rptDocumentList.DataSource = res.ProviderDocumentGET;
                rptDocumentList.DataBind();
            }
        }
    }

    #region Complex

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

            docTypeName = ddlDocType.SelectedItem.Text;
            docTypeId = ddlDocType.SelectedValue;

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
                        CreatedOn = DateTime.Now,
                        DocumentLkToPageTabSectionCode = "",
                        DocumentLkToPageTabSectionId = 0,
                        DocumentPath = "",
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
                        ReferenceNumber = "",

                        ApplicationId = Convert.ToInt32(applicationId),
                        CreatedBy = Convert.ToInt32(userId),
                        ProviderId = Convert.ToInt32(providerId),

                        DocumentCd = docCode,
                        DocumentId = Convert.ToInt32(docId),

                        DocumentTypeId = Convert.ToInt32(docTypeId),
                        DocumentTypeIdName = docTypeName,

                        DocumentName = txtDocumentName.Text.Trim(),

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

    #endregion

    #region Simple

    protected void btnSimpleDocUpload_Click(object sender, EventArgs e)
    {
        if (fuSimpleDocUpload.HasFile)
        {
            string extension = Path.GetExtension(fuSimpleDocUpload.FileName);
            if (fileExtension.Contains(extension.ToUpperInvariant()))
            {
                try
                {
                    byte[] fileData = null;
                    using (var binaryReader = new BinaryReader(fuSimpleDocUpload.PostedFile.InputStream))
                    {
                        fileData = binaryReader.ReadBytes(fuSimpleDocUpload.PostedFile.ContentLength);
                    }
                    string Base64File = Convert.ToBase64String(fileData);

                    string WebAPIUrl = "http://96.31.91.68/lappws/api/Provider/ProviderDocumentSave/" + key;

                    ProviderDocument objUpload = new ProviderDocument()
                    {
                        DocumentLkToPageTabSectionCode = "",
                        DocumentLkToPageTabSectionId = 0,
                        DocumentName = "",
                        DocumentPath = "",
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
                        ReferenceNumber = "",
                        CreatedOn = DateTime.Now,

                        ApplicationId = Convert.ToInt32(applicationId),
                        CreatedBy = Convert.ToInt32(userId),
                        ProviderId = Convert.ToInt32(providerId),

                        DocumentCd = docCode,
                        DocumentId = Convert.ToInt32(docId),

                        DocumentTypeId = Convert.ToInt32(docTypeId),
                        DocumentTypeIdName = docTypeName,

                        Base64Str = Base64File,
                        Extension = extension
                    };

                    Object obj;
                    WebApiUtility.CallWebAPI<ProviderDocumentGETRS>(WebAPIUrl, objUpload, out obj, "POST");
                    var res = (ProviderDocumentGETRS)obj;

                    if (res.Status)
                    {
                        lblSimpleError.Visible = false;
                        lblSimpleSuccess.Visible = true;
                        lblSimpleSuccess.Text = "Document has been uploaded successfully.";

                        GetAllDocs();
                    }
                    else
                    {
                        lblSimpleError.Visible = true;
                        lblSimpleError.Text = "Oops! some error occurred. <br/>" + res.Message;
                    }

                }
                catch (Exception ex)
                {
                    lblSimpleError.Visible = true;
                    lblSimpleError.Text = "Oops! some error occurred. <br/>" + ex.Message;
                }
            }
            else
            {
                lblSimpleError.Visible = true;
                lblSimpleError.Text = "Only .txt/.doc/.docx/.pdf file types allowed.<br/>";
            }
        }
        else
        {
            lblSimpleError.Visible = true;
            lblSimpleError.Text = "Please fill *required fileds.";
            return;
        }
    }

    protected void rptSimpleDocumentList_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete" && e.CommandArgument.ToString() != "")
        {
            string WebAPIUrl = "http://96.31.91.68/lappws/api/Provider/ProviderDocumentDelete/" + key + "?ProviderDocId=" + e.CommandArgument + "&UserId=" + userId + "&ProviderId=" + providerId + "&ApplicationId=" + applicationId;

            Object obj;
            WebApiUtility.CallWebAPI<ProviderDocumentRS>(WebAPIUrl, null, out obj, "POST");
            var res = (ProviderDocumentRS)obj;

            if (res.Status)
            {
                lblSimpleError.Visible = false;
                lblSimpleSuccess.Visible = true;
                lblSimpleSuccess.Text = "Document has been successfully deleted.";

                GetAllDocs();
            }
            else
            {
                lblSimpleError.Visible = true;
                lblSimpleError.Text = "Oops! some error occurred. <br/>" + res.Message;
            }
        }
    }

    #endregion

}