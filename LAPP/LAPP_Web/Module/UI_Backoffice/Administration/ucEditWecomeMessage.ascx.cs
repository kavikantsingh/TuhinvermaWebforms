using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucEditWecomeMessage : System.Web.UI.UserControl
{
    public event EventHandler UCClick;
    #region class Members
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    LAPP_home_page_message objHomePageMsg = new LAPP_home_page_message();
    LAPP_home_page_messageBAL objHomePageMsgBAL = new LAPP_home_page_messageBAL();
    LAPP_home_page_message_hist objHomePageMessHist = new LAPP_home_page_message_hist();
    LAPP_home_page_message_histBAL objHomePageMessHistBAL = new LAPP_home_page_message_histBAL();
    #endregion

    #region Class Property

    public int home_page_message_id
    {
        get
        {
            if (ViewState["home_page_message_id"] != null)
            {
                return Convert.ToInt32(ViewState["home_page_message_id"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["home_page_message_id"] = value;
        }
    }
    public string MessageName
    {
        get
        {
            if (ViewState["MessageName"] != null)
            {
                return Convert.ToString(ViewState["MessageName"]);
            }
            else
            {
                return "";
            }
        }
        set
        {
            ViewState["MessageName"] = value;
        }
    }

    public string ValidationGroup
    {
        get
        {
            if (ViewState["ValidationGroup"] != null)
            {
                return Convert.ToString(ViewState["ValidationGroup"]);
            }
            else
            {
                return "vgHomePageMsg";
            }
        }
        set
        {
            ViewState["ValidationGroup"] = value;
        }
    }
    #endregion

    string MenuName = "Home Page Message";

    #region Page Event Handler

    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.MessageName != "")
        {
            ltrMessageType.Text = this.MessageName;
        }
        if (!IsPostBack)
        {
            BindDropDownMessageTy();
        }
        if (this.ValidationGroup != "")
        {
            rfvBeginDate.ValidationGroup = this.ValidationGroup;
            RFVEndDate.ValidationGroup = this.ValidationGroup;
            rfvMessage.ValidationGroup = this.ValidationGroup;
            rfvMessageTy.ValidationGroup = this.ValidationGroup;
            RFVsortOrder.ValidationGroup = this.ValidationGroup;
            RFVsortOrder.ValidationGroup = this.ValidationGroup;
            RFVstatus.ValidationGroup = this.ValidationGroup;
            revBeginD.ValidationGroup = this.ValidationGroup;
            REVEndDate.ValidationGroup = this.ValidationGroup;
            REVsortOrder.ValidationGroup = this.ValidationGroup;
            btnSave.ValidationGroup = this.ValidationGroup;

        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
            {
                objHomePageMsg = objHomePageMsgBAL.Get_LAPP_home_page_message_BY_startdat_enddate(Convert.ToDateTime(txtBeginDate.Text.Trim()), Convert.ToDateTime(txtEndDate.Text.Trim()), Convert.ToInt32(ddlMessageTy.Text));
                if (objHomePageMsg != null && objHomePageMsg.Home_Page_Message_Id != this.home_page_message_id)
                {
                    MessageBox.Show(this.Page, "A message is already in your list of this period", (int)eAlertType.Error);
                    return;
                }

                Save();
                if (UCClick != null) UCClick(this, e);

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Message = ex.Message;
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucEditWecomeMessage.ascx.cs btnSave_Click";
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }


    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        if (this.ValidationGroup == "vgBulletin")
        {
            Response.Redirect("Bulletin.aspx", false);
        }
        else
        {
            Response.Redirect("HomePageMessage.aspx", false);
        }
    }
    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        divcontent.InnerHtml = txtMessage.Text;
    }
    #endregion

    #region Private Methods
    private LAPP_home_page_message FetchValueForHomePageMsg()
    {
        try
        {
            if (this.home_page_message_id > 0)
            {

                objHomePageMsg.Message_Type = Convert.ToInt32(ddlMessageTy.SelectedValue);
                objHomePageMsg.Message_Content = txtMessage.Text;
                objHomePageMsg.Start_Date = Convert.ToDateTime(txtBeginDate.Text);
                objHomePageMsg.End_Date = Convert.ToDateTime(txtEndDate.Text);
                objHomePageMsg.Sort_Order = Convert.ToInt32(txtSortOrder.Text);
                objHomePageMsg.Is_Active = Convert.ToBoolean(ddlStatus.SelectedValue);
                objHomePageMsg.DTS = DateTime.Now;

            }
            else
            {
                objHomePageMsg = new LAPP_home_page_message();
                objHomePageMsg.Message_Type = Convert.ToInt32(ddlMessageTy.SelectedValue);
                objHomePageMsg.Message_Content = txtMessage.Text;
                objHomePageMsg.Start_Date = Convert.ToDateTime(txtBeginDate.Text);
                objHomePageMsg.End_Date = Convert.ToDateTime(txtEndDate.Text);
                objHomePageMsg.Sort_Order = Convert.ToInt32(txtSortOrder.Text);
                objHomePageMsg.Is_Active = Convert.ToBoolean(ddlStatus.SelectedValue);
                objHomePageMsg.Created_On = DateTime.Now;
                objHomePageMsg.DTS = DateTime.Now;
                objHomePageMsg.Is_Deleted = false;
                objHomePageMsg.Created_By = UIHelper.UserIDBySession();

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucEditWecomeMessage.ascx.cs FetchValueForHomePageMsg";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
        return objHomePageMsg;
    }
    private LAPP_home_page_message_hist FetchHomePageMessageHistory()
    {
        try
        {
            objHomePageMessHist = new LAPP_home_page_message_hist();
            objHomePageMessHist.Message_Type = Convert.ToInt32(ddlMessageTy.SelectedValue);
            objHomePageMessHist.Message_Content = txtMessage.Text;
            objHomePageMessHist.Start_Date = Convert.ToDateTime(txtBeginDate.Text);
            objHomePageMessHist.End_Date = Convert.ToDateTime(txtEndDate.Text);
            objHomePageMessHist.Sort_Order = Convert.ToInt32(txtSortOrder.Text);
            objHomePageMessHist.Is_Active = Convert.ToBoolean(ddlStatus.SelectedValue);
            objHomePageMessHist.Created_On = DateTime.Now;
            objHomePageMessHist.DTS = DateTime.Now;
            objHomePageMessHist.Is_Deleted = false;
            objHomePageMessHist.Created_By = UIHelper.UserIDBySession();
            objHomePageMessHist.Modified_By = UIHelper.UserIDBySession();
            objHomePageMessHist.Modified_DTS = DateTime.Now;
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucEditWecomeMessage.ascx.cs FetchHomePageMessageHistory";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
        return objHomePageMessHist;
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
    public void Save()
    {
        try
        {
            objHomePageMsg = FetchValueForHomePageMsg();
            if (objHomePageMsg != null)
            {
                if (this.home_page_message_id > 0)
                {
                    objHomePageMsgBAL.Update_LAPP_home_page_message(objHomePageMsg, this.home_page_message_id);
                    objHomePageMessHist = FetchHomePageMessageHistory();
                    if (objHomePageMessHist != null)
                    {
                        objHomePageMessHist.Action = "U";
                        objHomePageMessHist.Is_Deleted = objHomePageMsg.Is_Deleted;
                        objHomePageMessHist.Home_Page_Message_Id = objHomePageMsg.Home_Page_Message_Id;
                        objHomePageMessHistBAL.Save_LAPP_home_page_message_hist(objHomePageMessHist);
                        MessageBox.Show(this.Page, Messages.UpdateSuccess(), (int)eAlertType.Success);
                        FillControl();

                    }

                    MessageBox.Show(this.Page, Messages.UpdateSuccess(), (int)eAlertType.Success);
                }
                else
                {
                    int res = objHomePageMsgBAL.Save_LAPP_home_page_message(objHomePageMsg);
                    if (res > 0)
                    {
                        objHomePageMessHist = FetchHomePageMessageHistory();
                        if (objHomePageMessHist != null)
                        {
                            objHomePageMessHist.Action = "I";
                            objHomePageMessHist.Is_Deleted = objHomePageMsg.Is_Deleted;
                            objHomePageMessHist.Home_Page_Message_Id = res; ;
                            objHomePageMessHistBAL.Save_LAPP_home_page_message_hist(objHomePageMessHist);
                            MessageBox.Show(this.Page, Messages.SaveSuccess(), (int)eAlertType.Success);
                        }

                        this.home_page_message_id = res;
                    }
                    ClearControl();
                }
            }
            else
            {
                MessageBox.Show(this.Page, "Error Occured", (int)eAlertType.Error);

            }
        }

        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Message = ex.Message;
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucEditWecomeMessage.ascx.cs Save";
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
            objHomePageMsg = objHomePageMsgBAL.Get_LAPP_home_page_message_BY_ID(home_page_message_id);
            if (objHomePageMsg != null)
            {
                txtMessage.Text = objHomePageMsg.Message_Content;
                txtBeginDate.Text = (objHomePageMsg.Start_Date.Date != UIHelper.DefaultDate() ? objHomePageMsg.Start_Date.ToShortDateString() : "");
                txtEndDate.Text = (objHomePageMsg.End_Date.Date != UIHelper.DefaultDate() ? objHomePageMsg.End_Date.ToShortDateString() : "");
                txtSortOrder.Text = objHomePageMsg.Sort_Order.ToString();
                ddlMessageTy.SelectedValue = objHomePageMsg.Message_Type.ToString();
                ddlStatus.SelectedValue = objHomePageMsg.Is_Active.ToString();
                if (objHomePageMsg.Message_Type == (int)eMessageType.Bulletin)
                {
                    ltrMessageType.Text = " Bulletin ";
                }
                else if (objHomePageMsg.Message_Type == (int)eMessageType.Welcome)
                {
                    ltrMessageType.Text = " Welcome ";
                }
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
            objExLog.Logger = "ucEditWecomeMessage.ascx.cs FillControl";
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
        txtBeginDate.Text = string.Empty;
        txtEndDate.Text = string.Empty;
        txtMessage.Text = string.Empty;
        txtSortOrder.Text = string.Empty;
        ddlMessageTy.SelectedValue = null;
        ddlStatus.SelectedValue = null;
        this.home_page_message_id = 0;
    }
    public void BindDropDownMessageTy()
    {
        try
        {
            ddlMessageTy.Items.Add(new ListItem(eMessageType.Welcome.ToString(), ((int)eMessageType.Welcome).ToString()));
            ddlMessageTy.Items.Add(new ListItem(eMessageType.Bulletin.ToString(), ((int)eMessageType.Bulletin).ToString()));
            ddlMessageTy.Items.Insert(0, new ListItem("Select", "-1"));
            ddlMessageTy.SelectedValue = "-1";
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucEditWecomeMessage.ascx.cs BindDropDownMessageTy";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
    }

    #endregion
}