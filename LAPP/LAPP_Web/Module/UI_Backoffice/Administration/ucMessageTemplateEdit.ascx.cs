using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucMessageTemplateEdit : System.Web.UI.UserControl
{
    public event EventHandler UCClicks;

    #region Class Members

    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    TemplateEntity _templateEntity = new TemplateEntity();
    TemplateBAL _templateBal = new TemplateBAL();
    ApplicationTypeBAL _applicationTypeBal = new ApplicationTypeBAL();
    LAPP_page_alert_message_hist objPageAlertMsgHist = new LAPP_page_alert_message_hist();
    LAPP_page_alert_message_histBAL objPageAlertMsgHistBAL = new LAPP_page_alert_message_histBAL();

    #endregion

    #region Class Property
    public int page_alert_message_id
    {
        get
        {
            if (ViewState["page_alert_message_id"] != null)
            {
                return Convert.ToInt32(ViewState["page_alert_message_id"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["page_alert_message_id"] = value;
        }
    }

    #endregion

    string MenuName = "Template Message";

    #region Page Event Handler

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //BindDropDowneTemplateType();
            //BindFropDownOfApplyTo();
            BindDropDownTemplateAppliesToType();
        }
    }

    private void BindDropDownTemplateAppliesToType()
    {
        TemplateAppliesToTypeBAL templateAppliesToTypeBal = new TemplateAppliesToTypeBAL();

        try
        {
            TemplateApplyToDropDown.DataSource = templateAppliesToTypeBal.GetAllTemplateAppliesToType();
            TemplateApplyToDropDown.DataTextField = "Name";
            TemplateApplyToDropDown.DataValueField = "TemplateAppliesToTypeId";
            TemplateApplyToDropDown.DataBind();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplateEdit.ascx.cs BindDropDownTemplateAppliesToType";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
            {
                Save();
                if (UCClicks != null) UCClicks(this, e);
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplateEdit.ascx.cs btnSave_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        DivSample.InnerText = txtMessage.Text;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("TemplateMessage.aspx", false);
    }

    #endregion

    #region Public Methods

    public LAPP_exception_log Fetchlog()
    {
        objExLog.User_Id = UIHelper.UserIDBySession();
        objExLog.Url = string.Empty;
        objExLog.Reference_Type_Id = string.Empty;
        objExLog.Reference_Id = 1;
        objExLog.Thread = "error occured";
        objExLog.Date = DateTime.Now;
        objExLog.Level = "Low";
        objExLog.Logger = "errorLogger";
        return objExLog;
    }
    public void BindDDLDocType()
    {
        try
        {
            ApplicationTypeGetResponse applicationTypeGetResponse =
            _applicationTypeBal.GetAllAplicationTypes(UIHelper.GetBackOfficeKeyFromSession());
            if (applicationTypeGetResponse.Status)
            {
                ddlApplicationType.DataSource = applicationTypeGetResponse.ApplicationTypeGetList;
                ddlApplicationType.DataTextField = "Name";
                ddlApplicationType.DataValueField = "ApplicationTypeId";
                ddlApplicationType.DataBind();
            }
            ddlApplicationType.Items.Insert(0, new ListItem("Select", "-1"));
        }

        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplateEdit.ascx.cs BindDDLDocType";
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
            _templateEntity = FetchValueFormPageAlert();
            if (_templateEntity != null)
            {
                if (this.page_alert_message_id > 0)
                {
                    _templateBal.UpdateTemplate(_templateEntity);
                    //objPageAlertMsgHist = FetchPageAlertMsgHistory();
                    //if (objPageAlertMsgHist != null)
                    //{
                    //    objPageAlertMsgHist.Action = "U";
                    //    objPageAlertMsgHist.Is_Deleted = _templateEntity.Is_Deleted;
                    //    objPageAlertMsgHist.Page_Alert_Message_Id = _templateEntity.Page_Alert_Message_Id;
                    //    objPageAlertMsgHistBAL.Save_LAPP_page_alert_message_hist(objPageAlertMsgHist);
                    //    MessageBox.Show(this.Page, Messages.UpdateSuccess(), (int)eAlertType.Success);
                    //}
                }
                else
                {
                    int res = _templateBal.CreateTemplate(_templateEntity);
                    if (res > 0)
                    {
                        //objPageAlertMsgHist = FetchPageAlertMsgHistory();
                        //if (objPageAlertMsgHist != null)
                        //{
                        //    objPageAlertMsgHist.Action = "I";
                        //    objPageAlertMsgHist.Is_Deleted = _templateEntity.Is_Deleted;
                        //    objPageAlertMsgHist.Page_Alert_Message_Id = res;
                        //    objPageAlertMsgHistBAL.Save_LAPP_page_alert_message_hist(objPageAlertMsgHist);
                        //}
                        this.page_alert_message_id = res;
                        MessageBox.Show(this.Page, Messages.SaveSuccess(), (int)eAlertType.Success);
                    }
                    ClearControl();
                }
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplateEdit.ascx.cs Save";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    public void FillControl()
    {
        try
        {

            _templateEntity = _templateBal.GetTemplateById(page_alert_message_id);
            if (_templateEntity != null)
            {
                txtMessage.Text = _templateEntity.TemplateMessage;
                StartDateTextBox.Text = _templateEntity.EffectiveDate.ToShortDateString();
                EndDateTextBox.Text = _templateEntity.EndDate.ToShortDateString();
                //txtstartDate.Text = (objPageAlertMsg.Start_Date.Date != UIHelper.DefaultDate() ? objPageAlertMsg.Start_Date.ToShortDateString() : "");
                //txtEndD.Text = (objPageAlertMsg.End_Date.Date != UIHelper.DefaultDate() ? objPageAlertMsg.End_Date.ToShortDateString() : "");
                txtTempName.Text = _templateEntity.TemplateName;
                ddlApplicationType.SelectedValue = _templateEntity.ApplicationTypeId.ToString();
                TemplateApplyToDropDown.SelectedValue = _templateEntity.TemplateAppliesToTypeId.ToString();
                txtTempSub.Text = _templateEntity.TemplateSubject;
                //ddlApplyTo.SelectedValue = objPageAlertMsg.Apply_ID.ToString();
                //ddlAccountTy.SelectedValue = objPageAlertMsg.Account_Type.ToString();
            }
            else
            {
                ClearControl();
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplateEdit.ascx.cs FillControl";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    public void ClearControl()
    {
        //ddlApplyTo.SelectedValue = null;
        //txtstartDate.Text = string.Empty;
        //txtEndD.Text = string.Empty;
        //txtMessage.Text = string.Empty;
        //ddlAccountTy.SelectedValue = null;
        txtTempName.Text = string.Empty;
        ddlApplicationType.SelectedValue = null;
        ddlApplicationType.SelectedValue = "-1";
        txtTempSub.Text = "";
        this.page_alert_message_id = 0;
    }

    //public void BindDropDowneTemplateType()
    //{
    //    try
    //    {
    //        BindDropDowneAccountType();
    //        ddlApplicationType.Items.Clear();
    //        ddlApplicationType.Items.Add(new ListItem(eTemplateType.alert.ToString(), ((int)eTemplateType.alert).ToString()));
    //        ddlApplicationType.Items.Add(new ListItem(eTemplateType.email.ToString(), ((int)eTemplateType.email).ToString()));
    //        ddlApplicationType.Items.Add(new ListItem(eTemplateType.sms.ToString(), ((int)eTemplateType.sms).ToString()));
    //        ddlApplicationType.Items.Insert(0, new ListItem("Select", "-1"));
    //        ddlApplicationType.SelectedValue = "-1";
    //    }
    //    catch (Exception ex)
    //    {
    //        objExLog = Fetchlog();
    //        objExLog.Thread = "Error Occured-ucMessageTemplateEdit.ascx-BindDropDowneTemplateType";
    //        objExLog.Message = ex.Message;
    //        objExLog.Exception = ex.ToString();
    //        objExLog.Context = ex.Source;
    //        objexLogBal.Save_LAPP_exception_log(objExLog);
    //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
    //        MessageBox.Show(this.Page, ex.Message, 2);
    //    }
    //}
    //public void BindDropDowneAccountType()
    //{
    //    try
    //    {
    //        ddlAccountTy.Items.Clear();
    //        ddlAccountTy.Items.Add(new ListItem(eAccoutTy.Firm.ToString(), ((int)eAccoutTy.Firm).ToString()));
    //        ddlAccountTy.Items.Add(new ListItem(eAccoutTy.Member.ToString(), ((int)eAccoutTy.Member).ToString()));
    //        ddlAccountTy.Items.Insert(0, new ListItem("Select", "-1"));
    //        ddlAccountTy.SelectedValue = "-1";
    //    }
    //    catch (Exception ex)
    //    {
    //        objExLog = Fetchlog();
    //        objExLog.Thread = "Error Occured-ucMessageTemplateEdit.ascx-BindDropDowneTemplateType";
    //        objExLog.Message = ex.Message;
    //        objExLog.Exception = ex.ToString();
    //        objExLog.Context = ex.Source;
    //        objexLogBal.Save_LAPP_exception_log(objExLog);
    //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
    //        MessageBox.Show(this.Page, ex.Message, 2);
    //    }
    //}

    #endregion

    #region Private Methods

    private TemplateEntity FetchValueFormPageAlert()
    {
        try
        {
            _templateEntity = new TemplateEntity();
            _templateEntity.TemplateName = txtTempName.Text.Trim();
            _templateEntity.ApplicationTypeId = Convert.ToInt32(ddlApplicationType.SelectedValue.Trim()); ;
            _templateEntity.TemplateMessage = txtMessage.Text.Trim();
            DateTime startDate;
            if (DateTime.TryParse(StartDateTextBox.Text, out startDate))
            {
                _templateEntity.EffectiveDate = startDate;
            }

            DateTime endDate;
            if (DateTime.TryParse(EndDateTextBox.Text, out endDate))
            {
                _templateEntity.EndDate = endDate;
            }

            _templateEntity.TemplateSubject = txtTempSub.Text.Trim();
            _templateEntity.IsActive = true;
            _templateEntity.CreatedOn = DateTime.Now;
            _templateEntity.IsDeleted = false;
            _templateEntity.IsEnabled = true;
            _templateEntity.CreatedBy = UIHelper.UserIDBySession();
            _templateEntity.TemplateCode = " - ";
            _templateEntity.MasterTransactionId = 1;
            _templateEntity.PageModuleId = 1;
            _templateEntity.PageModuleTabSubModuleId = 1;
            _templateEntity.PageTabSectionId = 1;
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplateEdit.ascx.cs FetchValueFormPageAlert";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }

        return _templateEntity;
    }

    private LAPP_page_alert_message_hist FetchPageAlertMsgHistory()
    {
        try
        {
            objPageAlertMsgHist = new LAPP_page_alert_message_hist();
            objPageAlertMsgHist.Template_Name = txtTempName.Text.Trim();
            objPageAlertMsgHist.Template_Type_Id = Convert.ToInt32(ddlApplicationType.SelectedValue.Trim());
            objPageAlertMsgHist.Message = txtMessage.Text.Trim();
            objPageAlertMsgHist.Start_Date = DateTime.Now;
            objPageAlertMsgHist.End_Date = DateTime.Now;
            objPageAlertMsgHist.Template_Subject = txtTempSub.Text.Trim();
            objPageAlertMsgHist.Is_Active = true;
            objPageAlertMsgHist.Created_On = DateTime.Now;
            objPageAlertMsgHist.DTS = DateTime.Now;
            objPageAlertMsgHist.Created_By = UIHelper.UserIDBySession();
            objPageAlertMsgHist.Modified_By = UIHelper.UserIDBySession();
            objPageAlertMsgHist.Modified_DTS = DateTime.Now;
            objPageAlertMsgHist.Apply_ID = 0;
            objPageAlertMsgHist.Account_Type = 0;
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplateEdit.ascx.cs FetchPageAlertMsgHistory";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
        return objPageAlertMsgHist;
    }

    #endregion
    protected void ddlAccountTy_SelectedIndexChanged(object sender, EventArgs e)
    {
        //if (ddlAccountTy.SelectedValue != "-1")
        //{
        //    if (ddlAccountTy.SelectedValue == ((int)eAccoutTy.Member).ToString())
        //    {
        //        tagFirm.Visible = false;
        //        tagMember.Visible = true;
        //    }
        //    else
        //    {
        //        tagFirm.Visible = true;
        //        tagMember.Visible = false;
        //    }
        //}
        //else
        //{
        //    tagFirm.Visible = false;
        //    tagMember.Visible = false;
        //}
    }
}