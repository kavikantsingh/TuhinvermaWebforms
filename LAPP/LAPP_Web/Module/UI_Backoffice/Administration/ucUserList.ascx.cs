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

public partial class Module_Administration_ucUserList : System.Web.UI.UserControl
{
    #region Class Members

    LAPP_user objUser = new LAPP_user();
    LAPP_userBAL objUserBAL = new LAPP_userBAL();

    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();

    #endregion

    #region Class Property

    public string Email
    {
        get
        {
            if (ViewState["Email"] != null)
            {
                return (ViewState["Email"]).ToString();
            }
            else
            {
                return "";
            }
        }
        set
        {
            ViewState["Email"] = value;
        }
    }
    public string FirstName
    {
        get
        {
            if (ViewState["FirstName"] != null)
            {
                return (ViewState["FirstName"]).ToString();
            }
            else
            {
                return "";
            }
        }
        set
        {
            ViewState["FirstName"] = value;
        }
    }
    public int Status
    {
        get
        {
            if (ViewState["Status"] != null)
            {
                return Convert.ToInt32(ViewState["Status"]);
            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["Status"] = value;
        }
    }
    public string UserName
    {
        get
        {
            if (ViewState["UserName"] != null)
            {
                return (ViewState["UserName"]).ToString();
            }
            else
            {
                return "";
            }
        }
        set
        {
            ViewState["UserName"] = value;
        }
    }
    public int Role
    {
        get
        {
            if (ViewState["Role"] != null)
            {
                return Convert.ToInt32(ViewState["Role"]);
            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["Role"] = value;
        }
    }
    public string LastName
    {
        get
        {
            if (ViewState["LastName"] != null)
            {
                return (ViewState["LastName"]).ToString();
            }
            else
            {
                return "";
            }
        }
        set
        {
            ViewState["LastName"] = value;
        }
    }
    public DateTime DOB
    {
        get
        {
            if (ViewState["DOB"] != null)
            {
                return Convert.ToDateTime(ViewState["DOB"]);
            }
            else
            {
                return DateTime.Now;
            }
        }
        set
        {
            ViewState["DOB"] = value;
        }
    }
    public int Edit_Index
    {
        get
        {
            if (ViewState["Edit_Index"] != null)
            {
                return Convert.ToInt32(ViewState["Edit_Index"]);
            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["Edit_Index"] = value;
        }
    }
    public int user_id
    {
        get
        {
            if (ViewState["user_id"] != null)
            {
                return Convert.ToInt32(ViewState["user_id"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["user_id"] = value;
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

    #region Page Event Handler

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            List<sQueryString> lstQuery = new List<sQueryString>();
            lstQuery = GNF.DecryptUrl(Request.QueryString.ToString());
            if (lstQuery.Count > 1)
            {
                this.Edit_Index = Convert.ToInt32(lstQuery[1].QueryValue);
            }

        }
        if (!IsPostBack)
        {
            BindGrid();
        }
    }
    protected void gvUserInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                HtmlAnchor BOE_Member_Info_Edit = e.Row.FindControl("BOE_Member_Info_Edit") as HtmlAnchor;
                if (BOE_Member_Info_Edit != null)
                {
                    List<sQueryString> lstQuery = new List<sQueryString>();
                    sQueryString objQuery = new sQueryString();
                    objQuery.QueryString = "user_id";
                    objQuery.QueryValue = DataBinder.Eval(e.Row.DataItem, "user_id").ToString();
                    lstQuery.Add(objQuery);
                    objQuery = new sQueryString();
                    objQuery.QueryString = "Edit_Index";
                    objQuery.QueryValue = e.Row.RowIndex.ToString();
                    lstQuery.Add(objQuery);
                    BOE_Member_Info_Edit.HRef = GNF.EncryptUrl(lstQuery, "~/UI/UserAccount.aspx");
                }
            }

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucUserList.ascx.cs gvUserInfo_RowDataBound";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    protected void gvUserInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
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
            gvUserInfo.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucUserList.ascx.cs gvUserInfo_PageIndexChanging";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    protected void gvUserInfo_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    #endregion

    #region Public Methods

    public void BindGrid()
    {
        try
        {
            List<LAPP_user> lstUser = new List<LAPP_user>();
            lstUser = objUserBAL.Get_All_User();
            if (lstUser != null)
            {
                lstUser = lstUser.Where(x => x.Is_Deleted == false && x.User_Id != 66).ToList();
                if (!string.IsNullOrEmpty(Email))
                {
                    lstUser = lstUser.Where(x => x.First_Name.ToString().ToLower().Contains(Email.ToLower())).ToList();
                }
                if (!string.IsNullOrEmpty(LastName))
                {
                    lstUser = lstUser.Where(x => x.Last_Name.ToString().ToLower().Contains(LastName.ToLower())).ToList();
                }
                if (!string.IsNullOrEmpty(UserName))
                {
                    lstUser = lstUser.Where(x => x.UserName.ToString().ToLower().Contains(UserName.ToLower())).ToList();
                }
                //if (!string.IsNullOrEmpty(DOB.ToShortDateString()) && DOB != DateTime.Now)
                //{
                //    lstUser = lstUser.Where(x => x.date_of_birth.ToString().ToLower().Contains(DOB.ToShortDateString().ToLower())).ToList();
                //}
                if (Role != -1)
                {
                    lstUser = lstUser.Where(x => x.LAPP_Role_Id == Role).ToList();
                }
                if (Status != -1)
                {
                    lstUser = lstUser.Where(x => x.Is_Active == Convert.ToBoolean(Status)).ToList();
                }
                if (!string.IsNullOrEmpty(Email))
                {
                    lstUser = lstUser.Where(x => x.Email.ToString().ToLower().Contains(Email.ToLower())).ToList();
                }
            }
            gvUserInfo.DataSource = lstUser;
            gvUserInfo.DataBind();
            if (this.Edit_Index >= 0)
            {
                gvUserInfo.Rows[this.Edit_Index].CssClass = "selected";
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucUserList.ascx.cs BindGrid";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public void FillButton()
    {
        if (Edit_Index >= 0)
        {

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
        objExLog.Level = "High";
        objExLog.Logger = "errorLogger";
        return objExLog;
    }
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

    #endregion
}