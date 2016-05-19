using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.UI.HtmlControls;
using System.Collections;
using System.Threading;
using System.Net;
using System.IO;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using LAPP.BAL;
using LAPP.CORE;
using System.Drawing;
using System.Net.Mail;
using LAPP.CONFIG;
using System.Text.RegularExpressions;

public partial class Module_UI_Backoffice_Workflow_ucAddNewCertificationApplication : System.Web.UI.UserControl
{
    string UploadedImageUrl;
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
    #region Page Event Handler

    protected void Page_Load(object sender, EventArgs e)
    {
        ltrMainMessage.Text = "";
        ltrTest.Text = "";
        ltrMessage.Text = "";
        if (!IsPostBack)
        {
            FillPaymentDetail();
            ltrMainMessage.Text = "";
            ltrTest.Text = "";
            ltrMessage.Text = "";
            BindGridEducation();
            BindGridEducation2(); BindExams();
            BindGridLicensureInformation();
            BindGridWorkInfo1();
            BindGridWorkInfo2();
            BindGridWorkInfo3();
            BindGridWorkInfo4();
            MakeActiveLi(liMassageTherapistApplication);
            if ((rblQuestionEdit1.SelectedValue == "0") || (rblQuestionEdit2.SelectedValue == "0"))
            {
                btnApplicationStatus.Enabled = false;
            }
            else
            {
                btnApplicationStatus.Enabled = true;
            }
        }
    }

    protected void rblQuestionEdit1_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        if ((rblQuestionEdit1.SelectedValue == "0") || (rblQuestionEdit2.SelectedValue == "0"))
        {
            btnApplicationStatus.Enabled = false;
        }
        else
        {
            btnApplicationStatus.Enabled = true;
        }
    }
    protected void rblQuestionEdit2_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        if ((rblQuestionEdit1.SelectedValue == "0") || (rblQuestionEdit2.SelectedValue == "0"))
        {
            btnApplicationStatus.Enabled = false;
        }
        else
        {
            btnApplicationStatus.Enabled = true;
        }
    }

    protected void btnPhotoUpload_Click(object sender, EventArgs e)
    {
        if (fpImageUpload.HasFile)
        {
            Session["Image"] = fpImageUpload.PostedFile;
            Stream fs = fpImageUpload.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] bytes = br.ReadBytes((Int32)fs.Length);
            string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            imgProfile.ImageUrl = "data:image/png;base64," + base64String;
            this.UploadedImageUrl = "data:image/png;base64," + base64String;
        }
    }

    #endregion

    #region CertificationApplication

    protected void btnUpdateDoc_Click(object sender, EventArgs e)
    {
        trEditDocument.Visible = false;
        trAddDocument.Visible = true;
        trGridRowDoc.Visible = true;
    }
    protected void imgbtnDocumentEdit_Click(object sender, EventArgs e)
    {
        trEditDocument.Visible = true;
        trAddDocument.Visible = false;
        trGridRowDoc.Visible = false;
    }

    #region PublicMethods

    public void MakeActiveLi(HtmlControl element)
    {
        ltrErrAssignTo.Text = "";
        liPayment.Attributes.Remove("class");
        liApplicatinInstructions.Attributes.Remove("class");
        liMassageTherapistApplication.Attributes.Remove("class");
        liSection2.Attributes.Remove("class");
        liSection3.Attributes.Remove("class");
        liSection4.Attributes.Remove("class");
        liSection5.Attributes.Remove("class");
        liSection6.Attributes.Remove("class");
        liSection7.Attributes.Remove("class");
        //liChecklist.Attributes.Remove("class");

        element.Attributes.Add("class", "actived");
    }

    #endregion

    #region APPLICATION INSTRUCTIONS Tab
    protected void lnkQues1_Click(object sender, EventArgs e)
    {

        rblQuestionEdit1.Enabled = true;
        rblQuestionEdit2.Enabled = true;
        Response.Write("<script>window.open('https://www.camtc.org/','_blank');</script>");
    }
    protected void lnkApplicationStatusCancel_Click(object sender, EventArgs e)
    {
    }

    protected void ddlPOBCountry_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlPOBCountry.SelectedItem.Text == "USA")
        {
            ddlPOBStateOfUSA.Visible = true;
            ddlPOBStateOfCanada.Visible = false;
            txtState.Visible = false;
        }
        else if (ddlPOBCountry.SelectedValue.ToLower() == "canada")
        {
            ddlPOBStateOfUSA.Visible = false;
            ddlPOBStateOfCanada.Visible = true;
            txtState.Visible = false;

        }
        else
        {

            ddlPOBStateOfUSA.Visible = false;
            ddlPOBStateOfCanada.Visible = false;
            txtState.Visible = true;

        }
    }
    protected void chkAffidavit_OnCheckedChanged(object sender, EventArgs e)
    {
        EnableBtnNext();
    }

    private void EnableBtnNext()
    {
        bool showBtn = true;

        if (AffQ1.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (AffQ2.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (AffQ3.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (AffQ4.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (AffQ5.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (AffQ6.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (AffQ7.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (AffQ8.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (AffQ9.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (AffQ10.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (AffQ11.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (AffQ12.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (AffQ13.Checked == false)
        {
            showBtn = false;
            goto End;
        }


    End:
        btnNextSection7.Enabled = showBtn;


    }
    protected void btnApplicationStatus_Click(object sender, EventArgs e)
    {

        btnMassageTherapistApplication_Click(sender, e);

    }
    #endregion

    #region Individual Tab

    protected void btnYes_Click(object sender, EventArgs e)
    {
        btnSection2_Click(sender, e);

    }
    protected void btnNo_Click(object sender, EventArgs e)
    {

        txtPrimaryEmail.Focus();
        divEMail.Visible = false;

    }
    protected void btnSavePersonalInfo_Click(object sender, EventArgs e)
    {
        if (txtPrimaryEmail.Text == "")
        {


            divEMail.Focus();
            divEMail.Visible = true;

        }
        else
        {
            btnSection2_Click(sender, e);

        }
    }
    
    protected void lnkCancelPD_Click(object sender, EventArgs e)
    {
        //this.EditIndex = -1;
        //BindGrid();
    }

    #region Verify Address

    #region Home Address
    public void fillverifyresidenceaddress()
    {
        txtStreetResEdit.Text = AddressHelper.GetFormatedPOBOx(txtStreetResEdit.Text);
        txtStreet2ResEdit.Text = AddressHelper.GetFormatedPOBOx(txtStreet2ResEdit.Text);

        lblUHomeStreet1.Text = txtStreetResEdit.Text;
        lblUHomeStreet2.Text = txtStreet2ResEdit.Text;
        lblUHomeCity.Text = txtCityResEdit.Text;
        lblUHomeState.Text = ddlStateResEdit.SelectedItem.Text;
        lblUHomeZip.Text = txtZipResEdit.Text;
        components objComponenets = GNF.APIAddressValidation.ValidateAddress(txtStreetResEdit.Text, txtStreet2ResEdit.Text, txtCityResEdit.Text, ddlStateResEdit.SelectedItem.Text, txtZipResEdit.Text);
        if (objComponenets != null)
        {
            lblVHomeStreet1.Text = objComponenets.street1;
            lblVHomeStreet2.Text = objComponenets.street2;
            lblVHomeCity.Text = objComponenets.city_name;
            lblVHomeState.Text = objComponenets.state_abbreviation;
            lblVHomeZip.Text = objComponenets.zipcode;
            btnVerifyHomeAddressNo.Enabled = true;
            divNotVerifiedAdd.Visible = true;
            lblUnverifiedAdd.Text = "";
        }
        else
        {
            btnVerifyHomeAddressNo.Enabled = false;
            divNotVerifiedAdd.Visible = false;
            lblUnverifiedAdd.Text = "This is not a verified address.";
        }
    }
    protected void btnVerifyHomeAddress_Click(object sender, EventArgs e)
    {
        divVerifyHomeAddressBtn.Visible = false;
        divVerifyHomeAddressPnl.Visible = true;
        lblVHomeStreet1.Text = "";
        lblVHomeStreet2.Text = "";
        lblVHomeCity.Text = "";
        lblVHomeState.Text = "";
        lblVHomeZip.Text = "";
        fillverifyresidenceaddress();
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
    #endregion

    #region Mailing Address

    public void fillverifyMailingaddress()
    {
        txtStreetMailEdit.Text = AddressHelper.GetFormatedPOBOx(txtStreetMailEdit.Text);
        txtStreet2MailEdit.Text = AddressHelper.GetFormatedPOBOx(txtStreet2MailEdit.Text);

        lblUMailingStreet1.Text = txtStreetMailEdit.Text;
        lblUMailingStreet2.Text = txtStreet2MailEdit.Text;
        lblUMailingCity.Text = txtCityMailEdit.Text;
        lblUMailingState.Text = ddlStateMailEdit.SelectedItem.Text;
        lblUMailingZip.Text = txtZipMailEdit.Text;
        components objComponenets = GNF.APIAddressValidation.ValidateAddress(txtStreetMailEdit.Text, txtStreet2MailEdit.Text, txtCityMailEdit.Text, ddlStateMailEdit.SelectedItem.Text, txtZipMailEdit.Text);
        if (objComponenets != null)
        {
            lblVMailingStreet1.Text = objComponenets.street1;
            lblVMailingStreet2.Text = objComponenets.street2;
            lblVMailingCity.Text = objComponenets.city_name;
            lblVMailingState.Text = objComponenets.state_abbreviation;
            lblVMailingZip.Text = objComponenets.zipcode;
            btnVerifyMailingAddressNo.Enabled = true;
            divNotVerifiedMailingAdd.Visible = true;
            lblUnverifiedMailingAdd.Text = "";
        }
        else
        {
            btnVerifyMailingAddressNo.Enabled = false;
            divNotVerifiedMailingAdd.Visible = false;
            lblUnverifiedMailingAdd.Text = "This is not a verified address.";
        }
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
        fillverifyMailingaddress();
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

    #endregion

    #endregion

    #region Child Support Information

    protected void lnkCancelCSD_Click(object sender, EventArgs e)
    {

    }

    protected void btnChildSupp_Click(object sender, EventArgs e)
    {
        btnSection3_Click(sender, e);
    }

    #endregion

    #region Licnsure Info

    #region Page Event Handlers

    protected void lnkCancelLiceInfo_Click(object sender, EventArgs e)
    {

    }

    protected void btnLicNextInfo_Click(object sender, EventArgs e)
    {
        btnSection4_Click(sender, e);
    }

    #endregion

    #endregion

    #region Education

    #region Page Event Handlers

    protected void lnkCancelNextMassageTraning_Click(object sender, EventArgs e)
    {

    }

    protected void btnNextMassageTraning_Click(object sender, EventArgs e)
    {
        btnSection5_Click(sender, e);
    }

    #endregion

    #endregion

    protected void btnEducation_Click(object sender, EventArgs e)
    {
        btnSection6_Click(sender, e);
    }

    protected void lnkExamInfoCancel_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Section CharacterReferences

    #region Page Event Handler

    protected void btnNextCharacterReferences_Click(object sender, EventArgs e)
    {
        btnSection7_Click(sender, e);
    }
    protected void lnkCancleNextCharacterReferences_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #endregion

    #region Application Screening Question

    protected void btnNextSection7_Click(object sender, EventArgs e)
    {
        btnPayment_Click(sender, e);
    }

    protected void lnkCalcelSection7_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Checklist

    protected void btnNextSaveChecklist_Click(object sender, EventArgs e)
    {
        if (ddlPaymentMethod.SelectedItem.Text == "Money Order" && txtMoney_OrderNo.Text == "")
        {
            ltrTest.Text = MessageBox.BuildValidationMessage("Please enter Money Order #.", 2);
        }
        else if (ddlPaymentMethod.SelectedItem.Text == "Money Order" && txtMoney_OrderNo.Text != "")
        {
            ltrMainMessage.Text = MessageBox.BuildValidationMessage("Payment Successfull.", 1);
            pnlMoneyOrder.Visible = false;
            pnlCreditCard.Visible = false;
            divPaymentMethod.Visible = false;
            divAfterPayment.Visible = true;
            ddlPaymentMethod.SelectedValue = null;
            btnChecklist_Click(sender, e);
        }
        else
        {
            pnlMoneyOrder.Visible = false;
            pnlCreditCard.Visible = false;
            ddlPaymentMethod.SelectedValue = null;
            btnChecklist_Click(sender, e);
        }

    }
    protected void lnkCancelChecklist_Click(object sender, EventArgs e)
    {

    }

    protected void btnAddDoc_Click(object sender, EventArgs e)
    {
        pnlGridDocument.Visible = true;

    }
    #endregion

    #region Menu Navigation Links Of Certification Application

    protected void lnkInstruction_Click(object sender, EventArgs e)
    {
        pnlChecklist.Visible = false;
        pnlApplicatinInstructions.Visible = true;
        pnlPayment.Visible = false;
        pnlSection1.Visible = false;
        pnlSection2.Visible = false;
        pnlSection3.Visible = false;
        pnlSection4.Visible = false;
        pnlSection5.Visible = false;
        pnlSection6.Visible = false;
        pnlSection7.Visible = false;

        MakeActiveLi(liApplicatinInstructions);//

    }

    protected void btnPayment_Click(object sender, EventArgs e)
    {
        pnlChecklist.Visible = false;
        pnlPayment.Visible = true;
        pnlApplicatinInstructions.Visible = false;
        pnlSection1.Visible = false;
        pnlSection2.Visible = false;
        pnlSection3.Visible = false;
        pnlSection4.Visible = false;
        pnlSection5.Visible = false;
        pnlSection6.Visible = false;
        pnlSection7.Visible = false;

        MakeActiveLi(liPayment);

    }

    protected void btnChecklist_Click(object sender, EventArgs e)
    {

        pnlChecklist.Visible = true;
        pnlPayment.Visible = false;
        pnlApplicatinInstructions.Visible = false;
        pnlSection1.Visible = false;
        pnlSection2.Visible = false;
        pnlSection3.Visible = false;
        pnlSection4.Visible = false;
        pnlSection5.Visible = false;
        pnlSection6.Visible = false;
        pnlSection7.Visible = false;

        MakeActiveLi(liChecklist);
    }

    protected void btnMassageTherapistApplication_Click(object sender, EventArgs e)
    {
        pnlChecklist.Visible = false;
        pnlPayment.Visible = false;
        pnlApplicatinInstructions.Visible = false;
        pnlSection1.Visible = true;
        pnlSection2.Visible = false;
        pnlSection3.Visible = false;
        pnlSection4.Visible = false;
        pnlSection5.Visible = false;
        pnlSection6.Visible = false;
        pnlSection7.Visible = false;

        MakeActiveLi(liMassageTherapistApplication);
    }

    protected void btnSection2_Click(object sender, EventArgs e)
    {

        pnlChecklist.Visible = false;
        pnlPayment.Visible = false;
        pnlApplicatinInstructions.Visible = false;
        pnlSection1.Visible = false;
        pnlSection2.Visible = true;
        pnlSection3.Visible = false;
        pnlSection4.Visible = false;
        pnlSection5.Visible = false;
        pnlSection6.Visible = false;
        pnlSection7.Visible = false;

        MakeActiveLi(liSection2);//
    }

    protected void btnSection3_Click(object sender, EventArgs e)
    {
        pnlChecklist.Visible = false;
        pnlPayment.Visible = false;
        pnlApplicatinInstructions.Visible = false;
        pnlSection1.Visible = false;
        pnlSection2.Visible = false;
        pnlSection3.Visible = true;
        pnlSection4.Visible = false;
        pnlSection5.Visible = false;
        pnlSection6.Visible = false;
        pnlSection7.Visible = false;
        MakeActiveLi(liSection3);//
    }

    protected void btnSection4_Click(object sender, EventArgs e)
    {
        pnlChecklist.Visible = false;
        pnlPayment.Visible = false;
        pnlApplicatinInstructions.Visible = false;
        pnlSection1.Visible = false;
        pnlSection2.Visible = false;
        pnlSection3.Visible = false;
        pnlSection4.Visible = true;
        pnlSection5.Visible = false;
        pnlSection6.Visible = false;
        pnlSection7.Visible = false;

        MakeActiveLi(liSection4);//
    }

    protected void btnSection5_Click(object sender, EventArgs e)
    {


        pnlChecklist.Visible = false;
        pnlPayment.Visible = false;
        pnlApplicatinInstructions.Visible = false;
        pnlSection1.Visible = false;
        pnlSection2.Visible = false;
        pnlSection3.Visible = false;
        pnlSection4.Visible = false;
        pnlSection5.Visible = true;
        pnlSection6.Visible = false;
        pnlSection7.Visible = false;

        MakeActiveLi(liSection5);//
    }

    protected void btnSection6_Click(object sender, EventArgs e)
    {
        pnlChecklist.Visible = false;
        pnlPayment.Visible = false;
        pnlApplicatinInstructions.Visible = false;
        pnlSection1.Visible = false;
        pnlSection2.Visible = false;
        pnlSection3.Visible = false;
        pnlSection4.Visible = false;
        pnlSection5.Visible = false;
        pnlSection6.Visible = true;
        pnlSection7.Visible = false;

        MakeActiveLi(liSection6);//
    }

    protected void btnSection7_Click(object sender, EventArgs e)
    {
        pnlChecklist.Visible = false;
        pnlPayment.Visible = false;
        pnlApplicatinInstructions.Visible = false;
        pnlSection1.Visible = false;
        pnlSection2.Visible = false;
        pnlSection3.Visible = false;
        pnlSection4.Visible = false;
        pnlSection5.Visible = false;
        pnlSection6.Visible = false;
        pnlSection7.Visible = true;

        MakeActiveLi(liSection7);//
    }

    #endregion

    public void ClearLiteral()
    {
        ltrErrorMesageInstructionEdit.Text = "";
        ltrCharacterReferenceEdit.Text = "";
        ltrMessageTrnGEdit.Text = "";
        ltrLicenseInfoEdit.Text = "";
        ltrErrorMsgChildSuppInfoEdit.Text = "";
        ltrResidenceAddEdit.Text = "";
        ltrPersonalInfoEdit.Text = "";
    }

    #region LicensureInformation

    public int EditIndexLicensureInformation
    {
        get
        {
            if (ViewState["EditIndexLicensureInformation"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexLicensureInformation"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexLicensureInformation"] = value;
        }
    }

    protected void btnLicensureInformationAddNew_Click(object sender, EventArgs e)
    {
        divAddbuttonLicensureInformation.Visible = false;
        divAddPanelLicensureInformation.Visible = true;
        this.EditIndexLicensureInformation = -1;
        BindGridLicensureInformation();
    }
    protected void btnLicensureInformationSave_Click(object sender, EventArgs e)
    {
        divAddbuttonLicensureInformation.Visible = true;
        divAddPanelLicensureInformation.Visible = false;
    }
    protected void lnkLicensureInformationCancel_Click(object sender, EventArgs e)
    {
        divAddbuttonLicensureInformation.Visible = true;
        divAddPanelLicensureInformation.Visible = false;
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

    public void BindGridLicensureInformation()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvLicenseInfo.EditIndex = this.EditIndexLicensureInformation;
        gvLicenseInfo.DataSource = ArryListName;
        gvLicenseInfo.DataBind();

        if (this.EditIndexLicensureInformation >= 0)
        {
            gvLicenseInfo.Rows[this.EditIndexLicensureInformation].CssClass = "RowInEditMode";
            gvLicenseInfo.Rows[this.EditIndexLicensureInformation].Cells[0].Attributes.Add("colspan", "6");
            gvLicenseInfo.Rows[this.EditIndexLicensureInformation].Cells[1].Visible = false;
            gvLicenseInfo.Rows[this.EditIndexLicensureInformation].Cells[2].Visible = false;
            gvLicenseInfo.Rows[this.EditIndexLicensureInformation].Cells[3].Visible = false;
            gvLicenseInfo.Rows[this.EditIndexLicensureInformation].Cells[4].Visible = false;
            gvLicenseInfo.Rows[this.EditIndexLicensureInformation].Cells[5].Visible = false;

        }
    }

    public void FillControlLicensureInformation(GridView gv, int EditInd)
    {
        try
        {


            TextBox txtLicenseInfoLicenseNoEdit = gv.Rows[this.EditIndexLicensureInformation].FindControl("txtLicenseInfoLicenseNoEdit") as TextBox;
            TextBox txtLicensInfoDateOfIssuanceEdit = gv.Rows[this.EditIndexLicensureInformation].FindControl("txtLicensInfoDateOfIssuanceEdit") as TextBox;
            TextBox txtLicensInfoReasonEdit = gv.Rows[this.EditIndexLicensureInformation].FindControl("txtLicensInfoReasonEdit") as TextBox;
            DropDownList ddlLicensInfoStateEdit = gv.Rows[this.EditIndexLicensureInformation].FindControl("ddlLicensInfoStateEdit") as DropDownList;
            DropDownList ddlLicenseInfoCountryEdit = gv.Rows[this.EditIndexLicensureInformation].FindControl("ddlLicenseInfoCountryEdit") as DropDownList;
            DropDownList ddlLicenseInfoStatusEdit = gv.Rows[this.EditIndexLicensureInformation].FindControl("ddlLicenseInfoStatusEdit") as DropDownList;

            txtLicenseInfoLicenseNoEdit.Text = "CAMTC.001";
            ddlLicensInfoStateEdit.SelectedValue = "CA";
            txtLicensInfoDateOfIssuanceEdit.Text = "02/04/2014";
            ddlLicenseInfoCountryEdit.SelectedValue = "US";
            ddlLicenseInfoStatusEdit.SelectedValue = "1";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnLicensureInformationUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexLicensureInformation = -1;
        BindGridLicensureInformation();
    }

    protected void lnkLicensureInformationCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexLicensureInformation = -1;
        BindGridLicensureInformation();
    }

    protected void lnkLicensureInformationEdit_Click(object sender, EventArgs e)
    {
        divAddPanelLicensureInformation.Visible = false;
        divAddbuttonLicensureInformation.Visible = true;
        this.EditIndexLicensureInformation = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexLicensureInformation = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridLicensureInformation();
            FillControlLicensureInformation(gvLicenseInfo, this.EditIndexLicensureInformation);
        }
    }

    protected void lnkLicensureInformationDelete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Education 1

    public int EditIndexEducation
    {
        get
        {
            if (ViewState["EditIndexEducation"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexEducation"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexEducation"] = value;
        }
    }

    protected void btnEducation1AddNew_Click(object sender, EventArgs e)
    {
        divEducationt1.Visible = false;
        divAddPanelEducation1.Visible = true;
        this.EditIndexEducation = -1;
        BindGridEducation();
    }
    protected void btnEducation1Save_Click(object sender, EventArgs e)
    {
        divEducationt1.Visible = true;
        divAddPanelEducation1.Visible = false;
    }
    protected void lnkEducation1Cancel_Click(object sender, EventArgs e)
    {
        divEducationt1.Visible = true;
        divAddPanelEducation1.Visible = false;
    }

    int ROWEdu1 = 0;

    protected void gvEducation1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblBusinessName2 = e.Row.FindControl("lblBusinessName2") as Label;
            Label lblBusinessPhone2 = e.Row.FindControl("lblBusinessPhone2") as Label;
            Label lblCity2 = e.Row.FindControl("lblCity2") as Label;
            Label lblState2 = e.Row.FindControl("lblState2") as Label;
            Label lblZip2 = e.Row.FindControl("lblZip2") as Label;

            if (lblBusinessName2 != null && lblBusinessPhone2 != null && lblCity2 != null && lblState2 != null && lblZip2 != null)
            {
                if (ROWEdu1 == 0)
                {

                    lblBusinessName2.Text = "Dolce Salon and Spa";
                    lblBusinessPhone2.Text = "(530) 542-0604";
                    lblCity2.Text = "EMERYVILLE";
                    lblState2.Text = "CA";
                    lblZip2.Text = "96151";
                }
                else if (ROWEdu1 == 1)
                {
                    lblBusinessName2.Text = "Professional Massage Inc.";
                    lblBusinessPhone2.Text = "(775) 742-0000";
                    lblCity2.Text = "TEMPLE CITY";
                    lblState2.Text = "CA";
                    lblZip2.Text = "89450";
                }
            }

            ROWEdu1++;

        }
    }

    public void BindGridEducation()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");

        gvEducation1.EditIndex = this.EditIndexEducation;
        gvEducation1.DataSource = ArryListName;
        gvEducation1.DataBind();

        if (this.EditIndexEducation >= 0)
        {
            gvEducation1.Rows[this.EditIndexEducation].CssClass = "RowInEditMode";
            gvEducation1.Rows[this.EditIndexEducation].Cells[0].Attributes.Add("colspan", "6");
            gvEducation1.Rows[this.EditIndexEducation].Cells[1].Visible = false;
            gvEducation1.Rows[this.EditIndexEducation].Cells[2].Visible = false;
            gvEducation1.Rows[this.EditIndexEducation].Cells[3].Visible = false;
            gvEducation1.Rows[this.EditIndexEducation].Cells[4].Visible = false;
            gvEducation1.Rows[this.EditIndexEducation].Cells[5].Visible = false;
        }
    }

    public void FillControlEducation1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtEdu1SchoolNameEdit = gv.Rows[this.EditIndexEducation].FindControl("txtEdu1SchoolNameEdit") as TextBox;
            TextBox txtEdu1CityEdit = gv.Rows[this.EditIndexEducation].FindControl("txtEdu1CityEdit") as TextBox;
            TextBox txtEdu1ZipEdit = gv.Rows[this.EditIndexEducation].FindControl("txtEdu1ZipEdit") as TextBox;
            TextBox txtEdu1SchoolPhoneEdit = gv.Rows[this.EditIndexEducation].FindControl("txtEdu1SchoolPhoneEdit") as TextBox;
            DropDownList ddlEdu1StateEdit = gv.Rows[this.EditIndexEducation].FindControl("ddlEdu1StateEdit") as DropDownList;
            DropDownList ddlEduCountryNameEdit = gv.Rows[this.EditIndexEducation].FindControl("ddlEduCountryNameEdit") as DropDownList;


            txtEdu1SchoolNameEdit.Text = "NATIONAL HOLISTIC INSTITUTE";
            ddlEdu1StateEdit.SelectedValue = "CA";
            txtEdu1SchoolPhoneEdit.Text = "(530) 542-0604";
            ddlEduCountryNameEdit.SelectedValue = "US";
            txtEdu1ZipEdit.Text = "96151";
            txtEdu1CityEdit.Text = "EMERYVILLE";

        }

        catch (Exception ex)
        {

        }
    }

    protected void btnEducation1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexEducation = -1;
        BindGridEducation();
    }

    protected void lnkEducation1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexEducation = -1;
        BindGridEducation();
    }

    protected void lnkEducation1Edit_Click(object sender, EventArgs e)
    {
        divEducationt1.Visible = true;
        divAddPanelEducation1.Visible = false;
        this.EditIndexEducation = -1;

        ImageButton imgbtnEducation1Edit = (ImageButton)sender;
        if (imgbtnEducation1Edit != null)
        {
            int ID = Convert.ToInt32(imgbtnEducation1Edit.CommandArgument);
            this.EditIndexEducation = Convert.ToInt32(imgbtnEducation1Edit.Attributes["RowIndex"]);
            BindGridEducation();
            FillControlEducation1(gvLicenseInfo, this.EditIndexEducation);
        }
    }

    protected void lnkEducation1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Education 2

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
            FillControlEducation2(gvLicenseInfo, this.EditIndexEducation2);
        }
    }

    protected void lnkEducation2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Exams

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
    protected void lnkExam1Edit_Click(object sender, EventArgs e)
    {
        this.EditIndexExam = 0;
        BindExams();
    }
    protected void lnkExam1Delete_Click(object sender, EventArgs e) { }

    #endregion

    #region Work Information 1

    public int EditIndexWorkInfo1
    {
        get
        {
            if (ViewState["EditIndexWorkInfo1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexWorkInfo1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexWorkInfo1"] = value;
        }
    }

    protected void btnWorkInfo1AddNew_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo1.Visible = false;
        divpnlWorkInfo1.Visible = true;
        this.EditIndexWorkInfo1 = -1;
        BindGridWorkInfo1();
    }
    protected void btnSaveWorkInfo1_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo1.Visible = true;
        divpnlWorkInfo1.Visible = false;
    }
    protected void lnkCancelWorkInfo1_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo1.Visible = true;
        divpnlWorkInfo1.Visible = false;
    }

    int ROW = 0;
    protected void gvWorkInfo1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblBusinessName1 = e.Row.FindControl("lblBusinessName1") as Label;
            Label lblBusinessPhone1 = e.Row.FindControl("lblBusinessPhone1") as Label;
            Label lblCity1 = e.Row.FindControl("lblCity1") as Label;
            Label lblState1 = e.Row.FindControl("lblState1") as Label;
            Label lblZip1 = e.Row.FindControl("lblZip1") as Label;

            if (lblBusinessName1 != null && lblBusinessPhone1 != null && lblCity1 != null && lblState1 != null && lblZip1 != null)
            {
                if (ROW == 0)
                {

                    lblBusinessName1.Text = "Max Health Center";
                    lblBusinessPhone1.Text = "(530) 542-0604";
                    lblCity1.Text = "EMERYVILLE";
                    lblState1.Text = "CA";
                    lblZip1.Text = "96151";
                }
                else if (ROW == 1)
                {
                    lblBusinessName1.Text = "Intu Corporation";
                    lblBusinessPhone1.Text = "(775) 742-3752";
                    lblCity1.Text = "TEMPLE CITY";
                    lblState1.Text = "CA";
                    lblZip1.Text = "89450";
                }
            }

            ROW++;

        }
    }

    public void BindGridWorkInfo1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvWorkInfo1.EditIndex = this.EditIndexWorkInfo1;
        gvWorkInfo1.DataSource = ArryListName;
        gvWorkInfo1.DataBind();

        if (this.EditIndexWorkInfo1 >= 0)
        {
            gvWorkInfo1.Rows[this.EditIndexWorkInfo1].CssClass = "RowInEditMode";
            gvWorkInfo1.Rows[this.EditIndexWorkInfo1].Cells[0].Attributes.Add("colspan", "6");
            gvWorkInfo1.Rows[this.EditIndexWorkInfo1].Cells[1].Visible = false;
            gvWorkInfo1.Rows[this.EditIndexWorkInfo1].Cells[2].Visible = false;
            gvWorkInfo1.Rows[this.EditIndexWorkInfo1].Cells[3].Visible = false;
            gvWorkInfo1.Rows[this.EditIndexWorkInfo1].Cells[4].Visible = false;
            gvWorkInfo1.Rows[this.EditIndexWorkInfo1].Cells[5].Visible = false;

        }
    }

    public void FillControlWorkInfo1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtWorkInfo1BusinessNameEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("txtWorkInfo1BusinessNameEdit") as TextBox;
            DropDownList ddlWorkInfoQ1StateEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("ddlWorkInfoQ1StateEdit") as DropDownList;
            TextBox txtWorkInfoQ1CityEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("txtWorkInfoQ1CityEdit") as TextBox;
            TextBox txtWorkInfo1BusinessPhoneEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("txtWorkInfo1BusinessPhoneEdit") as TextBox;
            TextBox txtWorkInfoQ1ZipEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("txtWorkInfoQ1ZipEdit") as TextBox;

            txtWorkInfo1BusinessNameEdit.Text = "Max Health Center";
            txtWorkInfo1BusinessPhoneEdit.Text = "(530) 542-0604";
            ddlWorkInfoQ1StateEdit.SelectedValue = "CA";
            txtWorkInfoQ1ZipEdit.Text = "96151";
            txtWorkInfoQ1CityEdit.Text = "EMERYVILLE";

        }

        catch (Exception ex)
        {

        }
    }

    protected void btnWorkInfo1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexWorkInfo1 = -1;
        BindGridWorkInfo1();
    }

    protected void lnkWorkInfo1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexWorkInfo1 = -1;
        BindGridWorkInfo1();
    }

    protected void lnkWorkInfo1Edit_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo1.Visible = true;
        divpnlWorkInfo1.Visible = false;
        this.EditIndexWorkInfo1 = -1;

        ImageButton imgbtnWorkInfo1Edit = (ImageButton)sender;
        if (imgbtnWorkInfo1Edit != null)
        {
            int ID = Convert.ToInt32(imgbtnWorkInfo1Edit.CommandArgument);
            this.EditIndexWorkInfo1 = Convert.ToInt32(imgbtnWorkInfo1Edit.Attributes["RowIndex"]);
            BindGridWorkInfo1();
            FillControlWorkInfo1(gvWorkInfo1, this.EditIndexWorkInfo1);
        }
    }

    protected void lnkWorkInfo1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Work Information 2

    public int EditIndexWorkInfo2
    {
        get
        {
            if (ViewState["EditIndexWorkInfo2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexWorkInfo2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexWorkInfo2"] = value;
        }
    }

    protected void btnWorkInfo2AddNew_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo2.Visible = false;
        divpnlWorkInfo2.Visible = true;
        this.EditIndexWorkInfo2 = -1;
        BindGridWorkInfo2();
    }
    protected void btnSaveWorkInfo2_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo2.Visible = true;
        divpnlWorkInfo2.Visible = false;
    }
    protected void lnkCancelWorkInfo2_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo2.Visible = true;
        divpnlWorkInfo2.Visible = false;
    }


    int ROW2 = 0;

    protected void gvWorkInfo2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblBusinessName2 = e.Row.FindControl("lblBusinessName2") as Label;
            Label lblBusinessPhone2 = e.Row.FindControl("lblBusinessPhone2") as Label;
            Label lblCity2 = e.Row.FindControl("lblCity2") as Label;
            Label lblState2 = e.Row.FindControl("lblState2") as Label;
            Label lblZip2 = e.Row.FindControl("lblZip2") as Label;

            if (lblBusinessName2 != null && lblBusinessPhone2 != null && lblCity2 != null && lblState2 != null && lblZip2 != null)
            {
                if (ROW2 == 0)
                {

                    lblBusinessName2.Text = "Dolce Salon and Spa";
                    lblBusinessPhone2.Text = "(530) 542-0604";
                    lblCity2.Text = "EMERYVILLE";
                    lblState2.Text = "CA";
                    lblZip2.Text = "96151";
                }
                else if (ROW2 == 1)
                {
                    lblBusinessName2.Text = "Professional Massage Inc.";
                    lblBusinessPhone2.Text = "(775) 742-0000";
                    lblCity2.Text = "TEMPLE CITY";
                    lblState2.Text = "CA";
                    lblZip2.Text = "89450";
                }
            }

            ROW2++;

        }
    }
    public void BindGridWorkInfo2()
    {
        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");

        gvWorkInfo2.EditIndex = this.EditIndexWorkInfo2;
        gvWorkInfo2.DataSource = ArryListName;
        gvWorkInfo2.DataBind();

        if (this.EditIndexWorkInfo2 >= 0)
        {
            gvWorkInfo2.Rows[this.EditIndexWorkInfo2].CssClass = "RowInEditMode";
            gvWorkInfo2.Rows[this.EditIndexWorkInfo2].Cells[0].Attributes.Add("colspan", "6");
            gvWorkInfo2.Rows[this.EditIndexWorkInfo2].Cells[1].Visible = false;
            gvWorkInfo2.Rows[this.EditIndexWorkInfo2].Cells[2].Visible = false;
            gvWorkInfo2.Rows[this.EditIndexWorkInfo2].Cells[3].Visible = false;
            gvWorkInfo2.Rows[this.EditIndexWorkInfo2].Cells[4].Visible = false;
            gvWorkInfo2.Rows[this.EditIndexWorkInfo2].Cells[5].Visible = false;

        }
    }

    public void FillControlWorkInfo2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtWorkInfo2BusinessNameEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("txtWorkInfo2BusinessNameEdit") as TextBox;
            DropDownList ddlWorkInfoQ2StateEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("ddlWorkInfoQ2StateEdit") as DropDownList;
            TextBox txtWorkInfoQ2CityEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("txtWorkInfoQ2CityEdit") as TextBox;
            TextBox txtWorkInfoQ2ZipEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("txtWorkInfoQ2ZipEdit") as TextBox;
            TextBox txtWorkInfo2BusinessPhoneEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("txtWorkInfo2BusinessPhoneEdit") as TextBox;

            txtWorkInfo2BusinessNameEdit.Text = "Dolce Salon and Spa";
            txtWorkInfo2BusinessPhoneEdit.Text = "(530) 542-0604";
            ddlWorkInfoQ2StateEdit.SelectedValue = "CA";
            txtWorkInfoQ2CityEdit.Text = "EMERYVILLE";
            txtWorkInfoQ2ZipEdit.Text = "96151";

        }

        catch (Exception ex)
        {

        }
    }

    protected void btnWorkInfo2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexWorkInfo2 = -1;
        BindGridWorkInfo2();
    }

    protected void lnkWorkInfo2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexWorkInfo2 = -1;
        BindGridWorkInfo2();
    }

    protected void lnkWorkInfo2Edit_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo2.Visible = true;
        divpnlWorkInfo2.Visible = false;
        this.EditIndexWorkInfo2 = -1;

        ImageButton imgbtnWorkInfo2Edit = (ImageButton)sender;
        if (imgbtnWorkInfo2Edit != null)
        {
            int ID = Convert.ToInt32(imgbtnWorkInfo2Edit.CommandArgument);
            this.EditIndexWorkInfo2 = Convert.ToInt32(imgbtnWorkInfo2Edit.Attributes["RowIndex"]);
            BindGridWorkInfo2();
            FillControlWorkInfo2(gvWorkInfo2, this.EditIndexWorkInfo2);
        }
    }

    protected void lnkWorkInfo2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Work Information 3

    public int EditIndexWorkInfo3
    {
        get
        {
            if (ViewState["EditIndexWorkInfo3"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexWorkInfo3"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexWorkInfo3"] = value;
        }
    }

    protected void btnWorkInfo3AddNew_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo3.Visible = false;
        divpnlWorkInfo3.Visible = true;
        this.EditIndexWorkInfo3 = -1;
        BindGridWorkInfo3();
    }
    protected void btnSaveWorkInfo3_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo3.Visible = true;
        divpnlWorkInfo3.Visible = false;
    }
    protected void lnkCancelWorkInfo3_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo3.Visible = true;
        divpnlWorkInfo3.Visible = false;
    }

    int ROW3 = 0;

    protected void gvWorkInfo3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblBusinessName3 = e.Row.FindControl("lblBusinessName3") as Label;
            Label lblBusinessPhone3 = e.Row.FindControl("lblBusinessPhone3") as Label;
            Label lblCity3 = e.Row.FindControl("lblCity3") as Label;
            Label lblState3 = e.Row.FindControl("lblState3") as Label;
            Label lblZip3 = e.Row.FindControl("lblZip3") as Label;

            if (lblBusinessName3 != null && lblBusinessPhone3 != null && lblCity3 != null && lblState3 != null && lblZip3 != null)
            {
                if (ROW3 == 0)
                {

                    lblBusinessName3.Text = "Four Seasons Hotel";
                    lblBusinessPhone3.Text = "(702) 414-1618";
                    lblCity3.Text = "EMERYVILLE";
                    lblState3.Text = "CA";
                    lblZip3.Text = "96151";
                }
                else if (ROW3 == 1)
                {
                    lblBusinessName3.Text = "Canyon Ranch Spa Club";
                    lblBusinessPhone3.Text = "(775) 555-3752";
                    lblCity3.Text = "TEMPLE CITY";
                    lblState3.Text = "CA";
                    lblZip3.Text = "89450";
                }
            }

            ROW3++;

        }
    }
    public void BindGridWorkInfo3()
    {
        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");

        gvWorkInfo3.EditIndex = this.EditIndexWorkInfo3;
        gvWorkInfo3.DataSource = ArryListName;
        gvWorkInfo3.DataBind();

        if (this.EditIndexWorkInfo3 >= 0)
        {
            gvWorkInfo3.Rows[this.EditIndexWorkInfo3].CssClass = "RowInEditMode";
            gvWorkInfo3.Rows[this.EditIndexWorkInfo3].Cells[0].Attributes.Add("colspan", "6");
            gvWorkInfo3.Rows[this.EditIndexWorkInfo3].Cells[1].Visible = false;
            gvWorkInfo3.Rows[this.EditIndexWorkInfo3].Cells[2].Visible = false;
            gvWorkInfo3.Rows[this.EditIndexWorkInfo3].Cells[3].Visible = false;
            gvWorkInfo3.Rows[this.EditIndexWorkInfo3].Cells[4].Visible = false;
            gvWorkInfo3.Rows[this.EditIndexWorkInfo3].Cells[5].Visible = false;

        }
    }

    public void FillControlWorkInfo3(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtWorkInfo3BusinessNameEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("txtWorkInfo3BusinessNameEdit") as TextBox;
            DropDownList ddlWorkInfoQ3StateEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("ddlWorkInfoQ3StateEdit") as DropDownList;
            TextBox txtWorkInfoQ3CityEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("txtWorkInfoQ3CityEdit") as TextBox;
            TextBox txtWorkInfoQ3ZipEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("txtWorkInfoQ3ZipEdit") as TextBox;
            TextBox txtWorkInfo3BusinessPhoneEdit = gv.Rows[this.EditIndexWorkInfo1].FindControl("txtWorkInfo3BusinessPhoneEdit") as TextBox;

            txtWorkInfo3BusinessNameEdit.Text = "Four Seasons Hotel";
            txtWorkInfo3BusinessPhoneEdit.Text = "(702) 414-1618";
            ddlWorkInfoQ3StateEdit.SelectedValue = "CA";
            txtWorkInfoQ3CityEdit.Text = "EMERYVILLE";
            txtWorkInfoQ3ZipEdit.Text = "96151";

        }

        catch (Exception ex)
        {

        }
    }

    protected void btnWorkInfo3Update_Click(object sender, EventArgs e)
    {
        this.EditIndexWorkInfo3 = -1;
        BindGridWorkInfo3();
    }

    protected void lnkWorkInfo3CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexWorkInfo3 = -1;
        BindGridWorkInfo3();
    }

    protected void lnkWorkInfo3Edit_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo3.Visible = true;
        divpnlWorkInfo3.Visible = false;
        this.EditIndexWorkInfo3 = -1;

        ImageButton imgbtnWorkInfo3Edit = (ImageButton)sender;
        if (imgbtnWorkInfo3Edit != null)
        {
            int ID = Convert.ToInt32(imgbtnWorkInfo3Edit.CommandArgument);
            this.EditIndexWorkInfo3 = Convert.ToInt32(imgbtnWorkInfo3Edit.Attributes["RowIndex"]);
            BindGridWorkInfo3();
            FillControlWorkInfo3(gvWorkInfo3, this.EditIndexWorkInfo3);
        }
    }

    protected void lnkWorkInfo3Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Work Information 4

    public int EditIndexWorkInfo4
    {
        get
        {
            if (ViewState["EditIndexWorkInfo4"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexWorkInfo4"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexWorkInfo4"] = value;
        }
    }

    protected void btnWorkInfo4AddNew_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo4.Visible = false;
        divpnlWorkInfo4.Visible = true;
        this.EditIndexWorkInfo4 = -1;
        BindGridWorkInfo4();
    }
    protected void btnSaveWorkInfo4_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo4.Visible = true;
        divpnlWorkInfo4.Visible = false;
    }
    protected void lnkCancelWorkInfo4_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo4.Visible = true;
        divpnlWorkInfo4.Visible = false;
    }

    int ROW4 = 0;

    protected void gvWorkInfo4_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblStreet4 = e.Row.FindControl("lblStreet4") as Label;
            Label lblCity4 = e.Row.FindControl("lblCity4") as Label;
            Label lblState4 = e.Row.FindControl("lblState4") as Label;
            Label lblZip4 = e.Row.FindControl("lblZip4") as Label;

            if (lblStreet4 != null && lblCity4 != null && lblState4 != null && lblZip4 != null)
            {
                if (ROW4 == 0)
                {

                    lblStreet4.Text = "8950 W Charleston Blvd";
                    lblCity4.Text = "EMERYVILLE";
                    lblState4.Text = "CA";
                    lblZip4.Text = "96151";
                }
                else if (ROW4 == 1)
                {
                    lblStreet4.Text = "8911 T Charleston";
                    lblCity4.Text = "TEMPLE CITY";
                    lblState4.Text = "CA";
                    lblZip4.Text = "89450";
                }
            }

            ROW4++;

        }
    }
    public void BindGridWorkInfo4()
    {
        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");

        gvWorkInfo4.EditIndex = this.EditIndexWorkInfo4;
        gvWorkInfo4.DataSource = ArryListName;
        gvWorkInfo4.DataBind();

        if (this.EditIndexWorkInfo4 >= 0)
        {
            gvWorkInfo4.Rows[this.EditIndexWorkInfo4].CssClass = "RowInEditMode";
            gvWorkInfo4.Rows[this.EditIndexWorkInfo4].Cells[0].Attributes.Add("colspan", "5");
            gvWorkInfo4.Rows[this.EditIndexWorkInfo4].Cells[1].Visible = false;
            gvWorkInfo4.Rows[this.EditIndexWorkInfo4].Cells[2].Visible = false;
            gvWorkInfo4.Rows[this.EditIndexWorkInfo4].Cells[3].Visible = false;
            gvWorkInfo4.Rows[this.EditIndexWorkInfo4].Cells[4].Visible = false;

        }
    }

    public void FillControlWorkInfo4(GridView gv, int EditInd)
    {
        try
        {
            DropDownList ddlWorkInfoQ4StateEdit = gv.Rows[this.EditIndexWorkInfo4].FindControl("ddlWorkInfoQ4StateEdit") as DropDownList;
            TextBox txtWorkInfoQ4CityEdit = gv.Rows[this.EditIndexWorkInfo4].FindControl("txtWorkInfoQ4CityEdit") as TextBox;
            TextBox txtWorkInfoQ4ZipEdit = gv.Rows[this.EditIndexWorkInfo4].FindControl("txtWorkInfoQ4ZipEdit") as TextBox;

            ddlWorkInfoQ4StateEdit.SelectedValue = "CA";
            txtWorkInfoQ4CityEdit.Text = "EMERYVILLE";
            txtWorkInfoQ4ZipEdit.Text = "96151";

        }

        catch (Exception ex)
        {

        }
    }

    protected void btnWorkInfo4Update_Click(object sender, EventArgs e)
    {
        this.EditIndexWorkInfo4 = -1;
        BindGridWorkInfo4();
    }

    protected void lnkWorkInfo4CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexWorkInfo4 = -1;
        BindGridWorkInfo4();
    }

    protected void lnkWorkInfo4Edit_Click(object sender, EventArgs e)
    {
        divbtnWorkInfo4.Visible = true;
        divpnlWorkInfo4.Visible = false;
        this.EditIndexWorkInfo4 = -1;

        ImageButton imgbtnWorkInfo4Edit = (ImageButton)sender;
        if (imgbtnWorkInfo4Edit != null)
        {
            int ID = Convert.ToInt32(imgbtnWorkInfo4Edit.CommandArgument);
            this.EditIndexWorkInfo4 = Convert.ToInt32(imgbtnWorkInfo4Edit.Attributes["RowIndex"]);
            BindGridWorkInfo4();
            FillControlWorkInfo4(gvWorkInfo4, this.EditIndexWorkInfo4);
        }
    }

    protected void lnkWorkInfo4Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region History

    #region HistoryQ1
    protected void rblHistoryQ1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblHistoryQ1.SelectedItem.Text == "Yes")
        {
            divhist1.Visible = true;
        }
        else
        {
            divhist1.Visible = false;
        }
    }
    protected void btnAddHist1_Click(object sender, EventArgs e)
    {
        divgvhist1.Visible = true;
    }
    #endregion
    #region HistoryQ2
    protected void rblHistoryQ2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblHistoryQ2.SelectedItem.Text == "Yes")
        {
            divhist2.Visible = true;
        }
        else
        {
            divhist2.Visible = false;
        }
    }
    protected void btnAddHist2_Click(object sender, EventArgs e)
    {
        divgvhist2.Visible = true;
    }
    #endregion
    #region HistoryQ3
    protected void rblHistoryQ3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblHistoryQ3.SelectedItem.Text == "Yes")
        {
            divhist3.Visible = true;
        }
        else
        {
            divhist3.Visible = false;
        }
    }
    protected void btnAddHist3_Click(object sender, EventArgs e)
    {
        divgvhist3.Visible = true;
    }
    #endregion
    #region HistoryQ4
    protected void rblHistoryQ4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblHistoryQ4.SelectedItem.Text == "Yes")
        {
            divhist4.Visible = true;
        }
        else
        {
            divhist4.Visible = false;
        }
    }
    protected void btnAddHist4_Click(object sender, EventArgs e)
    {
        divgvhist4.Visible = true;
    }
    #endregion
    #region HistoryQ5
    protected void rblHistoryQ5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblHistoryQ5.SelectedItem.Text == "Yes")
        {
            divhist5.Visible = true;
        }
        else
        {
            divhist5.Visible = false;
        }
    }
    protected void btnAddHist5_Click(object sender, EventArgs e)
    {
        divgvhist5.Visible = true;
    }
    #endregion

    #endregion

    #region PaymentBackoffice
    protected void btnSaveNextPayment_Click(object sender, EventArgs e)
    {
        if (ddlPaymentMethod.SelectedItem.Text == "Money Order" && txtMoney_OrderNo.Text == "")
        {
            ltrTest.Text = MessageBox.BuildValidationMessage("Please enter Money Order #.", 2);
        }
        else
        {
            ltrMainMessage.Text = MessageBox.BuildValidationMessage("Payment Successfull.", 1);
            pnlMoneyOrder.Visible = false;
            pnlCreditCard.Visible = false;
            divPaymentMethod.Visible = false;
            divAfterPayment.Visible = true;
            ddlPaymentMethod.SelectedValue = null;
        }
    }
    protected void btnCancelOrder_Click(object sender, EventArgs e)
    {
        pnlMoneyOrder.Visible = false;
        pnlCreditCard.Visible = false;
        ddlPaymentMethod.SelectedValue = null;
        ltrMainMessage.Text = "";
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            ltrMessage.Text = "";

            string prefixValidateMsg = "<div id=\"message_error\" class=\"message_error_epay\"> <span></span><p>There is a problem with your request.</p><ul>";
            string validateMsg = "";
            validateMsg += ValidationHelper.IsValidCreditCardNumber(x_card_num.Text, "<li>Please enter a valid card number(numeric value only).</li>");
            validateMsg += ValidationHelper.IsValidInt(x_cvv_num.Text, "<li>Please enter a CVV number.</li>");
            validateMsg += ValidationHelper.IsRequiredDDL(ddlExpirationMonths.Text, "<li>Please select Card expiration month.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsRequiredDDL(ddlExpirationMonths.Text, "Please select Card expiriation month") + "</li>" : "";
            validateMsg += ValidationHelper.IsRequiredDDL(ddlExpirationYears.Text, "<li>Please select Card expiration year.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsRequiredDDL(ddlExpirationYears.Text, "Please select Card expiriation year") + "</li>" : "";
            validateMsg += ValidationHelper.IsRequired(x_first_name.Text, "<li>Please enter First name.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsRequired(x_first_name.Text, "Please enter First name") + "</li>" : "";
            validateMsg += ValidationHelper.IsRequired(x_last_name.Text, "<li>Please enter Last name.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsRequired(x_last_name.Text, "Please enter Last name") + "</li>" : "";
            validateMsg += ValidationHelper.IsRequired(x_address.Text, "<li>Please enter street.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsRequired(x_address.Text, "Please enter street") + "</li>" : "";
            validateMsg += ValidationHelper.IsRequired(x_city.Text, "<li>Please enter City.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsRequired(x_city.Text, "Please enter City") + "</li>" : "";
            validateMsg += ValidationHelper.IsRequiredDDL(ddlState.Text, "<li>Please select State.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsRequiredDDL(ddlState.Text, "Please select State") + "</li>" : "";
            //validateMsg += ValidationHelper.IsRequired(x_zip.Text, "Zip") != string.Empty ? "<li>" + ValidationHelper.IsRequired(x_zip.Text, "Zip") + "</li>" : "";
            validateMsg += ValidationHelper.IsValidUSZIP(x_zip.Text, "<li>Please enter valid Zip.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsValidUSZIP(x_zip.Text, "Please eneter valid Zip") + "</li>" : "";

            string postfixValidateMsg = "</ul>";

            if (!String.IsNullOrEmpty(validateMsg))
            {
                string vmsg = prefixValidateMsg + validateMsg + postfixValidateMsg;
                string str = ""; // "<div id=\"message_error\" class=\"message_error_epay\"> <span></span><h6>There was a problem with your request</h6><p>";
                str += vmsg;
                str += "</div>";
                ltrMessage.Text = MessageBox.BuildValidationMessage(vmsg, 2);
                return;
            }
            ltrMainMessage.Text = "";
            pnlMoneyOrder.Visible = false;
            pnlCreditCard.Visible = false;
            divPaymentMethod.Visible = false;
            divAfterPayment.Visible = true;
            ddlPaymentMethod.SelectedValue = null;
            ltrMainMessage.Text = MessageBox.BuildValidationMessage("Payment Successfull.", 1);
        }
        catch (Exception ex)
        {
        }
    }
    protected void x_card_num_TextChanged(object sender, EventArgs e)
    {
        Regex re = new Regex(@"^3[47][0-9]{13}$", RegexOptions.IgnoreCase);
        if (re.IsMatch(x_card_num.Text))
        {
            x_cvv_num.MaxLength = 4;
        }
        else
        {
            x_cvv_num.MaxLength = 3;
        }
        x_cvv_num.Focus();
    }
    protected void ddlPaymentMethod_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlPaymentMethod.SelectedItem.Text == "Money Order")
        {
            pnlMoneyOrder.Visible = true;
            pnlCreditCard.Visible = false;
        }
        else if (ddlPaymentMethod.SelectedItem.Text == "Credit Card")
        {
            pnlMoneyOrder.Visible = false;
            pnlCreditCard.Visible = true;
        }
        else
        {
            pnlMoneyOrder.Visible = false;
            pnlCreditCard.Visible = false;
        }
    }
    #endregion
    #region PaymentSection

    protected void txtNumberOfAdditinolCerti_TextChanged(object sender, EventArgs e)
    {
        //ltrPaymentError.Text = "";
        int No = 0;
        string Validate = ValidationHelper.IsValidInt(txtNumberOfAdditinolCerti.Text, "Please enter valid number of additional certiﬁcates.");

        if (Validate == "")
        {
            No = Convert.ToInt32(txtNumberOfAdditinolCerti.Text);
        }
        FillAdditinolAmount();
        FillTotalAmount();
    }

    public void FillTotalAmount()
    {
        // ltrPaymentError.Text = "";
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

        //ApplicationFee = Convert.ToDecimal(txtApplicationFees.Text);
        //AdditionalCertificateAmt = Convert.ToDecimal(txtAdditionalCertificateAmt.Text);

        decimal TotalAmount = ApplicationFee + AdditionalCertificateAmt;

        txtTotalFees.Text = TotalAmount.ToString();

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
    public void FillPaymentDetail()
    {
        FillAdditinolAmount();
        FillTotalAmount();
    }

    #endregion
}