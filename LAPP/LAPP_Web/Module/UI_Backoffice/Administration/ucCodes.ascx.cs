using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucCodes : System.Web.UI.UserControl
{
    String MenuName = "Codes";


    #region Class Members
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    LAPP_code objCode = new LAPP_code();
    LAPP_codeBAL objCodeBAL = new LAPP_codeBAL();
    LAPP_code_type objCodeTy = new LAPP_code_type();
    LAPP_code_typeBAL objCodeTyBAL = new LAPP_code_typeBAL();
    LAPP_code_type_hist objCodeTypeHist = new LAPP_code_type_hist();
    LAPP_code_type_histBAL objCodeTypeHistBal = new LAPP_code_type_histBAL();
    LAPP_code_hist ObjCodeHist = new LAPP_code_hist();
    LAPP_code_histBAL ObjCodeHistBal = new LAPP_code_histBAL();
    #endregion

    #region Class Property

    public int Code_ID
    {
        get
        {
            if (ViewState["Code_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Code_ID"].ToString());
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Code_ID"] = value;
        }
    }
    public int Code_Type_Id
    {
        get
        {
            if (ViewState["Code_Type_Id"] != null)
            {
                return Convert.ToInt32(ViewState["Code_Type_Id"].ToString());
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Code_Type_Id"] = value;
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
    public int EditIndexCoddeTy
    {
        get
        {
            if (ViewState["EditIndexCoddeTy"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexCoddeTy"]);
            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexCoddeTy"] = value;
        }
    }
    public int PageNumberCodeType
    {
        get
        {
            if (ViewState["PageNumberCodeType"] != null)
                return Convert.ToInt32(ViewState["PageNumberCodeType"]);
            else
                return 1;
        }
        set
        {
            ViewState["PageNumberCodeType"] = value;
        }
    }
    public int CurrentPageCodeType
    {
        get
        {
            if (PagerControl1 != null)
            {
                return PagerControl1.CurrentPage;
            }
            else
            {
                return 1;
            }
        }
        set
        {
            PagerControl1.CurrentPage = value;
        }
    }
    public int PagerCodeType
    {
        get
        {

            return Convert.ToInt32(gvCodeType.PageSize);

        }
        set
        {
            PagerControl1.PagerSize = value;
        }
    }
    public int PageNumberCode
    {
        get
        {
            if (ViewState["PageNumberCode"] != null)
                return Convert.ToInt32(ViewState["PageNumberCode"]);
            else
                return 1;
        }
        set
        {
            ViewState["PageNumberCode"] = value;
        }
    }
    public int CurrentPageCode
    {
        get
        {
            if (PagerControl2 != null)
            {
                return PagerControl2.CurrentPage;
            }
            else
            {
                return 1;
            }
        }
        set
        {
            PagerControl2.CurrentPage = value;
        }
    }
    public int PagerCode
    {
        get
        {

            return Convert.ToInt32(gvCode.PageSize);

        }
        set
        {
            PagerControl2.PagerSize = value;
        }
    }
    public string CodeTypeCd
    {
        get
        {
            if (ViewState["CodeTypeCd"] != null)
            {
                return ViewState["CodeTypeCd"].ToString();
            }
            else
            {
                return "STATE";
            }
        }
        set
        {
            ViewState["CodeTypeCd"] = value;
        }
    }
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
    #endregion

    #region Page Event Handler

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCodeTypeDropdown();

            BindGridCodeTy();
            BindGridCode();
        }
        PagerControl1.UCClick += new EventHandler(btnBindGridCodeType);
        PagerControl2.UCClick += new EventHandler(btnBindGridCode);
        Onload();
    }
    public void Onload()
    {
        if (Is_Search)
        {
            MessageBox.RunJsInUpdatePanel(this.Page, "javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');");
        }
        else
        {
            MessageBox.RunJsInUpdatePanel(this.Page, "javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton');");
        }
    }
    protected void btnBindGridCode(object sender, EventArgs e)
    {
        BindGridCode();

    }
    protected void btnBindGridCodeType(object sender, EventArgs e)
    {

        BindGridCodeTy();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            if (PermissionHandler.UserHasPermission("U", MenuName, this.Page))
            {
                SaveCodeTy();
                this.EditIndexCoddeTy = -1;
                BindGridCodeTy();
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs btnSave_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }


    }
    protected void btnSaveCode_Click(object sender, EventArgs e)
    {
        try
        {
            if (PermissionHandler.UserHasPermission("U", MenuName, this.Page))
            {

                SaveCode();
                this.EditIndex = -1;
                BindGridCode();
            }
        }
        catch (Exception ex)
        {

            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs btnSaveCode_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }


    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        this.EditIndexCoddeTy = -1;
        BindGridCodeTy();
    }
    protected void btnCancelCode_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        BindGridCode();
    }
    protected void imgBtnEdit_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            ImageButton imgBtn = (ImageButton)sender;
            if (imgBtn != null)
            {
                if (PermissionHandler.UserHasPermission("U", MenuName, this.Page))
                {

                    int ID = Convert.ToInt32(imgBtn.CommandArgument);
                    this.EditIndexCoddeTy = Convert.ToInt32(imgBtn.Attributes["RowIndex"]);
                    BindGridCodeTy();
                    this.Code_Type_Id = ID;
                    FillControlCodeTy(gvCodeType, this.EditIndexCoddeTy);
                }
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs imgBtnEdit_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
    }

    protected void imgBtnEdit1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            ImageButton imgBtn = (ImageButton)sender;
            if (imgBtn != null)
            {
                if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
                {
                    int ID = Convert.ToInt32(imgBtn.CommandArgument);
                    this.EditIndex = Convert.ToInt32(imgBtn.Attributes["RowIndex"]);
                    BindGridCode();
                    this.Code_ID = ID;
                    BindDropDownCodeTy(gvCode, this.EditIndex);
                    FillControlForCode(gvCode, this.EditIndex);
                }
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs imgBtnEdit1_Click";
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
        try
        {
            if (PermissionHandler.UserHasPermission("D", MenuName, this.Page))
            {

                ImageButton imgBtn = (ImageButton)sender;
                if (imgBtn != null)
                {
                    int ID = Convert.ToInt32(imgBtn.CommandArgument);
                    objCode = objCodeBAL.Get_LAPP_code_BY_ID(ID);
                    try
                    {
                        ObjCodeHist = FetchCodeHistForDelete(ID);
                        if (objCodeTypeHist != null)
                        {
                            ObjCodeHist.Action = "D";
                            ObjCodeHist.Is_Deleted = true;
                            ObjCodeHist.Code_ID = ID;
                            ObjCodeHistBal.Save_LAPP_code_hist(ObjCodeHist);

                        }
                    }
                    catch (Exception ex)
                    {
                        objExLog = Fetchlog();
                        objExLog.Thread = ex.StackTrace.ToString();
                        objExLog.Logger = "ucCodes.ascx.cs imgBtnDelete_Click";
                        objExLog.Message = ex.Message;
                        objExLog.Exception = ex.ToString();
                        objExLog.Context = ex.Source;
                        objexLogBal.Save_LAPP_exception_log(objExLog);
                        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                        MessageBox.Show(this.Page, ex.Message, 2);
                    }
                    if (objCode != null)
                    {
                        objCode.Is_Deleted = true;
                        int recoID = objCodeBAL.Update_LAPP_code(objCode, ID);
                    }
                }
                BindGridCode();
                MessageBox.Show(this.Page, "Deleted", 2);
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs imgBtnDelete_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    protected void imgBtnDeleteCodeTy_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (PermissionHandler.UserHasPermission("D", MenuName, this.Page))
            {
                ImageButton imgBtn = (ImageButton)sender;
                if (imgBtn != null)
                {
                    int ID = Convert.ToInt32(imgBtn.CommandArgument);
                    objCodeTy = objCodeTyBAL.Get_LAPP_code_type_BY_ID(ID);
                    try
                    {
                        objCodeTypeHist = FetchCodeTypeHistForDelete(ID);
                        if (objCodeTypeHist != null)
                        {
                            objCodeTypeHist.Action = "D";
                            objCodeTypeHist.Is_Deleted = true;
                            objCodeTypeHist.Code_Type_Id = ID;
                            objCodeTypeHistBal.Save_LAPP_code_type_hist(objCodeTypeHist);

                        }
                    }
                    catch (Exception ex)
                    {

                    }
                    if (objCodeTy != null)
                    {
                        if (objCodeTy.Code_Type_CD.ToLower() == this.CodeTypeCd.ToLower())
                        {
                            this.CodeTypeCd = "";
                        }
                        objCodeTy.Is_Deleted = true;
                        int recoID = objCodeTyBAL.Update_LAPP_code_type(objCodeTy, ID);
                    }
                }

                BindGridCodeTy();
                MessageBox.Show(this.Page, "Deleted", 2);
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs imgBtnDeleteCodeTy_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }


    protected void lnkbtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect(Page.Request.RawUrl);
    }
    public void pager_Command(object sender, CommandEventArgs e)
    {
        this.PageNumberCodeType = Convert.ToInt32(e.CommandArgument);
        BindGridCodeTy();
    }
    protected void gvCode_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        if (GridViewShortDirection == SortDirection.Ascending)
        {
            GridViewShortDirection = SortDirection.Descending;
        }
        else
        {
            GridViewShortDirection = SortDirection.Ascending;
        }
        this.EditIndex = -1;
        gvCode.PageIndex = e.NewPageIndex;
        this.BindGridCode();

    }
    protected void gvCodeType_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        if (GridViewShortDirection == SortDirection.Ascending)
        {
            GridViewShortDirection = SortDirection.Descending;
        }
        else
        {
            GridViewShortDirection = SortDirection.Ascending;
        }
        this.EditIndex = -1;
        gvCodeType.PageIndex = e.NewPageIndex;
        this.BindGridCodeTy();

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

    #endregion

    #endregion

    #region Public Methods

    public void BindGridCode()
    {
        try
        {


            List<LAPP_code> lstCodeCount = new List<LAPP_code>();
            List<LAPP_code> lstCode = new List<LAPP_code>();
            if (this.Is_Search)
            {
                lstCode = objCodeBAL.Get_All_LAPP_code__by_Pager_Search(Convert.ToInt32(ddlCodetype.SelectedValue), txtKeyword.Text, this.CurrentPageCode, this.PagerCode);
            }
            else
            {
                if (this.CodeTypeCd != "")
                {
                    lstCode = objCodeBAL.Get_All_LAPP_code__by_PagerAnd_CodeTypeCd(CodeTypeCd, this.CurrentPageCode, this.PagerCode); //(this.CurrentPageCode, this.PagerCode);// objCodeBAL.Get_All_LAPP_code();
                }
                else
                {
                    lstCode = objCodeBAL.Get_All_LAPP_code__by_Pager(this.CurrentPageCode, this.PagerCode);// objCodeBAL.Get_All_LAPP_code();
                }
            }
            if (lstCode != null && lstCode.Count > 0)
            {
                lstCode = lstCode.OrderByDescending(x => x.Code_ID).ToList();
                if (this.CodeTypeCd != "")
                {
                    //lstCodeCount = objCodeBAL.Get_All_LAPP_code();
                    //lstCodeCount = lstCodeCount.Where(x => x.Code_Type_CD == this.CodeTypeCd).ToList();

                    PagerControl2.Count = lstCode[0].NoOfRecord;
                }

            }
            else
            {
                PagerControl2.Count = 0;
            }
            PagerControl2.CurrentPage = this.CurrentPageCode;
            PagerControl2.PagerSize = this.PagerCode;
            PagerControl2.BindPager();
            gvCode.EditIndex = this.EditIndex;
            gvCode.DataSource = lstCode;
            gvCode.DataBind();
            if (this.EditIndex >= 0)
            {
                gvCode.Rows[this.EditIndex].CssClass = "RowInEditMode";
                gvCode.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "5");
                gvCode.Rows[this.EditIndex].Cells[1].Visible = false;
                gvCode.Rows[this.EditIndex].Cells[2].Visible = false;
                gvCode.Rows[this.EditIndex].Cells[3].Visible = false;
                gvCode.Rows[this.EditIndex].Cells[4].Visible = false;

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs BindGridCode";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    //public void BindGridCodeByCodeTypeCd(string CodeTypeCd)
    //{
    //    try
    //    {


    //        List<LAPP_code> lstCode = new List<LAPP_code>();
    //        lstCode = objCodeBAL.Get_All_LAPP_code__by_PagerAnd_CodeTypeCd(CodeTypeCd, this.CurrentPageCode, this.PagerCodeType); //(this.CurrentPageCode, this.PagerCode);// objCodeBAL.Get_All_LAPP_code();

    //        if (lstCode != null && lstCode.Count > 0)
    //        {
    //            lstCode = lstCode.OrderByDescending(x => x.Code_ID).ToList();
    //            PagerControl2.Count = objCodeBAL.Get_LAPP_code_get_Count();
    //            PagerControl2.CurrentPage = this.CurrentPageCode;
    //            PagerControl2.PagerSize = this.PagerCode;
    //            PagerControl2.BindPager();
    //        }
    //        gvCode.EditIndex = this.EditIndex;
    //        gvCode.DataSource = lstCode;
    //        gvCode.DataBind();
    //        if (this.EditIndex >= 0)
    //        {
    //            gvCode.Rows[this.EditIndex].CssClass = "RowInEditMode";
    //            gvCode.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "5");
    //            gvCode.Rows[this.EditIndex].Cells[1].Visible = false;
    //            gvCode.Rows[this.EditIndex].Cells[2].Visible = false;
    //            gvCode.Rows[this.EditIndex].Cells[3].Visible = false;
    //            gvCode.Rows[this.EditIndex].Cells[4].Visible = false;

    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        objExLog = Fetchlog();
    //        objExLog.Thread = "Error Occured-ucCodes.ascx-BindGrid";
    //        objExLog.Message = ex.Message;
    //        objExLog.Exception = ex.ToString();
    //        objExLog.Context = ex.Source;
    //        objexLogBal.Save_LAPP_exception_log(objExLog);
    //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
    //        MessageBox.Show(this.Page, ex.Message, 2);
    //    }
    //}
    public void BindCodeTypeDropdown()
    {
        try
        {
            //  int PageNumber = 0;
            List<LAPP_code_type> lstCodeTy = new List<LAPP_code_type>();


            lstCodeTy = objCodeTyBAL.Get_All_LAPP_code__by_Pager(this.CurrentPageCodeType, this.PagerCodeType);
            if (lstCodeTy != null && lstCodeTy.Count > 0)
            {
                ddlCodetype.DataSource = lstCodeTy;
                ddlCodetype.DataTextField = "Code_Type_CD";
                ddlCodetype.DataValueField = "Code_Type_ID";
                ddlCodetype.DataBind();
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs BindCodeTypeDropdown";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public void BindGridCodeTy()
    {
        try
        {
            //  int PageNumber = 0;
            List<LAPP_code_type> lstCodeTy = new List<LAPP_code_type>();


            lstCodeTy = objCodeTyBAL.Get_All_LAPP_code__by_Pager(this.CurrentPageCodeType, this.PagerCodeType);
            if (lstCodeTy != null && lstCodeTy.Count > 0)
            {
                lstCodeTy = lstCodeTy.OrderByDescending(x => x.Code_Type_Id).ToList();
                PagerControl1.Count = objCodeTyBAL.Get_LAPP_code_type_count();
                PagerControl1.CurrentPage = this.CurrentPageCodeType;
                PagerControl1.PagerSize = this.PagerCodeType;
                PagerControl1.BindPager();



            }
            this.EditIndex = -1;
            gvCodeType.EditIndex = this.EditIndexCoddeTy;
            gvCodeType.DataSource = lstCodeTy;
            gvCodeType.DataBind();
            if (this.EditIndexCoddeTy >= 0)
            {
                gvCodeType.Rows[this.EditIndexCoddeTy].CssClass = "RowInEditMode";
                gvCodeType.Rows[this.EditIndexCoddeTy].Cells[0].Attributes.Add("colspan", "4");
                gvCodeType.Rows[this.EditIndexCoddeTy].Cells[1].Visible = false;
                //gvCodeType.Rows[this.EditIndexCoddeTy].Cells[2].Visible = false;
                //gvCodeType.Rows[this.EditIndexCoddeTy].Cells[3].Visible = false;

            }

            ///AddRowIndexInCodeTypeRadioButton();

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs BindGridCodeTy";
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

    public void SaveCodeTy()
    {
        try
        {
            objCodeTy = FetchValueForCodeTy(gvCodeType, this.EditIndexCoddeTy);
            if (objCodeTy != null)
            {
                if (this.Code_Type_Id > 0)
                {
                    objCodeTyBAL.Update_LAPP_code_type(objCodeTy, this.Code_Type_Id);
                    try
                    {
                        objCodeTypeHist = FetchCodeTypeHistory(gvCodeType, this.EditIndexCoddeTy);
                        if (objCodeTypeHist != null)
                        {
                            objCodeTypeHist.Action = "U";
                            objCodeTypeHist.Is_Deleted = objCodeTy.Is_Deleted;
                            objCodeTypeHist.Code_Type_Id = this.Code_Type_Id;
                            objCodeTypeHistBal.Save_LAPP_code_type_hist(objCodeTypeHist);

                        }
                    }
                    catch (Exception ex)
                    {
                        objExLog = Fetchlog();
                        objExLog.Thread = ex.StackTrace.ToString();
                        objExLog.Logger = "ucCodes.ascx.cs SaveCodeTy";
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
                    int res = objCodeTyBAL.Save_LAPP_code_type(objCodeTy);
                    this.Code_Type_Id = res;
                    MessageBox.Show(this.Page, Messages.SaveSuccess(), (int)eAlertType.Success);
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
            objExLog.Logger = "ucCodes.ascx.cs SaveCodeTy";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public void SaveCode()
    {
        try
        {
            objCode = FetchValueForCode(gvCode, this.EditIndex);
            if (objCode != null)
            {
                if (this.Code_ID > 0)
                {
                    objCodeBAL.Update_LAPP_code(objCode, this.Code_ID);

                    try
                    {

                        ObjCodeHist = FetchCodeHistory(gvCode, this.EditIndex);
                        if (ObjCodeHist != null)
                        {
                            ObjCodeHist.Action = "U";
                            ObjCodeHist.Is_Deleted = objCodeTy.Is_Deleted;
                            ObjCodeHist.Code_ID = this.Code_ID;
                            ObjCodeHist.Created_On = objCode.Created_On;
                            ObjCodeHist.Created_By = objCode.Created_By;
                            ObjCodeHistBal.Save_LAPP_code_hist(ObjCodeHist);
                        }
                    }
                    catch (Exception ex)
                    {
                        objExLog = Fetchlog();
                        objExLog.Thread = ex.StackTrace.ToString();
                        objExLog.Logger = "ucCodes.ascx.cs SaveCode";
                        objExLog.Message = ex.Message;
                        objExLog.Exception = ex.ToString();
                        objExLog.Context = ex.Source;
                        objexLogBal.Save_LAPP_exception_log(objExLog);
                        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                        MessageBox.Show(this.Page, ex.Message, 2);
                    }
                    MessageBox.Show_Second(this.Page, Messages.UpdateSuccess(), (int)eAlertType.Success);
                }
                else
                {
                    int res = objCodeBAL.Save_LAPP_code(objCode);
                    //if (res > 0)
                    //{
                    //    objCodeTypeHist = FetchCodeTypeHistory();
                    //    if (objCodeTypeHist != null)
                    //    {
                    //        objCodeTypeHist.Action = "I";
                    //        objCodeTypeHist.Is_Deleted = objCodeTy.Is_Deleted;
                    //        objCodeTypeHist.Code_Type_Id = objCodeTy.Code_Type_Id;
                    //        objCodeTypeHistBal.Save_LAPP_code_type_hist(objCodeTypeHist);
                    //    }

                    //}
                    this.Code_ID = res;
                    MessageBox.Show_Second(this.Page, Messages.SaveSuccess(), (int)eAlertType.Success);
                }
            }
            else
            {
                MessageBox.Show_Second(this.Page, "Error Occured", (int)eAlertType.Error);

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs SaveCode";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }
    }
    public void FillControlCodeTy(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtCodeTy = gv.Rows[EditInd].Cells[0].FindControl("txtCodeTy") as TextBox;
            TextBox txtDescriptions = gv.Rows[EditInd].Cells[0].FindControl("txtDescriptions") as TextBox;
            objCodeTy = objCodeTyBAL.Get_LAPP_code_type_BY_ID(Code_Type_Id);
            if (objCodeTy != null)
            {
                txtCodeTy.Text = objCodeTy.Code_Type_CD;
                txtDescriptions.Text = objCodeTy.Code_Type_Description;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs FillControlCodeTy";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public void FillControlForCode(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtCodeName = gv.Rows[EditInd].Cells[0].FindControl("txtCodeName") as TextBox;
            TextBox txtDescription = gv.Rows[EditInd].Cells[0].FindControl("txtDescription") as TextBox;
            TextBox txtDisplayOrder = gv.Rows[EditInd].Cells[0].FindControl("txtDisplayOrder") as TextBox;
            DropDownList ddlCdeTy = gv.Rows[EditInd].Cells[0].FindControl("ddlCdeTy") as DropDownList;
            CheckBox chkDefaultDisplay = gv.Rows[EditInd].Cells[0].FindControl("chkDefaultDisplay") as CheckBox;
            objCode = objCodeBAL.Get_LAPP_code_BY_ID(Code_ID);
            if (objCode != null)
            {
                txtCodeName.Text = objCode.Code_Name;
                ddlCdeTy.SelectedValue = objCode.Code_Type_ID.ToString();
                txtDescription.Text = objCode.Code_Description;
                txtDisplayOrder.Text = objCode.Display_Order.ToString();
                chkDefaultDisplay.Checked = objCode.Default_Display;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs FillControlForCode";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    #endregion

    #region Private Methods
    private LAPP_code FetchValueForCode(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtCodeName = gv.Rows[EditInd].Cells[0].FindControl("txtCodeName") as TextBox;
            TextBox txtDescription = gv.Rows[EditInd].Cells[0].FindControl("txtDescription") as TextBox;
            TextBox txtDisplayOrder = gv.Rows[EditInd].Cells[0].FindControl("txtDisplayOrder") as TextBox;
            DropDownList ddlCdeTy = gv.Rows[EditInd].Cells[0].FindControl("ddlCdeTy") as DropDownList;
            CheckBox chkDefaultDisplay = gv.Rows[EditInd].Cells[0].FindControl("chkDefaultDisplay") as CheckBox;
            objCode = objCodeBAL.Get_LAPP_code_BY_ID(Code_ID);
            if (objCode != null)
            {
                objCode.Code_Name = txtCodeName.Text.Trim();
                objCode.Code_Type_ID = Convert.ToInt32(ddlCdeTy.SelectedValue);
                objCode.Code_Type_CD = ddlCdeTy.SelectedItem.Text;
                objCode.Code_Description = txtDescription.Text.Trim();
                objCode.Display_Order = Convert.ToInt32(txtDisplayOrder.Text);
                objCode.Default_Display = chkDefaultDisplay.Checked;
                objCode.DTS = DateTime.Now;

            }
            else
            {
                objCode = new LAPP_code();
                objCode.Code_Name = txtCodeName.Text.Trim();
                objCode.Code_Type_ID = Convert.ToInt32(ddlCdeTy.SelectedValue);
                objCode.Code_Type_CD = ddlCdeTy.SelectedItem.Text;
                objCode.Code_Description = txtDescription.Text.Trim();
                objCode.Display_Order = Convert.ToInt32(txtDisplayOrder.Text);
                objCode.Default_Display = chkDefaultDisplay.Checked;
                objCode.DTS = DateTime.Now;
                objCode.Is_Active = true;
                objCode.Is_Deleted = false;
                objCode.Created_On = DateTime.Now;
                objCode.Created_By = UIHelper.UserIDBySession();

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs FetchValueForCode";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
        return objCode;
    }
    private LAPP_code_type FetchValueForCodeTy(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtCodeTy = gv.Rows[EditInd].Cells[0].FindControl("txtCodeTy") as TextBox;
            TextBox txtDescriptions = gv.Rows[EditInd].Cells[0].FindControl("txtDescriptions") as TextBox;
            objCodeTy = objCodeTyBAL.Get_LAPP_code_type_BY_ID(Code_Type_Id);
            if (objCodeTy != null)
            {

                objCodeTy.Code_Type_CD = txtCodeTy.Text.Trim();
                objCodeTy.Code_Type_Description = txtDescriptions.Text.Trim();
                objCodeTy.DTS = DateTime.Now;
            }
            else
            {
                objCodeTy = new LAPP_code_type();
                objCodeTy.Code_Type_CD = txtCodeTy.Text.Trim();
                objCodeTy.Code_Type_Description = txtDescriptions.Text.Trim();
                objCodeTy.DTS = DateTime.Now;
                objCodeTy.Is_Active = true;
                objCodeTy.Is_Deleted = false;
                objCodeTy.Created_On = DateTime.Now;
                objCodeTy.Created_By = UIHelper.UserIDBySession();
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs FetchValueForCodeTy";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
        return objCodeTy;
    }

    private LAPP_code_type_hist FetchCodeTypeHistory(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtCodeTy = gv.Rows[EditInd].Cells[0].FindControl("txtCodeTy") as TextBox;
            TextBox txtDescriptions = gv.Rows[EditInd].Cells[0].FindControl("txtDescriptions") as TextBox;
            objCodeTypeHist = new LAPP_code_type_hist();
            objCodeTypeHist.Code_Type_CD = txtCodeTy.Text.Trim();
            objCodeTypeHist.Code_Type_Description = txtDescriptions.Text.Trim();
            objCodeTypeHist.DTS = DateTime.Now;
            objCodeTypeHist.Is_Active = true;
            objCodeTypeHist.Is_Deleted = false;
            objCodeTypeHist.Created_On = DateTime.Now;
            objCodeTypeHist.Created_By = UIHelper.UserIDBySession();
            objCodeTypeHist.Modified_By = UIHelper.UserIDBySession();
            objCodeTypeHist.Modified_DTS = DateTime.Now;
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs FetchCodeTypeHistory";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
        return objCodeTypeHist;
    }

    private LAPP_code_type_hist FetchCodeTypeHistForDelete(int ID)
    {

        LAPP_code_type_hist ObjCodeTypeHist = new LAPP_code_type_hist();
        LAPP_code_type ObjCodeType = new LAPP_code_type();
        try
        {
            ObjCodeType = objCodeTyBAL.Get_LAPP_code_type_BY_ID(ID);
            if (ObjCodeType != null)
            {
                ObjCodeTypeHist = new LAPP_code_type_hist();
                ObjCodeTypeHist.Code_Type_CD = ObjCodeType.Code_Type_CD;
                ObjCodeTypeHist.Code_Type_Description = ObjCodeType.Code_Type_Description;
                ObjCodeTypeHist.DTS = ObjCodeType.DTS;
                ObjCodeTypeHist.Is_Active = ObjCodeType.Is_Active;
                ObjCodeTypeHist.Is_Deleted = ObjCodeType.Is_Active;
                ObjCodeTypeHist.Created_On = ObjCodeType.Created_On;
                ObjCodeTypeHist.Created_By = ObjCodeType.Created_By;
                ObjCodeTypeHist.Modified_By = UIHelper.UserIDBySession();
                ObjCodeTypeHist.Modified_DTS = DateTime.Now;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs FetchCodeTypeHistForDelete";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
        return ObjCodeTypeHist;
    }

    private void BindDropDownCodeTy(GridView gv, int EditInd)
    {
        try
        {
            DropDownList ddlCdeTy = gv.Rows[EditInd].Cells[0].FindControl("ddlCdeTy") as DropDownList;
            List<LAPP_code_type> lstCodeTy = new List<LAPP_code_type>();
            lstCodeTy = objCodeTyBAL.Get_All_LAPP_code_type();
            if (lstCodeTy != null)
            {
                ddlCdeTy.DataSource = lstCodeTy;
                ddlCdeTy.DataTextField = "Code_Type_CD";
                ddlCdeTy.DataValueField = "Code_Type_ID";
                ddlCdeTy.DataBind();
            }
            ddlCdeTy.Items.Insert(0, new ListItem("Select", "-1"));
            ddlCdeTy.SelectedValue = "-1";
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs BindDropDownCodeTy";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
    }

    #endregion

    protected void btnAddCodeType_Click(object sender, EventArgs e)
    {
        if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
        {
            divCodeType.Visible = true;
            divCodes.Visible = false; btnAddCodeType.Visible = false;
            this.EditIndexCoddeTy = -1;
            BindGridCodeTy();
            this.EditIndex = -1;
            BindGridCode();
        }
    }
    protected void btnNewCode_Click(object sender, EventArgs e)
    {
        if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
        {
            divCodes.Visible = true;
            divCodeType.Visible = false; btnNewCode.Visible = false;
            this.EditIndexCoddeTy = -1;
            BindGridCodeTy();
            this.EditIndex = -1;
            BindGridCode();
        }
    }
    protected void btnSaveCodeType_Click(object sender, EventArgs e)
    {
        if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
        {
            ucCodeType1.Save(); divCodeType.Visible = false;
            ucCodeType1.ClearControl();
            BindGridCodeTy();
            btnAddCodeType.Visible = true;
        }
    }
    protected void btnCancelCodeType_Click(object sender, EventArgs e)
    {
        ucCodeType1.ClearControl();
        divCodeType.Visible = false; btnAddCodeType.Visible = true;
    }
    protected void btnSaveCodes_Click(object sender, EventArgs e)
    {
        if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
        {
            ucCodePopup1.Save();
            divCodes.Visible = false; btnNewCode.Visible = true;
        }
    }
    protected void btnCancelCodes_Click(object sender, EventArgs e)
    {
        ucCodePopup1.ClearControl();
        divCodes.Visible = false; btnNewCode.Visible = true;
    }

    protected void gvCodeType_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //TextBox txtCodeName = gv.Rows[EditInd].Cells[0].FindControl("txtCodeName") as TextBox;

        CheckBox chkSelect = gvCode.Rows[0].Cells[0].FindControl("chkSelect") as CheckBox;
        chkSelect.Checked = true;
    }
    protected void gvCodeType_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // RadioButton rblSelect = e.Row.FindControl("rblSelect") as RadioButton;

            //rblSelect.Attributes.Add("onclick", "javascript:RadioChecked('" + rblSelect.ClientID + "');");

            // if (rblSelect != null)
            // {
            //     rblSelect.GroupName = "CodeTypeRadioButton";
            // }
            if (this.Is_Search)
            {
                HiddenField hfID = e.Row.Cells[0].FindControl("hfID") as HiddenField;
                if (hfID != null && hfID.Value == ddlCodetype.SelectedValue)
                {
                    e.Row.CssClass = "selected";
                }
                else
                {
                    e.Row.CssClass = "";
                }
            }
            else
            {
                if (!IsPostBack)
                {
                    if (e.Row.DataItemIndex == 0)
                    {
                        e.Row.CssClass = "selected";
                    }
                }
            }
            //e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyper/GridView1, "Select$" + e.Row.RowIndex;
            //e.Row.Attributes["style"] = "cursor:pointer";
        }
    }
    protected void gvCodeType_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void gvCodeType_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
    protected void rblSelect_CheckedChanged(object sender, EventArgs e)
    {
        try
        {
            RadioButton rblSelect = sender as RadioButton;
            if (rblSelect != null)
            {

                int RowIndex = Convert.ToInt32(rblSelect.Attributes["RowIndex"]);
                HiddenField hfCodeTypeCd = gvCodeType.Rows[RowIndex].FindControl("hfCodeTypeCd") as HiddenField;
                RadioButton rblSelectID = gvCodeType.Rows[RowIndex].FindControl("rblSelect") as RadioButton;
                GridViewRow PreviousRow = gvCodeType.Rows[RowIndex];
                string ID = rblSelectID.ID;
                MessageBox.RunJsInUpdatePanel(this.Page, "javascript:SelectSingleRadiobutton(ID)");
                //foreach (GridViewRow gvrow in gvCodeType.Rows)
                //{
                //    int i = 0;
                //    for (i = 0; i <= gvCodeType.Rows.Count; i++)
                //    {
                //        if (i == RowIndex)
                //        {
                //           // rblSelectID.Checked = true;
                //            ID = rblSelectID.ID + i;

                //        }
                //        else
                //        {
                //            PreviousRow.CssClass = "";
                //            rblSelectID.Checked = false;
                //        }
                //    }
                //}

                if (hfCodeTypeCd != null)
                {

                    this.CodeTypeCd = hfCodeTypeCd.Value;

                    // PreviousRow.CssClass = "selected";
                    BindGridCode();
                    //PreviousRow.CssClass.Remove("selected",RowIndex) = "selected";
                    //BindGridCodeByCodeTypeCd(hfCodeTypeCd.Value);
                }
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs rblSelect_CheckedChanged";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
    }
    private void AddRowIndexInCodeTypeRadioButton()
    {
        //for (int i = 0; i <= gvCodeType.Rows.Count - 1; i++)
        //{
        //    RadioButton rblSelect = gvCodeType.Rows[i].FindControl("rblSelect") as RadioButton;
        //    if (rblSelect != null)
        //    {
        //        rblSelect.Attributes.Add("RowIndex", i.ToString());
        //    }
        //}
    }

    private LAPP_code_hist FetchCodeHistory(GridView gv, int EditIndex)
    {
        LAPP_code_hist objCodeHist = new LAPP_code_hist();
        try
        {
            TextBox txtCodeName = gv.Rows[EditIndex].Cells[0].FindControl("txtCodeName") as TextBox;
            TextBox txtDescription = gv.Rows[EditIndex].Cells[0].FindControl("txtDescription") as TextBox;
            TextBox txtDisplayOrder = gv.Rows[EditIndex].Cells[0].FindControl("txtDisplayOrder") as TextBox;
            DropDownList ddlCdeTy = gv.Rows[EditIndex].Cells[0].FindControl("ddlCdeTy") as DropDownList;
            CheckBox chkDefaultDisplay = gv.Rows[EditIndex].Cells[0].FindControl("chkDefaultDisplay") as CheckBox;

            objCodeHist.Code_Name = txtCodeName.Text.Trim();
            objCodeHist.Code_Type_ID = Convert.ToInt32(ddlCdeTy.SelectedValue);
            objCodeHist.Code_Type_CD = ddlCdeTy.SelectedItem.Text;
            objCodeHist.Code_Description = txtDescription.Text.Trim();
            objCodeHist.Display_Order = Convert.ToInt32(txtDisplayOrder.Text);
            objCodeHist.Default_Display = chkDefaultDisplay.Checked;
            objCodeHist.DTS = DateTime.Now;
            objCodeHist.Is_Active = true;
            objCodeHist.Is_Deleted = false;
            objCodeHist.Modified_By = UIHelper.UserIDBySession();
            objCodeHist.Modified_DTS = DateTime.Now;
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs FetchCodeHistory";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
        return objCodeHist;
    }

    private LAPP_code_hist FetchCodeHistForDelete(int ID)
    {
        try
        {
            objCode = objCodeBAL.Get_LAPP_code_BY_ID(ID);
            ObjCodeHist = new LAPP_code_hist();
            if (objCode != null)
            {
                ObjCodeHist.Code_Name = objCode.Code_Name;
                ObjCodeHist.Code_Type_ID = objCode.Code_Type_ID;
                ObjCodeHist.Code_Type_CD = objCode.Code_Type_CD;
                ObjCodeHist.Code_Description = objCode.Code_Description;
                ObjCodeHist.Display_Order = objCode.Display_Order;
                ObjCodeHist.Default_Display = objCode.Default_Display;
                ObjCodeHist.DTS = objCode.DTS;
                ObjCodeHist.Is_Active = objCode.Is_Active;
                ObjCodeHist.Is_Deleted = objCode.Is_Deleted;
                ObjCodeHist.Created_On = objCode.Created_On;
                ObjCodeHist.Created_By = objCode.Created_By;
                ObjCodeHist.Modified_By = UIHelper.UserIDBySession();
                ObjCodeHist.Modified_DTS = DateTime.Now;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs FetchCodeHistForDelete";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
        return ObjCodeHist;
    }

    protected void btnSelect_Click(object sender, EventArgs e)
    {
        try
        {
            Button btnSelect = sender as Button;
            if (btnSelect != null)
            {
                this.Is_Search = false;
                txtKeyword.Text = "";
                BindGridCodeTy();
                int RowIndex = Convert.ToInt32(btnSelect.Attributes["RowIndex"]);
                HiddenField hfCodeTypeCd = gvCodeType.Rows[RowIndex].FindControl("hfCodeTypeCd") as HiddenField;
                RadioButton rblSelectID = gvCodeType.Rows[RowIndex].FindControl("rblSelect") as RadioButton;
                GridViewRow PreviousRow = gvCodeType.Rows[RowIndex];

                foreach (GridViewRow gvrow in gvCodeType.Rows)
                {
                    // gvCodeType.RowStyle.CssClass.Replace("selected", "");
                    // PreviousRow.Attributes.Remove("selected");
                    //int i = 0;
                    //for (i = 0; i <= gvCodeType.Rows.Count; i++)
                    //{
                    //    if (i == RowIndex)
                    //    {
                    //        PreviousRow.CssClass.Remove(RowIndex);// = "";

                    //    }
                    //    else
                    //    {
                    //        PreviousRow.CssClass = "";
                    //    }
                    //}
                }

                if (hfCodeTypeCd != null)
                {

                    this.CodeTypeCd = hfCodeTypeCd.Value;
                    PreviousRow.CssClass = "selected";
                    // gvMemberList.Rows[this.Edit_Index].CssClass = "selected";
                    BindGridCode();
                    //PreviousRow.CssClass.Remove("selected",RowIndex) = "selected";
                    //BindGridCodeByCodeTypeCd(hfCodeTypeCd.Value);
                }
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodes.ascx.cs btnSelect_Click";
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
        this.Is_Search = true;
        this.PageNumberCode = 1;
        BindGridCodeTy();
        BindGridCode(); Onload();
    }
    protected void btnSearchCancel_Click(object sender, EventArgs e)
    {
        this.Is_Search = false;
        txtKeyword.Text = "";
        ddlCodeTy.SelectedValue = null;
        BindGridCodeTy();
        BindGridCode(); Onload();

    }
}

