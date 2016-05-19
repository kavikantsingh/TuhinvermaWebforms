using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucMessageTemplate : System.Web.UI.UserControl
{
    #region Class Members

    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    LAPP_page_alert_message objPageAlertMsg = new LAPP_page_alert_message();
    LAPP_page_alert_messageBAL objPageAlertMsgBAL = new LAPP_page_alert_messageBAL();
    LAPP_page_alert_message_hist objPageAlertMsgHist = new LAPP_page_alert_message_hist();
    LAPP_page_alert_message_histBAL objPageAlertMsgHistBAL = new LAPP_page_alert_message_histBAL();
    #endregion

    #region Class Property

    public bool Is_Search
    {
        get
        {
            if (ViewState["Is_Search"] != null)
            {
                return Convert.ToBoolean(ViewState["Is_Search"]);
            }
            else
            {
                return false;
            }
        }
        set
        {
            ViewState["Is_Search"] = value;
        }
    }
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

    string MenuName = "Template Message";
    #region Page Event Handler

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //int Sid = 0;
            //if (Request.QueryString["Sid"] != null && int.TryParse(Request.QueryString["Sid"], out Sid))
            //{
            //    MessageBox.Show(this.Page, Messages.SaveSuccess());
            //}
            //int Uid = 0;
            //if (Request.QueryString["Uid"] != null && int.TryParse(Request.QueryString["Uid"], out Uid))
            //{
            //    MessageBox.Show(this.Page, Messages.UpdateSuccess());
            //}
            //btnAddNew.Visible = true;
            BindDDLDocType();
            BindGrid();
        }
        ucMessageTemplateEdit2.UCClicks += new EventHandler(btnAddNew_Click);
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
            {
                Save();
                this.EditIndex = -1;
                BindGrid();
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplate.ascx.cs btnSave_Click";
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
        this.EditIndex = -1;
        BindGrid();
        ltrMessageTemp.Text = "";
    }
    protected void btnSearchCancel_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        BindGrid();
        ltrMessageTemp.Text = "";
    }

    protected void btnAddNew_Click(object sender, EventArgs e)
    {
        if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
        {
            ucMessageTemplateEdit2.Visible = false;
            //ucMessageTemplateEdit2.BindFropDownOfApplyTo();
            ucMessageTemplateEdit2.BindDDLDocType();
            btnAddNew.Visible = true;
            BindGrid();

        }
    }
    protected void imgBtnDelete_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (PermissionHandler.UserHasPermission("D", MenuName, this.Page))
            {
                ImageButton imgbtn = (ImageButton)sender;
                if (imgbtn != null)
                {
                    int id = Convert.ToInt32(imgbtn.CommandArgument);
                    LAPP_home_page_message objMessage = new LAPP_home_page_message();
                    objPageAlertMsgHist = FetchPageAlertMsgHistoryForDelete(id);
                    if (objPageAlertMsgHist != null)
                    {
                        objPageAlertMsgHist.Action = "D";
                        objPageAlertMsgHist.Page_Alert_Message_Id = id;
                        objPageAlertMsgHist.Is_Deleted = objMessage.Is_Deleted;
                        objPageAlertMsgHistBAL.Save_LAPP_page_alert_message_hist(objPageAlertMsgHist);

                    }

                    objPageAlertMsgBAL.Delete_LAPP_page_alert_message(id);
                    MessageBox.Show(this.Page, Messages.DeleteSuccess(), (int)eAlertType.Success);
                }
                BindGrid();
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplate.ascx.cs imgBtnDelete_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    protected void gvMessageTemplate_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            if (GridViewShortDirection == SortDirection.Ascending)
            {
                GridViewShortDirection = SortDirection.Descending;
            }
            else
            {
                GridViewShortDirection = SortDirection.Ascending;
            }
            gvMessageTemplate.PageIndex = e.NewPageIndex;
            this.EditIndex = -1;
            gvMessageTemplate.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplate.ascx.cs gvMessageTemplate_PageIndexChanging";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    protected void Enable_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            ImageButton imgbtn = (ImageButton)sender;
            if (imgbtn != null)
            {
                string str = imgbtn.ToolTip;
                int id = Convert.ToInt32(imgbtn.CommandArgument);

                objPageAlertMsg = objPageAlertMsgBAL.Get_LAPP_page_alert_message_BY_ID(id);
                if (str.ToLower() == "enable")
                {

                    objPageAlertMsg.Is_Active = true;
                }
                else
                {
                    objPageAlertMsg.Is_Active = false;
                }
                objPageAlertMsgBAL.Update_LAPP_page_alert_message(objPageAlertMsg, id);
            }
            BindGrid();
        }

        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplate.ascx.cs Enable_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
    }
    protected void imgBtnEdit_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (PermissionHandler.UserHasPermission("U", MenuName, this.Page))
            {
                ImageButton imgBtn = (ImageButton)sender;
                if (imgBtn != null)
                {
                    //int ID = Convert.ToInt32(imgBtn.CommandArgument);
                    //ucMessageTemplateEdit2.page_alert_message_id = ID;
                    //ucMessageTemplateEdit2.FillControl();
                    //ucMessageTemplateEdit2.Visible = true;

                    int ID = Convert.ToInt32(imgBtn.CommandArgument);
                    this.EditIndex = Convert.ToInt32(imgBtn.Attributes["RowIndex"]);
                    this.page_alert_message_id = ID;

                    BindGrid();
                    BindDropDowneTemplateType(gvMessageTemplate, this.EditIndex);
                    //BindFropDownOfApplyTo(gvMessageTemplate, this.EditIndex);
                    //BindDropDowneAccountType(gvMessageTemplate, this.EditIndex);
                    FillControl(gvMessageTemplate, this.EditIndex);
                    ucMessageTemplateEdit2.Visible = false;
                }
            }

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplate.ascx.cs imgBtnEdit_Click";
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
        //TextBox txtMessage = gvMessageTemplate.Rows[this.EditIndex].Cells[0].FindControl("txtMessage") as TextBox;
        //DivSample.InnerText = txtMessage.Text;
    }
    protected void ddlAccountTy_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DropDownList ddlAccountTy = (DropDownList)sender;
            HtmlTable tagFirm = gvMessageTemplate.Rows[this.EditIndex].Cells[0].FindControl("tagFirm") as HtmlTable;
            HtmlTable tagMember = gvMessageTemplate.Rows[this.EditIndex].Cells[0].FindControl("tagMember") as HtmlTable;
            if (ddlAccountTy.SelectedValue != "-1")
            {
                if (ddlAccountTy.SelectedValue == ((int)eAccoutTy.Member).ToString())
                {
                    tagFirm.Visible = false;
                    tagMember.Visible = true;
                }
                else
                {
                    tagFirm.Visible = true;
                    tagMember.Visible = false;
                }
            }
            else
            {
                tagFirm.Visible = false;
                tagMember.Visible = false;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplate.ascx.cs ddlAccountTy_SelectedIndexChanged";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
    }
    protected void btnAddNew_Click1(object sender, EventArgs e)
    {
        if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
        {
            ucMessageTemplateEdit2.Visible = true;
            //ucMessageTemplateEdit2.BindFropDownOfApplyTo();
            ucMessageTemplateEdit2.BindDDLDocType();
            // btnAddNew.Visible = false;

        }
    }
    protected void chkShowAll_CheckedChanged(object sender, EventArgs e)
    {

        BindGrid();

    }
    #endregion

    #region Public Methods
    public void BindDDLDocType()
    {
        try
        {
            Lapp_application_feeBAL objLapp_application_feeBAL = new Lapp_application_feeBAL();
            List<Lapp_application_fee> lstLapp_application_fee = new List<Lapp_application_fee>();
            lstLapp_application_fee = objLapp_application_feeBAL.Get_Lapp_application_fee();
            if (lstLapp_application_fee != null)
            {
                ddlApplicationType.DataSource = lstLapp_application_fee;
                ddlApplicationType.DataTextField = "Name";
                ddlApplicationType.DataValueField = "Application_ID";
                ddlApplicationType.DataBind();
            }
            ddlApplicationType.Items.Insert(0, new ListItem("Select", "-1"));
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplate.ascx.cs BindDDLDocType";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
    }
    public void BindGrid()
    {
        try
        {
            List<LAPP_page_alert_message> lstpageMessageAl = new List<LAPP_page_alert_message>();
            if (Is_Search)
            {
                int ApplicationTy = Convert.ToInt32(ddlApplicationType.SelectedValue);
                string TempName = txtTempName.Text.Trim();
                if (ddlApplicationType.SelectedValue != "-1" && txtTempName.Text == "")
                {
                    lstpageMessageAl = objPageAlertMsgBAL.Get_lapp_page_alert_message_GetBy_AppTyId(ApplicationTy);
                }

                else if (!String.IsNullOrEmpty(txtTempName.Text.Trim()) && ddlApplicationType.SelectedValue == "-1")
                {
                    lstpageMessageAl = objPageAlertMsgBAL.Get_lapp_page_alert_message_GetBy_template_name(TempName);
                }

                else if (ddlApplicationType.SelectedValue != "-1" && (!String.IsNullOrEmpty(txtTempName.Text.Trim())))
                {
                    lstpageMessageAl = objPageAlertMsgBAL.Get_lapp_page_alert_message_GetBy_AppTyId_template_name(ApplicationTy, TempName);
                }
                else
                {
                    lstpageMessageAl = objPageAlertMsgBAL.Get_All_LAPP_page_alert_message();
                }
            }
            else
            {
                lstpageMessageAl = objPageAlertMsgBAL.Get_All_LAPP_page_alert_message();
                if (lstpageMessageAl != null)
                {
                    switch (GridViewSortExpression)
                    {
                        case "start_date":
                            if (GridViewShortDirection == SortDirection.Ascending)
                            {
                                lstpageMessageAl = lstpageMessageAl.OrderBy(x => x.Start_Date).ToList();
                                GridViewShortDirection = SortDirection.Descending;
                            }
                            else
                            {
                                lstpageMessageAl = lstpageMessageAl.OrderByDescending(x => x.DTS).ToList();
                                GridViewShortDirection = SortDirection.Ascending;
                            }
                            break;

                        case "end_date":
                            if (GridViewShortDirection == SortDirection.Ascending)
                            {
                                lstpageMessageAl = lstpageMessageAl.OrderBy(x => x.End_Date).ToList();
                                GridViewShortDirection = SortDirection.Descending;
                            }
                            else
                            {
                                lstpageMessageAl = lstpageMessageAl.OrderByDescending(x => x.DTS).ToList();
                                GridViewShortDirection = SortDirection.Ascending;
                            }
                            break;
                    }
                }
            }
            gvMessageTemplate.EditIndex = this.EditIndex;
            gvMessageTemplate.DataSource = lstpageMessageAl;
            gvMessageTemplate.DataBind();
            if (this.EditIndex >= 0)
            {
                gvMessageTemplate.Rows[this.EditIndex].CssClass = "RowInEditMode";
                gvMessageTemplate.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "4");
                gvMessageTemplate.Rows[this.EditIndex].Cells[1].Visible = false;
                gvMessageTemplate.Rows[this.EditIndex].Cells[2].Visible = false;
                gvMessageTemplate.Rows[this.EditIndex].Cells[3].Visible = false;
                //gvMessageTemplate.Rows[this.EditIndex].Cells[4].Visible = false;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplate.ascx.cs BindGrid";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
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
            objPageAlertMsg = FetchValueFormPageAlert(gvMessageTemplate, this.EditIndex);
            if (objPageAlertMsg != null)
            {
                if (this.page_alert_message_id > 0)
                {
                    objPageAlertMsgBAL.Update_LAPP_page_alert_message(objPageAlertMsg, this.page_alert_message_id);
                    try
                    {
                        objPageAlertMsgHist = FetchPageAlertMsgHistory(gvMessageTemplate, this.EditIndex);
                        if (objPageAlertMsgHist != null)
                        {
                            objPageAlertMsgHist.Action = "U";
                            objPageAlertMsgHist.Is_Deleted = objPageAlertMsg.Is_Deleted;
                            objPageAlertMsgHist.Page_Alert_Message_Id = objPageAlertMsg.Page_Alert_Message_Id;
                            objPageAlertMsgHistBAL.Save_LAPP_page_alert_message_hist(objPageAlertMsgHist);
                            MessageBox.Show(this.Page, Messages.UpdateSuccess(), (int)eAlertType.Success);
                        }
                    }
                    catch (Exception ex)
                    {
                        objExLog = Fetchlog();
                        objExLog.Thread = ex.StackTrace.ToString();
                        objExLog.Logger = "ucMessageTemplate.ascx.cs Save";
                        objExLog.Message = ex.Message;
                        objExLog.Exception = ex.ToString();
                        objExLog.Context = ex.Source;
                        objexLogBal.Save_LAPP_exception_log(objExLog);
                        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                        MessageBox.Show(this.Page, ex.Message, 2);
                    }
                }
                else
                {
                    int res = objPageAlertMsgBAL.Save_LAPP_page_alert_message(objPageAlertMsg);
                    if (res > 0)
                    {
                        try
                        {
                            objPageAlertMsgHist = FetchPageAlertMsgHistory(gvMessageTemplate, this.EditIndex);
                            if (objPageAlertMsgHist != null)
                            {
                                objPageAlertMsgHist.Action = "I";
                                objPageAlertMsgHist.Is_Deleted = objPageAlertMsg.Is_Deleted;
                                objPageAlertMsgHist.Page_Alert_Message_Id = res;
                                objPageAlertMsgHistBAL.Save_LAPP_page_alert_message_hist(objPageAlertMsgHist);
                            }
                        }
                        catch (Exception ex)
                        {
                            objExLog = Fetchlog();
                            objExLog.Thread = ex.StackTrace.ToString();
                            objExLog.Logger = "ucMessageTemplate.ascx.cs Save";
                            objExLog.Message = ex.Message;
                            objExLog.Exception = ex.ToString();
                            objExLog.Context = ex.Source;
                            objexLogBal.Save_LAPP_exception_log(objExLog);
                            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                            MessageBox.Show(this.Page, ex.Message, 2);
                        }
                        this.page_alert_message_id = res;
                        MessageBox.Show(this.Page, Messages.SaveSuccess(), (int)eAlertType.Success);
                    }

                }
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplate.ascx.cs Save";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }


    public void FillControl(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtTempName = gv.Rows[EditInd].Cells[0].FindControl("txtTempName") as TextBox;
            TextBox txtMessage = gv.Rows[EditInd].Cells[0].FindControl("txtMessage") as TextBox;
            //TextBox txtstartDate = gv.Rows[EditInd].Cells[0].FindControl("txtstartDate") as TextBox;
            //TextBox txtEndD = gv.Rows[EditInd].Cells[0].FindControl("txtEndD") as TextBox;
            TextBox txtTempSub = gv.Rows[EditInd].Cells[0].FindControl("txtTempSub") as TextBox;
            DropDownList ddlTempTy = gv.Rows[EditInd].Cells[0].FindControl("ddlTempTy") as DropDownList;
            //DropDownList ddlApplyTo = gv.Rows[EditInd].Cells[0].FindControl("ddlApplyTo") as DropDownList;
            //DropDownList ddlAccountTy = gv.Rows[EditInd].Cells[0].FindControl("ddlAccountTy") as DropDownList;
            objPageAlertMsg = objPageAlertMsgBAL.Get_LAPP_page_alert_message_BY_ID(page_alert_message_id);
            if (objPageAlertMsg != null)
            {
                txtMessage.Text = objPageAlertMsg.Message;
                //txtstartDate.Text = objPageAlertMsg.Start_Date.ToShortDateString();
                //txtEndD.Text = objPageAlertMsg.End_Date.ToShortDateString();
                txtTempName.Text = objPageAlertMsg.Template_Name;
                ddlTempTy.SelectedValue = objPageAlertMsg.Template_Type_Id.ToString();
                txtTempSub.Text = objPageAlertMsg.Template_Subject;
                // ddlApplyTo.SelectedValue = objPageAlertMsg.Apply_ID.ToString();
                //ddlAccountTy.SelectedValue = objPageAlertMsg.Account_Type.ToString();
                HtmlTable tagFirm = gvMessageTemplate.Rows[this.EditIndex].Cells[0].FindControl("tagFirm") as HtmlTable;
                HtmlTable tagMember = gvMessageTemplate.Rows[this.EditIndex].Cells[0].FindControl("tagMember") as HtmlTable;
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
            else
            {

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplate.ascx.cs FillControl";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public void BindFropDownOfApplyTo(GridView gv, int EditInd)
    {
        try
        {
            DropDownList ddlApplyToGrid = gv.Rows[EditInd].Cells[0].FindControl("ddlApplyTo") as DropDownList;
            List<LAPP_message_template_apply_to> lstMessageTemplateType = new List<LAPP_message_template_apply_to>();
            LAPP_message_template_apply_toBAL objApplyToBAL = new LAPP_message_template_apply_toBAL();

            lstMessageTemplateType = objApplyToBAL.GET_All__NAVBOE_MSSAGE_TAMPLATE_APPLY_TO();
            ddlApplyToGrid.DataSource = lstMessageTemplateType;
            ddlApplyToGrid.DataTextField = "Apply_Name";
            ddlApplyToGrid.DataValueField = "Apply_ID";
            ddlApplyToGrid.DataBind();
            ddlApplyToGrid.Items.Insert(0, new ListItem("Select", "-1"));
            ddlApplyToGrid.SelectedValue = "-1";
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplate.ascx.cs BindFropDownOfApplyTo";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    //public void BindDropDowneAccountType(GridView gv, int EditInd)
    //{
    //    try
    //    {
    //        DropDownList ddlAccountTy = gv.Rows[EditInd].Cells[0].FindControl("ddlAccountTy") as DropDownList;
    //        ddlAccountTy.Items.Clear();
    //        ddlAccountTy.Items.Add(new ListItem(eAccoutTy.Firm.ToString(), ((int)eAccoutTy.Firm).ToString()));
    //        ddlAccountTy.Items.Add(new ListItem(eAccoutTy.Member.ToString(), ((int)eAccoutTy.Member).ToString()));
    //        ddlAccountTy.Items.Insert(0, new ListItem("Select", "-1"));
    //        ddlAccountTy.SelectedValue = "-1";
    //    }
    //    catch (Exception ex)
    //    {
    //        objExLog = Fetchlog();
    //        objExLog.Thread = "Error Occured-ucMessageTemplate.ascx-BindDropDowneAccountType";
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
    private LAPP_page_alert_message FetchValueFormPageAlert(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtTempName = gv.Rows[EditInd].Cells[0].FindControl("txtTempName") as TextBox;
            TextBox txtMessage = gv.Rows[EditInd].Cells[0].FindControl("txtMessage") as TextBox;
            // TextBox txtstartDate = gv.Rows[EditInd].Cells[0].FindControl("txtstartDate") as TextBox;
            //TextBox txtEndD = gv.Rows[EditInd].Cells[0].FindControl("txtEndD") as TextBox;
            TextBox txtTempSub = gv.Rows[EditInd].Cells[0].FindControl("txtTempSub") as TextBox;
            DropDownList ddlTempTy = gv.Rows[EditInd].Cells[0].FindControl("ddlTempTy") as DropDownList;
            //DropDownList ddlApplyTo = gv.Rows[EditInd].Cells[0].FindControl("ddlApplyTo") as DropDownList;
            // DropDownList ddlAccountTy = gv.Rows[EditInd].Cells[0].FindControl("ddlAccountTy") as DropDownList;
            objPageAlertMsg = objPageAlertMsgBAL.Get_LAPP_page_alert_message_BY_ID(page_alert_message_id);
            if (objPageAlertMsg != null)
            {
                objPageAlertMsg.Template_Name = txtTempName.Text.Trim();
                objPageAlertMsg.Template_Type_Id = Convert.ToInt32(ddlTempTy.SelectedValue.Trim()); ;
                objPageAlertMsg.Message = txtMessage.Text.Trim();
                objPageAlertMsg.Start_Date = DateTime.Now;
                objPageAlertMsg.End_Date = DateTime.Now;
                objPageAlertMsg.Template_Subject = txtTempSub.Text.Trim();
                objPageAlertMsg.Apply_ID = 0;
                objPageAlertMsg.DTS = DateTime.Now;
                objPageAlertMsg.Account_Type = 0;
            }
            else
            {
                objPageAlertMsg = new LAPP_page_alert_message();
                objPageAlertMsg.Template_Name = txtTempName.Text.Trim();
                objPageAlertMsg.Template_Type_Id = Convert.ToInt32(ddlTempTy.SelectedValue.Trim()); ;
                objPageAlertMsg.Message = txtMessage.Text.Trim();
                objPageAlertMsg.Start_Date = DateTime.Now;
                objPageAlertMsg.End_Date = DateTime.Now;
                objPageAlertMsg.Template_Subject = txtTempSub.Text.Trim();
                objPageAlertMsg.Is_Active = true;
                objPageAlertMsg.Created_On = DateTime.Now;
                objPageAlertMsg.DTS = DateTime.Now;
                objPageAlertMsg.Is_Deleted = false;
                objPageAlertMsg.Apply_ID = 0;
                objPageAlertMsg.Created_By = UIHelper.UserIDBySession();
                objPageAlertMsg.Account_Type = 0;
            }
        }

        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplate.ascx.cs FetchValueFormPageAlert";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
        return objPageAlertMsg;
    }
    private LAPP_page_alert_message_hist FetchPageAlertMsgHistory(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtTempName = gv.Rows[EditInd].Cells[0].FindControl("txtTempName") as TextBox;
            TextBox txtMessage = gv.Rows[EditInd].Cells[0].FindControl("txtMessage") as TextBox;
            //TextBox txtstartDate = gv.Rows[EditInd].Cells[0].FindControl("txtstartDate") as TextBox;
            //TextBox txtEndD = gv.Rows[EditInd].Cells[0].FindControl("txtEndD") as TextBox;
            TextBox txtTempSub = gv.Rows[EditInd].Cells[0].FindControl("txtTempSub") as TextBox;
            DropDownList ddlTempTy = gv.Rows[EditInd].Cells[0].FindControl("ddlTempTy") as DropDownList;
            // DropDownList ddlApplyTo = gv.Rows[EditInd].Cells[0].FindControl("ddlApplyTo") as DropDownList;
            // DropDownList ddlAccountTy = gv.Rows[EditInd].Cells[0].FindControl("ddlAccountTy") as DropDownList;
            objPageAlertMsgHist = new LAPP_page_alert_message_hist();
            objPageAlertMsgHist.Template_Name = txtTempName.Text.Trim();
            objPageAlertMsgHist.Template_Type_Id = Convert.ToInt32(ddlTempTy.SelectedValue.Trim()); ;
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
            objExLog.Logger = "ucMessageTemplate.ascx.cs FetchPageAlertMsgHistory";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

        return objPageAlertMsgHist;
    }

    private LAPP_page_alert_message_hist FetchPageAlertMsgHistoryForDelete(int ID)
    {
        try
        {

            LAPP_page_alert_message objPageAlertMsg = new LAPP_page_alert_message();
            objPageAlertMsg = objPageAlertMsgBAL.Get_LAPP_page_alert_message_BY_ID(ID);
            if (objPageAlertMsg != null)
            {
                objPageAlertMsgHist = new LAPP_page_alert_message_hist();
                objPageAlertMsgHist.Template_Name = objPageAlertMsg.Template_Name;
                objPageAlertMsgHist.Template_Type_Id = objPageAlertMsg.Template_Type_Id;
                objPageAlertMsgHist.Message = objPageAlertMsg.Message;
                objPageAlertMsgHist.Start_Date = objPageAlertMsg.Start_Date;
                objPageAlertMsgHist.End_Date = objPageAlertMsg.End_Date;
                objPageAlertMsgHist.Template_Subject = objPageAlertMsg.Template_Subject;
                objPageAlertMsgHist.Is_Active = objPageAlertMsg.Is_Active;
                objPageAlertMsgHist.Created_On = objPageAlertMsg.Created_On;
                objPageAlertMsgHist.DTS = objPageAlertMsg.DTS;
                objPageAlertMsgHist.Created_By = objPageAlertMsg.Created_By;
                objPageAlertMsgHist.Modified_By = UIHelper.UserIDBySession();
                objPageAlertMsgHist.Modified_DTS = DateTime.Now;
                objPageAlertMsgHist.Apply_ID = objPageAlertMsg.Apply_ID;
                objPageAlertMsgHist.Account_Type = objPageAlertMsg.Account_Type;

            }
        }
        catch (Exception ex)
        {

            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplate.ascx.cs FetchPageAlertMsgHistoryForDelete";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

        return objPageAlertMsgHist;
    }
    private void BindDropDowneTemplateType(GridView gv, int EditInd)
    {
        try
        {
            DropDownList ddlTempTy = gv.Rows[EditInd].Cells[0].FindControl("ddlTempTy") as DropDownList;

            Lapp_application_feeBAL objLapp_application_feeBAL = new Lapp_application_feeBAL();
            List<Lapp_application_fee> lstLapp_application_fee = new List<Lapp_application_fee>();
            lstLapp_application_fee = objLapp_application_feeBAL.Get_Lapp_application_fee();
            if (lstLapp_application_fee != null)
            {
                ddlTempTy.DataSource = lstLapp_application_fee;
                ddlTempTy.DataTextField = "Name";
                ddlTempTy.DataValueField = "Application_ID";
                ddlTempTy.DataBind();
            }
            // ddlTempTy.Items.Insert(0, new ListItem("Select", "-1"));
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucMessageTemplate.ascx.cs BindDropDowneTemplateType";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

    }
    #endregion

    #region Shorting
    public SortDirection GridViewShortDirection
    {
        get
        {
            if (ViewState["sortDirection"] == null)
                ViewState["sortDirection"] = SortDirection.Ascending;

            return (SortDirection)ViewState["sortDirection"];
        }
        set
        {
            ViewState["sortDirection"] = value;
        }
    }
    public string GridViewSortExpression
    {
        get
        {
            if (ViewState["sortExpression"] == null)
                ViewState["sortExpression"] = "CreatedOn";

            return ViewState["sortExpression"].ToString();
        }
        set
        {
            ViewState["sortExpression"] = value;
        }
    }
    protected void gvMessageTemplate_Sorting(object sender, GridViewSortEventArgs e)
    {
        GridViewSortExpression = e.SortExpression;
        BindGrid();
    }
    #endregion

    protected void btnSearch_Click(object sender, EventArgs e)
    {

        this.EditIndex = -1;
        this.page_alert_message_id = 0;
        this.Is_Search = true;
        BindGrid();
        txtTempName.Text = "";
        ddlApplicationType.SelectedValue = "-1";

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        txtTempName.Text = "";
        ddlApplicationType.SelectedValue = "-1";
        this.page_alert_message_id = 0;
        this.Is_Search = false;
        BindGrid();
    }
}