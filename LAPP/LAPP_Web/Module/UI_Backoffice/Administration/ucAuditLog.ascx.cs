using LAPP.BAL;
using LAPP.ENTITY;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucAuditLog : System.Web.UI.UserControl
{
    Lapp_application_feeBAL objLapp_application_feeBAL = new Lapp_application_feeBAL();


    #region ClassProperties

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

    #region PageEventHandler

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDDLApplicationType();
            BindGrid();
        }

    }

    protected void lnkLogClose_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        BindGrid();
    }

    protected void lnkLogNo_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        LinkButton btnEdit = (LinkButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGrid();

            FillControlLicensureInformation(gvAuditLog, this.EditIndex);
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }

    protected void btnSearchCancel_Click(object sender, EventArgs e)
    {

    }

    protected void lnkArchive_Click(object sender, EventArgs e)
    {

    }

    int ROW = 0;
    protected void gvAuditLog_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblTimestamp = e.Row.FindControl("lblTimestamp") as Label;
            LinkButton lnkLogNo = e.Row.FindControl("lnkLogNo") as LinkButton;

            Label lblApplication = e.Row.FindControl("lblApplication") as Label;
            Label lblSeverity = e.Row.FindControl("lblSeverity") as Label;
            Label lblUserName = e.Row.FindControl("lblUserName") as Label;
            Label lblTitle = e.Row.FindControl("lblTitle") as Label;
            Label lblCategory = e.Row.FindControl("lblCategory") as Label;


            if (lnkLogNo != null && lnkLogNo != null && lblApplication != null && lblSeverity != null
               && lblUserName != null && lblTitle != null && lblCategory != null)
            {
                if (ROW == 0)
                {

                    lnkLogNo.Text = "2774007";
                    lblTimestamp.Text = "03/18/2015 10:33:33 AM";
                    lblApplication.Text = "New Application";
                    lblSeverity.Text = "Information";
                    lblUserName.Text = "Tuhin Verma";
                    lblTitle.Text = "Application Submitted";
                    lblCategory.Text = "Audit";
                }
                else if (ROW == 1)
                {
                    lnkLogNo.Text = "2689001";
                    lblTimestamp.Text = "03/15/2015 09:10:55 PM";
                    lblApplication.Text = "Transfer Application";
                    lblSeverity.Text = "Information";
                    lblUserName.Text = "Tuhin Verma";
                    lblTitle.Text = "Message Sent";
                    lblCategory.Text = "Notify";
                }
                else if (ROW == 2)
                {
                    lnkLogNo.Text = "2512308";
                    lblTimestamp.Text = "03/12/2015 11:54:21 AM";
                    lblApplication.Text = "Renewal Application";
                    lblSeverity.Text = "Information";
                    lblUserName.Text = "Tuhin Verma";
                    lblTitle.Text = "License Renewed";
                    lblCategory.Text = "Payment";

                }
            }

            ROW++;

        }
    }


    #endregion

    #region Methods

    public void BindGrid()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("GIC");
        ArryListName.Add("GIC");
        ArryListName.Add("GIC");

        gvAuditLog.EditIndex = this.EditIndex;
        gvAuditLog.DataSource = ArryListName;
        gvAuditLog.DataBind();

        if (this.EditIndex >= 0)
        {
            gvAuditLog.Rows[this.EditIndex].CssClass = "RowInEditMode";
            gvAuditLog.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "7");
            gvAuditLog.Rows[this.EditIndex].Cells[1].Visible = false;
            gvAuditLog.Rows[this.EditIndex].Cells[2].Visible = false;
            gvAuditLog.Rows[this.EditIndex].Cells[3].Visible = false;
            gvAuditLog.Rows[this.EditIndex].Cells[4].Visible = false;
            gvAuditLog.Rows[this.EditIndex].Cells[5].Visible = false;
            gvAuditLog.Rows[this.EditIndex].Cells[6].Visible = false;

        }
    }

    public void FillControlLicensureInformation(GridView gv, int EditInd)
    {
        try
        {
            Label lblLogNoEdit = gv.Rows[this.EditIndex].FindControl("lblLogNoEdit") as Label;
            Label lblLogNoEdit2 = gv.Rows[this.EditIndex].FindControl("lblLogNoEdit2") as Label;
            Label lblTimestampEdit = gv.Rows[this.EditIndex].FindControl("lblTimestampEdit") as Label;
            Label lblApplicationEdit = gv.Rows[this.EditIndex].FindControl("lblApplicationEdit") as Label;
            Label lblUsernameEdit = gv.Rows[this.EditIndex].FindControl("lblUsernameEdit") as Label;
            Label lblSeverityEdit = gv.Rows[this.EditIndex].FindControl("lblSeverityEdit") as Label;
            Label lblTitleEdit = gv.Rows[this.EditIndex].FindControl("lblTitleEdit") as Label;
            Label lblCategoryEdit = gv.Rows[this.EditIndex].FindControl("lblCategoryEdit") as Label;

            Label lblMessageEdit = gv.Rows[this.EditIndex].FindControl("lblMessageEdit") as Label;
            Label lblRequestUrl = gv.Rows[this.EditIndex].FindControl("lblRequestUrl") as Label;
            Label lblRequestUrlReferrer = gv.Rows[this.EditIndex].FindControl("lblRequestUrlReferrer") as Label;
            Label lblRequestBrowser = gv.Rows[this.EditIndex].FindControl("lblRequestBrowser") as Label;
            Label lblUserAgent = gv.Rows[this.EditIndex].FindControl("lblUserAgent") as Label;
            Label lblUserHostAddresss = gv.Rows[this.EditIndex].FindControl("lblUserHostAddresss") as Label;
            Label lblUserHostName = gv.Rows[this.EditIndex].FindControl("lblUserHostName") as Label;
            HtmlAnchor RequestUrl = gv.Rows[this.EditIndex].FindControl("RequestUrl") as HtmlAnchor;
            HtmlAnchor RequestUrlReferrer = gv.Rows[this.EditIndex].FindControl("RequestUrlReferrer") as HtmlAnchor;


            if (this.EditIndex == 0)
            {

                lblLogNoEdit.Text = "Log # 2774007";
                lblLogNoEdit2.Text = "Log Item # 2774007";
                lblTimestampEdit.Text = "03/18/2015 10:33:33 AM";
                lblApplicationEdit.Text = "New Application";
                lblUsernameEdit.Text = "Tuhin Verma";
                lblSeverityEdit.Text = "Information";
                lblTitleEdit.Text = "Application Submitted";
                lblCategoryEdit.Text = "Audit";




                lblMessageEdit.Text = " <authenticate><br/> <userName>Tuhin Verma</userName><br/><Result IsSuccessful=\"True\" /></authenticate>";
                lblRequestUrl.Text = "http://applicant.nvbmt.inlumon.com/";
                lblRequestUrlReferrer.Text = "http://applicant.nvbmt.inlumon.com/";
                RequestUrl.HRef = "http://applicant.nvbmt.inlumon.com/";
                RequestUrl.Title = "http://applicant.nvbmt.inlumon.com/";
                RequestUrlReferrer.HRef = "http://applicant.nvbmt.inlumon.com/";
                RequestUrlReferrer.Title = "http://applicant.nvbmt.inlumon.com/";
                lblRequestBrowser.Text = "IE | IE7 | 7.0";
                lblUserAgent.Text = "Mozila/4.0;(Compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET 4.0C; .NET 4.0E; InfoPath.3";
                lblUserHostAddresss.Text = "10.200.6.21";
                lblUserHostName.Text = "10.200.6.21";
            }

            else if (this.EditIndex == 1)
            {

                lblLogNoEdit.Text = "Log # 2689001";
                lblLogNoEdit2.Text = "Log Item # 2689001";
                lblTimestampEdit.Text = "03/15/2015 09:10:55 PM";
                lblApplicationEdit.Text = "Transfer Application";
                lblSeverityEdit.Text = "Information";
                lblUsernameEdit.Text = "Tuhin Verma";
                lblTitleEdit.Text = "Message Sent";
                lblCategoryEdit.Text = "Notify";


                lblMessageEdit.Text = " <authenticate><br/> <userName>Tuhin Verma</userName><br/><Result IsSuccessful=\"True\" /></authenticate>";
                lblRequestUrl.Text = "http://applicant.nvbmt.inlumon.com/";
                lblRequestUrlReferrer.Text = "http://applicant.nvbmt.inlumon.com/";
                RequestUrl.HRef = "http://applicant.nvbmt.inlumon.com/";
                RequestUrl.Title = "http://applicant.nvbmt.inlumon.com/";
                RequestUrlReferrer.HRef = "http://applicant.nvbmt.inlumon.com/";
                RequestUrlReferrer.Title = "http://applicant.nvbmt.inlumon.com/";
                lblRequestBrowser.Text = "Mozila | Mozila8 | 8";
                lblUserAgent.Text = "Mozila/4.0;(Compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET 4.0C; .NET 4.0E; InfoPath.3";
                lblUserHostAddresss.Text = "10.250.6.55";
                lblUserHostName.Text = "10.250.6.55";
            }

            else if (this.EditIndex == 2)
            {

                lblLogNoEdit.Text = "Log # 2512308";
                lblLogNoEdit2.Text = "Log Item # 2512308";
                lblTimestampEdit.Text = "03/12/2015 11:54:21 AM";
                lblApplicationEdit.Text = "Renewal Application";
                lblSeverityEdit.Text = "Information";
                lblUsernameEdit.Text = "Tuhin Verma";
                lblTitleEdit.Text = "License Renewed";
                lblCategoryEdit.Text = "Payment";


                lblMessageEdit.Text = " <authenticate><br/> <userName>Tuhin Verma</userName><br/><Result IsSuccessful=\"True\" /></authenticate>";
                lblRequestUrl.Text = "http://applicant.nvbmt.inlumon.com/";
                lblRequestUrlReferrer.Text = "http://applicant.nvbmt.inlumon.com/";
                RequestUrl.HRef = "http://applicant.nvbmt.inlumon.com/";
                RequestUrl.Title = "http://applicant.nvbmt.inlumon.com/";
                RequestUrlReferrer.HRef = "http://applicant.nvbmt.inlumon.com/";
                RequestUrlReferrer.Title = "http://applicant.nvbmt.inlumon.com/";
                lblRequestBrowser.Text = "Chrome | Chrome 41.0.2272.89 m | 41.0.2272.89 m";
                lblUserAgent.Text = "Mozila/4.0;(Compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET 4.0C; .NET 4.0E; InfoPath.3";
                lblUserHostAddresss.Text = "10.230.6.24";
                lblUserHostName.Text = "10.230.6.24";
            }
        }

        catch (Exception ex)
        {

        }
    }

    public void BindDDLApplicationType()
    {
        try
        {
            ddlApplication.Items.Clear();
            List<Lapp_application_fee> lstLapp_application_fee = new List<Lapp_application_fee>();
            lstLapp_application_fee = objLapp_application_feeBAL.Get_All_Lapp_application_fee();
            if (lstLapp_application_fee != null)
            {
                ddlApplication.DataSource = lstLapp_application_fee;
                ddlApplication.DataTextField = "Name";
                ddlApplication.DataValueField = "Application_ID";
                ddlApplication.DataBind();
            }
            ddlApplication.Items.Insert(0, new ListItem("Select", "-1"));
        }
        catch (Exception ex)
        {


        }
    }

    #endregion
}