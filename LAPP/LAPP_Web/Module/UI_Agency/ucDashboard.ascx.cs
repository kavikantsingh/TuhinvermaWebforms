using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.IO;
using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.CORE;
using LAPP.ENTITY.Enumerations;
 

public partial class Module_UI_Agency_ucDashboard : System.Web.UI.UserControl
{
    #region Class Members

    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();

    LAPP_individual objLAPP_individual = new LAPP_individual();
    LAPP_individualBAL objLAPP_individualBAL = new LAPP_individualBAL();
    LAPP_application_statusBAL objLAPP_application_statusBAL = new LAPP_application_statusBAL();

    #endregion

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
    public int Individual_Id
    {
        get
        {
            if (ViewState["Individual_Id"] != null)
            {
                return Convert.ToInt32(ViewState["Individual_Id"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Individual_Id"] = value;
        }
    }
    public string License_Number
    {
        get
        {
            if (ViewState["License_Number"] != null)
            {
                return (ViewState["License_Number"]).ToString();
            }
            else
            {
                return "NVBMT0001";
            }

        }
        set
        {
            ViewState["License_Number"] = value;
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

    protected void Page_Load(object sender, EventArgs e)
    {
        MessageBox.RunJsInUpdatePanel(this.Page, "InitiatePage();");
        if (!IsPostBack)
        {

        }
    }
    protected void lnkSearhApplicant_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/LAPP_UI_Agency/UI/Search.aspx", false);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        pnlSearch1.Visible = true;
        trEditApplicant.Visible = false;
        try
        {
            this.EditIndex = -1;
            this.Individual_Id = 0;
            this.Is_Search = true;
            //ucIndividual1.Individual_Id = 0;
            //ucIndividual1.ClearControl();
            //BindGrid();
            //Tabs();
            //pnlMainPanel.Visible = true;
            //btnClearFilter.Visible = true;
            //btnClearFilter_Click(sender, e);
            //pnlSearch.Visible = false;
        }
        catch (Exception ex)
        {
            //objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-Individual.aspx-btnSearch_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    protected void btnAdvanceSearch_Click(object sender, EventArgs e)
    {
        try
        {
            if (divAdvanceSearch.Visible == true && btnAdvanceSearch.Text == "Basic Search")
            {
                divBasicSearch.Visible = true;
                divAdvanceSearch.Visible = false;
                btnAdvanceSearch.Text = "Advance Search";
            }
            else
            {
                divBasicSearch.Visible = false;
                divAdvanceSearch.Visible = true;
                btnAdvanceSearch.Text = "Basic Search";
            }
        }
        catch (Exception ex)
        {
            //objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-Individual.aspx-btnAdvanceSearch_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    protected void btnSearchCancel_Click(object sender, EventArgs e)
    {
        pnlSearch1.Visible = false;
        this.Is_Search = false;
        this.EditIndex = -1;
        this.Individual_Id = 0;
        //txtLicenseNumberSearch.Text = string.Empty;
        //txtlastNameSaerch.Text = string.Empty;
        //txtFirstNameSearch.Text = string.Empty;
        //txtSSNSaerch.Text = "";
        //ddlSearchStatus.SelectedValue = null;        
        //OnLoad_Method();
        //BindGrid();
        //btnClearFilter.Visible = false;
        //pnlMainPanel.Visible = false;
    }
    protected void lnkOpenRow_Click(object sender, EventArgs e)
    {
        trEditApplicant.Visible = true;
    }
    protected void btnClose_Click(object sender, EventArgs e)
    {
        trEditApplicant.Visible = false;
    }


}