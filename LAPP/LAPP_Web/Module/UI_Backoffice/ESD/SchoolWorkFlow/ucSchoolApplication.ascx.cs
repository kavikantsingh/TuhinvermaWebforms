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

using System.Text.RegularExpressions;
using LAPP.ENTITY.Enumerations;
public partial class Module_UI_Backoffice_ESD_SchoolWorkFlow_ucSchoolApplication : System.Web.UI.UserControl
{


    #region PublicMethods

    public void MakeActiveLi(HtmlControl element)
    {
        
        liApplicatinInstructions.Attributes.Remove("class");
        liMassageTherapistApplication.Attributes.Remove("class");
        liSection2.Attributes.Remove("class");
        liSection3.Attributes.Remove("class");
        liSection4.Attributes.Remove("class");
        liSection5.Attributes.Remove("class");
        liSection6.Attributes.Remove("class");

        li_Transcript_Checklist.Attributes.Remove("class");
        li_Enrollment_Agreement_Checklist.Attributes.Remove("class");
        li_Course_Catalog_Checklist.Attributes.Remove("class");
        li_Program_Hour_Requirement_Worksheet.Attributes.Remove("class");
        li_Instructor_Qualifications.Attributes.Remove("class");
        li_Instructor_Declaration.Attributes.Remove("class");
        liSchoolContactStaff.Attributes.Remove("class");

        element.Attributes.Add("class", "actived");
    }

    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGridSchoolInfoPrevious();
        BindGridSatelliteLocation();
        BindGridApprovalAgency();
        BindGridMassageProgrameName();
        BindGridRelatedSchool();
        BindGridAdminInfo20();
    }

    protected void lnkInstruction_Click(object sender, EventArgs e)
    {
        pnlApplicatinInstructions.Visible = true;
        pnlSection1.Visible = false;
        pnlSection2.Visible = false;
        pnlSection3.Visible = false;
        PnlTransChecklist.Visible = false;
        PnlEnrollAgrChecklist.Visible = false;
        PnlCoCatChecklist.Visible = false;
        PnlBackChecklist.Visible = false;
        MakeActiveLi(liApplicatinInstructions);
        
    }
    protected void btnMassageTherapistApplication_Click(object sender, EventArgs e)
    {
        pnlApplicatinInstructions.Visible = false;
        pnlSection1.Visible = true;
        pnlSection2.Visible = false;
        pnlSection3.Visible = false;
        PnlTransChecklist.Visible = false;
        PnlEnrollAgrChecklist.Visible = false;
        PnlCoCatChecklist.Visible = false;
        PnlBackChecklist.Visible = false;
        MakeActiveLi(liMassageTherapistApplication);
        
    }
    protected void btnSection2_Click(object sender, EventArgs e)
    {
        pnlApplicatinInstructions.Visible = false;
        pnlSection1.Visible = false;
        pnlSection2.Visible = true;
        pnlSection3.Visible = false;
        PnlTransChecklist.Visible = false;
        PnlEnrollAgrChecklist.Visible = false;
        PnlCoCatChecklist.Visible = false;
        PnlBackChecklist.Visible = false;
        MakeActiveLi(liSection2);
    }

    protected void btnSection3_Click(object sender, EventArgs e)
    {
        pnlApplicatinInstructions.Visible = false;
        pnlSection1.Visible = false;
        pnlSection2.Visible = false;
        pnlSection3.Visible = true;
        PnlTransChecklist.Visible = false;
        PnlEnrollAgrChecklist.Visible = false;
        PnlCoCatChecklist.Visible = false;
        PnlBackChecklist.Visible = false;
        MakeActiveLi(liSection3);
    }

    protected void btnTransCheck_Click(object sender, EventArgs e)
    {
        pnlApplicatinInstructions.Visible = false;
        pnlSection3.Visible = false;
        pnlSection2.Visible = false;
        pnlSection1.Visible = false;
        PnlEnrollAgrChecklist.Visible = false;
        PnlBackChecklist.Visible = false;
        PnlCoCatChecklist.Visible = false;
        PnlTransChecklist.Visible = true;

        MakeActiveLi(li_Transcript_Checklist);
    }

    protected void btnEnrollAgreeCheck_Click(object sender, EventArgs e)
    {
        pnlApplicatinInstructions.Visible = false;
        pnlSection3.Visible = false;
        pnlSection2.Visible = false;
        pnlSection1.Visible = false;
        PnlTransChecklist.Visible = false;
        PnlCoCatChecklist.Visible = false;
        PnlBackChecklist.Visible = false;
        PnlEnrollAgrChecklist.Visible = true;
        

        MakeActiveLi(li_Enrollment_Agreement_Checklist);
    }

    protected void btnCourCataCheck_Click(object sender, EventArgs e)
    {
        pnlApplicatinInstructions.Visible = false;
        pnlSection3.Visible = false;
        pnlSection2.Visible = false;
        pnlSection1.Visible = false;
        PnlTransChecklist.Visible = false;
        PnlEnrollAgrChecklist.Visible = false;
        PnlBackChecklist.Visible = false;
        PnlCoCatChecklist.Visible = true;

        MakeActiveLi(li_Course_Catalog_Checklist);
    }

    protected void btnProgHourReqWork_Click(object sender, EventArgs e)
    {
        pnlApplicatinInstructions.Visible = false;
        pnlSection3.Visible = false;
        pnlSection2.Visible = false;
        pnlSection1.Visible = false;
        PnlTransChecklist.Visible = false;
        PnlEnrollAgrChecklist.Visible = false;
        PnlCoCatChecklist.Visible = false;
        PnlBackChecklist.Visible = false;
        PnlProHoReqWorksheet.Visible = true;

        MakeActiveLi(li_Program_Hour_Requirement_Worksheet);
    }


    protected void btnBackCheck_Click(object sender, EventArgs e)
    {
        pnlApplicatinInstructions.Visible = false;
        pnlSection3.Visible = false;
        pnlSection2.Visible = false;
        pnlSection1.Visible = false;
        PnlTransChecklist.Visible = false;
        PnlEnrollAgrChecklist.Visible = false;
        PnlCoCatChecklist.Visible = false;
        PnlProHoReqWorksheet.Visible = false;
        PnlBackChecklist.Visible = true;

        MakeActiveLi(liSchoolContactStaff);
    }
    protected void btnPayment_Click(object sender, EventArgs e)
    {
    }

    protected void btnStaffInformation_Click(object sender, EventArgs e)
    {
    }

    protected void btnSection5_Click(object sender, EventArgs e)
    {
    }

    protected void btnSection4_Click(object sender, EventArgs e)
    {
    }

    protected void btnSection7_Click(object sender, EventArgs e)
    {
    }

    protected void btnAdminExp_Click(object sender, EventArgs e)
    {
    }

    protected void btnAdminDec_Click(object sender, EventArgs e)
    {
    }

    protected void btnInstQual_Click(object sender, EventArgs e)
    {
    }

    protected void btnInstDecl_Click(object sender, EventArgs e)
    {
    }

    protected void btnSection6_Click(object sender, EventArgs e)
    {
    }

    protected void btnSchoolReApp_Click(object sender, EventArgs e)
    { 
    }
    protected void btnStudentElgList_Click(object sender, EventArgs e)
    {
    }

    protected void btnNextProHo_Click(object sender, EventArgs e)
    {
    }

    protected void btnSchFacList_Click(object sender, EventArgs e)
    {
    }

    



    #region Introduction
    protected void rblQuestionEdit1_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblQuestionEdit1.SelectedValue == "0") //|| (rblQuestionEdit2.SelectedValue == "0"))
        {
            btnApplicationStatus.Enabled = false;
        }
        else
        {
            btnApplicationStatus.Enabled = true;
        }
    }

    protected void btnApplicationStatus_Click(object sender, EventArgs e)
    {
        btnMassageTherapistApplication_Click(sender, e);
    }

    protected void lnkApplicationStatusCancel_Click(object sender, EventArgs e)
    {

    }
    #endregion

    #region Verify All Address

    #region School Address

    public void fillverifyschooladdress()
    {
        TextBox3.Text = AddressHelper.GetFormatedPOBOx(TextBox3.Text);
        txtschool_Add.Text = AddressHelper.GetFormatedPOBOx(txtschool_Add.Text);

        lblUSchoolStreet1.Text = TextBox3.Text;
        lblUSchoolStreet2.Text = txtschool_Add.Text;
        lblUSchoolCity.Text = txtCityResEdit.Text;
        lblUSchoolState.Text = ddlStateResEdit.SelectedItem.Text;
        lblUSchoolZip.Text = txtZipResEdit.Text;
        components objComponenets = GNF.APIAddressValidation.ValidateAddress(TextBox3.Text, txtschool_Add.Text, txtCityResEdit.Text, ddlStateResEdit.SelectedItem.Text, txtZipResEdit.Text);
        if (objComponenets != null)
        {
            lblVSchoolStreet1.Text = objComponenets.street1;
            lblVSchoolStreet2.Text = objComponenets.street2;
            lblVSchoolCity.Text = objComponenets.city_name;
            lblVSchoolState.Text = objComponenets.state_abbreviation;
            lblVSchoolZip.Text = objComponenets.zipcode;
            btnVerifySchoolAddressNo.Enabled = true;
            divNotVerifiedAdd.Visible = true;
            lblUnverifiedAdd.Text = "";
        }
        else
        {
            btnVerifySchoolAddressNo.Enabled = false;
            divNotVerifiedAdd.Visible = false;
            lblUnverifiedAdd.Text = "This is not a verified address.";
        }
    }
    protected void btnVerifySchoolAddress_Click(object sender, EventArgs e)
    {
        divVerifySchoolAddressBtn.Visible = false;
        divVerifySchoolAddressPnl.Visible = true;
        lblVSchoolStreet1.Text = "";
        lblVSchoolStreet2.Text = "";
        lblVSchoolCity.Text = "";
        lblVSchoolState.Text = "";
        lblVSchoolZip.Text = "";
        fillverifyschooladdress();
    }
    protected void btnVerifySchoolAddressYes_Click(object sender, EventArgs e)
    {
        divVerifySchoolAddressBtn.Visible = true;
        divVerifySchoolAddressPnl.Visible = false;
    }
    protected void btnVerifySchoolAddressNo_Click(object sender, EventArgs e)
    {
        divVerifySchoolAddressBtn.Visible = true;
        divVerifySchoolAddressPnl.Visible = false;
        TextBox3.Text = lblVSchoolStreet1.Text;
        txtschool_Add.Text = lblVSchoolStreet2.Text;
        txtCityResEdit.Text = lblVSchoolCity.Text;
        ddlStateResEdit.SelectedValue = lblVSchoolState.Text;
        txtZipResEdit.Text = lblVSchoolZip.Text;
    }

    #endregion

    #region Mailing Address

    public void fillverifyMailingaddress()
    {
        //txtStreetMailEdit.Text = AddressHelper.GetFormatedPOBOx(txtStreetMailEdit.Text);
        //txtStreet2MailEdit.Text = AddressHelper.GetFormatedPOBOx(txtStreet2MailEdit.Text);

        //lblUMailingStreet1.Text = txtStreetMailEdit.Text;
        //lblUMailingStreet2.Text = txtStreet2MailEdit.Text;
        //lblUMailingCity.Text = txtCityMailEdit.Text;
        //lblUMailingState.Text = ddlStateMailEdit.SelectedItem.Text;
        //lblUMailingZip.Text = txtZipMailEdit.Text;
        //components objComponenets = GNF.APIAddressValidation.ValidateAddress(txtStreetMailEdit.Text, txtStreet2MailEdit.Text, txtCityMailEdit.Text, ddlStateMailEdit.SelectedItem.Text, txtZipMailEdit.Text);
        //if (objComponenets != null)
        //{
        //    lblVMailingStreet1.Text = objComponenets.street1;
        //    lblVMailingStreet2.Text = objComponenets.street2;
        //    lblVMailingCity.Text = objComponenets.city_name;
        //    lblVMailingState.Text = objComponenets.state_abbreviation;
        //    lblVMailingZip.Text = objComponenets.zipcode;
        //    btnVerifyMailingAddressNo.Enabled = true;
        //    divNotVerifiedMailingAdd.Visible = true;
        //    lblUnverifiedMailingAdd.Text = "";
        //}
        //else
        //{
        //    btnVerifyMailingAddressNo.Enabled = false;
        //    divNotVerifiedMailingAdd.Visible = false;
        //    lblUnverifiedMailingAdd.Text = "This is not a verified address.";
        //}
    }
    protected void btnVerifyMailingAddress_Click(object sender, EventArgs e)
    {
        //divVerifyMailingAddressBtn.Visible = false;
        //divVerifyMailingAddressPnl.Visible = true;
        //lblVMailingStreet1.Text = "";
        //lblVMailingStreet2.Text = "";
        //lblVMailingCity.Text = "";
        //lblVMailingState.Text = "";
        //lblVMailingZip.Text = "";
        fillverifyMailingaddress();
    }
    protected void btnVerifyMailingAddressYes_Click(object sender, EventArgs e)
    {
        //divVerifyMailingAddressBtn.Visible = true;
        //divVerifyMailingAddressPnl.Visible = false;
    }
    protected void btnVerifyMailingAddressNo_Click(object sender, EventArgs e)
    {
        //divVerifyMailingAddressBtn.Visible = true;
        //divVerifyMailingAddressPnl.Visible = false;
        //txtStreetMailEdit.Text = lblVMailingStreet1.Text;
        //txtStreet2MailEdit.Text = lblVMailingStreet2.Text;
        //txtCityMailEdit.Text = lblVMailingCity.Text;
        //ddlStateMailEdit.SelectedValue = lblVMailingState.Text;
        //txtZipMailEdit.Text = lblVMailingZip.Text;
    }
    #endregion

    #region Previous Address
    public void fillverifyPreviousaddress()
    {
        TextBox3.Text = AddressHelper.GetFormatedPOBOx(TextBox3.Text);///////////////
        txtschool_Add.Text = AddressHelper.GetFormatedPOBOx(txtschool_Add.Text);

        lblUPreviousStreet1.Text = TextBox3.Text;//////////////
        lblUPreviousStreet2.Text = txtschool_Add.Text;
        lblUPreviousCity.Text = txtCityResEdit.Text;
        lblUPreviousState.Text = ddlStateResEdit.SelectedItem.Text;
        lblUPreviousZip.Text = txtZipResEdit.Text;
        components objComponenets = GNF.APIAddressValidation.ValidateAddress(TextBox3.Text, txtschool_Add.Text, txtCityResEdit.Text, ddlStateResEdit.SelectedItem.Text, txtZipResEdit.Text);/////////////////
        if (objComponenets != null)
        {
            lblVPreviousStreet1.Text = objComponenets.street1;
            lblVPreviousStreet2.Text = objComponenets.street2;
            lblVPreviousCity.Text = objComponenets.city_name;
            lblVPreviousState.Text = objComponenets.state_abbreviation;
            lblVPreviousZip.Text = objComponenets.zipcode;
            btnVerifyPreviousAddressNo.Enabled = true;
            divNotVerifiedAdd.Visible = true;
            lblUnverifiedAdd.Text = "";
        }
        else
        {
            btnVerifyPreviousAddressNo.Enabled = false;
            divNotVerifiedAdd.Visible = false;
            lblUnverifiedAdd.Text = "This is not a verified address.";
        }
    }
    protected void btnVerifyPreviousAddress_Click(object sender, EventArgs e)
    {
        divVerifyPreviousAddressBtn.Visible = false;
        divVerifyPreviousAddressPnl.Visible = true;
        lblVPreviousStreet1.Text = "";
        lblVPreviousStreet2.Text = "";
        lblVPreviousCity.Text = "";
        lblVPreviousState.Text = "";
        lblVPreviousZip.Text = "";
        fillverifyPreviousaddress();
    }
    protected void btnVerifyPreviousAddressYes_Click(object sender, EventArgs e)
    {
        divVerifyPreviousAddressBtn.Visible = true;
        divVerifyPreviousAddressPnl.Visible = false;
    }
    protected void btnVerifyPreviousAddressNo_Click(object sender, EventArgs e)
    {
        divVerifyPreviousAddressBtn.Visible = true;
        divVerifyPreviousAddressPnl.Visible = false;
        TextBox3.Text = lblVPreviousStreet1.Text;////////////////
        txtschool_Add.Text = lblVPreviousStreet2.Text;
        txtCityResEdit.Text = lblVPreviousCity.Text;
        ddlStateResEdit.SelectedValue = lblVPreviousState.Text;
        txtZipResEdit.Text = lblVPreviousZip.Text;
    }
    #endregion

    #region Satellite Address

    public void fillverifySatelliteLocationaddress()
    {
        TextBox3.Text = AddressHelper.GetFormatedPOBOx(TextBox3.Text);///////////////
        txtschool_Add.Text = AddressHelper.GetFormatedPOBOx(txtschool_Add.Text);

        lblUSatelliteLocationStreet1.Text = TextBox3.Text;//////////////
        lblUSatelliteLocationStreet2.Text = txtschool_Add.Text;
        lblUSatelliteLocationCity.Text = txtCityResEdit.Text;
        lblUSatelliteLocationState.Text = ddlStateResEdit.SelectedItem.Text;
        lblUSatelliteLocationZip.Text = txtZipResEdit.Text;
        components objComponenets = GNF.APIAddressValidation.ValidateAddress(TextBox3.Text, txtschool_Add.Text, txtCityResEdit.Text, ddlStateResEdit.SelectedItem.Text, txtZipResEdit.Text);/////////////////
        if (objComponenets != null)
        {
            lblVSatelliteLocationStreet1.Text = objComponenets.street1;
            lblVSatelliteLocationStreet2.Text = objComponenets.street2;
            lblVSatelliteLocationCity.Text = objComponenets.city_name;
            lblVSatelliteLocationState.Text = objComponenets.state_abbreviation;
            lblVSatelliteLocationZip.Text = objComponenets.zipcode;
            btnVerifySatelliteLocationAddressNo.Enabled = true;
            divNotVerifiedAdd.Visible = true;
            lblUnverifiedAdd.Text = "";
        }
        else
        {
            btnVerifySatelliteLocationAddressNo.Enabled = false;
            divNotVerifiedAdd.Visible = false;
            lblUnverifiedAdd.Text = "This is not a verified address.";
        }
    }
    protected void btnVerifySatelliteLocationAddress_Click(object sender, EventArgs e)
    {
        divVerifySatelliteLocationAddressBtn.Visible = false;
        divVerifySatelliteLocationAddressPnl.Visible = true;
        lblVSatelliteLocationStreet1.Text = "";
        lblVSatelliteLocationStreet2.Text = "";
        lblVSatelliteLocationCity.Text = "";
        lblVSatelliteLocationState.Text = "";
        lblVSatelliteLocationZip.Text = "";
        fillverifySatelliteLocationaddress();
    }
    protected void btnVerifySatelliteLocationAddressYes_Click(object sender, EventArgs e)
    {
        divVerifySatelliteLocationAddressBtn.Visible = true;
        divVerifySatelliteLocationAddressPnl.Visible = false;
    }
    protected void btnVerifySatelliteLocationAddressNo_Click(object sender, EventArgs e)
    {
        divVerifySatelliteLocationAddressBtn.Visible = true;
        divVerifySatelliteLocationAddressPnl.Visible = false;
        TextBox3.Text = lblVSatelliteLocationStreet1.Text;////////////////
        txtschool_Add.Text = lblVSatelliteLocationStreet2.Text;
        txtCityResEdit.Text = lblVSatelliteLocationCity.Text;
        ddlStateResEdit.SelectedValue = lblVSatelliteLocationState.Text;
        txtZipResEdit.Text = lblVSatelliteLocationZip.Text;
    }

    #endregion

    #region Mailing Address - Working



    public void fillverifySchoolMailingaddress()
    {
        TextBox3.Text = AddressHelper.GetFormatedPOBOx(TextBox3.Text);///////////////
        txtschool_Add.Text = AddressHelper.GetFormatedPOBOx(txtschool_Add.Text);

        lblUSchoolMailingStreet1.Text = TextBox3.Text;//////////////
        lblUSchoolMailingStreet2.Text = txtschool_Add.Text;
        lblUSchoolMailingCity.Text = txtCityResEdit.Text;
        lblUSchoolMailingState.Text = ddlStateResEdit.SelectedItem.Text;
        lblUSchoolMailingZip.Text = txtZipResEdit.Text;
        components objComponenets = GNF.APIAddressValidation.ValidateAddress(TextBox3.Text, txtschool_Add.Text, txtCityResEdit.Text, ddlStateResEdit.SelectedItem.Text, txtZipResEdit.Text);/////////////////
        if (objComponenets != null)
        {
            lblVSchoolMailingStreet1.Text = objComponenets.street1;
            lblVSchoolMailingStreet2.Text = objComponenets.street2;
            lblVSchoolMailingCity.Text = objComponenets.city_name;
            lblVSchoolMailingState.Text = objComponenets.state_abbreviation;
            lblVSchoolMailingZip.Text = objComponenets.zipcode;
            btnVerifySchoolMailingAddressNo.Enabled = true;
            divNotVerifiedAdd.Visible = true;
            lblUnverifiedAdd.Text = "";
        }
        else
        {
            btnVerifySchoolMailingAddressNo.Enabled = false;
            divNotVerifiedAdd.Visible = false;
            lblUnverifiedAdd.Text = "This is not a verified address.";
        }
    }
    protected void btnVerifySchoolMailingAddress_Click(object sender, EventArgs e)
    {
        divVerifySchoolMailingAddressBtn.Visible = false;
        divVerifySchoolMailingAddressPnl.Visible = true;
        lblVSchoolMailingStreet1.Text = "";
        lblVSchoolMailingStreet2.Text = "";
        lblVSchoolMailingCity.Text = "";
        lblVSchoolMailingState.Text = "";
        lblVSchoolMailingZip.Text = "";
        fillverifySchoolMailingaddress();
    }
    protected void btnVerifySchoolMailingAddressYes_Click(object sender, EventArgs e)
    {
        divVerifySchoolMailingAddressBtn.Visible = true;
        divVerifySchoolMailingAddressPnl.Visible = false;
    }
    protected void btnVerifySchoolMailingAddressNo_Click(object sender, EventArgs e)
    {
        divVerifySchoolMailingAddressBtn.Visible = true;
        divVerifySchoolMailingAddressPnl.Visible = false;
        TextBox3.Text = lblVSchoolMailingStreet1.Text;////////////////
        txtschool_Add.Text = lblVSchoolMailingStreet2.Text;
        txtCityResEdit.Text = lblVSchoolMailingCity.Text;
        ddlStateResEdit.SelectedValue = lblVSchoolMailingState.Text;
        txtZipResEdit.Text = lblVSchoolMailingZip.Text;
    }


    #endregion

    #endregion


    #region School Information

    #region Previous Address

    int ROWPrevAdd = 0;

    public int EditIndexSchoolInfoPrevious
    {
        get
        {
            if (ViewState["EditIndexSchoolInfoPrevious"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexSchoolInfoPrevious"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexSchoolInfoPrevious"] = value;
        }
    }
    protected void btnSchoolInfoPreviousAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnSchoolInfoPrevious.Visible = false;
        divAddSchoolInfoPrevious.Visible = true;
        this.EditIndexSchoolInfoPrevious = -1;
        BindGridSchoolInfoPrevious();
    }
    protected void btnSchoolInfoPreviousAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnSchoolInfoPrevious.Visible = true;
        divAddSchoolInfoPrevious.Visible = false;
    }
    protected void lnkSchoolInfoPreviousAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnSchoolInfoPrevious.Visible = true;
        divAddSchoolInfoPrevious.Visible = false;
    }

    public void BindGridSchoolInfoPrevious()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvSchoolInfoPrevious.EditIndex = this.EditIndexSchoolInfoPrevious;
        gvSchoolInfoPrevious.DataSource = ArryListName;
        gvSchoolInfoPrevious.DataBind();

        if (this.EditIndexSchoolInfoPrevious >= 0)
        {
            gvSchoolInfoPrevious.Rows[this.EditIndexSchoolInfoPrevious].CssClass = "RowInEditMode";
            gvSchoolInfoPrevious.Rows[this.EditIndexSchoolInfoPrevious].Cells[0].Attributes.Add("colspan", "7");
            gvSchoolInfoPrevious.Rows[this.EditIndexSchoolInfoPrevious].Cells[1].Visible = false;
            gvSchoolInfoPrevious.Rows[this.EditIndexSchoolInfoPrevious].Cells[2].Visible = false;
            gvSchoolInfoPrevious.Rows[this.EditIndexSchoolInfoPrevious].Cells[3].Visible = false;
            gvSchoolInfoPrevious.Rows[this.EditIndexSchoolInfoPrevious].Cells[4].Visible = false;


        }
    }


    protected void gvSchoolInfoPrevious_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblOwnerInfo = e.Row.FindControl("lblInfoPStreet") as Label;
            Label lblownerInfLastName = e.Row.FindControl("lblInfoPcity") as Label;
            Label lblownerInfFirstName = e.Row.FindControl("lblInfoPState") as Label;
            Label lblownerPer = e.Row.FindControl("lblInfoPZip") as Label;
            //Label lblownerInfoCity = e.Row.FindControl("lblownerInfoCity") as Label;
            //Label lblownerInfState = e.Row.FindControl("lblownerInfState") as Label;

            if (lblOwnerInfo != null && lblownerInfLastName != null && lblownerInfFirstName != null && lblownerPer != null)
            {
                if (ROWPrevAdd == 0)
                {

                    lblOwnerInfo.Text = "123 Test Street";
                    lblownerInfLastName.Text = "Sacramento";
                    lblownerInfFirstName.Text = "California";
                    lblownerPer.Text = "94203";
                    // lblownerInfoCity.Text = "Sacramento";
                    //lblownerInfState.Text = "California";
                }
                else if (ROWPrevAdd == 1)
                {
                    lblOwnerInfo.Text = "456 Test Street";
                    lblownerInfLastName.Text = "Sacramento";
                    lblownerInfFirstName.Text = "California";
                    lblownerPer.Text = "94203";
                    // lblownerInfoCity.Text = "Sacramento";
                    // lblownerInfState.Text = "California";
                }
            }

            ROWPrevAdd++;

        }
    }


    protected void lnkSchoolInfoPreviousEdit_Click(object sender, EventArgs e)
    {
        //divAddOwnerInfo.Visible = false;
        //divAddbtnOwnerInfo.Visible = true;
        this.EditIndexSchoolInfoPrevious = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexSchoolInfoPrevious = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridOwnerInfo();
           // FillControlSchoolInfoMailing(gvOwnerInfo, this.EditIndexSchoolInfoPrevious);
        }
    }


    protected void lnkSchoolInfoPreviousDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlSchoolInfoMailing(GridView gv, int EditInd)
    {
        try
        {


            //TextBox txtSchoolCodeEdit = gv.Rows[this.EditIndexOwnerInfo].FindControl("txtSchoolCodeEdit") as TextBox;
            //TextBox txtExpirationDateEdit = gv.Rows[this.EditIndexOwnerInfo].FindControl("txtExpirationDateEdit") as TextBox;
            //DropDownList ddlAddApprovalAgencyEdit = gv.Rows[this.EditIndexOwnerInfo].FindControl("ddlAddApprovalAgencyEdit") as DropDownList;

            //txtSchoolCodeEdit.Text = "SCH001";
            //ddlAddApprovalAgencyEdit.SelectedValue = "A1";
            //txtExpirationDateEdit.Text = "02/04/2016";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnSchoolInfoPreviousUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexSchoolInfoPrevious = -1;
        BindGridSchoolInfoPrevious();
    }
    protected void lnkSchoolInfoPreviousCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexSchoolInfoPrevious = -1;
        BindGridSchoolInfoPrevious();
    }
    #endregion


    #region Satellite Location Address

    int ROWLocAddress = 0;
    public int EditIndexSchoolInfoSatelliteLoc
    {
        get
        {
            if (ViewState["EditIndexSchoolInfoSatelliteLoc"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexSchoolInfoSatelliteLoc"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexSchoolInfoSatelliteLoc"] = value;
        }
    }

    protected void btnSatelliteLocationAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnSatelliteLocation.Visible = false;
        divAddSatelliteLocation.Visible = true;
        this.EditIndexSchoolInfoSatelliteLoc = -1;
        BindGridSatelliteLocation();
    }

    protected void btnSatelliteLocationAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnSatelliteLocation.Visible = true;
        divAddSatelliteLocation.Visible = false;
    }
    protected void lnkSatelliteLocationAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnSatelliteLocation.Visible = true;
        divAddSatelliteLocation.Visible = false;
    }

    public void BindGridSatelliteLocation()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvSatelliteLocation.EditIndex = this.EditIndexSchoolInfoSatelliteLoc;
        gvSatelliteLocation.DataSource = ArryListName;
        gvSatelliteLocation.DataBind();

        if (this.EditIndexSchoolInfoSatelliteLoc >= 0)
        {
            gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].CssClass = "RowInEditMode";
            gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[0].Attributes.Add("colspan", "7");
            gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[1].Visible = false;
            gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[2].Visible = false;
            gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[3].Visible = false;
            gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[4].Visible = false;


        }
    }


    protected void gvSatelliteLocation_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblOwnerInfo = e.Row.FindControl("lblInfoPStreet") as Label;
            Label lblownerInfLastName = e.Row.FindControl("lblInfoPcity") as Label;
            Label lblownerInfFirstName = e.Row.FindControl("lblInfoPState") as Label;
            Label lblownerPer = e.Row.FindControl("lblInfoPZip") as Label;
            //Label lblownerInfoCity = e.Row.FindControl("lblownerInfoCity") as Label;
            //Label lblownerInfState = e.Row.FindControl("lblownerInfState") as Label;

            if (lblOwnerInfo != null && lblownerInfLastName != null && lblownerInfFirstName != null && lblownerPer != null)
            {
                if (ROWLocAddress == 0)
                {

                    lblOwnerInfo.Text = "123 Test Street";
                    lblownerInfLastName.Text = "Sacramento";
                    lblownerInfFirstName.Text = "California";
                    lblownerPer.Text = "94203";
                    //lblownerInfoCity.Text = "Sacramento";
                    // lblownerInfState.Text = "California";
                }
                else if (ROWLocAddress == 1)
                {
                    lblOwnerInfo.Text = "456 Test Street";
                    lblownerInfLastName.Text = "Sacramento";
                    lblownerInfFirstName.Text = "California";
                    lblownerPer.Text = "94203";
                    // lblownerInfoCity.Text = "Sacramento";
                    //lblownerInfState.Text = "California";
                }
            }

            ROWLocAddress++;

        }
    }

    public int EditIndexOwnerInfo
    {
        get
        {
            if (ViewState["EditIndexOwnerInfo"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOwnerInfo"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOwnerInfo"] = value;
        }
    }

    public void BindGridOwnerInfo()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        //gvOwnerInfo.EditIndex = this.EditIndexOwnerInfo;
        //gvOwnerInfo.DataSource = ArryListName;
        //gvOwnerInfo.DataBind();

        if (this.EditIndexOwnerInfo >= 0)
        {
            //gvOwnerInfo.Rows[this.EditIndexOwnerInfo].CssClass = "RowInEditMode";
            //gvOwnerInfo.Rows[this.EditIndexOwnerInfo].Cells[0].Attributes.Add("colspan", "7");
            //gvOwnerInfo.Rows[this.EditIndexOwnerInfo].Cells[1].Visible = false;
            //gvOwnerInfo.Rows[this.EditIndexOwnerInfo].Cells[2].Visible = false;
            //gvOwnerInfo.Rows[this.EditIndexOwnerInfo].Cells[3].Visible = false;
            //gvOwnerInfo.Rows[this.EditIndexOwnerInfo].Cells[4].Visible = false;
            //gvOwnerInfo.Rows[this.EditIndexOwnerInfo].Cells[5].Visible = false;
            //gvOwnerInfo.Rows[this.EditIndexOwnerInfo].Cells[6].Visible = false;


        }
    }
    protected void lnkSatelliteLocationEdit_Click(object sender, EventArgs e)
    {
        //divAddOwnerInfo.Visible = false;
        //divAddbtnOwnerInfo.Visible = true;
        //this.EditIndexSchoolInfoSatelliteLoc = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexSchoolInfoSatelliteLoc = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridOwnerInfo();
            //FillControlSchoolInfoSatelliteLoc(gvOwnerInfo, this.EditIndexSchoolInfoSatelliteLoc);
        }
    }


    protected void lnkSatelliteLocationDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlSchoolInfoSatelliteLoc(GridView gv, int EditInd)
    {
        try
        {


            //TextBox txtSchoolCodeEdit = gv.Rows[this.EditIndexOwnerInfo].FindControl("txtSchoolCodeEdit") as TextBox;
            //TextBox txtExpirationDateEdit = gv.Rows[this.EditIndexOwnerInfo].FindControl("txtExpirationDateEdit") as TextBox;
            //DropDownList ddlAddApprovalAgencyEdit = gv.Rows[this.EditIndexOwnerInfo].FindControl("ddlAddApprovalAgencyEdit") as DropDownList;

            //txtSchoolCodeEdit.Text = "SCH001";
            //ddlAddApprovalAgencyEdit.SelectedValue = "A1";
            //txtExpirationDateEdit.Text = "02/04/2016";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnSatelliteLocationUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexSchoolInfoSatelliteLoc = -1;
        BindGridSatelliteLocation();
    }
    protected void lnkSatelliteLocationCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexSchoolInfoSatelliteLoc = -1;
        BindGridSatelliteLocation();
    }


    protected void btnSavePersonalInfo_Click(object sender, EventArgs e)
    {
    }
    protected void lnkCancelPD_Click(object sender, EventArgs e)
    {
    }
    #endregion


    #endregion

    #region School Eligibility

    #region Approval Agency

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
    protected void btnApprovalAgencyAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnApprovalAgency.Visible = false;
        divAddApprovalAgency.Visible = true;
        this.EditIndexLicensureInformation = -1;
        BindGridApprovalAgency();
    }
    protected void btnApprovalAgencyAddNewSave_Click(object sender, EventArgs e)
    {

        string strErrApprAgency;
        strErrApprAgency = "";

        if (ddlAddApprovalAgency.SelectedValue == "-1")
        {
            if (strErrApprAgency == "")
                strErrApprAgency = "Please select Approval/Accrediting Agency.";
            else
            {
                strErrApprAgency = strErrApprAgency + "<br />" + "Please select Approval/Accrediting Agency.";
            }
        }



        if (txtappagenDocNAme.Text == "")
        {
            if (strErrApprAgency == "")
                strErrApprAgency = "Please enter Document Name.";
            else
            {
                strErrApprAgency = strErrApprAgency + "<br />" + "Please enter Document Name.";
            }
        }


        if (ddlAppAgencSup.SelectedValue == "-1")
        {
            if (strErrApprAgency == "")
                strErrApprAgency = "Please select Document Type.";
            else
            {
                strErrApprAgency = strErrApprAgency + "<br />" + "Please select Document Type.";
            }
        }


        //if (strErrApprAgency == "")
        //{
        //    divAddbtnApprovalAgency.Visible = true;
        //    divAddApprovalAgency.Visible = false;
        //}
        //else
        //{
        //    lblErrApprovalAgen.Text = strErrApprAgency;
        //   dvErrApprovalAgency.Focus();
        //   dvErrApprovalAgency.Visible = true;
        //}


    }


    protected void ddlAppAgencSup_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlAppAgencSup.SelectedItem.Text == "Other (specify)")
        {
            trSclElgOtherDocumentType.Visible = true;
        }
        else
        {
            trSclElgOtherDocumentType.Visible = false;
        }

    }


    protected void lnkApprovalAgencyAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnApprovalAgency.Visible = true;
        divAddApprovalAgency.Visible = false;
        dvErrApprovalAgency.Visible = false;
    }

    public void BindGridApprovalAgency()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvApprovalAgency.EditIndex = this.EditIndexLicensureInformation;
        gvApprovalAgency.DataSource = ArryListName;
        gvApprovalAgency.DataBind();

        if (this.EditIndexLicensureInformation >= 0)
        {
            gvApprovalAgency.Rows[this.EditIndexLicensureInformation].CssClass = "RowInEditMode";
            gvApprovalAgency.Rows[this.EditIndexLicensureInformation].Cells[0].Attributes.Add("colspan", "6");
            gvApprovalAgency.Rows[this.EditIndexLicensureInformation].Cells[1].Visible = false;
            gvApprovalAgency.Rows[this.EditIndexLicensureInformation].Cells[2].Visible = false;
            gvApprovalAgency.Rows[this.EditIndexLicensureInformation].Cells[3].Visible = false;

        }
    }

    protected void gvApprovalAgency_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolCode = e.Row.FindControl("lblSchoolCode") as Label;
            Label lblExpirationDate = e.Row.FindControl("lblExpirationDate") as Label;
            Label lblApprovalAgencyName = e.Row.FindControl("lblApprovalAgencyName") as Label;


            int ROWLic = 0;
            if (lblSchoolCode != null && lblExpirationDate != null && lblApprovalAgencyName != null)
            {
                if (ROWLic == 0)
                {

                    lblSchoolCode.Text = "SCH001";
                    lblApprovalAgencyName.Text = "Agency 1";
                    lblExpirationDate.Text = "02/04/2016";
                }
                else if (ROWLic == 1)
                {
                    lblSchoolCode.Text = "SCH011";
                    lblApprovalAgencyName.Text = "Agency 3";
                    lblExpirationDate.Text = "10/11/2016";
                }
            }

            ROWLic++;

        }
    }

    protected void lnkApprovalAgencyEdit_Click(object sender, EventArgs e)
    {
        divAddApprovalAgency.Visible = false;
        divAddbtnApprovalAgency.Visible = true;
        this.EditIndexLicensureInformation = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexLicensureInformation = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridApprovalAgency();
            FillControlApprovalAgency(gvApprovalAgency, this.EditIndexLicensureInformation);
        }
    }
    protected void lnkApprovalAgencyDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlApprovalAgency(GridView gv, int EditInd)
    {
        try
        {


            TextBox txtSchoolCodeEdit = gv.Rows[this.EditIndexLicensureInformation].FindControl("txtSchoolCodeEdit") as TextBox;
            TextBox txtExpirationDateEdit = gv.Rows[this.EditIndexLicensureInformation].FindControl("txtExpirationDateEdit") as TextBox;
            DropDownList ddlAddApprovalAgencyEdit = gv.Rows[this.EditIndexLicensureInformation].FindControl("ddlAddApprovalAgencyEdit") as DropDownList;

            txtSchoolCodeEdit.Text = "SCH001";
            ddlAddApprovalAgencyEdit.SelectedValue = "A1";
            txtExpirationDateEdit.Text = "02/04/2016";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnApprovalAgencyUpdate_Click(object sender, EventArgs e)
    {
        string strEditErApprovalAgency;
        strEditErApprovalAgency = "";

        if (ddlAddApprovalAgencyEdit.SelectedValue == "-1")
        {
            if (strEditErApprovalAgency == "")
                strEditErApprovalAgency = "Please select App./Accrediting Agency.";
            else
            {
                strEditErApprovalAgency = strEditErApprovalAgency + "<br />" + "Please select App./Accrediting Agency.";
            }
        }

        if (txtExpirationDateEdit.Text == "")
        {
            if (strEditErApprovalAgency == "")
                strEditErApprovalAgency = "Please enter Expiration Date.";
            else
            {
                strEditErApprovalAgency = strEditErApprovalAgency + "<br />" + "Please enter Expiration Date.";
            }
        }

        if (strEditErApprovalAgency == "")
        {
            this.EditIndexLicensureInformation = -1;
            BindGridApprovalAgency();
        }
        else
        {
            lblErrorEditErApprovalAgency.Text = strEditErApprovalAgency;
            dvEditErApprovalAgency.Focus();
            dvEditErApprovalAgency.Visible = true;
        }


    }
    protected void lnkApprovalAgencyCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexLicensureInformation = -1;
        BindGridApprovalAgency();
    }

    #endregion


    #region Massage Programs

    public int EditIndexMassageProgram
    {
        get
        {
            if (ViewState["EditIndexMassageProgram"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexMassageProgram"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexMassageProgram"] = value;
        }
    }
    protected void btnMassageProgAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnMassageProgramName.Visible = false;
        divAddMassageProgramName.Visible = true;
        this.EditIndexMassageProgram = -1;
        BindGridMassageProgrameName();

    }

    protected void btnMassageprogramAddNewSave_Click(object sender, EventArgs e)
    {
        string strErrMasProgName;
        strErrMasProgName = "";

        if (txtAddMassageProgName.Text == "")
        {
            strErrMasProgName = "Please enter Massage Program Name.";
        }

        if (txtAddProgrameHours.Text == "")
        {
            if (strErrMasProgName == "")
                strErrMasProgName = "Please enter Total Number of Program Hours.";
            else
            {
                strErrMasProgName = strErrMasProgName + "<br />" + "Please enter Total Number of Program Hours.";
            }
        }


        if (strErrMasProgName == "")
        {
            divAddbtnMassageProgramName.Visible = true;
            divAddMassageProgramName.Visible = false;
        }
        else
        {
            lblErrMasProgName.Text = strErrMasProgName;
            dvErrMasProgName.Focus();
            dvErrMasProgName.Visible = true;
        }


    }

    protected void lnkMassageprogramAddNewCancel_Click(object sender, EventArgs e)
    {
        dvErrMasProgName.Visible = false;
        divAddbtnMassageProgramName.Visible = true;
        divAddMassageProgramName.Visible = false;
    }

    public void BindGridMassageProgrameName()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvMassageProgram.EditIndex = this.EditIndexMassageProgram;
        gvMassageProgram.DataSource = ArryListName;
        gvMassageProgram.DataBind();

        if (this.EditIndexMassageProgram >= 0)
        {
            gvMassageProgram.Rows[this.EditIndexMassageProgram].CssClass = "RowInEditMode";
            gvMassageProgram.Rows[this.EditIndexMassageProgram].Cells[0].Attributes.Add("colspan", "6");
            gvMassageProgram.Rows[this.EditIndexMassageProgram].Cells[1].Visible = false;
            gvMassageProgram.Rows[this.EditIndexMassageProgram].Cells[2].Visible = false;
            gvMassageProgram.Rows[this.EditIndexMassageProgram].Cells[3].Visible = false;
            gvMassageProgram.Rows[this.EditIndexMassageProgram].Cells[4].Visible = false;
            gvMassageProgram.Rows[this.EditIndexMassageProgram].Cells[5].Visible = false;

        }
    }

    int ROWMPN = 0;
    protected void gvMassageProgram_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblMassageProgrameName = e.Row.FindControl("lblMassageProgrameName") as Label;
            Label lblProgramHours = e.Row.FindControl("lblProgramHours") as Label;
            Image IBCAMTCAPP = e.Row.FindControl("IBCAMTCAPP") as Image;
            Label lblProgAppStartDate = e.Row.FindControl("lblProgAppStartDate") as Label;
            Label lblProgAppStartend = e.Row.FindControl("lblProgAppStartend") as Label;

            if (lblMassageProgrameName != null && lblProgramHours != null && IBCAMTCAPP != null && lblProgAppStartDate != null && lblProgAppStartend != null)
            {
                if (ROWMPN == 0)
                {

                    lblMassageProgrameName.Text = "Program Name1";
                    lblProgramHours.Text = "120";
                    IBCAMTCAPP.ImageUrl = "~/App_Themes/Theme1/images/StatusYes.png";
                    lblProgAppStartDate.Text = "01/01/2015";
                    lblProgAppStartend.Text = "02/03/2016";
                }
                else if (ROWMPN == 1)
                {
                    lblMassageProgrameName.Text = "Program Name2";
                    lblProgramHours.Text = "160";
                    IBCAMTCAPP.ImageUrl = "~/App_Themes/Theme1/images/StatusNo.png";
                    lblProgAppStartDate.Text = "6/30/2016";
                    lblProgAppStartend.Text = "10/03/2016";
                }
            }

            ROWMPN++;

        }
    }

    protected void lnkMassageprogramEdit_Click(object sender, EventArgs e)
    {
        divAddMassageProgramName.Visible = false;
        divAddbtnMassageProgramName.Visible = true;
        this.EditIndexMassageProgram = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexMassageProgram = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridMassageProgrameName();
            FillControlMassagePrograme(gvMassageProgram, this.EditIndexMassageProgram);
        }
    }

    protected void lnkMassageProgramDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlMassagePrograme(GridView gv, int EditInd)
    {
        try
        {


            TextBox txtMassageProgNameEdit = gv.Rows[this.EditIndexMassageProgram].FindControl("txtMassageProgNameEdit") as TextBox;
            TextBox txtProgramHoursEdit = gv.Rows[this.EditIndexMassageProgram].FindControl("txtProgramHoursEdit") as TextBox;

            txtMassageProgNameEdit.Text = "Program Name1 ";
            txtProgramHoursEdit.Text = "20";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnMassageProgameUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexMassageProgram = -1;
        BindGridMassageProgrameName();
    }
    protected void lnkMassageProgCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexMassageProgram = -1;
        BindGridMassageProgrameName();
    }

    #endregion


    #region Background Check

    public int EditIndexBackgroundCheck
    {
        get
        {
            if (ViewState["EditIndexBackgroundCheck"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexBackgroundCheck"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexBackgroundCheck"] = value;
        }
    }
    protected void btnBackgroundCheckAddNew_Click(object sender, EventArgs e)
    {
        //divAddbtnBackgroundCheck.Visible = false;
        //divAddBackgroundCheck.Visible = true;
        this.EditIndexBackgroundCheck = -1;
        BindGridBackgroundCheck();

    }

    protected void btnBackgroundCheckAddNewSave_Click(object sender, EventArgs e)
    {

        string strErrAddStaff;
        strErrAddStaff = "";

       

    }

    protected void lnkBackgroundCheckAddNewCancel_Click(object sender, EventArgs e)
    {
        
    }

    public void BindGridBackgroundCheck()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        

        if (this.EditIndexBackgroundCheck >= 0)
        {
            
            //gvBackgroundCheck.Rows[this.EditIndexMassageProgram].Cells[3].Visible = false;

        }
    }

    protected void gvBackgroundCheck_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblBackgroundCheckLastName = e.Row.FindControl("lblBackgroundCheckLastName") as Label;
            Label lblBackgroundCheckFirstName = e.Row.FindControl("lblBackgroundCheckFirstName") as Label;
            Label lblBackgroundCheckPosition = e.Row.FindControl("lblBackgroundCheckPosition") as Label;
            Label lblBackgroundCheckRequerd = e.Row.FindControl("lblBackgroundCheckRequerd") as Label;
            Label lblBackgroundCheckReason = e.Row.FindControl("lblBackgroundCheckReason") as Label;

            int ROWLic = 0;
            if (lblBackgroundCheckLastName != null && lblBackgroundCheckReason != null && lblBackgroundCheckPosition != null && lblBackgroundCheckRequerd != null && lblBackgroundCheckFirstName != null)
            {
                if (ROWLic == 0)
                {

                    lblBackgroundCheckLastName.Text = "Program Name1";
                    lblBackgroundCheckFirstName.Text = "Program Hours1";
                    lblBackgroundCheckPosition.Text = "Program Hours1";
                    lblBackgroundCheckRequerd.Text = "Program Hours1";
                    lblBackgroundCheckReason.Text = "Program Hours1";

                }
                else if (ROWLic == 1)
                {
                    lblBackgroundCheckLastName.Text = "Program Name2";
                    lblBackgroundCheckFirstName.Text = "Program Hours2";
                    lblBackgroundCheckPosition.Text = "Program Hours2";
                    lblBackgroundCheckRequerd.Text = "Program Hours2";
                    lblBackgroundCheckReason.Text = "Program Hours2";
                }
            }

            ROWLic++;

        }
    }

    protected void lnkBackgroundCheckEdit_Click(object sender, EventArgs e)
    {
        
        this.EditIndexBackgroundCheck = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexBackgroundCheck = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridBackgroundCheck();
           // FillControlBackgroundCheck(gvBackgroundCheck, this.EditIndexBackgroundCheck);
        }
    }

    protected void lnkBackgroundChecDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlBackgroundCheck(GridView gv, int EditInd)
    {
        try
        {


            TextBox txtBackCheckLastNameEdit = gv.Rows[this.EditIndexBackgroundCheck].FindControl("txtBackCheckLastNameEdit") as TextBox;
            TextBox txtBackCheckFirstNameEdit = gv.Rows[this.EditIndexBackgroundCheck].FindControl("txtBackCheckFirstNameEdit") as TextBox;
            TextBox txtBackCheckTitleEdit = gv.Rows[this.EditIndexBackgroundCheck].FindControl("txtBackCheckTitleEdit") as TextBox;
            RadioButtonList rblBackgroundChekReqEdit = gv.Rows[this.EditIndexBackgroundCheck].FindControl("rblBackgroundChekReqEdit") as RadioButtonList;
            TextBox txtchkCAMTCEdit = gv.Rows[this.EditIndexBackgroundCheck].FindControl("txtchkCAMTCEdit") as TextBox;

            txtBackCheckLastNameEdit.Text = "Last Name ";
            txtBackCheckFirstNameEdit.Text = "First Name";
            txtBackCheckTitleEdit.Text = "Title";
            rblBackgroundChekReqEdit.Text = "Yes";
            txtchkCAMTCEdit.Text = "CAMTC";



        }

        catch (Exception ex)
        {

        }
    }

    protected void btnBackgroundCheckUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexBackgroundCheck = -1;
        BindGridBackgroundCheck();
    }
    protected void lnkBackgroundCheckCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexBackgroundCheck = -1;
        BindGridBackgroundCheck();
    }

    protected void btnChildSupp_Click(object sender, EventArgs e)
    {
        btnSection3_Click(sender, e);
    }

    protected void lnkCancelCSD_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #endregion

    #region About the School - Related School

    public int EditIndexRelatedSchool
    {
        get
        {
            if (ViewState["EditIndexRelatedSchool"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexRelatedSchool"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexRelatedSchool"] = value;
        }
    }

    protected void btnAddNewRelatedSchools_Click(object sender, EventArgs e)
    {
        divBtnAddNewRelatedSchools.Visible = false;
        divAddNewRelatedSchools.Visible = true;
        this.EditIndexRelatedSchool = -1;
        BindGridRelatedSchool();
    }
    protected void btnSaveRelatedSchool_Click(object sender, EventArgs e)
    {
        string strErrAddRelSchools;
        strErrAddRelSchools = "";

        if (TextBox2.Text == "")
        {
            strErrAddRelSchools = "Please enter school name.";
        }

        if (TextBox65.Text == "")
        {
            if (strErrAddRelSchools == "")
                strErrAddRelSchools = "Please enter Primary Contact First Name.";
            else
            {
                strErrAddRelSchools = strErrAddRelSchools + "<br />" + "Please enter Primary Contact First Name.";
            }
        }

        if (TextBox66.Text == "")
        {
            if (strErrAddRelSchools == "")
                strErrAddRelSchools = "Please enter Primary Contact Last Name.";
            else
            {
                strErrAddRelSchools = strErrAddRelSchools + "<br />" + "Please enter Primary Contact Last Name.";
            }
        }

        if (TextBox6.Text == "")
        {
            if (strErrAddRelSchools == "")
                strErrAddRelSchools = "Please enter Street.";
            else
            {
                strErrAddRelSchools = strErrAddRelSchools + "<br />" + "Please enter Street.";
            }
        }

        if (TextBox8.Text == "")
        {
            if (strErrAddRelSchools == "")
                strErrAddRelSchools = "Please enter City.";
            else
            {
                strErrAddRelSchools = strErrAddRelSchools + "<br />" + "Please enter City.";
            }
        }

        if (DropDownList1.SelectedValue == "-1")
        {
            if (strErrAddRelSchools == "")
                strErrAddRelSchools = "Please select State.";
            else
            {
                strErrAddRelSchools = strErrAddRelSchools + "<br />" + "Please select State.";
            }
        }

        if (TextBox9.Text == "")
        {
            if (strErrAddRelSchools == "")
                strErrAddRelSchools = "Please enter Zip.";
            else
            {
                strErrAddRelSchools = strErrAddRelSchools + "<br />" + "Please enter Zip.";
            }
        }

        if (TextBox10.Text == "")
        {
            if (strErrAddRelSchools == "")
                strErrAddRelSchools = "Please enter Phone.";
            else
            {
                strErrAddRelSchools = strErrAddRelSchools + "<br />" + "Please enter Phone.";
            }
        }


        if (TextBox12.Text == "")
        {
            if (strErrAddRelSchools == "")
                strErrAddRelSchools = "Please enter Email.";
            else
            {
                strErrAddRelSchools = strErrAddRelSchools + "<br />" + "Please enter Email.";
            }
        }


        if (strErrAddRelSchools == "")
        {
            divBtnAddNewRelatedSchools.Visible = true;
            divAddNewRelatedSchools.Visible = false;
        }
        else
        {
            lblErrAddRelSchools.Text = strErrAddRelSchools;
            dvErrAddRelSchools.Focus();
            dvErrAddRelSchools.Visible = true;
        }


    }
    protected void lnkCancelRelatedSchool_Click(object sender, EventArgs e)
    {
        dvErrAddRelSchools.Visible = false;
        divBtnAddNewRelatedSchools.Visible = true;
        divAddNewRelatedSchools.Visible = false;
    }

    int ROWRS = 0;
    protected void gvRelatedSchool_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblBusinessName1 = e.Row.FindControl("lblBusinessName1") as Label;
            Label lblBusinessPhone1 = e.Row.FindControl("lblBusinessPhone1") as Label;
            Label lblSacramento = e.Row.FindControl("lblSacramento") as Label;
            Label lblState1 = e.Row.FindControl("lblState1") as Label;
            Label lblZip1 = e.Row.FindControl("lblZip1") as Label;

            if (lblBusinessName1 != null && lblBusinessPhone1 != null && lblSacramento != null && lblState1 != null && lblZip1 != null)
            {
                if (ROWRS == 0)
                {

                    lblBusinessName1.Text = "Max Health Center";
                    lblBusinessPhone1.Text = "(530) 542-0604";
                    lblSacramento.Text = "EMERYVILLE";
                    lblState1.Text = "CA";
                    lblZip1.Text = "96151";
                }
                else if (ROWRS == 1)
                {
                    lblBusinessName1.Text = "Intu Corporation";
                    lblBusinessPhone1.Text = "(775) 742-3752";
                    lblSacramento.Text = "TEMPLE CITY";
                    lblState1.Text = "CA";
                    lblZip1.Text = "89450";
                }
            }

            ROWRS++;

        }
    }

    public void BindGridRelatedSchool()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvRelatedSchool.EditIndex = this.EditIndexRelatedSchool;
        gvRelatedSchool.DataSource = ArryListName;
        gvRelatedSchool.DataBind();

        if (this.EditIndexRelatedSchool >= 0)
        {
            gvRelatedSchool.Rows[this.EditIndexRelatedSchool].CssClass = "RowInEditMode";
            gvRelatedSchool.Rows[this.EditIndexRelatedSchool].Cells[0].Attributes.Add("colspan", "6");
            gvRelatedSchool.Rows[this.EditIndexRelatedSchool].Cells[1].Visible = false;
            gvRelatedSchool.Rows[this.EditIndexRelatedSchool].Cells[2].Visible = false;
            gvRelatedSchool.Rows[this.EditIndexRelatedSchool].Cells[3].Visible = false;
            gvRelatedSchool.Rows[this.EditIndexRelatedSchool].Cells[4].Visible = false;
            gvRelatedSchool.Rows[this.EditIndexRelatedSchool].Cells[5].Visible = false;

        }
    }

    public void FillControlRelatedSchool(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexRelatedSchool].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexRelatedSchool].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexRelatedSchool].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexRelatedSchool].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexRelatedSchool].FindControl("txtRelatedSchoolZipEdit") as TextBox;

            txtRelatedSchoolBusinessNameEdit.Text = "Max Health Center";
            txtRelatedSchoolBusinessPhoneEdit.Text = "(530) 542-0604";
            ddlRelatedSchoolStateEdit.SelectedValue = "CA";
            txtRelatedSchoolZipEdit.Text = "96151";
            txtRelatedSchoolCityEdit.Text = "EMERYVILLE";

        }

        catch (Exception ex)
        {

        }
    }

    protected void btnRelatedSchoolUpdate_Click(object sender, EventArgs e)
    {
        string strErrEditRelatedSchools;
        strErrEditRelatedSchools = "";

        if (txtRelatedSchoolStreet1Edit.Text == "")
        {
            strErrEditRelatedSchools = "Please enter Street.";
        }

        if (txtRelatedSchoolCityEdit.Text == "")
        {
            if (strErrEditRelatedSchools == "")
                strErrEditRelatedSchools = "Please enter City.";
            else
            {
                strErrEditRelatedSchools = strErrEditRelatedSchools + "<br />" + "Please enter City.";
            }
        }

        if (ddlRelatedSchoolStateEdit.SelectedValue == "-1")
        {
            if (strErrEditRelatedSchools == "")
                strErrEditRelatedSchools = "Please select State.";
            else
            {
                strErrEditRelatedSchools = strErrEditRelatedSchools + "<br />" + "Please select State.";
            }
        }

        if (txtRelatedSchoolZipEdit.Text == "")
        {
            if (strErrEditRelatedSchools == "")
                strErrEditRelatedSchools = "Please enter Zip.";
            else
            {
                strErrEditRelatedSchools = strErrEditRelatedSchools + "<br />" + "Please enter Zip.";
            }
        }

        if (strErrEditRelatedSchools == "")
        {
            this.EditIndexRelatedSchool = -1;
            BindGridRelatedSchool();
        }
        else
        {
            lblErrEditRelatedSchools.Text = strErrEditRelatedSchools;
            dvErrEditRelatedSchools.Focus();
            dvErrEditRelatedSchools.Visible = true;
        }


    }

    protected void lnkRelatedSchoolCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexRelatedSchool = -1;
        BindGridRelatedSchool();
    }

    protected void lnkRelatedSchoolEdit_Click(object sender, EventArgs e)
    {
        divBtnAddNewRelatedSchools.Visible = true;
        divAddNewRelatedSchools.Visible = false;
        this.EditIndexRelatedSchool = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexRelatedSchool = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridRelatedSchool();
            FillControlRelatedSchool(gvRelatedSchool, this.EditIndexRelatedSchool);
        }
    }

    protected void lnkRelatedSchoolDelete_Click(object sender, EventArgs e)
    {

    }

    protected void ddlOwnAboutBusinessDoc_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlOwnAboutBusinessDoc.SelectedItem.Text == "Other (specify)")
        {
            trAbouttheSchl1.Visible = true;
        }
        else
        {
            trAbouttheSchl1.Visible = false;
        }
    }


   

    #region LicensureInformation

   

    protected void btnLicensureInformationAddNew_Click(object sender, EventArgs e)
    {
        //divAddbuttonLicensureInformation.Visible = false;
        divAddPanelLicensureInformation.Visible = true;
        this.EditIndexLicensureInformation = -1;
        BindGridLicensureInformation();
    }
    protected void btnLicensureInformationSave_Click(object sender, EventArgs e)
    {
        //divAddbuttonLicensureInformation.Visible = true;
        divAddPanelLicensureInformation.Visible = false;
    }
    protected void lnkLicensureInformationCancel_Click(object sender, EventArgs e)
    {
        //divAddbuttonLicensureInformation.Visible = true;
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
        //divAddbuttonLicensureInformation.Visible = true;
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

    protected void btnLicNextInfo_Click(object sender, EventArgs e)
    {
    }

    protected void lnkCancelLiceInfo_Click(object sender, EventArgs e)
    {

    }

    #endregion
    #endregion


    #region transcript
    protected void btnNextTransChkList_Click(object sender, EventArgs e)
    {
        btnEnrollAgreeCheck_Click(sender, e);
    }

    protected void btnSaveNextPayment_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx?q=1", false);
    }
    #endregion

    #region Enrollment Agreement Checklist
    protected void btnNextEnrollChkList_Click(object sender, EventArgs e)
    {
        btnCourCataCheck_Click(sender, e);
    }


    #endregion

    #region cource catalog
    protected void btnNextCourseChkList_Click(object sender, EventArgs e)
    {
        btnProgHourReqWork_Click(sender, e);
    }
    #endregion


    #region curriculum
    #region Program Hour Requirement Worksheet

    #region InnerGrid

    public int EditIndexPHRW1
    {
        get
        {
            if (ViewState["EditIndexPHRW1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexPHRW1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexPHRW1"] = value;
        }
    }

    protected void btnCourseReqAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnCourseReq.Visible = false;
        divAddCourseReq.Visible = true;
        this.EditIndexPHRW1 = -1;
        BindGridPHRW1();
    }
    protected void btnCourseReqAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnCourseReq.Visible = true;
        divAddCourseReq.Visible = false;
    }
    protected void lnkCourseReqAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnCourseReq.Visible = true;
        divAddCourseReq.Visible = false;
    }

    int ROWPHRW1 = 0;
    protected void gvCourseL2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWPHRW1 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWPHRW1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWPHRW1++;

        }
    }

    public void BindGridPHRW1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvCourseL2.EditIndex = this.EditIndexPHRW1;
        gvCourseL2.DataSource = ArryListName;
        gvCourseL2.DataBind();

        if (this.EditIndexPHRW1 >= 0)
        {
            gvCourseL2.Rows[this.EditIndexPHRW1].CssClass = "RowInEditMode";
            gvCourseL2.Rows[this.EditIndexPHRW1].Cells[0].Attributes.Add("colspan", "6");
            gvCourseL2.Rows[this.EditIndexPHRW1].Cells[1].Visible = false;
            gvCourseL2.Rows[this.EditIndexPHRW1].Cells[2].Visible = false;
            gvCourseL2.Rows[this.EditIndexPHRW1].Cells[3].Visible = false;
            //gvCourseL2.Rows[this.EditIndexPHRW1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdminInfo2].Cells[5].Visible = false;

        }
    }

    public void FillControlPHRWInnerGrid(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtCourseTitleL2Edit = gv.Rows[this.EditIndexPHRW1].FindControl("txtCourseTitleL2Edit") as TextBox;
            TextBox txtCourseHoursL2Edit = gv.Rows[this.EditIndexPHRW1].FindControl("txtCourseHoursL2Edit") as TextBox;

            txtCourseTitleL2Edit.Text = "Title 1";
            txtCourseHoursL2Edit.Text = "20";

        }

        catch (Exception ex)
        {

        }
    }

    protected void btnCourseL2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexPHRW1 = -1;
        BindGridPHRW1();
    }

    protected void lnkCourseL2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexPHRW1 = -1;
        BindGridPHRW1();
    }

    protected void lnkCourseTitleHourEdit_Click(object sender, EventArgs e)
    {
        divAddbtnCourseReq.Visible = true;
        divAddCourseReq.Visible = false;
        this.EditIndexPHRW1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexPHRW1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridPHRW1();
            //FillControlPHRWInnerGrid(gvAdminInfo2, this.EditIndexPHRW1);
        }
    }

    protected void lnkCourseTitleHourDelete_Click(object sender, EventArgs e)
    {

    }

    #endregion
    #region AdminInfo2

    public int EditIndexAdminInfo2
    {
        get
        {
            if (ViewState["EditIndexAdminInfo2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdminInfo2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdminInfo2"] = value;
        }
    }

    protected void btnAdminInfo2AddNew_Click(object sender, EventArgs e)
    {
        //divBtnAddAdminInfo2.Visible = false;
        //divAddAdminInfo2.Visible = true;
        this.EditIndexAdminInfo2 = -1;
        BindGridAdminInfo2();
    }
    protected void btnAdminInfo2AddNewSave_Click(object sender, EventArgs e)
    {
        






    }
    protected void lnkAdminInfo2AddNewCancel_Click(object sender, EventArgs e)
    {
       
    }

    int ROWAI2 = 0;
    protected void gvAdminInfo2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblAdminInfo2SchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblAdminInfo2City") as Label;
            Label lblState = e.Row.FindControl("lblAdminInfo2State") as Label;
            Label lblGradDate = e.Row.FindControl("lblAdminInfo2GradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAI2 == 0)
                {

                    lblSchoolName.Text = "School 1";
                    lblGradDate.Text = "02/04/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";

                }
                else if (ROWAI2 == 1)
                {
                    lblSchoolName.Text = "School 2";
                    lblGradDate.Text = "02/08/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROWAI2++;

        }
    }

    public void BindGridAdminInfo2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        
        if (this.EditIndexAdminInfo2 >= 0)
        {
            
            //gvRelatedSchool.Rows[this.EditIndexAdminInfo2].Cells[5].Visible = false;

        }
    }

    public void FillControlAdminInfo2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

            txtRelatedSchoolBusinessNameEdit.Text = "Max Health Center";
            txtRelatedSchoolBusinessPhoneEdit.Text = "(530) 542-0604";
            ddlRelatedSchoolStateEdit.SelectedValue = "CA";
            txtRelatedSchoolZipEdit.Text = "96151";
            txtRelatedSchoolCityEdit.Text = "EMERYVILLE";

        }

        catch (Exception ex)
        {

        }
    }

    protected void btnAdminInfo2Update_Click(object sender, EventArgs e)
    {


        this.EditIndexAdminInfo2 = -1;
        BindGridAdminInfo2();


       
    }

    protected void lnkAdminInfo2CancelUpdate_Click(object sender, EventArgs e)
    {
        //dvErrorEdiPriCollege.Visible = false;
        this.EditIndexAdminInfo2 = -1;
        BindGridAdminInfo2();
    }

    protected void lnkAdminInfo2Edit_Click(object sender, EventArgs e)
    {
        //divBtnAddAdminInfo2.Visible = true;
        //divAddAdminInfo2.Visible = false;
        this.EditIndexAdminInfo2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdminInfo2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdminInfo2();
            //FillControlAdminInfo2(gvAdminInfo2, this.EditIndexAdminInfo2);
        }
    }

    protected void lnkAdminInfo2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion
    #region OuterGrid

    public int EditIndexAdminInfo20
    {
        get
        {
            if (ViewState["EditIndexAdminInfo20"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdminInfo20"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdminInfo20"] = value;
        }
    }


    int ROWAI20 = 0;
    protected void gvProgHrWrkSheet_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblProgHrWrkSheetCourse = e.Row.FindControl("lblProgHrWrkSheetCourse") as Label;
            Label lblProgHrWrkSheetCourseHr = e.Row.FindControl("lblProgHrWrkSheetCourseHr") as Label;

            if (lblProgHrWrkSheetCourse != null && lblProgHrWrkSheetCourseHr != null)
            {
                if (ROWAI20 == 0)
                {
                    lblProgHrWrkSheetCourse.Text = "Anatomy & Physiology";
                    lblProgHrWrkSheetCourseHr.Text = "64";
                }
                else if (ROWAI20 == 1)
                {
                    lblProgHrWrkSheetCourse.Text = "Contraindications";
                    lblProgHrWrkSheetCourseHr.Text = "13";
                }
                else if (ROWAI20 == 2)
                {
                    lblProgHrWrkSheetCourse.Text = "Health & Hygiene";
                    lblProgHrWrkSheetCourseHr.Text = "5";
                }
                else if (ROWAI20 == 3)
                {
                    lblProgHrWrkSheetCourse.Text = "Business & Ethics";
                    lblProgHrWrkSheetCourseHr.Text = "18";
                }
            }

            ROWAI20++;

        }
    }

    public void BindGridAdminInfo20()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");
        ArryListName.Add("CA");
        ArryListName.Add("CA");

        gvProgHrWrkSheet.EditIndex = this.EditIndexAdminInfo20;
        gvProgHrWrkSheet.DataSource = ArryListName;
        gvProgHrWrkSheet.DataBind();

        if (this.EditIndexAdminInfo20 >= 0)
        {
            gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].CssClass = "RowInEditMode";
            gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].Cells[0].Attributes.Add("colspan", "6");
            gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].Cells[1].Visible = false;
            gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].Cells[2].Visible = false;
            //gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].Cells[3].Visible = false;
            //gvAdminInfo2.Rows[this.EditIndexAdminInfo2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdminInfo2].Cells[5].Visible = false;

        }
    }

    public void FillControlAdminInfo20(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

            txtRelatedSchoolBusinessNameEdit.Text = "Max Health Center";
            txtRelatedSchoolBusinessPhoneEdit.Text = "(530) 542-0604";
            ddlRelatedSchoolStateEdit.SelectedValue = "CA";
            txtRelatedSchoolZipEdit.Text = "96151";
            txtRelatedSchoolCityEdit.Text = "EMERYVILLE";

        }

        catch (Exception ex)
        {

        }
    }

    //protected void btnAdminInfo2Update_Click(object sender, EventArgs e)
    //{
    //    this.EditIndexAdminInfo20 = -1;
    //    BindGridAdminInfo20();
    //}

    //protected void lnkAdminInfo2CancelUpdate_Click(object sender, EventArgs e)
    //{
    //    this.EditIndexAdminInfo20 = -1;
    //    BindGridAdminInfo20();
    //}

    protected void lnkCoursesRequirementsOpen_Click(object sender, EventArgs e)
    {
        this.EditIndexAdminInfo20 = -1;

        LinkButton imgbtnRelatedSchoolEdit = (LinkButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdminInfo20 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdminInfo20();
            BindGridPHRW1();
            FillControlAdminInfo20(gvProgHrWrkSheet, this.EditIndexAdminInfo20);
        }
    }


    #endregion

    #endregion
    #endregion



    #region staff for conatct login
    protected void btnStaffPay_Click(object sender, EventArgs e)
    {
        if (payment_stafftab.Visible == true)
            payment_stafftab.Visible = false;

        else
            payment_stafftab.Visible = true;

    }

    #region Staff
    protected void rblTalentWise_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblTalentWise.SelectedItem.Text == "Yes")
        {
            btnTalentWise.Enabled = true;
        }
        else
        {
            btnTalentWise.Enabled = false;
        }
    }


    protected void lnkContactStaffCancel_Click(object sender, EventArgs e)
    {
        lnkInstruction_Click(sender, e);
    }

    #endregion

    protected void btnNextBackList_Click(object sender, EventArgs e)
    {
        btnTransCheck_Click(sender, e);
    }

    protected void btnsaveSclContct_Click(object sender, EventArgs e)
    {

    }

    #region Payment


    
   
    protected void ddlStaffPaymentMethod_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddlStaffPaymentMethod.SelectedItem.Text == "Check")
        {
            trstaffchck1.Visible = true;
            trstaffchck2.Visible = true;
            trstaffmonyorder.Visible = false;

            //pnlMoneyOrder.Visible = false;
            //pnlCheck.Visible = true;
            //btnSaveNextPayment.Visible = false;
        }
        else if (ddlStaffPaymentMethod.SelectedItem.Text == "Money Order")
        {
            trstaffchck1.Visible = false;
            trstaffchck2.Visible = false;
            trstaffmonyorder.Visible = true;
            //pnlMoneyOrder.Visible = true;
            //pnlCheck.Visible = false;
            //btnSaveNextPayment.Visible = false;
        }
        else if (ddlStaffPaymentMethod.SelectedItem.Text == "Credit / Debit Card")
        {
            trstaffchck1.Visible = false;
            trstaffchck2.Visible = false;
            trstaffmonyorder.Visible = false;
            //pnlMoneyOrder.Visible = false;
            //pnlCheck.Visible = false;
            //btnSaveNextPayment.Visible = true;
        }
        else
        {
            trstaffchck1.Visible = false;
            trstaffchck2.Visible = false;
            trstaffmonyorder.Visible = false;
            //pnlMoneyOrder.Visible = false;
            //pnlCheck.Visible = false;
            //btnSaveNextPayment.Visible = false;
        }
    }


    protected void txtNumberOfAdditinolCerti_TextChanged(object sender, EventArgs e)
    {
        //ltrPaymentError.Text = "";
        //int No = 0;
        //string Validate = ValidationHelper.IsValidInt(txtNumberOfAdditinolCerti.Text, "Please enter valid number of additional certiﬁcates.");

        //if (Validate == "")
        //{
        //    No = Convert.ToInt32(txtNumberOfAdditinolCerti.Text);
        //    FillAdditinolAmount();
        //    FillTotalAmount();
        //}
    }

    public void FillTotalAmount()
    {
        //ltrPaymentError.Text = "";
        //decimal ApplicationFee = 0;
        //decimal AdditionalCertificateAmt = 0;
        //string Validate = ValidationHelper.IsValidInt(txtNumberOfAdditinolCerti.Text, "Please enter valid number of additional certiﬁcates.");
        //if (Validate == "")
        //{
        //    AdditionalCertificateAmt = Convert.ToInt32(txtNumberOfAdditinolCerti.Text);
        //}

        //string Validate2 = ValidationHelper.IsValidInt(txtApplicationFees.Text, "Please enter valid Application Fees.");

        //if (Validate2 == "")
        //{
        //    ApplicationFee = Convert.ToInt32(txtApplicationFees.Text);
        //}

        //ApplicationFee = Convert.ToDecimal(txtApplicationFees.Text);
        //AdditionalCertificateAmt = Convert.ToDecimal(txtAdditionalCertificateAmt.Text);

        //decimal TotalAmount = ApplicationFee + AdditionalCertificateAmt;

        //txtTotalFees.Text = TotalAmount.ToString();

    }

    public void FillAdditinolAmount()
    {
        //int No = 0;

        //ltrPaymentError.Text = "";
        //string Validate = ValidationHelper.IsValidInt(txtNumberOfAdditinolCerti.Text, "Please enter valid number of additional certiﬁcates.");
        //if (Validate == "")
        //{
        //    No = Convert.ToInt32(txtNumberOfAdditinolCerti.Text);
        //}

        //int Amount = 0;
        //if (No > 0)
        //{
        //    Amount = No * 15;
        //}
        //txtAdditionalCertificateAmt.Text = (Amount.ToString());
    }
    public void FillPaymentDetail()
    {
        FillAdditinolAmount();
        FillTotalAmount();
    }

    protected void btnStaffShowDetails_Click(object sender, EventArgs e)
    {
    }

    protected void btnStaffHideDetials_Click(object sender, EventArgs e)
    {
    }

    #endregion
    #endregion
}