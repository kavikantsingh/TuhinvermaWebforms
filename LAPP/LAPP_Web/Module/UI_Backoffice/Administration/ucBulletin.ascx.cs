using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucBulletin : System.Web.UI.UserControl
{
    #region class Members
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    LAPP_home_page_message objHomePageMsg = new LAPP_home_page_message();
    LAPP_home_page_messageBAL objHomePageMsgBAL = new LAPP_home_page_messageBAL();
    LAPP_home_page_message_hist objHomePageMsgHist = new LAPP_home_page_message_hist();
    LAPP_home_page_message_histBAL objHomePageMsgHistBAL = new LAPP_home_page_message_histBAL();
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
    public int EditIndexBulletin
    {
        get
        {
            if (ViewState["EditIndexBulletin"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexBulletin"]);
            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexBulletin"] = value;
        }
    }
    #endregion
    string MenuName = "Home Page Message";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridBulletin();
        }
    }

    protected void btnBulletin_Click(object sender, EventArgs e)
    {
        if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
        {
            ucEditWecomeMessage3.Visible = true;
            ucEditWecomeMessage3.MessageName = " Bulletin ";
            //btnAddNew.Visible = false;
            //btnBulletin.Visible = false; 

        }
    }

    protected void btnSaveBulletin_Click(object sender, EventArgs e)
    {
        try
        {
            TextBox txtBeginDate = gvBulletin.Rows[this.EditIndexBulletin].Cells[0].FindControl("txtBeginDate") as TextBox;
            DropDownList ddlMessageTy = gvBulletin.Rows[this.EditIndexBulletin].Cells[0].FindControl("ddlMessageTy") as DropDownList;
            TextBox txtEndDate = gvBulletin.Rows[this.EditIndexBulletin].Cells[0].FindControl("txtEndDate") as TextBox;
            objHomePageMsg = objHomePageMsgBAL.Get_LAPP_home_page_message_BY_startdat_enddate(Convert.ToDateTime(txtBeginDate.Text.Trim()), Convert.ToDateTime(txtEndDate.Text.Trim()), Convert.ToInt32(ddlMessageTy.Text));
            if (objHomePageMsg != null && objHomePageMsg.Home_Page_Message_Id != this.home_page_message_id)
            {
                MessageBox.Show(this.Page, "A message is already in your list of this period", (int)eAlertType.Error);
                return;
            }

            SaveBulletin();
            this.EditIndexBulletin = -1;
            BindGridBulletin();

        }
        catch (Exception ex)
        {

            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBulletin.ascx.cs btnSaveBulletin_Click";
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
        BindGridBulletin();
    }
    protected void imgBtnEdit1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (PermissionHandler.UserHasPermission("U", MenuName, this.Page))
            {
                ImageButton imgBtn = (ImageButton)sender;
                if (imgBtn != null)
                {
                    int ID = Convert.ToInt32(imgBtn.CommandArgument);
                    this.EditIndexBulletin = Convert.ToInt32(imgBtn.Attributes["RowIndex"]);
                    BindGridBulletin();
                    this.home_page_message_id = ID;
                    BindDropDownMessageTy(gvBulletin, this.EditIndexBulletin);
                    FillControl(gvBulletin, this.EditIndexBulletin);

                }
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBulletin.ascx.cs imgBtnEdit1_Click";
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
            TextBox txtMessage = gv.Rows[EditInd].Cells[0].FindControl("txtMessage") as TextBox;
            TextBox txtBeginDate = gv.Rows[EditInd].Cells[0].FindControl("txtBeginDate") as TextBox;
            TextBox txtEndDate = gv.Rows[EditInd].Cells[0].FindControl("txtEndDate") as TextBox;
            TextBox txtSortOrder = gv.Rows[EditInd].Cells[0].FindControl("txtSortOrder") as TextBox;
            DropDownList ddlMessageTy = gv.Rows[EditInd].Cells[0].FindControl("ddlMessageTy") as DropDownList;
            DropDownList ddlStatus = gv.Rows[EditInd].Cells[0].FindControl("ddlStatus") as DropDownList;

            objHomePageMsg = objHomePageMsgBAL.Get_LAPP_home_page_message_BY_ID(home_page_message_id);
            if (objHomePageMsg != null)
            {
                txtMessage.Text = objHomePageMsg.Message_Content;
                txtBeginDate.Text = objHomePageMsg.Start_Date.ToShortDateString();
                txtEndDate.Text = objHomePageMsg.End_Date.ToShortDateString();
                txtSortOrder.Text = objHomePageMsg.Sort_Order.ToString();
                ddlMessageTy.SelectedValue = objHomePageMsg.Message_Type.ToString();
                ddlStatus.SelectedValue = objHomePageMsg.Is_Active.ToString();
            }
            else
            {
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBulletin.ascx.cs FillControl";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public void BindDropDownMessageTy(GridView gv, int EditInd)
    {
        try
        {
            DropDownList ddlMessageTy = gv.Rows[EditInd].Cells[0].FindControl("ddlMessageTy") as DropDownList;
            ddlMessageTy.Items.Add(new ListItem(eMessageType.Welcome.ToString(), ((int)eMessageType.Welcome).ToString()));
            ddlMessageTy.Items.Add(new ListItem(eMessageType.Bulletin.ToString(), ((int)eMessageType.Bulletin).ToString()));
            ddlMessageTy.Items.Insert(0, new ListItem("Select", "-1"));
            ddlMessageTy.SelectedValue = "-1";
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBulletin.ascx.cs BindDropDownMessageTy";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    protected void btnCancelBulletin_Click(object sender, EventArgs e)
    {
        this.EditIndexBulletin = -1;
        BindGridBulletin();
    }
    public void BindGridBulletin()
    {
        try
        {
            List<LAPP_home_page_message> lstHomePageMsg = new List<LAPP_home_page_message>();
            lstHomePageMsg = objHomePageMsgBAL.Get_All_LAPP_home_page_message();
            if (lstHomePageMsg != null)
            {
                lstHomePageMsg = lstHomePageMsg.Where(x => x.Message_Type == (int)eMessageType.Bulletin).ToList();
                switch (GridViewSortExpression)
                {
                    case "start_date":
                        if (GridViewShortDirection == SortDirection.Ascending)
                        {
                            lstHomePageMsg = lstHomePageMsg.OrderBy(x => x.Start_Date).ToList();
                            GridViewShortDirection = SortDirection.Descending;
                        }
                        else
                        {
                            lstHomePageMsg = lstHomePageMsg.OrderByDescending(x => x.Start_Date).ToList();
                            GridViewShortDirection = SortDirection.Ascending;
                        }
                        break;

                    case "end_date":
                        if (GridViewShortDirection == SortDirection.Ascending)
                        {
                            lstHomePageMsg = lstHomePageMsg.OrderBy(x => x.End_Date).ToList();
                            GridViewShortDirection = SortDirection.Descending;
                        }
                        else
                        {
                            lstHomePageMsg = lstHomePageMsg.OrderByDescending(x => x.End_Date).ToList();
                            GridViewShortDirection = SortDirection.Ascending;
                        }
                        break;
                }
            }

            gvBulletin.EditIndex = this.EditIndexBulletin;
            gvBulletin.DataSource = lstHomePageMsg;
            gvBulletin.DataBind();
            if (this.EditIndexBulletin >= 0)
            {
                gvBulletin.Rows[this.EditIndexBulletin].CssClass = "RowInEditMode";
                gvBulletin.Rows[this.EditIndexBulletin].Cells[0].Attributes.Add("colspan", "7");
                gvBulletin.Rows[this.EditIndexBulletin].Cells[1].Visible = false;
                gvBulletin.Rows[this.EditIndexBulletin].Cells[2].Visible = false;
                gvBulletin.Rows[this.EditIndexBulletin].Cells[3].Visible = false;
                gvBulletin.Rows[this.EditIndexBulletin].Cells[4].Visible = false;
                gvBulletin.Rows[this.EditIndexBulletin].Cells[5].Visible = false;
                //btnAddNew.Visible = false;
                btnBulletin.Visible = false;
                //ucEditWecomeMessage1.Visible = false; ucEditWecomeMessage2.Visible = false;
            }
            else
            {
                //btnAddNew.Visible = true;
                btnBulletin.Visible = true;
                //ucEditWecomeMessage1.Visible = false; ucEditWecomeMessage2.Visible = false;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBulletin.ascx.cs BindGridBulletin";
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
                    try
                    {
                        objHomePageMsgHist = FetchValueForHomePageMessageHistForDelete(id);
                        if (objHomePageMsgHist != null)
                        {
                            objHomePageMsgHist.Action = "D";
                            objHomePageMsgHist.Is_Deleted = true;
                            objHomePageMsgHist.Home_Page_Message_Id = id;
                            objHomePageMsgHistBAL.Save_LAPP_home_page_message_hist(objHomePageMsgHist);

                        }
                    }

                    catch (Exception ex)
                    {
                        objExLog = Fetchlog();
                        objExLog.Thread = ex.StackTrace.ToString();
                        objExLog.Logger = "ucBulletin.ascx.cs imgBtnDelete_Click";
                        objExLog.Message = ex.Message;
                        objExLog.Exception = ex.ToString();
                        objExLog.Context = ex.Source;
                        objexLogBal.Save_LAPP_exception_log(objExLog);
                        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                        MessageBox.Show(this.Page, ex.Message, 2);
                    }

                    LAPP_home_page_message objMessage = new LAPP_home_page_message();
                    objHomePageMsgBAL.Delete_LAPP_home_page_messager(id);
                    MessageBox.Show(this.Page, Messages.DeleteSuccess());
                }
                BindGridBulletin();
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucHomePageMessage.ascx-imgBtnDelete_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    protected void gvHomePageMessage_OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBulletin.ascx.cs gvHomePageMessage_OnRowDataBound";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

    }
    protected void gvHomePageMessages_PageIndexChanging(object sender, GridViewPageEventArgs e)
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
            gvBulletin.PageIndex = e.NewPageIndex;
            this.BindGridBulletin();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBulletin.ascx.cs gvHomePageMessages_PageIndexChanging";
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
                LAPP_home_page_message objMessage = new LAPP_home_page_message();
                objMessage = objHomePageMsgBAL.Get_LAPP_home_page_message_BY_ID(id);
                if (str.ToLower() == "enable")
                {

                    objMessage.Is_Active = true;
                }
                else
                {
                    objMessage.Is_Active = false;
                }
                objHomePageMsgBAL.Update_LAPP_home_page_message(objMessage, id);
            }
            //BindGrid();
            BindGridBulletin();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBulletin.ascx.cs Enable_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public void SaveBulletin()
    {
        try
        {
            objHomePageMsg = FetchValueForHomePageMsg(gvBulletin, this.EditIndexBulletin);
            if (objHomePageMsg != null)
            {
                if (this.home_page_message_id > 0)
                {
                    objHomePageMsgBAL.Update_LAPP_home_page_message(objHomePageMsg, this.home_page_message_id);
                    try
                    {
                        objHomePageMsgHist = FetchValueForHomePageMessageHist(gvBulletin, this.EditIndexBulletin);
                        if (objHomePageMsgHist != null)
                        {
                            objHomePageMsgHist.Action = "U";
                            objHomePageMsgHist.Is_Deleted = objHomePageMsg.Is_Deleted;
                            objHomePageMsgHist.Home_Page_Message_Id = objHomePageMsg.Home_Page_Message_Id;
                            objHomePageMsgHistBAL.Save_LAPP_home_page_message_hist(objHomePageMsgHist);
                            MessageBox.Show(this.Page, Messages.UpdateSuccess(), (int)eAlertType.Success);

                        }
                    }

                    catch (Exception ex)
                    {
                        objExLog = Fetchlog();
                        objExLog.Thread = ex.StackTrace.ToString();
                        objExLog.Logger = "ucBulletin.ascx.cs SaveBulletin";
                        objExLog.Message = ex.Message;
                        objExLog.Exception = ex.ToString();
                        objExLog.Context = ex.Source;
                        objexLogBal.Save_LAPP_exception_log(objExLog);
                        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                        MessageBox.Show(this.Page, ex.Message, 2);
                    }

                    MessageBox.Show(this.Page, Messages.UpdateSuccess(), (int)eAlertType.Success);
                }
                else
                {
                    int res = objHomePageMsgBAL.Save_LAPP_home_page_message(objHomePageMsg);
                    if (res > 0)
                    {
                        this.home_page_message_id = res;
                        try
                        {
                            objHomePageMsgHist = FetchValueForHomePageMessageHist(gvBulletin, this.EditIndex);
                            if (objHomePageMsgHist != null)
                            {
                                objHomePageMsgHist.Action = "I";
                                objHomePageMsgHist.Is_Deleted = objHomePageMsg.Is_Deleted;
                                objHomePageMsgHist.Home_Page_Message_Id = res;
                                objHomePageMsgHistBAL.Save_LAPP_home_page_message_hist(objHomePageMsgHist);
                                MessageBox.Show(this.Page, Messages.UpdateSuccess(), (int)eAlertType.Success);

                            }
                        }
                        catch (Exception ex)
                        {
                            objExLog = Fetchlog();
                            objExLog.Thread = ex.StackTrace.ToString();
                            objExLog.Logger = "ucBulletin.ascx.cs SaveBulletin";
                            objExLog.Message = ex.Message;
                            objExLog.Exception = ex.ToString();
                            objExLog.Context = ex.Source;
                            objexLogBal.Save_LAPP_exception_log(objExLog);
                            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                            MessageBox.Show(this.Page, ex.Message, 2);
                        }
                    }
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
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBulletin.ascx.cs SaveBulletin";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

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
    protected void gvHomePageMessages_Sorting(object sender, GridViewSortEventArgs e)
    {
        GridViewSortExpression = e.SortExpression;
        //  BindGrid();
    }
    #endregion

    #region Private Methods
    private LAPP_home_page_message FetchValueForHomePageMsg(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtMessage = gv.Rows[EditInd].Cells[0].FindControl("txtMessage") as TextBox;
            TextBox txtBeginDate = gv.Rows[EditInd].Cells[0].FindControl("txtBeginDate") as TextBox;
            TextBox txtEndDate = gv.Rows[EditInd].Cells[0].FindControl("txtEndDate") as TextBox;
            TextBox txtSortOrder = gv.Rows[EditInd].Cells[0].FindControl("txtSortOrder") as TextBox;
            DropDownList ddlMessageTy = gv.Rows[EditInd].Cells[0].FindControl("ddlMessageTy") as DropDownList;
            DropDownList ddlStatus = gv.Rows[EditInd].Cells[0].FindControl("ddlStatus") as DropDownList;
            if (this.home_page_message_id > 0)
            {
                objHomePageMsg = objHomePageMsgBAL.Get_LAPP_home_page_message_BY_ID(home_page_message_id);
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
            objExLog.Logger = "ucBulletin.ascx.cs FetchValueForHomePageMsg";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
        return objHomePageMsg;
    }

    private LAPP_home_page_message_hist FetchValueForHomePageMessageHist(GridView GvHomePageMsg, int EditIndex)
    {
        try
        {
            TextBox txtMessage = GvHomePageMsg.Rows[EditIndex].Cells[0].FindControl("txtMessage") as TextBox;
            TextBox txtBeginDate = GvHomePageMsg.Rows[EditIndex].Cells[0].FindControl("txtBeginDate") as TextBox;
            TextBox txtEndDate = GvHomePageMsg.Rows[EditIndex].Cells[0].FindControl("txtEndDate") as TextBox;
            TextBox txtSortOrder = GvHomePageMsg.Rows[EditIndex].Cells[0].FindControl("txtSortOrder") as TextBox;
            DropDownList ddlMessageTy = GvHomePageMsg.Rows[EditIndex].Cells[0].FindControl("ddlMessageTy") as DropDownList;
            DropDownList ddlStatus = GvHomePageMsg.Rows[EditIndex].Cells[0].FindControl("ddlStatus") as DropDownList;
            objHomePageMsgHist = new LAPP_home_page_message_hist();
            objHomePageMsgHist.Message_Type = Convert.ToInt32(ddlMessageTy.SelectedValue);
            objHomePageMsgHist.Message_Content = txtMessage.Text;
            objHomePageMsgHist.Start_Date = Convert.ToDateTime(txtBeginDate.Text);
            objHomePageMsgHist.End_Date = Convert.ToDateTime(txtEndDate.Text);
            objHomePageMsgHist.Sort_Order = Convert.ToInt32(txtSortOrder.Text);
            objHomePageMsgHist.Is_Active = Convert.ToBoolean(ddlStatus.SelectedValue);
            objHomePageMsgHist.Created_On = DateTime.Now;
            objHomePageMsgHist.DTS = DateTime.Now;
            objHomePageMsgHist.Is_Deleted = false;
            objHomePageMsgHist.Created_By = UIHelper.UserIDBySession();
            objHomePageMsgHist.Modified_By = UIHelper.UserIDBySession();
            objHomePageMsgHist.Modified_DTS = DateTime.Now;

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBulletin.ascx.cs FetchValueForHomePageMessageHist";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
        return objHomePageMsgHist;
    }

    private LAPP_home_page_message_hist FetchValueForHomePageMessageHistForDelete(int HomePageMsgId)
    {
        try
        {
            objHomePageMsg = objHomePageMsgBAL.Get_LAPP_home_page_message_BY_ID(HomePageMsgId);
            objHomePageMsgHist = new LAPP_home_page_message_hist();
            if (objHomePageMsg != null)
            {
                objHomePageMsgHist.Message_Type = objHomePageMsg.Message_Type;
                objHomePageMsgHist.Message_Content = objHomePageMsg.Message_Content;
                objHomePageMsgHist.Start_Date = objHomePageMsg.Start_Date;
                objHomePageMsgHist.End_Date = objHomePageMsg.End_Date;
                objHomePageMsgHist.Sort_Order = objHomePageMsg.Sort_Order;
                objHomePageMsgHist.Is_Active = objHomePageMsg.Is_Active;
                objHomePageMsgHist.Created_On = objHomePageMsg.Created_On;
                objHomePageMsgHist.DTS = objHomePageMsg.DTS;
                objHomePageMsgHist.Is_Deleted = objHomePageMsg.Is_Deleted;
                objHomePageMsgHist.Created_By = objHomePageMsg.Created_By;
                objHomePageMsgHist.Modified_By = UIHelper.UserIDBySession();
                objHomePageMsgHist.Modified_DTS = DateTime.Now;

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBulletin.ascx.cs FetchValueForHomePageMessageHistForDelete";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
        return objHomePageMsgHist;
    }

    #endregion

}