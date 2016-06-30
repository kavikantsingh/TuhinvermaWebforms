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
            BindDeficiencyTemplate();
                BindDDLMasterTransaction();
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
                    DropDownList ddltypeEdit = gvDeficiency.Rows[this.EditIndex].FindControl("ddlMasterTransaction1Edit") as DropDownList;
                    DropDownList ddldeftempEdit = gvDeficiency.Rows[this.EditIndex].FindControl("ddldeftempEdit") as DropDownList;
                    BindDDLDocTypeEdit(ddltypeEdit);
                    BindDDLDefTempEdit(ddldeftempEdit);
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

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        try
        {
            BindGridDocumentType(true);
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs btnSearch_Click";
            objExLog.Message = ex.Message;
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        try
        {
            BindGridDocumentType();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs btnCancel_Click";
            objExLog.Message = ex.Message;
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

    }
    protected void btnShowAll_Click(object sender, EventArgs e)
    {
        try
        {
            BindGridDocumentType();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs btnShowAll_Click";
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
        public void BindDeficiencyTemplate()
        {
            try
            {
                List<LAPP_DeficiencyTemplate> lstLapp_application_fee = new List<LAPP_DeficiencyTemplate>();
                lstLapp_application_fee = objLapp_application_feeBAL.Get_All_LAPP_DeficiencyTemplate();
                if (lstLapp_application_fee != null)
                {
                    ddldeftemp.DataSource = lstLapp_application_fee;
                ddldeftemp.DataTextField = "Deficiency_Template_Name";
                ddldeftemp.DataValueField = "Deficiency_Template_ID";
                ddldeftemp.DataBind();
                }
            ddldeftemp.Items.Insert(0, new ListItem("Select", "-1"));
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
        public void BindDDLMasterTransaction()
        {
            try
            {
                List<LAPP_MasterTransaction> lstLAPP_MasterTransaction = new List<LAPP_MasterTransaction>();
                lstLAPP_MasterTransaction = objLapp_application_feeBAL.Get_All_MasterTransaction();
                if (lstLAPP_MasterTransaction != null)
                {
                ddlMasterTransaction.DataSource = lstLAPP_MasterTransaction;
                ddlMasterTransaction.DataTextField = "MasterTransactionName";
                ddlMasterTransaction.DataValueField = "MasterTransactionId";
                ddlMasterTransaction.DataBind();

                ddlMasterTransaction1.DataSource = lstLAPP_MasterTransaction;
                ddlMasterTransaction1.DataTextField = "MasterTransactionName";
                ddlMasterTransaction1.DataValueField = "MasterTransactionId";
                ddlMasterTransaction1.DataBind();
            }
            ddlMasterTransaction.Items.Insert(0, new ListItem("Select", "-1"));
            ddlMasterTransaction1.Items.Insert(0, new ListItem("Select", "-1"));
        }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs BindDDLMasterTransaction";
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
                List<LAPP_MasterTransaction> lstLAPP_MasterTransaction = new List<LAPP_MasterTransaction>();
                lstLAPP_MasterTransaction = objLapp_application_feeBAL.Get_All_MasterTransaction();
                if (lstLAPP_MasterTransaction != null)
                {
                    ddltypeEdit.DataSource = lstLAPP_MasterTransaction;
                    ddltypeEdit.DataTextField = "MasterTransactionName";
                    ddltypeEdit.DataValueField = "MasterTransactionId";
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

    public void BindDDLDefTempEdit(DropDownList ddldeftempEdit)
    {
        try
        {
            List<LAPP_DeficiencyTemplate> lstLapp_application_fee = new List<LAPP_DeficiencyTemplate>();
            lstLapp_application_fee = objLapp_application_feeBAL.Get_All_LAPP_DeficiencyTemplate();
            if (lstLapp_application_fee != null)
            {
                ddldeftempEdit.DataSource = lstLapp_application_fee;
                ddldeftempEdit.DataTextField = "Deficiency_Template_Name";
                ddldeftempEdit.DataValueField = "Deficiency_Template_ID";
                ddldeftempEdit.DataBind();
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "uclapp_application_deficiency_reason.ascx.cs BindDDLDefTempEdit";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
    }

    public void BindGridDocumentType(bool IsSearch=false)
        {
            try
            {
                string Filter = "";
                if (IsSearch)
                {
                    if (ddlMasterTransaction.SelectedValue != "-1")
                    {
                    Filter = Filter + " and dr.ApplicationTypeId=" + Convert.ToInt32(ddlMasterTransaction.SelectedValue);
                    }
                    if (txtDefNameSearch.Text != "")
                    {
                    Filter = Filter + " and dr.DeficiencyReasonName Like '%" + txtDefNameSearch.Text + "'";
                    }
                    if (chkIsActiveSearch.Checked)
                    {
                    Filter = Filter + " and dr.IsActive=1";
                    }
                }
                string Query = "SELECT *,f.mastertransactionName FROM deficiencyreason  dr JOIN mastertransaction f ON dr.ApplicationTypeID=f.mastertransactionid WHERE dr.IsDeleted=0 "+Filter+" ORDER BY dr.mastertransactionid,dr.CreatedOn DESC";
                
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
                        gvDeficiency.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "6");
                        gvDeficiency.Rows[this.EditIndex].Cells[1].Visible = false;
                        gvDeficiency.Rows[this.EditIndex].Cells[2].Visible = false;
                        gvDeficiency.Rows[this.EditIndex].Cells[3].Visible = false;
                        gvDeficiency.Rows[this.EditIndex].Cells[4].Visible = false;
                        gvDeficiency.Rows[this.EditIndex].Cells[5].Visible = false;
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
                DropDownList ddltypeEdit = gvDeficiency.Rows[this.EditIndex].FindControl("ddlMasterTransaction1Edit") as DropDownList;
                TextBox txtNameEdit = gvDeficiency.Rows[this.EditIndex].FindControl("txtNameEdit") as TextBox;
                TextBox txtDescEdit = gvDeficiency.Rows[this.EditIndex].FindControl("txtDescEdit") as TextBox;
                CheckBox chkadditionalEdit = gvDeficiency.Rows[this.EditIndex].FindControl("chkadditionalEdit") as CheckBox;
                CheckBox chkIsActiveEdit = gvDeficiency.Rows[this.EditIndex].FindControl("chkIsActive1Edit") as CheckBox;
                DropDownList ddldeftempEdit = gvDeficiency.Rows[this.EditIndex].FindControl("ddldeftempEdit") as DropDownList;
                objlapp_application_deficiency_reason = objlapp_application_deficiency_reasonBAL.Get_lapp_application_deficiency_reason_by_Deficiency_ID(this.Deficiency_ID);
                if (objlapp_application_deficiency_reason != null)
                {
                    ddltypeEdit.SelectedValue = objlapp_application_deficiency_reason.Application_Type_ID.ToString();
                    txtNameEdit.Text = objlapp_application_deficiency_reason.Deficiency_Name;
                    txtDescEdit.Text = objlapp_application_deficiency_reason.Description;
                    chkIsActiveEdit.Checked = objlapp_application_deficiency_reason.Is_Active;
                    chkadditionalEdit.Checked = objlapp_application_deficiency_reason.Additional_Text;
                    ddldeftempEdit.SelectedValue = objlapp_application_deficiency_reason.Deficiency_Template_ID.ToString();

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
                validateMsg += ValidationHelper.IsRequiredDDL(ddlMasterTransaction1.SelectedValue, "<li>Please Select Transaction Type.</li>");
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
                DropDownList ddltypeEdit = gvDeficiency.Rows[this.EditIndex].FindControl("ddlMasterTransaction1Edit") as DropDownList;
                TextBox txtNameEdit = gvDeficiency.Rows[this.EditIndex].FindControl("txtNameEdit") as TextBox;

                validateMsg += ValidationHelper.IsRequiredDDL(ddltypeEdit.SelectedValue, "<li>Please Select Transaction Type.</li>");
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
            ddlMasterTransaction1.SelectedValue = "-1";
            txtDesc.Text = string.Empty;
            txtName.Text = string.Empty;
            chkIsActive1.Checked = false;
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

                objlapp_application_deficiency_reason.Application_Type_ID = Convert.ToInt32(ddlMasterTransaction1.SelectedValue);
                objlapp_application_deficiency_reason.Deficiency_Name = txtName.Text.Trim();
                objlapp_application_deficiency_reason.Description = txtDesc.Text.Trim();
                objlapp_application_deficiency_reason.Is_Active = chkIsActive1.Checked;
                objlapp_application_deficiency_reason.Is_Deleted = false;
                objlapp_application_deficiency_reason.Created_On = DateTime.Now;
                objlapp_application_deficiency_reason.Created_By = 0;
                objlapp_application_deficiency_reason.Modified_On = DateTime.Now;
                objlapp_application_deficiency_reason.Modified_By = 0;
                objlapp_application_deficiency_reason.Additional_Text = chkadditional.Checked;
                objlapp_application_deficiency_reason.Deficiency_Template_ID = Convert.ToInt32(ddldeftemp.SelectedValue);
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
                DropDownList ddltypeEdit = gvDeficiency.Rows[this.EditIndex].FindControl("ddlMasterTransaction1Edit") as DropDownList;
                TextBox txtNameEdit = gvDeficiency.Rows[this.EditIndex].FindControl("txtNameEdit") as TextBox;
                TextBox txtDescEdit = gvDeficiency.Rows[this.EditIndex].FindControl("txtDescEdit") as TextBox;
                CheckBox chkIsActiveEdit = gvDeficiency.Rows[this.EditIndex].FindControl("chkIsActive1Edit") as CheckBox;
            CheckBox chkadditionalEdit = gvDeficiency.Rows[this.EditIndex].FindControl("chkadditionalEdit") as CheckBox;
            DropDownList ddldeftempEdit = gvDeficiency.Rows[this.EditIndex].FindControl("ddldeftempEdit") as DropDownList;
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
                    objlapp_application_deficiency_reason.Additional_Text = chkadditionalEdit.Checked;
                    objlapp_application_deficiency_reason.Created_On = DateTime.Now;
                    objlapp_application_deficiency_reason.Created_By = 0;
                    objlapp_application_deficiency_reason.Deficiency_Template_ID = Convert.ToInt32(ddldeftempEdit.SelectedValue);
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
