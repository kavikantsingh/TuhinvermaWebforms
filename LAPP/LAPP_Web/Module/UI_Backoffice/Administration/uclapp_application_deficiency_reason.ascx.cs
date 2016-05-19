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

    public partial class uclapp_application_deficiency_reason : System.Web.UI.UserControl
    {
        #region Class Members
        LAPP_exception_log objExLog = new LAPP_exception_log();
        LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
        LAPP_audit_info objAuditInfo = new LAPP_audit_info();
        LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();

        lapp_application_deficiency_reason objlapp_application_deficiency_reason = new lapp_application_deficiency_reason();
        lapp_application_deficiency_reasonBAL objlapp_application_deficiency_reasonBAL = new lapp_application_deficiency_reasonBAL();
        Lapp_application_fee objLapp_application_fee = new Lapp_application_fee();
        Lapp_application_feeBAL objLapp_application_feeBAL = new Lapp_application_feeBAL();
        #endregion

        #region Class Properties
        public int Deficiency_ID
        {
            get
            {
                if (ViewState["Deficiency_ID"] != null)
                {
                    return Convert.ToInt32(ViewState["Deficiency_ID"]);
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                ViewState["Deficiency_ID"] = value;
            }
        }
        public int EditIndex
        {
            get
            {
                if (ViewState["EditIndex"] != null)
                {
                    return Convert.ToInt32(ViewState["EditIndex"]);

                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["EditIndex"] = value;
            }
        }
        #endregion

        #region Page Event Handlers
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridDocumentType();
                BindDDLDocType();
            }
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            ClearControl();
            ltrDocumentType.Text = string.Empty;
            divAddAppReqPanel.Visible = true;
            btnAddNew.Visible = false;
            this.EditIndex = -1;
            BindGridDocumentType();
        }

        protected void btnDocumentsUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                if (ValidateControlEdit())
                {
                    objlapp_application_deficiency_reason = FetchValueForDefTypeEdit();
                    if (objlapp_application_deficiency_reason != null && this.Deficiency_ID > 0)
                    {
                        objlapp_application_deficiency_reasonBAL.Update_lapp_application_deficiency_reason(objlapp_application_deficiency_reason);
                        ltrDocumentType.Text = MessageBox.BuildValidationMessage("Update Successfully", 1);
                    }
                    this.EditIndex = -1;
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
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs btnDocumentsUpdate_Click";
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
            this.EditIndex = -1;
            BindGridDocumentType();
        }

        protected void imgbtnEdit_Click(object sender, ImageClickEventArgs e)
        {
            ltrDocumentType.Text = string.Empty;
            divAddAppReqPanel.Visible = false;
            btnAddNew.Visible = true;
            this.EditIndex = -1;
            try
            {
                ImageButton btnEdit = (ImageButton)sender;
                if (btnEdit != null)
                {
                    int ID = Convert.ToInt32(btnEdit.CommandArgument);
                    this.Deficiency_ID = ID;
                    this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                    BindGridDocumentType();
                    DropDownList ddltypeEdit = gvDeficiency.Rows[this.EditIndex].FindControl("ddltypeEdit") as DropDownList;
                    BindDDLDocTypeEdit(ddltypeEdit);
                    FillControlDocType(gvDeficiency, this.EditIndex);
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs imgbtnEdit_Click";
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
                    this.Deficiency_ID = ID;
                    objlapp_application_deficiency_reason = objlapp_application_deficiency_reasonBAL.Get_lapp_application_deficiency_reason_by_Deficiency_ID(ID);
                    if (objlapp_application_deficiency_reason != null)
                    {
                        objlapp_application_deficiency_reason.Is_Deleted = true;
                        objlapp_application_deficiency_reasonBAL.Update_lapp_application_deficiency_reason(objlapp_application_deficiency_reason);
                        ltrDocumentType.Text = MessageBox.BuildValidationMessage("Deleted Successfully", 1);
                    }
                }
                BindGridDocumentType();
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs imgBtnDelete_Click";
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
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs btnSaveDocument_Click";
                objExLog.Message = ex.Message;
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
            this.EditIndex = -1;
        }

        protected void gvDeficiency_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ltrDocumentType.Text = string.Empty;
            gvDeficiency.PageIndex = e.NewPageIndex;
            this.BindGridDocumentType();
        }
        #endregion

        #region Public Methods
        public void BindDDLDocType()
        {
            try
            {
                List<Lapp_application_fee> lstLapp_application_fee = new List<Lapp_application_fee>();
                lstLapp_application_fee = objLapp_application_feeBAL.Get_All_Lapp_application_fee();
                if (lstLapp_application_fee != null)
                {
                    ddlApplicationtype.DataSource = lstLapp_application_fee;
                    ddlApplicationtype.DataTextField = "Name";
                    ddlApplicationtype.DataValueField = "Application_ID";
                    ddlApplicationtype.DataBind();
                }
                ddlApplicationtype.Items.Insert(0, new ListItem("Select", "-1"));
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs BindDDLDocType";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);

            }
        }
        public void BindDDLDocTypeSearch()
        {
            try
            {
                List<Lapp_application_fee> lstLapp_application_fee = new List<Lapp_application_fee>();
                lstLapp_application_fee = objLapp_application_feeBAL.Get_All_Lapp_application_fee();
                if (lstLapp_application_fee != null)
                {
                    ddlApplicationTySearch.DataSource = lstLapp_application_fee;
                    ddlApplicationTySearch.DataTextField = "Name";
                    ddlApplicationTySearch.DataValueField = "Application_ID";
                    ddlApplicationTySearch.DataBind();
                }
                ddlApplicationTySearch.Items.Insert(0, new ListItem("Select", "-1"));
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs BindDDLDocTypeSearch";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);

            }
        }
        public void BindDDLDocTypeEdit(DropDownList ddltypeEdit)
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
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs BindDDLDocTypeEdit";
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
                string Query = "SELECT *,f.Name FROM lapp_application_deficiency_reason dr JOIN lapp_application_fee f ON dr.Application_Type_ID=f.Application_ID WHERE dr.Is_Deleted=0 ORDER BY dr.Application_Type_ID,dr.DTS DESC";
                List<lapp_application_deficiency_reason> lstlapp_application_deficiency_reason = new List<lapp_application_deficiency_reason>();
                lstlapp_application_deficiency_reason = objlapp_application_deficiency_reasonBAL.Get_lapp_application_deficiency_reason_By_Query_List(Query);
                if (lstlapp_application_deficiency_reason != null)
                {

                    gvDeficiency.DataSource = lstlapp_application_deficiency_reason;
                    gvDeficiency.EditIndex = this.EditIndex;
                    gvDeficiency.DataBind();

                    if (this.EditIndex >= 0)
                    {
                        gvDeficiency.Rows[this.EditIndex].CssClass = "RowInEditMode";
                        gvDeficiency.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "4");
                        gvDeficiency.Rows[this.EditIndex].Cells[1].Visible = false;
                        gvDeficiency.Rows[this.EditIndex].Cells[2].Visible = false;
                        gvDeficiency.Rows[this.EditIndex].Cells[3].Visible = false;

                    }
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs BindGridDocumentType";
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
                DropDownList ddltypeEdit = gvDeficiency.Rows[this.EditIndex].FindControl("ddltypeEdit") as DropDownList;
                TextBox txtNameEdit = gvDeficiency.Rows[this.EditIndex].FindControl("txtNameEdit") as TextBox;
                TextBox txtDescEdit = gvDeficiency.Rows[this.EditIndex].FindControl("txtDescEdit") as TextBox;
                CheckBox chkIsActiveEdit = gvDeficiency.Rows[this.EditIndex].FindControl("chkIsActiveEdit") as CheckBox;
                objlapp_application_deficiency_reason = objlapp_application_deficiency_reasonBAL.Get_lapp_application_deficiency_reason_by_Deficiency_ID(this.Deficiency_ID);
                if (objlapp_application_deficiency_reason != null)
                {
                    ddltypeEdit.SelectedValue = objlapp_application_deficiency_reason.Application_Type_ID.ToString();
                    txtNameEdit.Text = objlapp_application_deficiency_reason.Deficiency_Name;
                    txtDescEdit.Text = objlapp_application_deficiency_reason.Description;
                    chkIsActiveEdit.Checked = objlapp_application_deficiency_reason.Is_Active;

                }
            }
            catch (Exception ex)
            {

                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs FillControlDocType";
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
            try
            {
                objlapp_application_deficiency_reason = FetchValueForDeficincy();
                if (objlapp_application_deficiency_reason != null)
                {
                    objlapp_application_deficiency_reasonBAL.Save_lapp_application_deficiency_reason(objlapp_application_deficiency_reason);
                    ltrDocumentType.Text = MessageBox.BuildValidationMessage("Saved Successfully", 1);
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs Save";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
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
                validateMsg += ValidationHelper.IsRequiredDDL(ddlApplicationtype.SelectedValue, "<li>Please Select Application Type.</li>");
                validateMsg += ValidationHelper.IsRequired(txtName.Text, "<li>Please enter Deficiency Name.</li>");
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
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs ValidateControlSave";
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
                DropDownList ddltypeEdit = gvDeficiency.Rows[this.EditIndex].FindControl("ddltypeEdit") as DropDownList;
                TextBox txtNameEdit = gvDeficiency.Rows[this.EditIndex].FindControl("txtNameEdit") as TextBox;

                validateMsg += ValidationHelper.IsRequiredDDL(ddltypeEdit.SelectedValue, "<li>Please Select Application Type.</li>");
                validateMsg += ValidationHelper.IsRequired(txtNameEdit.Text, "<li>Please enter Deficiency Name.</li>");

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
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs ValidateControlEdit";
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
            ddlApplicationtype.SelectedValue = "-1";
            txtDesc.Text = string.Empty;
            txtName.Text = string.Empty;
            chkIsActive.Checked = false;
            this.Deficiency_ID = 0;
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
        private lapp_application_deficiency_reason FetchValueForDeficincy()
        {
            try
            {
                objlapp_application_deficiency_reason = new lapp_application_deficiency_reason();

                objlapp_application_deficiency_reason.Application_Type_ID = Convert.ToInt32(ddlApplicationtype.SelectedValue);
                objlapp_application_deficiency_reason.Deficiency_Name = txtName.Text.Trim();
                objlapp_application_deficiency_reason.Description = txtDesc.Text.Trim();
                objlapp_application_deficiency_reason.Is_Active = chkIsActive.Checked;
                objlapp_application_deficiency_reason.Is_Deleted = false;
                objlapp_application_deficiency_reason.Created_On = DateTime.Now;
                objlapp_application_deficiency_reason.Created_By = 0;
                objlapp_application_deficiency_reason.Modified_On = DateTime.Now;
                objlapp_application_deficiency_reason.Modified_By = 0;
                objlapp_application_deficiency_reason.DTS = DateTime.Now;
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs FetchValueForDeficincy";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
            return objlapp_application_deficiency_reason;
        }
        private lapp_application_deficiency_reason FetchValueForDefTypeEdit()
        {
            try
            {
                objlapp_application_deficiency_reason = new lapp_application_deficiency_reason();
                DropDownList ddltypeEdit = gvDeficiency.Rows[this.EditIndex].FindControl("ddltypeEdit") as DropDownList;
                TextBox txtNameEdit = gvDeficiency.Rows[this.EditIndex].FindControl("txtNameEdit") as TextBox;
                TextBox txtDescEdit = gvDeficiency.Rows[this.EditIndex].FindControl("txtDescEdit") as TextBox;
                CheckBox chkIsActiveEdit = gvDeficiency.Rows[this.EditIndex].FindControl("chkIsActiveEdit") as CheckBox;
                objlapp_application_deficiency_reason = objlapp_application_deficiency_reasonBAL.Get_lapp_application_deficiency_reason_by_Deficiency_ID(this.Deficiency_ID);
                if (objlapp_application_deficiency_reason != null && this.Deficiency_ID > 0)
                {
                    objlapp_application_deficiency_reason.Application_Type_ID = Convert.ToInt32(ddltypeEdit.SelectedValue);
                    objlapp_application_deficiency_reason.Deficiency_Name = txtNameEdit.Text.Trim();
                    objlapp_application_deficiency_reason.Description = txtDescEdit.Text.Trim();
                    objlapp_application_deficiency_reason.Is_Deleted = false;
                    objlapp_application_deficiency_reason.Is_Active = chkIsActiveEdit.Checked;
                    objlapp_application_deficiency_reason.Modified_On = DateTime.Now;
                    objlapp_application_deficiency_reason.Modified_By = 0;
                    objlapp_application_deficiency_reason.DTS = DateTime.Now;
                    objlapp_application_deficiency_reason.Created_On = DateTime.Now;
                    objlapp_application_deficiency_reason.Created_By = 0;
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs FetchValueForDefTypeEdit";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
            return objlapp_application_deficiency_reason;
        }
        #endregion

    }
