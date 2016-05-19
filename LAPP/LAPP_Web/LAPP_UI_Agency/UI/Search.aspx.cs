using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LAPP_UI_Agency_UI_Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            trEditApplicant.Visible = false;
        }
    }
    protected void lnkOpenRow_Click(object sender, EventArgs e)
    {
        trEditApplicant.Visible = true;
    }
    protected void btnClose_Click(object sender, EventArgs e)
    {
        trEditApplicant.Visible = false;
    }
    protected void Search1_Click(object sender, EventArgs e)
    {
        pnlSearch1.Visible = true;
        trEditApplicant.Visible = false;
    }
    protected void Search1Cancel_Click(object sender, EventArgs e)
    {
        pnlSearch1.Visible = false;

        trEditApplicant.Visible = false;
        txtFirstNameSearch.Text = "";
        txtSSN.Text = "";
        txtOtherNames.Text = "";
        txtCity.Text = "";
        txtCertificateSearch.Text = "";
        txtDriverLicense.Text = "";
        txtCityOfEmployment.Text = "";
        txtNameEmp.Text = "";
        //txtLastNameEmp.Text = "";
    }
    protected void lnkHist_Click(object sender, EventArgs e)
    {
        pnlSearch2.Visible = true;
        //trEditApplicant.Visible = false;
    }
    protected void btnCloseHist_Click(object sender, EventArgs e)
    {
        pnlSearch2.Visible = false;
    }

    protected void btnCloseEmp_Click(object sender, EventArgs e)
    {
        trEditEmp.Visible = false;
    }
    protected void lnkOpenRowEMP_Click(object sender, EventArgs e)
    {
        trEditEmp.Visible = true;
    }

    protected void btnEmpSearch_Click(object sender, EventArgs e)
    {
        pnlSearch3.Visible = true;
    }
    protected void btnEmpSearchCancel_Click(object sender, EventArgs e)
    {
        pnlSearch3.Visible = false;
        txtEstablishment.Text = "";
        txtLastNameOfApplicant.Text = "";
        txtCityOfEstablishment.Text = "";
        txtAddressOfEstablishment.Text = "";

    }
    protected void btnDSRSearch_Click(object sender, EventArgs e)
    {
        pnlSaerch4.Visible = true;
    }
    protected void btnDSRSearchCancel_Click(object sender, EventArgs e)
    {
        pnlSaerch4.Visible = false;
        txtlastNameSaerchDSR.Text = "";
        txtCityDSR.Text = "";
        ddlStatus.SelectedValue = null;
        txtCityOfEmploymentDSR.Text = "";
        txtNameEmpDSR.Text = "";
        // txtLastNameEmpDSR.Text = "";
    }
    protected void lnkOpenRowDSR_Click(object sender, EventArgs e)
    {
        trEditDSR.Visible = true;
    }
    protected void btnCloseDSR_Click(object sender, EventArgs e)
    {
        trEditDSR.Visible = false;
    }


    protected void btnAdvanceSearch_Click(object sender, EventArgs e)
    {
        divAdvanceSearch.Visible = true;
        dvSearch.Visible = false;
        pnlSearch1.Visible = false;
    }
    protected void lnkAdvanceCancle_Click(object sender, EventArgs e)
    {
        divAdvanceSearch.Visible = false;
        dvSearch.Visible = true;
    }
}