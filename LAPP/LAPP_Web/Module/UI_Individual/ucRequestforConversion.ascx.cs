using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Collections;
using System.IO;
using LAPP.ENTITY;

public partial class Module_UI_Individual_RequestforConversion : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGridEducation2();
        BindExams();
    }

    #region Address
    protected void btnVerifyHomeAddress_Click(object sender, EventArgs e)
    {
        divVerifyHomeAddressBtn.Visible = false;
        divVerifyHomeAddressPnl.Visible = true;
        lblVHomeStreet1.Text = "";
        lblVHomeStreet2.Text = "";
        lblVHomeCity.Text = "";
        lblVHomeState.Text = "";
        lblVHomeZip.Text = "";
        //fillverifyresidenceaddress();
    }
    protected void btnVerifyHomeAddressYes_Click(object sender, EventArgs e)
    {
        divVerifyHomeAddressBtn.Visible = true;
        divVerifyHomeAddressPnl.Visible = false;
    }
    protected void btnVerifyHomeAddressNo_Click(object sender, EventArgs e)
    {
        divVerifyHomeAddressBtn.Visible = true;
        divVerifyHomeAddressPnl.Visible = false;
        txtStreetResEdit.Text = lblVHomeStreet1.Text;
        txtStreet2ResEdit.Text = lblVHomeStreet2.Text;
        txtCityResEdit.Text = lblVHomeCity.Text;
        ddlStateResEdit.SelectedValue = lblVHomeState.Text;
        txtZipResEdit.Text = lblVHomeZip.Text;
    }
    protected void btnVerifyMailingAddress_Click(object sender, EventArgs e)
    {
        divVerifyMailingAddressBtn.Visible = false;
        divVerifyMailingAddressPnl.Visible = true;
        lblVMailingStreet1.Text = "";
        lblVMailingStreet2.Text = "";
        lblVMailingCity.Text = "";
        lblVMailingState.Text = "";
        lblVMailingZip.Text = "";
        //fillverifyMailingaddress();
    }
    protected void btnVerifyMailingAddressYes_Click(object sender, EventArgs e)
    {
        divVerifyMailingAddressBtn.Visible = true;
        divVerifyMailingAddressPnl.Visible = false;
    }
    protected void btnVerifyMailingAddressNo_Click(object sender, EventArgs e)
    {
        divVerifyMailingAddressBtn.Visible = true;
        divVerifyMailingAddressPnl.Visible = false;
        txtStreetMailEdit.Text = lblVMailingStreet1.Text;
        txtStreet2MailEdit.Text = lblVMailingStreet2.Text;
        txtCityMailEdit.Text = lblVMailingCity.Text;
        ddlStateMailEdit.SelectedValue = lblVMailingState.Text;
        txtZipMailEdit.Text = lblVMailingZip.Text;
    }

    #endregion

    public int EditIndexEducation2
    {
        get
        {
            if (ViewState["EditIndexEducation2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexEducation2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexEducation2"] = value;
        }
    }
    protected void btnEducation2AddNew_Click(object sender, EventArgs e)
    {
        divEducationt2.Visible = false;
        divAddPanelEducation2.Visible = true;
        this.EditIndexEducation2 = -1;
        BindGridEducation2();
    }
    protected void btnEducation2Save_Click(object sender, EventArgs e)
    {
        divEducationt2.Visible = true;
        divAddPanelEducation2.Visible = false;
    }
    protected void lnkEducation2Cancel_Click(object sender, EventArgs e)
    {
        divEducationt2.Visible = true;
        divAddPanelEducation2.Visible = false;
    }
    protected void btnEducation2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexEducation2 = -1;
        BindGridEducation2();
    }
    protected void lnkEducation2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexEducation2 = -1;
        BindGridEducation2();
    }
    protected void lnkEducation2Edit_Click(object sender, EventArgs e)
    {
        divEducationt2.Visible = true;
        divAddPanelEducation2.Visible = false;
        this.EditIndexEducation2 = -1;

        ImageButton imgbtnEducation2Edit = (ImageButton)sender;
        if (imgbtnEducation2Edit != null)
        {
            int ID = Convert.ToInt32(imgbtnEducation2Edit.CommandArgument);
            this.EditIndexEducation2 = Convert.ToInt32(imgbtnEducation2Edit.Attributes["RowIndex"]);
            BindGridEducation2();
            //FillControlEducation2(gvLicenseInfo, this.EditIndexEducation2);
        }
    }
    protected void lnkEducation2Delete_Click(object sender, EventArgs e)
    {

    }

    public void BindGridEducation2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");

        gvEducation2.EditIndex = this.EditIndexEducation2;
        gvEducation2.DataSource = ArryListName;
        gvEducation2.DataBind();

        if (this.EditIndexEducation2 >= 0)
        {
            gvEducation2.Rows[this.EditIndexEducation2].CssClass = "RowInEditMode";
            gvEducation2.Rows[this.EditIndexEducation2].Cells[0].Attributes.Add("colspan", "5");
            gvEducation2.Rows[this.EditIndexEducation2].Cells[1].Visible = false;
            gvEducation2.Rows[this.EditIndexEducation2].Cells[2].Visible = false;
            gvEducation2.Rows[this.EditIndexEducation2].Cells[3].Visible = false;
            gvEducation2.Rows[this.EditIndexEducation2].Cells[4].Visible = false;

        }
    }
    public void FillControlEducation2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtEducationStartDateEdit = gv.Rows[this.EditIndexEducation2].FindControl("txtEducationStartDateEdit") as TextBox;
            TextBox txtEducationEndDateEdit = gv.Rows[this.EditIndexEducation2].FindControl("txtEducationEndDateEdit") as TextBox;
            TextBox txtEducationHRSEdit = gv.Rows[this.EditIndexEducation2].FindControl("txtEducationHRSEdit") as TextBox;

            txtEducationStartDateEdit.Text = "01/02/2012";
            txtEducationEndDateEdit.Text = "02/04/2014";
            txtEducationHRSEdit.Text = "201";
        }
        catch (Exception ex)
        {

        }
    }
    int ROWLic = 0;
    protected void gvLicenseInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblCertificationNo = e.Row.FindControl("lblCertificationNo") as Label;
            Label lblDateofIssue = e.Row.FindControl("lblDateofIssue") as Label;
            Label lblLiState = e.Row.FindControl("lblLiState") as Label;
            Label lblCountry = e.Row.FindControl("lblCountry") as Label;
            Label lblStatus = e.Row.FindControl("lblStatus") as Label;
            if (lblCertificationNo != null && lblDateofIssue != null && lblLiState != null && lblCountry != null && lblStatus != null)
            {
                if (ROWLic == 0)
                {

                    lblCertificationNo.Text = "CAMTC.001";
                    lblDateofIssue.Text = "02/04/2014";
                    lblLiState.Text = "CA";
                    lblCountry.Text = "USA";
                    lblStatus.Text = "Active";
                }
                else if (ROWLic == 1)
                {
                    lblCertificationNo.Text = "CAMTC.011";
                    lblDateofIssue.Text = "10/11/2013";
                    lblLiState.Text = "CA";
                    lblCountry.Text = "USA";
                    lblStatus.Text = "Inactive";
                }
            }

            ROWLic++;

        }
    }
    int ROWEdu2 = 0;
    protected void gvEducation2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblMassageSchoolName = e.Row.FindControl("lblMassageSchoolName") as Label;
            Label lblDateStart = e.Row.FindControl("lblDateStart") as Label;
            Label lblTotalHRS = e.Row.FindControl("lblTotalHRS") as Label;

            if (lblMassageSchoolName != null && lblDateStart != null && lblTotalHRS != null)
            {
                if (ROWEdu2 == 0)
                {

                    lblMassageSchoolName.Text = "SCHOOL OF ACUPUNTURE ";
                    lblDateStart.Text = "02/04/2014";
                    lblTotalHRS.Text = "201";
                }
                else if (ROWEdu2 == 1)
                {
                    lblMassageSchoolName.Text = "NATIONAL HOLISTIC INSTITUTE";
                    lblDateStart.Text = "08/01/2014";
                    lblTotalHRS.Text = "302";
                }
            }

            ROWEdu2++;

        }
    }

    protected void btnAddNewQ22_Click(object sender, EventArgs e)
    {
        tbpAddNewQ22.Visible = true;
        divAddButtonQ22.Visible = false;
    }
    protected void btnSaveNewQ22_Click(object sender, EventArgs e)
    {
        tbpAddNewQ22.Visible = false;
        divAddButtonQ22.Visible = true;
    }
    protected void btnCancelNewQ22_Click(object sender, EventArgs e)
    {
        tbpAddNewQ22.Visible = false;
        divAddButtonQ22.Visible = true;
    }
    protected void btnSaveNewQ22Edit_Click(object sender, EventArgs e)
    {
        this.EditIndexExam = -1;
        BindExams();
    }
    protected void btnCancelNewQ22Edit_Click(object sender, EventArgs e)
    {
        this.EditIndexExam = -1;
        BindExams();
    }
    protected void btnSave3NewQ22Edit_Click(object sender, EventArgs e)
    {
    }
    protected void btnCancel3NewQ22Edit_Click(object sender, EventArgs e)
    {
    }
    protected void lnkExam1Delete_Click(object sender, EventArgs e) 
    {

    }
    public void BindExams()
    {
        //Bind exam list
        ArrayList ArryListExam = new ArrayList();
        ArryListExam.Add("CA");

        gvExams.EditIndex = this.EditIndexExam;
        gvExams.DataSource = ArryListExam;
        gvExams.DataBind();

        if (this.EditIndexExam >= 0)
        {
            gvExams.Rows[this.EditIndexExam].CssClass = "RowInEditMode";
            gvExams.Rows[this.EditIndexExam].Cells[0].Attributes.Add("colspan", "3");
            gvExams.Rows[this.EditIndexExam].Cells[1].Visible = false;
            gvExams.Rows[this.EditIndexExam].Cells[2].Visible = false;
        }
    }
    public int EditIndexExam
    {
        get
        {
            if (ViewState["EditIndexExam"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexExam"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexExam"] = value;
        }
    }
    protected void lnkExam1Edit_Click(object sender, EventArgs e)
    {
        this.EditIndexExam = 0;
        BindExams();
    }
    protected void chkAffidavit_OnCheckedChanged(object sender, EventArgs e)
    {
    //    EnableBtnNext();
    }
    protected void ddlPaymentMethod_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlPaymentMethod.SelectedItem.Text == "Check")
        {
            pnlMoneyOrder.Visible = false;
            pnlCheck.Visible = true;
            //btnSaveNextPayment.Visible = false;
        }
        else if (ddlPaymentMethod.SelectedItem.Text == "Money Order")
        {
            pnlMoneyOrder.Visible = true;
            pnlCheck.Visible = false;
            //btnSaveNextPayment.Visible = false;
        }
        else if (ddlPaymentMethod.SelectedItem.Text == "Credit / Debit Card")
        {
            pnlMoneyOrder.Visible = false;
            pnlCheck.Visible = false;
            //btnSaveNextPayment.Visible = true;
        }
        else
        {
            pnlMoneyOrder.Visible = false;
            pnlCheck.Visible = false;
            //btnSaveNextPayment.Visible = false;
        }
    }
    protected void txtNumberOfAdditinolCerti_TextChanged(object sender, EventArgs e)
    {
        //ltrPaymentError.Text = "";
        int No = 0;
        string Validate = ValidationHelper.IsValidInt(txtNumberOfAdditinolCerti.Text, "Please enter valid number of additional certiﬁcates.");

        if (Validate == "")
        {
            No = Convert.ToInt32(txtNumberOfAdditinolCerti.Text);
            FillAdditinolAmount();
            FillTotalAmount();
        }
    }
    public void FillAdditinolAmount()
    {
        int No = 0;

        //ltrPaymentError.Text = "";
        string Validate = ValidationHelper.IsValidInt(txtNumberOfAdditinolCerti.Text, "Please enter valid number of additional certiﬁcates.");
        if (Validate == "")
        {
            No = Convert.ToInt32(txtNumberOfAdditinolCerti.Text);
        }

        int Amount = 0;
        if (No > 0)
        {
            Amount = No * 15;
        }
        txtAdditionalCertificateAmt.Text = (Amount.ToString());
    }
    public void FillTotalAmount()
    {
        //ltrPaymentError.Text = "";
        decimal ApplicationFee = 0;
        decimal AdditionalCertificateAmt = 0;
        string Validate = ValidationHelper.IsValidInt(txtNumberOfAdditinolCerti.Text, "Please enter valid number of additional certiﬁcates.");
        if (Validate == "")
        {
            AdditionalCertificateAmt = Convert.ToInt32(txtNumberOfAdditinolCerti.Text);
        }

        string Validate2 = ValidationHelper.IsValidInt(txtApplicationFees.Text, "Please enter valid Application Fees.");

        if (Validate2 == "")
        {
            ApplicationFee = Convert.ToInt32(txtApplicationFees.Text);
        }

        ApplicationFee = Convert.ToDecimal(txtApplicationFees.Text);
        AdditionalCertificateAmt = Convert.ToDecimal(txtAdditionalCertificateAmt.Text);

        decimal TotalAmount = ApplicationFee + AdditionalCertificateAmt;

        txtTotalFees.Text = TotalAmount.ToString();

    }
}