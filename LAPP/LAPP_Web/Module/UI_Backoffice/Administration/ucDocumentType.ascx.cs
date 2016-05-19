using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using LAPP.ENTITY;
using LAPP.BAL;
using LAPP.ENTITY.Enumerations;
using System.IO;
using LAPP.CONFIG;

 
    public partial class ucDocumentType : System.Web.UI.UserControl
    {
        #region Class Members
        LAPP_exception_log objExLog = new LAPP_exception_log();
        LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
        LAPP_audit_info objAuditInfo = new LAPP_audit_info();
        LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();

        Lapp_Document_Type objLapp_Document_Type = new Lapp_Document_Type();
        Lapp_Document_TypeBAL objLapp_Document_TypeBAL = new Lapp_Document_TypeBAL();
        Lapp_application_fee objLapp_application_fee = new Lapp_application_fee();
        Lapp_application_feeBAL objLapp_application_feeBAL = new Lapp_application_feeBAL();
        Lapp_document_master objLapp_document_master = new Lapp_document_master();
        Lapp_document_masterBAL objLapp_document_masterBAL = new Lapp_document_masterBAL();

        #endregion

        #region Class Properties
        public int document_ID
        {
            get
            {
                if (ViewState["document_ID"] != null)
                {
                    return Convert.ToInt32(ViewState["document_ID"]);
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                ViewState["document_ID"] = value;
            }
        }
        public int EditIndexDocuments
        {
            get
            {
                if (ViewState["EditIndexDocuments"] != null)
                {
                    return Convert.ToInt32(ViewState["EditIndexDocuments"]);

                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["EditIndexDocuments"] = value;
            }
        }
        #endregion

        #region Page Event Handlers
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDDLAppType();
                BindDDLDocType();
                BindGridDocumentType();

            }
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            ClearControl();
            ltrDocumentType.Text = string.Empty;
            divAddAppReqPanel.Visible = true;
            btnAddNew.Visible = false;
            this.EditIndexDocuments = -1;
            BindGridDocumentType();
           
 
        }

        protected void btnDocumentsUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                if (ValidateControlEdit())
                {
                    objLapp_Document_Type = FetchValueForDocTypeEdit();
                    if (objLapp_Document_Type != null && this.document_ID > 0)
                    {
                        objLapp_Document_TypeBAL.Update_Lapp_Document_Type(objLapp_Document_Type);
                        //ltrDocumentType.Text = MessageBox.BuildValidationMessage(ErrorMessageGenral.UpdatedSuccessfuly, 1);
                    }
                    this.EditIndexDocuments = -1;
                    BindGridDocumentType();
                }
                else
                {
                    return;
                }
            }
            catch (Exception ex)
            {

                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucDocumentType.ascx.cs btnDocumentsUpdate_Click";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }

        protected void btnDocumentsCancelUpdate_Click(object sender, EventArgs e)
        {
            ClearControl();
            ltrDocumentType.Text = string.Empty;
            this.EditIndexDocuments = -1;
            BindGridDocumentType();
        }

        protected void imgbtnEdit_Click(object sender, ImageClickEventArgs e)
        {
            ltrDocumentType.Text = string.Empty;
            divAddAppReqPanel.Visible = false;
            btnAddNew.Visible = true;
            this.EditIndexDocuments = -1;
            try
            {
                ImageButton btnEdit = (ImageButton)sender;
                if (btnEdit != null)
                {
                    int ID = Convert.ToInt32(btnEdit.CommandArgument);
                    this.document_ID = ID;
                    this.EditIndexDocuments = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                    BindGridDocumentType();
                    DropDownList ddltypeEdit = gvDocumentType.Rows[this.EditIndexDocuments].FindControl("ddltypeEdit") as DropDownList;
                    BindDDLAppTypeEdit(ddltypeEdit);
                    DropDownList ddlDocTypeEdit = gvDocumentType.Rows[this.EditIndexDocuments].FindControl("ddlDocTypeEdit") as DropDownList;
                    BindDDLDocTypeEdit(ddlDocTypeEdit);
                    FillControlDocType(gvDocumentType, this.EditIndexDocuments);
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucDocumentType.ascx.cs imgbtnEdit_Click";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);

            }
        }

        protected void imgBtnDelete_Click(object sender, ImageClickEventArgs e)
        {
            divAddNewbutton.Visible = true;
            try
            {
                ImageButton btnDelete = (ImageButton)sender;
                if (btnDelete != null)
                {
                    int ID = Convert.ToInt32(btnDelete.CommandArgument);
                    this.document_ID = ID;
                    objLapp_Document_Type = objLapp_Document_TypeBAL.Get_Lapp_Document_Type_By_document_ID(ID);
                    if (objLapp_Document_Type != null)
                    {
                        objLapp_Document_Type.Is_Deleted = true;
                        objLapp_Document_TypeBAL.Update_Lapp_Document_Type(objLapp_Document_Type);
                        //ltrDocumentType.Text = MessageBox.BuildValidationMessage(ErrorMessageGenral.DeletedSuccessfuly, 1);
                    }
                }
                BindGridDocumentType();
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucDocumentType.ascx.cs imgBtnDelete_Click";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);

            }
        }

        protected void btnSaveDocument_Click(object sender, EventArgs e)
        {
            try
            {
                if (ValidateControlSave())
                {
                    divAddAppReqPanel.Visible = false;
                    btnAddNew.Visible = true;
                    Save();
                    BindGridDocumentType();
                    ClearControl();
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucDocumentType.ascx.cs btnSaveDocument_Click";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }

        }

        protected void btnCancelSave_Click(object sender, EventArgs e)
        {
            ClearControl();
            ltrDocumentType.Text = string.Empty;
            BindGridDocumentType();
            divAddAppReqPanel.Visible = false;
            divAddNewbutton.Visible = true;
            btnAddNew.Visible = true;
            this.EditIndexDocuments = -1;
        }

        protected void gvDocumentType_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ltrDocumentType.Text = string.Empty;
            gvDocumentType.PageIndex = e.NewPageIndex;
            this.BindGridDocumentType();
        }
        #endregion

        #region Public Methods
        public void BindDDLAppType()
        {
            try
            {
                ddltype.Items.Clear();
                List<Lapp_application_fee> lstLapp_application_fee = new List<Lapp_application_fee>();
                lstLapp_application_fee = objLapp_application_feeBAL.Get_All_Lapp_application_fee();
                if (lstLapp_application_fee != null)
                {
                    ddltype.DataSource = lstLapp_application_fee;
                    ddltype.DataTextField = "Name";
                    ddltype.DataValueField = "Application_ID";
                    ddltype.DataBind();
                }
                ddltype.Items.Insert(0, new ListItem("Select", "-1"));
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucDocumentType.ascx.cs BindDDLAppType";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);

            }
        }
        public void BindDDLDocType()
        {
            try
            {
                ddlDocType.Items.Clear();
                List<Lapp_document_master> lstLapp_document_master = new List<Lapp_document_master>();
                lstLapp_document_master = objLapp_document_masterBAL.Get_All_Lapp_document_master();
                if (lstLapp_document_master != null)
                {
                    ddlDocType.DataSource = lstLapp_document_master;
                    ddlDocType.DataTextField = "Document_Name";
                    ddlDocType.DataValueField = "Document_ID";
                    ddlDocType.DataBind();
                }

                ddlDocType.Items.Insert(0, new ListItem("Select", "-1"));
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucDocumentType.ascx.cs BindDDLDocType";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);

            }
            
        }
        public void BindDDLDocTypeEdit(DropDownList ddlDocTypeEdit)
        {
            try
            {
                List<Lapp_document_master> lstLapp_document_master = new List<Lapp_document_master>();
                lstLapp_document_master = objLapp_document_masterBAL.Get_All_Lapp_document_master();
                if (lstLapp_document_master != null)
                {
                    ddlDocTypeEdit.DataSource = lstLapp_document_master;
                    ddlDocTypeEdit.DataTextField = "Document_Name";
                    ddlDocTypeEdit.DataValueField = "Document_ID";
                    ddlDocTypeEdit.DataBind();
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucDocumentType.ascx.cs BindDDLDocTypeEdit";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);

            }
        }
        public void BindDDLAppTypeEdit(DropDownList ddltypeEdit)
        {
            try
            {
                List<Lapp_application_fee> lstLapp_application_fee = new List<Lapp_application_fee>();
                lstLapp_application_fee = objLapp_application_feeBAL.Get_All_Lapp_application_fee();
                if (lstLapp_application_fee != null)
                {
                    ddltypeEdit.DataSource = lstLapp_application_fee;
                    ddltypeEdit.DataTextField = "Name";
                    ddltypeEdit.DataValueField = "Application_ID";
                    ddltypeEdit.DataBind();
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucDocumentType.ascx.cs BindDDLAppTypeEdit";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);

            }
        }
        public void BindGridDocumentType()
        {
            try
            {
                string Query = "SELECT *,f.Name FROM lapp_document_type dt JOIN lapp_application_fee f ON dt.Application_Type_ID=f.Application_ID WHERE dt.Is_Deleted=0 ORDER BY dt.Application_Type_ID,dt.DTS DESC";
                List<Lapp_Document_Type> lstLapp_Document_Type = new List<Lapp_Document_Type>();
                lstLapp_Document_Type = objLapp_Document_TypeBAL.Get_Lapp_Document_Type_By_Query_List(Query);
                if (lstLapp_Document_Type != null)
                {

                    gvDocumentType.DataSource = lstLapp_Document_Type;
                    gvDocumentType.EditIndex = this.EditIndexDocuments;
                    gvDocumentType.DataBind();

                    if (this.EditIndexDocuments >= 0)
                    {
                        gvDocumentType.Rows[this.EditIndexDocuments].CssClass = "RowInEditMode";
                        gvDocumentType.Rows[this.EditIndexDocuments].Cells[0].Attributes.Add("colspan", "7");
                        gvDocumentType.Rows[this.EditIndexDocuments].Cells[1].Visible = false;
                        gvDocumentType.Rows[this.EditIndexDocuments].Cells[2].Visible = false;
                        gvDocumentType.Rows[this.EditIndexDocuments].Cells[3].Visible = false;
                        gvDocumentType.Rows[this.EditIndexDocuments].Cells[4].Visible = false;
                        gvDocumentType.Rows[this.EditIndexDocuments].Cells[5].Visible = false;
                        gvDocumentType.Rows[this.EditIndexDocuments].Cells[6].Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucDocumentType.ascx.cs BindGridDocumentType";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);

            }
        }
        public void FillControlDocType(GridView gv, int EditInd)
        {
            try
            {
                DropDownList ddltypeEdit = gv.Rows[this.EditIndexDocuments].FindControl("ddltypeEdit") as DropDownList;
                TextBox txtSizeEdit = gv.Rows[this.EditIndexDocuments].FindControl("txtSizeEdit") as TextBox;
                DropDownList ddlDocTypeEdit = gv.Rows[this.EditIndexDocuments].FindControl("ddlDocTypeEdit") as DropDownList;
                TextBox txtDescEdit = gv.Rows[this.EditIndexDocuments].FindControl("txtDescEdit") as TextBox;
                CheckBox chkApplicantEdit = gv.Rows[this.EditIndexDocuments].FindControl("chkApplicantEdit") as CheckBox;
                CheckBox chkOfficeEdit = gv.Rows[this.EditIndexDocuments].FindControl("chkOfficeEdit") as CheckBox;

                objLapp_Document_Type = objLapp_Document_TypeBAL.Get_Lapp_Document_Type_By_document_ID(this.document_ID);
                if (objLapp_Document_Type != null)
                {
                    ddltypeEdit.SelectedValue = objLapp_Document_Type.Application_Type_ID.ToString();
                    txtSizeEdit.Text = objLapp_Document_Type.Max_Size.ToString();
                    ddlDocTypeEdit.SelectedValue = objLapp_Document_Type.document_ID.ToString();
                    txtDescEdit.Text = objLapp_Document_Type.Description;
                    chkApplicantEdit.Checked = objLapp_Document_Type.Applicant;
                    chkOfficeEdit.Checked = objLapp_Document_Type.Office;
                }
            }
            catch (Exception ex)
            {

                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucDocumentType.ascx.cs FillControlDocType";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }
        public void Save()
        {
            objLapp_Document_Type = FetchValueForDocType();
            if (objLapp_Document_Type != null)
            {
                objLapp_Document_TypeBAL.Save_Lapp_Document_Type(objLapp_Document_Type);
                //ltrDocumentType.Text = MessageBox.BuildValidationMessage(ErrorMessageGenral.SavedSuccessfuly, 1);
            }
        }
        public bool ValidateControlSave()
        {
            ltrDocumentType.Text = "";
            string prefixValidateMsg = "<ul class=\"Validation\">";
            string postfixValidateMsg = "</ul>";
            string validateMsg = "";
            string vmsg = "";
            bool validate = true;
            try
            {

                validateMsg += ValidationHelper.IsRequiredDDL(ddltype.SelectedValue, "<li>Please Select Application Type.</li>");
                validateMsg += ValidationHelper.IsValidInt(txtSize.Text, "<li>Please enter Valid Size.</li>");
                validateMsg += ValidationHelper.IsRequiredDDL(ddlDocType.SelectedValue, "<li>Please Select Document Type.</li>");
                validateMsg += ValidationHelper.IsRequired(txtDesc.Text, "<li>Please enter Description.</li>");
                if (!String.IsNullOrEmpty(validateMsg))
                {
                    vmsg = prefixValidateMsg + validateMsg + postfixValidateMsg;
                    ltrDocumentType.Text = MessageBox.BuildValidationMessage(vmsg, 2);
                    validate = false;
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucDocumentType.ascx.cs ValidateControlSave";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                ltrDocumentType.Text = MessageBox.BuildValidationMessage(ex.Message, 2);
            }
            return validate;
        }
        public bool ValidateControlEdit()
        {
            ltrDocumentType.Text = "";
            string prefixValidateMsg = "<ul class=\"Validation\">";
            string postfixValidateMsg = "</ul>";
            string validateMsg = "";
            string vmsg = "";
            bool validate = true;
            try
            {
                DropDownList ddltypeEdit = gvDocumentType.Rows[this.EditIndexDocuments].FindControl("ddltypeEdit") as DropDownList;
                TextBox txtSizeEdit = gvDocumentType.Rows[this.EditIndexDocuments].FindControl("txtSizeEdit") as TextBox;
                DropDownList ddlDocTypeEdit = gvDocumentType.Rows[this.EditIndexDocuments].FindControl("ddlDocTypeEdit") as DropDownList;
                TextBox txtDescEdit = gvDocumentType.Rows[this.EditIndexDocuments].FindControl("txtDescEdit") as TextBox;

                validateMsg += ValidationHelper.IsRequiredDDL(ddltypeEdit.SelectedValue, "<li>Please Select Application Type.</li>");
                validateMsg += ValidationHelper.IsValidInt(txtSizeEdit.Text, "<li>Please enter Valid Size.</li>");
                validateMsg += ValidationHelper.IsRequiredDDL(ddlDocTypeEdit.Text, "<li>Please Select Document Type.</li>");
                validateMsg += ValidationHelper.IsRequired(txtDescEdit.Text, "<li>Please enter Description.</li>");
                if (!String.IsNullOrEmpty(validateMsg))
                {
                    vmsg = prefixValidateMsg + validateMsg + postfixValidateMsg;
                    ltrDocumentType.Text = MessageBox.BuildValidationMessage(vmsg, 2);
                    validate = false;
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucDocumentType.ascx.cs ValidateControlEdit";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                ltrDocumentType.Text = MessageBox.BuildValidationMessage(ex.Message, 2);
            }
            return validate;
        }
        public void ClearControl()
        {
            ddltype.SelectedValue = "-1";
            txtDesc.Text = string.Empty;
            ddlDocType.SelectedValue = "-1";
            txtSize.Text = string.Empty;
            chkApplicant.Checked = false;
            chkOffice.Checked = false;
        }
        public LAPP_exception_log Fetchlog()
        {
            objExLog.User_Id = UIHelper.UserIDBySession();
            objExLog.Url = string.Empty;
            objExLog.Reference_Type_Id = string.Empty;
            objExLog.Reference_Id = 1;
            objExLog.Thread = ErrorMessage.ErrorOccured();
            objExLog.Date = DateTime.Now;
            objExLog.Level = "Low";
            objExLog.Logger = "errorLogger";
            return objExLog;
        }
        #endregion

        #region Private Methods
        private Lapp_Document_Type FetchValueForDocType()
        {
            try
            {
                objLapp_Document_Type = new Lapp_Document_Type();

                objLapp_Document_Type.document_ID = Convert.ToInt32(ddlDocType.SelectedValue);
                objLapp_Document_Type.Application_Type_ID = Convert.ToInt32(ddltype.SelectedValue);
                objLapp_Document_Type.Max_Size = Convert.ToInt32(txtSize.Text);
                objLapp_Document_Type.Document_Name = ddlDocType.SelectedItem.Text;
                objLapp_Document_Type.Description = txtDesc.Text.Trim();
                objLapp_Document_Type.Applicant = chkApplicant.Checked;
                objLapp_Document_Type.Office = chkOffice.Checked;
                objLapp_Document_Type.Is_Active = true;
                objLapp_Document_Type.Is_Deleted = false;
                objLapp_Document_Type.Created_On = DateTime.Now;
                objLapp_Document_Type.Created_By = UIHelper.UserIDBySession().ToString();
                objLapp_Document_Type.Modified_On = DateTime.Now;
                objLapp_Document_Type.Modified_By = UIHelper.UserIDBySession().ToString();
                objLapp_Document_Type.DTS = DateTime.Now;
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucDocumentType.ascx.cs FetchValueForDocType";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
            return objLapp_Document_Type;
        }
        private Lapp_Document_Type FetchValueForDocTypeEdit()
        {
            try
            {
                objLapp_Document_Type = new Lapp_Document_Type();
                DropDownList ddltypeEdit = gvDocumentType.Rows[this.EditIndexDocuments].FindControl("ddltypeEdit") as DropDownList;
                TextBox txtSizeEdit = gvDocumentType.Rows[this.EditIndexDocuments].FindControl("txtSizeEdit") as TextBox;
                DropDownList ddlDocTypeEdit = gvDocumentType.Rows[this.EditIndexDocuments].FindControl("ddlDocTypeEdit") as DropDownList;
                TextBox txtDescEdit = gvDocumentType.Rows[this.EditIndexDocuments].FindControl("txtDescEdit") as TextBox;
                CheckBox chkApplicantEdit = gvDocumentType.Rows[this.EditIndexDocuments].FindControl("chkApplicantEdit") as CheckBox;
                CheckBox chkOfficeEdit = gvDocumentType.Rows[this.EditIndexDocuments].FindControl("chkOfficeEdit") as CheckBox;
                objLapp_Document_Type = objLapp_Document_TypeBAL.Get_Lapp_Document_Type_By_document_ID(this.document_ID);
                if (objLapp_Document_Type != null && this.document_ID > 0)
                {
                    objLapp_Document_Type.document_ID = Convert.ToInt32(ddlDocTypeEdit.SelectedValue);
                    objLapp_Document_Type.Application_Type_ID = Convert.ToInt32(ddltypeEdit.SelectedValue);
                    objLapp_Document_Type.Max_Size = Convert.ToInt32(txtSizeEdit.Text);
                    objLapp_Document_Type.Document_Name = ddlDocTypeEdit.SelectedItem.Text;
                    objLapp_Document_Type.Description = txtDescEdit.Text.Trim();
                    objLapp_Document_Type.Applicant = chkApplicantEdit.Checked;
                    objLapp_Document_Type.Office = chkOfficeEdit.Checked;
                    objLapp_Document_Type.Modified_On = DateTime.Now;
                    objLapp_Document_Type.Modified_By = UIHelper.UserIDBySession().ToString();
                    objLapp_Document_Type.DTS = DateTime.Now;
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucDocumentType.ascx.cs FetchValueForDocTypeEdit";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
            return objLapp_Document_Type;
        }
        #endregion

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            ltrDocumentType.Text = "";
        }

        protected void btnSearchCancel_Click(object sender, EventArgs e)
        {
            ltrDocumentType.Text = "";
        }

    }
 