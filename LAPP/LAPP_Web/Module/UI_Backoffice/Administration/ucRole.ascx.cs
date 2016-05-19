using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using LAPP.BAL;
public partial class Module_Administration_ucRole : System.Web.UI.UserControl
{
    String MenuName = "Roles";

    #region Class Members

    LAPP_role objRole = new LAPP_role();
    LAPP_role_BAL objRoleBAL = new LAPP_role_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();

    #endregion

    #region Class Property

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

    public int Role_ID
    {
        get
        {
            if (ViewState["Role_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Role_ID"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Role_ID"] = value;
        }
    }

    #endregion



    #region Page Event Handler


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
            if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
            {
                // divAddRole.Visible = true;
                // btnAddNew.Visible = false;
                ucAddRole1.BindPermissions();
            }
        }
    }
    protected void btnAddNew_Click(object sender, EventArgs e)
    {
        if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
        {
            divAddRole.Visible = true;
            btnAddNew.Visible = false;
            ucAddRole1.BindPermissions();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
            {

                ucAddRole1.Save();
                divAddRole.Visible = false;
                btnAddNew.Visible = true;
                ucAddRole1.FillCClearControlontrol();
                BindGrid();
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucRole.ascx.cs btnSave_Click";
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
        Response.Redirect("~/UI/Role.aspx", false);
    }
    protected void imgbtnEdit_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (PermissionHandler.UserHasPermission("U", MenuName, this.Page))
            {
                divAddRole.Visible = true;
                ImageButton imgBtn = (ImageButton)sender;
                if (imgBtn != null)
                {
                    int ID = Convert.ToInt32(imgBtn.CommandArgument);
                    ucAddRole1.Role_ID = ID;
                    btnAddNew.Visible = false;
                    ucAddRole1.FillControl();
                }
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucRole.ascx.cs imgbtnEdit_Click";
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
                    int UserCount = Convert.ToInt32(imgBtn.Attributes["UserCount"]);
                    int ID = Convert.ToInt32(imgBtn.CommandArgument);
                    objRole = objRoleBAL.Get_LAPP_role_BY_ID(ID);
                    if (objRole != null && UserCount <= 0)
                    {
                        objRole.Is_Deleted = true;
                        int recoID = objRoleBAL.Update_LAPP_role(objRole, ID);
                        MessageBox.Show(this.Page, ErrorMessageGeneral.DeletedSuccessfuly);
                    }
                    else
                    {
                        MessageBox.Show(this.Page, "Record can not deleted. First you need to disassociate all users under this role to delete this role.", 2);
                    }
                }
            }

            BindGrid();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucRole.ascx.cs imgBtnDelete_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }


    #endregion

    #region Public Methods

    public void BindGrid()
    {
        try
        {
            List<LAPP_role> lstUser = new List<LAPP_role>();
            lstUser = objRoleBAL.Get_All_LAPP_role();
            gvRole.DataSource = lstUser;
            gvRole.DataBind();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucRole.ascx.cs BindGrid";
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

    protected void gvRole_PageIndexChanging(object sender, GridViewPageEventArgs e)
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
            gvRole.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucRole.ascx.cs gvRole_PageIndexChanging";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

    }
}