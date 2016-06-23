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
using System.Net;
using System.Web.Script.Serialization;
using Newtonsoft.Json;


public partial class ucCertificationApplication : System.Web.UI.UserControl
{
    String webAPIURL = "http://96.31.91.68/lappws/api/";
    //string webAPIURL = "http://192.168.0.100:5811/api/";

    #region Page Event Handler
    string UploadedImageUrl;
    protected void Page_Load(object sender, EventArgs e)
    {
        fillInDates();
        divEMail.Visible = false;
        ltrErrorMessageNewApp.Text = "";
        //ltrMessage.Text = "";
        if (!IsPostBack)
        {
            ltrErrorMessageNewApp.Text = "";
            //ltrMessage.Text = "";
            BindGridInstQualSectionA1();
            BindGridInstQualSectionA2();
            BindGridSubjectTaugh();
            BindGridInstQualSectionB1();
            BindGridInstQualSectionB2();
            BindGridInstQualSectionB3();
            BindGridInstQualSectionB4();
            BindGridInstrSchQualSectionA1();
            BindGridInstSchQualSectionB1();
            BindGridInstSchQualSectionB2();
            BindGridInstSchQualSectionB3();
            BindGridInstSchQualSectionB4();
            BindGridSubjectTaughInstr();
            BindGridcollegeAtt1();
            BindGridCollegeAtten2();
            BindGridCollegeWrkExp1();
            BindGridCollegeWrkExp2();
            BindGridCollegeWrkExp3();
            BindGridCollegeWrkExp4();
            BindGridAdInstructcollegeAtt1();
            BindGridAdInstructcollegeAtt2();
            BindGridAdInsCollegeWrkExp1();
            BindGridAdInsCollegeWrkExp2();
            BindGridAdInsCollegeWrkExp3();
            BindGridAdInsCollegeWrkExp4();
            BindGridOAISubjectTaugh();
            BindGridOAcollegeAtt1();
            BindGridOACollegeAtten2();
            BindGridOACollegeWrkExp1();
            BindGridOACollegeWrkExp2();
            BindGridOACollegeWrkExp3();
            BindGridOACollegeWrkExp4();
            BindGridOAIcollegeAtt1();
            BindGridOAICollegeAtten2();
            BindGridOAICollegeWrkExp1();
            BindGridOAICollegeWrkExp2();
            BindGridOAICollegeWrkExp3();
            BindGridOAICollegeWrkExp4();
            BindGridOISubjectTaugh();
            BindGridOICollegeWrkExp4();
            BindGridOICollegeWrkExp3();
            BindGridOICollegeWrkExp2();
            BindGridOICollegeWrkExp1();
            BindGridOICollegeAtten2();
            BindGridOIcollegeAtt1();
            BindGridADMININSubjectTaugh();
            BindGridInstInstrQualSectionA1();
            BindGridOwnerInfo();
            FillPaymentDetail();
            BindGridEducation();
            BindGridEducation2();
            BindGridApprovalAgency();
            BindGridMassageProgrameName();
            BindGridBackgroundCheck();
            BindGridRelatedSchool();
            BindGridWorkInfo1();
            BindGridWorkInfo2();
            BindGridWorkInfo3();
            BindGridWorkInfo4();

            BindGridAdminInfo1();
            BindGridAdminInfo2();

            BindGridAdminWrkExp1();
            BindGridAdminWrkExp2();
            BindGridAdminWrkExp3();
            BindGridAdminWrkExp4();

            // BindGridSatelliteLocation();
            BindGridSchoolInfoPrevious();

            BindGridAdminInfo20();

            //BindGridPHRW1();

            //By prem Singh
            BindGridPreviousSchools();

            //Commented to make defualt navigation dynamic
            // MakeActiveLi(liApplicatinInstructions);

            //Make Check correct based on the active tab
            CallMethodToCheckInitialTabActive();

            //TODO: Make content accessible dynamically
            txtFirstNameEdit.Text = "Application Name";

            if (rblQuestionEdit1.SelectedValue == "0") // || (rblQuestionEdit2.SelectedValue == "0"))
            {
                btnApplicationStatus.Enabled = false;
            }
            else
            {
                //btnApplicationStatus.Enabled = true;
            }

            if (Session["sUserLoginInfo"] != null)
            {
                chkLoginDisplayDiv();
                chkLoginDisplayTab();

                //Session.Remove("sUserLoginInfo");
            }
            else
            {
                Session.RemoveAll();
                Response.Redirect("ProviderLogin.aspx");
            }


            if (Request.QueryString.Count > 0)
            {
                if (Request.QueryString["AOS"] != null)
                    chkAOSDisplayTab();
            }

            //if (Session["AOS"] != null)
            //{
            //    chkAOSDisplayTab();
            //}




        }
        //MessageBox.RunJsInUpdatePanel(this.Page, "InitiatePage();");
    }

    private void fillInDates()
    {
        txtDateSignature1.Text = DateTime.Now.ToString();
        txtDateSignature2.Text = DateTime.Now.ToString();
        txtDateSignature3.Text = DateTime.Now.ToString();
        txtDateSignature4.Text = DateTime.Now.ToString();
        txtPreviusSigDate.Text = DateTime.Now.ToString();
        txtPreOwnDate.Text = DateTime.Now.ToString();
        txtPreSig3Date.Text = DateTime.Now.ToString();
        txtPreOw4Date.Text = DateTime.Now.ToString();
        TextBox129.Text = DateTime.Now.ToString();
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

    protected void ddlPOBCountry_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        //if (ddlPOBCountry.SelectedItem.Text == "USA")
        //{
        //    ddlPOBStateOfUSA.Visible = true;
        //    ddlPOBStateOfCanada.Visible = false;
        //    txtState.Visible = false;
        //}
        //else if (ddlPOBCountry.SelectedValue.ToLower() == "canada")
        //{
        //    ddlPOBStateOfUSA.Visible = false;
        //    ddlPOBStateOfCanada.Visible = true;
        //    txtState.Visible = false;

        //}
        //else
        //{

        //    ddlPOBStateOfUSA.Visible = false;
        //    ddlPOBStateOfCanada.Visible = false;
        //    txtState.Visible = true;

        //}
    }
    protected void chkAffidavit_OnCheckedChanged(object sender, EventArgs e)
    {
        EnableBtnNext();
    }

    protected void CheckScDec1_OnCheckedChanged(object sender, EventArgs e)
    {
        EnableBtnNext();
    }

    protected void CheckScDec2_OnCheckedChanged(object sender, EventArgs e)
    {
        EnableBtnNext();
    }

    protected void CheckScDec3_OnCheckedChanged(object sender, EventArgs e)
    {
        EnableBtnNext();
    }

    protected void CheckScDec4_OnCheckedChanged(object sender, EventArgs e)
    {
        EnableBtnNext();
    }

    protected void CheckScDec5_OnCheckedChanged(object sender, EventArgs e)
    {
        EnableBtnNext();
    }
    protected void CheckScDec6_OnCheckedChanged(object sender, EventArgs e)
    {
        EnableBtnNext();
    }
    protected void CheckScDec7_OnCheckedChanged(object sender, EventArgs e)
    {
        EnableBtnNext();
    }

    private void EnableBtnNext()
    {
        bool showBtn = true;

        if (CheckScDec1.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (CheckScDec2.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (CheckScDec3.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (CheckScDec4.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (CheckScDec5.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (CheckScDec6.Checked == false)
        {
            showBtn = false;
            goto End;
        }
        if (CheckScDec7.Checked == false)
        {
            showBtn = false;
            goto End;
        }
    //if (AffQ8.Checked == false)
    //{
    //    showBtn = false;
    //    goto End;
    //}
    //if (AffQ9.Checked == false)
    //{
    //    showBtn = false;
    //    goto End;
    //}
    //if (AffQ10.Checked == false)
    //{
    //    showBtn = false;
    //    goto End;
    //}
    //if (AffQ11.Checked == false)
    //{
    //    showBtn = false;
    //    goto End;
    //}
    //if (AffQ12.Checked == false)
    //{
    //    showBtn = false;
    //    goto End;
    //}
    //if (AffQ13.Checked == false)
    //{
    //    showBtn = false;
    //    goto End;
    //}


    End:
        btnNextMassageTraning.Enabled = showBtn;


    }

    protected void lnkQues1_Click(object sender, EventArgs e)
    {
        rblQuestionEdit1.Enabled = true;
        Response.Write("<script>window.open('https://www.camtc.org/','_blank');</script>");
    }

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
    protected void rblQuestionEdit2_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblQuestionEdit1.SelectedValue == "0") // || (rblQuestionEdit2.SelectedValue == "0"))
        {
            btnApplicationStatus.Enabled = false;
        }
        else
        {
            btnApplicationStatus.Enabled = true;
        }
    }
    protected void btnUpdateDoc_Click(object sender, EventArgs e)
    {
        //trEditDocument.Visible = false;
        //trAddDocument.Visible = true;
        //trGridRowDoc.Visible = true;
    }
    protected void imgbtnDocumentEdit_Click(object sender, EventArgs e)
    {
        //trEditDocument.Visible = true;
        //trAddDocument.Visible = false;
        //trGridRowDoc.Visible = false;
    }

    #region PublicMethods

    public void MakeActiveLi(HtmlControl element)
    {
        liStaffInformation.Attributes.Remove("class");
        liPayment.Attributes.Remove("class");
        liApplicatinInstructions.Attributes.Remove("class");
        liMassageTherapistApplication.Attributes.Remove("class");
        liSection2.Attributes.Remove("class");
        liSection3.Attributes.Remove("class");
        liSection4.Attributes.Remove("class");
        liSection5.Attributes.Remove("class");
        liSection6.Attributes.Remove("class");
        liSection7.Attributes.Remove("class");
        liChecklist.Attributes.Remove("class");

        li_Administrator_Work_Experience.Attributes.Remove("class");
        li_Administrator_Declaration.Attributes.Remove("class");
        li_Background_Checklist.Attributes.Remove("class");
        li_Transcript_Checklist.Attributes.Remove("class");
        li_Enrollment_Agreement_Checklist.Attributes.Remove("class");
        li_Course_Catalog_Checklist.Attributes.Remove("class");
        li_Program_Hour_Requirement_Worksheet.Attributes.Remove("class");
        li_School_Faculty_List.Attributes.Remove("class");
        li_Instructor_Qualifications.Attributes.Remove("class");
        li_Instructor_Declaration.Attributes.Remove("class");
        liSchoolContactStaff.Attributes.Remove("class");

        lischoolpubinstStaff.Attributes.Remove("class");

        liCorrectiveAction.Attributes.Remove("class");

        element.Attributes.Add("class", "actived");
    }

    #endregion

    #region APPLICATION INSTRUCTIONS Tab

    protected void lnkApplicationStatusCancel_Click(object sender, EventArgs e)
    {
    }
    //protected void btnApplicationStatus_Click(object sender, EventArgs e)
    //{
    //    btnMassageTherapistApplication_Click(sender, e);
    //}
    #endregion

    #region Personal Information Tab
    protected void btnYes_Click(object sender, EventArgs e)
    {
        btnSection2_Click(sender, e);

    }
    protected void btnNo_Click(object sender, EventArgs e)
    {

        //txtPrimaryEmail.Focus();
        divEMail.Visible = false;

    }
    protected void btnSavePersonalInfo_Click(object sender, EventArgs e)
    {
        #region comment
        /*
        string strErr;
        strErr = "";

        if (txtFirstNameEdit.Text == "")
        {
            strErr = "<span class='notok'></span> Please enter school name.";
            txtFirstNameEdit.CssClass = "error";
        }


        if (txtschoolwebsite.Text == "")
        {
            if (strErr == "")
                strErr = "<span class='notok'></span> Please enter school website.";
            else
            {
                strErr = strErr + "<br />" + "<span class='notok'></span> Please enter school website.";
            }
        }

        if (txtschool_Add.Text == "")
        {
            if (strErr == "")
                strErr = "<span class='notok'></span> Please enter school address.";
            else
            {
                strErr = strErr + "<br />" + "<span class='notok'></span> Please enter school address.";
            }
        }

        if (txtCityResEdit.Text == "")
        {
            if (strErr == "")
                strErr = "<span class='notok'></span> Please enter city of school.";
            else
            {
                strErr = strErr + "<br />" + "<span class='notok'></span> Please enter city of school.";
            }
        }


        if (ddlStateResEdit.SelectedValue == "-1")
        {
            if (strErr == "")
                strErr = "<span class='notok'></span> Please enter school state.";
            else
            {
                strErr = strErr + "<br />" + "<span class='notok'></span> Please enter school state.";
            }
        }

        if (txtZipResEdit.Text == "")
        {
            if (strErr == "")
                strErr = "<span class='notok'></span> Please enter zip code of school.";
            else
            {
                strErr = strErr + "<br />" + "<span class='notok'></span> Please enter zip code of school.";
            }
        }

        if (txtMailingAdd.Text == "")
        {
            if (strErr == "")
                strErr = "<span class='notok'></span> Please enter mailing address.";
            else
            {
                strErr = strErr + "<br />" + "<span class='notok'></span> Please enter mailing address.";
            }
        }

        if (txtMailingCity.Text == "")
        {
            if (strErr == "")
                strErr = "<span class='notok'></span> Please enter mailing city.";
            else
            {
                strErr = strErr + "<br />" + "<span class='notok'></span> Please enter mailing city.";
            }
        }

        if (ddlMailingState.SelectedValue == "-1")
        {
            if (strErr == "")
                strErr = "<span class='notok'></span> Please select mailing state.";
            else
            {
                strErr = strErr + "<br />" + "<span class='notok'></span> Please select mailing state.";
            }
        }

        if (txtMailngZip.Text == "")
        {
            if (strErr == "")
                strErr = "<span class='notok'></span> Please enter mailing zip code.";
            else
            {
                strErr = strErr + "<br />" + "<span class='notok'></span> Please enter mailing zip code.";
            }
        }

        

        if (txtSatelliteLoc.Text == "")
        {
            if (strErr == "")
                strErr = "<span class='notok'></span> Please enter satellite location address.";
            else
            {
                strErr = strErr + "<br />" + "<span class='notok'></span> Please enter satellite location address.";
            }
        }

        if (txtSatelliteCity.Text == "")
        {
            if (strErr == "")
                strErr = "<span class='notok'></span> Please enter satellite location city.";
            else
            {
                strErr = strErr + "<br />" + "<span class='notok'></span> Please enter satellite location city.";
            }
        }

        if (ddlSatelliteState.SelectedValue == "-1")
        {
            if (strErr == "")
                strErr = "<span class='notok'></span> Please select satellite location state.";
            else
            {
                strErr = strErr + "<br />" + "<span class='notok'></span> Please select satellite location state.";
            }
        }

        if (txtSatelliteZip.Text == "")
        {
            if (strErr == "")
                strErr = "<span class='notok'></span> Please enter satellite location zip.";
            else
            {
                strErr = strErr + "<br />" + "<span class='notok'></span> Please enter satellite location zip.";
            }
        }

        if (txtPreviousAdd.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter previous address.";
            else
            {
                strErr = strErr + "<br />" + "Please enter previous address.";
            }
        }

        if (txtPreviousCity.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter previous city.";
            else
            {
                strErr = strErr + "<br />" + "Please enter previous city.";
            }
        }

        if (ddlPreviousAddState.SelectedValue == "-1")
        {
            if (strErr == "")
                strErr = "Please select previous address.";
            else
            {
                strErr = strErr + "<br />" + "Please select previous address.";
            }
        }

        if (txtPreviousAddzip.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter previous zip.";
            else
            {
                strErr = strErr + "<br />" + "Please enter previous zip.";
            }
        }

        if (txtDirectorEmail.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter Director/Administrator email.";
            else
            {
                strErr = strErr + "<br />" + "Please enter Director/Administrator email.";
            }
        }

        if (txtSclInfoPriNumber.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter Director/Administrator telephone number.";
            else
            {
                strErr = strErr + "<br />" + "Please enter Director/Administrator telephone number.";
            }
        }

        if (txtApplicationEmail.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter contact email .";
            else
            {
                strErr = strErr + "<br />" + "Please enter contact email.";
            }
        }

        if (txtApplicationNum.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter contact number .";
            else
            {
                strErr = strErr + "<br />" + "Please enter contact number.";
            }
        }

        if (txtschool_Add.Text == "")
        {
            divEMail.Focus();
            tst.InnerHtml = strErr;
            tst.Style.Add("color","red");

        }
        */
        #endregion

        //if ( strErr=="")
        btnSection2_Click(sender, e);
        //else
        //{
        //    lblErrorPnl1.Text = strErr;
        //    divEMail.Focus();
        //    divEMail.Visible = true;
        //}
    }

    protected void btnEducation_Click(object sender, EventArgs e)
    {
        string strErr;
        strErr = "";



        //if (txtOwnInfoHomeAdd.Text == "")
        //{
        //    if (strErr == "")
        //        strErr = "Please enter home address.";
        //    else
        //    {
        //        strErr = strErr + "<br />" + "Please enter home address.";
        //    }
        //}

        //if (txtOwnInfoHomeCity.Text == "")
        //{
        //    if (strErr == "")
        //        strErr = "Please enter city.";
        //    else
        //    {
        //        strErr = strErr + "<br />" + "Please enter city.";
        //    }
        //}

        //if (ddlOwnInfoHome.SelectedValue == "-1")
        //{
        //    if (strErr == "")
        //        strErr = "Please select state.";
        //    else
        //    {
        //        strErr = strErr + "<br />" + "Please select state.";
        //    }
        //}

        //if (txtOwnInfozip.Text == "")
        //{
        //    if (strErr == "")
        //        strErr = "Please enter zip.";
        //    else
        //    {
        //        strErr = strErr + "<br />" + "Please enter zip.";
        //    }
        //}

        if (strErr == "")
            btnSection2_Click(sender, e);
        else
        {
            lblOwnInfoError.Text = strErr;
            divOwnInfoPOPup.Focus();
            divOwnInfoPOPup.Visible = true;
        }

    }
    protected void lnkCancelPD_Click(object sender, EventArgs e)
    {
        //this.EditIndex = -1;
        //BindGrid();
    }

    #endregion

    #region Child Support Information

    protected void lnkCancelCSD_Click(object sender, EventArgs e)
    {

    }

    //protected void btnChildSupp_Click(object sender, EventArgs e)
    //{
    //    btnSection3_Click(sender, e);
    //}

    #endregion

    #region Licnsure Info

    #region Page Event Handlers

    protected void lnkCancelLiceInfo_Click(object sender, EventArgs e)
    {

    }

    //protected void btnLicNextInfo_Click(object sender, EventArgs e)
    //{
    //    btnSection4_Click(sender, e);
    //}

    #endregion

    #endregion


    #region Education

    #region Page Event Handlers

    protected void lnkCancelNextMassageTraning_Click(object sender, EventArgs e)
    {

    }

    //protected void btnNextMassageTraning_Click(object sender, EventArgs e)
    //{
    //    btnSection5_Click(sender, e);
    //}

    #endregion

    #endregion

    //protected void btnEducation_Click(object sender, EventArgs e)
    //{
    //    btnSection6_Click(sender, e);
    //}

    protected void lnkExamInfoCancel_Click(object sender, EventArgs e)
    {

    }
    #region Verify Address

    #region Home Address

    public void fillverifyresidenceaddress()
    {
        //txtStreetResEdit.Text = AddressHelper.GetFormatedPOBOx(txtStreetResEdit.Text);
        //txtStreet2ResEdit.Text = AddressHelper.GetFormatedPOBOx(txtStreet2ResEdit.Text);

        //lblUHomeStreet1.Text = txtStreetResEdit.Text;
        //lblUHomeStreet2.Text = txtStreet2ResEdit.Text;
        //lblUHomeCity.Text = txtCityResEdit.Text;
        //lblUHomeState.Text = ddlStateResEdit.SelectedItem.Text;
        //lblUHomeZip.Text = txtZipResEdit.Text;
        //components objComponenets = GNF.APIAddressValidation.ValidateAddress(txtStreetResEdit.Text, txtStreet2ResEdit.Text, txtCityResEdit.Text, ddlStateResEdit.SelectedItem.Text, txtZipResEdit.Text);
        //if (objComponenets != null)
        //{
        //    lblVHomeStreet1.Text = objComponenets.street1;
        //    lblVHomeStreet2.Text = objComponenets.street2;
        //    lblVHomeCity.Text = objComponenets.city_name;
        //    lblVHomeState.Text = objComponenets.state_abbreviation;
        //    lblVHomeZip.Text = objComponenets.zipcode;
        //    btnVerifyHomeAddressNo.Enabled = true;
        //    divNotVerifiedAdd.Visible = true;
        //    lblUnverifiedAdd.Text = "";
        //}
        //else
        //{
        //    btnVerifyHomeAddressNo.Enabled = false;
        //    divNotVerifiedAdd.Visible = false;
        //    lblUnverifiedAdd.Text = "This is not a verified address.";
        //}
    }
    protected void btnVerifyHomeAddress_Click(object sender, EventArgs e)
    {
        //divVerifyHomeAddressBtn.Visible = false;
        //divVerifyHomeAddressPnl.Visible = true;
        //lblVHomeStreet1.Text = "";
        //lblVHomeStreet2.Text = "";
        //lblVHomeCity.Text = "";
        //lblVHomeState.Text = "";
        //lblVHomeZip.Text = "";
        fillverifyresidenceaddress();
    }
    protected void btnVerifyHomeAddressYes_Click(object sender, EventArgs e)
    {
        ////divVerifyHomeAddressBtn.Visible = true;
        //divVerifyHomeAddressPnl.Visible = false;
    }
    protected void btnVerifyHomeAddressNo_Click(object sender, EventArgs e)
    {
        //divVerifyHomeAddressBtn.Visible = true;
        //divVerifyHomeAddressPnl.Visible = false;
        //txtStreetResEdit.Text = lblVHomeStreet1.Text;
        //txtStreet2ResEdit.Text = lblVHomeStreet2.Text;
        //txtCityResEdit.Text = lblVHomeCity.Text;
        //ddlStateResEdit.SelectedValue = lblVHomeState.Text;
        //txtZipResEdit.Text = lblVHomeZip.Text;
    }

    #endregion

    //#region Mailing Address

    //public void fillverifyMailingaddress()
    //{
    //    //txtStreetMailEdit.Text = AddressHelper.GetFormatedPOBOx(txtStreetMailEdit.Text);
    //    //txtStreet2MailEdit.Text = AddressHelper.GetFormatedPOBOx(txtStreet2MailEdit.Text);

    //    //lblUMailingStreet1.Text = txtStreetMailEdit.Text;
    //    //lblUMailingStreet2.Text = txtStreet2MailEdit.Text;
    //    //lblUMailingCity.Text = txtCityMailEdit.Text;
    //    //lblUMailingState.Text = ddlStateMailEdit.SelectedItem.Text;
    //    //lblUMailingZip.Text = txtZipMailEdit.Text;
    //    //components objComponenets = GNF.APIAddressValidation.ValidateAddress(txtStreetMailEdit.Text, txtStreet2MailEdit.Text, txtCityMailEdit.Text, ddlStateMailEdit.SelectedItem.Text, txtZipMailEdit.Text);
    //    //if (objComponenets != null)
    //    //{
    //    //    lblVMailingStreet1.Text = objComponenets.street1;
    //    //    lblVMailingStreet2.Text = objComponenets.street2;
    //    //    lblVMailingCity.Text = objComponenets.city_name;
    //    //    lblVMailingState.Text = objComponenets.state_abbreviation;
    //    //    lblVMailingZip.Text = objComponenets.zipcode;
    //    //    btnVerifyMailingAddressNo.Enabled = true;
    //    //    divNotVerifiedMailingAdd.Visible = true;
    //    //    lblUnverifiedMailingAdd.Text = "";
    //    //}
    //    //else
    //    //{
    //    //    btnVerifyMailingAddressNo.Enabled = false;
    //    //    divNotVerifiedMailingAdd.Visible = false;
    //    //    lblUnverifiedMailingAdd.Text = "This is not a verified address.";
    //    //}
    //}
    //protected void btnVerifyMailingAddress_Click(object sender, EventArgs e)
    //{
    //    //divVerifyMailingAddressBtn.Visible = false;
    //    //divVerifyMailingAddressPnl.Visible = true;
    //    //lblVMailingStreet1.Text = "";
    //    //lblVMailingStreet2.Text = "";
    //    //lblVMailingCity.Text = "";
    //    //lblVMailingState.Text = "";
    //    //lblVMailingZip.Text = "";
    //    fillverifyMailingaddress();
    //}
    //protected void btnVerifyMailingAddressYes_Click(object sender, EventArgs e)
    //{
    //    //divVerifyMailingAddressBtn.Visible = true;
    //    //divVerifyMailingAddressPnl.Visible = false;
    //}
    //protected void btnVerifyMailingAddressNo_Click(object sender, EventArgs e)
    //{
    //    //divVerifyMailingAddressBtn.Visible = true;
    //    //divVerifyMailingAddressPnl.Visible = false;
    //    //txtStreetMailEdit.Text = lblVMailingStreet1.Text;
    //    //txtStreet2MailEdit.Text = lblVMailingStreet2.Text;
    //    //txtCityMailEdit.Text = lblVMailingCity.Text;
    //    //ddlStateMailEdit.SelectedValue = lblVMailingState.Text;
    //    //txtZipMailEdit.Text = lblVMailingZip.Text;
    //}
    //#endregion

    #endregion
    protected void btnAddDoc_Click(object sender, EventArgs e)
    {
        //pnlGridDocument.Visible = true;

    }

    #endregion

    #region Section CharacterReferences

    #region Page Event Handler

    //protected void btnNextCharacterReferences_Click(object sender, EventArgs e)
    //{
    //    btnSection7_Click(sender, e);
    //}
    protected void lnkCancleNextCharacterReferences_Click(object sender, EventArgs e)
    {
        string strErr = "";

        if ((rblHistoryQ1.SelectedValue == "1") || (rblHistoryQ1.SelectedValue == "0"))
        {

            strErr = "Add";



        }

    }

    #endregion

    #endregion

    #region Application Screening Question

    //protected void btnNextSection7_Click(object sender, EventArgs e)
    //{
    //    btnPayment_Click(sender, e);
    //}

    protected void lnkCalcelSection7_Click(object sender, EventArgs e)
    {
        dvErrorAdminiInformation.Visible = false;
    }

    #endregion

    #region Checklist

    //protected void btnNextSaveChecklist_Click(object sender, EventArgs e)
    //{
    //    btnChecklist_Click(sender, e);
    //}
    protected void lnkCancelChecklist_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Menu Navigation Links Of Certification Application

    protected void lnkInstruction_Click(object sender, EventArgs e)
    {
        //pnlChecklist.Visible = false;
        //pnlApplicatinInstructions.Visible = true;
        //pnlPayment.Visible = false;
        //pnlSection1.Visible = false;
        //pnlSection2.Visible = false;
        //pnlSection3.Visible = false;
        //pnlSection4.Visible = false;
        //pnlSection5.Visible = false;
        //pnlAdministrator_Work_Experience.Visible = false;
        //pnlSection6.Visible = false;
        //pnlSection7.Visible = false;

        DisplayPanel(pnlApplicatinInstructions);
        MakeActiveLi(liApplicatinInstructions);//

    }

    protected void btnPayment_Click(object sender, EventArgs e)
    {
        //pnlChecklist.Visible = false;
        //pnlPayment.Visible = true;
        //pnlApplicatinInstructions.Visible = false;
        //pnlSection1.Visible = false;
        //pnlSection2.Visible = false;
        //pnlSection3.Visible = false;
        //pnlSection4.Visible = false;
        //pnlSection5.Visible = false;
        //pnlSection6.Visible = false;
        //pnlSection7.Visible = false;
        //pnlAdministrator_Work_Experience.Visible = false;

        DisplayPanel(pnlPayment);
        MakeActiveLi(liPayment);

    }

    protected void btnStaffInformation_Click(object sender, EventArgs e)
    {
        //pnlChecklist.Visible = false;
        //pnlPayment.Visible = true;
        //pnlApplicatinInstructions.Visible = false;
        //pnlSection1.Visible = false;
        //pnlSection2.Visible = false;
        //pnlSection3.Visible = false;
        //pnlSection4.Visible = false;
        //pnlSection5.Visible = false;
        //pnlSection6.Visible = false;
        //pnlSection7.Visible = false;
        //pnlAdministrator_Work_Experience.Visible = false;

        DisplayPanel(pnlStaffInfo);
        MakeActiveLi(liStaffInformation);

    }

    protected void btnAdminExp_Click(object sender, EventArgs e)
    {
        //pnlChecklist.Visible = false;
        //pnlAdministrator_Work_Experience.Visible = true;
        //pnlPayment.Visible = false;
        //pnlApplicatinInstructions.Visible = false;
        //pnlSection1.Visible = false;
        //pnlSection2.Visible = false;
        //pnlSection3.Visible = false;
        //pnlSection4.Visible = false;
        //pnlSection5.Visible = false;
        //pnlSection6.Visible = false;
        //pnlSection7.Visible = false;

        DisplayPanel(pnlAdministrator_Work_Experience);
        MakeActiveLi(li_Administrator_Work_Experience);

    }

    protected void btnChecklist_Click(object sender, EventArgs e)
    {

        //pnlChecklist.Visible = true;
        //pnlPayment.Visible = false;
        //pnlApplicatinInstructions.Visible = false;
        //pnlSection1.Visible = false;
        //pnlSection2.Visible = false;
        //pnlSection3.Visible = false;
        //pnlSection4.Visible = false;
        //pnlSection5.Visible = false;
        //pnlAdministrator_Work_Experience.Visible = false;
        //pnlSection6.Visible = false;
        //pnlSection7.Visible = false;

        DisplayPanel(pnlStaffInfo);
        MakeActiveLi(liStaffInformation);
    }

    //Added by Prem Singh


    protected void btnAddPreviousSchool_Click(object sender, EventArgs e)
    {
        if (txtSclInfoPrevSclName.Text != "")
        {
            if (txtnamechange.Text != "")
            {
                int actionType = 0;
                if (btnSclInfoAdd.Text == "Update")
                    actionType = 1;
                PreviousSchoolRQ rQ = new PreviousSchoolRQ()
                {
                    ApplicationId = UIHelper.GetApplicationId(),
                    IndividualId = UIHelper.UserIDBySession(),
                    ProviderName = txtSclInfoPrevSclName.Text,
                    DateofNameChange = Convert.ToDateTime(txtnamechange.Text),
                    ProviderNameStatusId = 1,
                    ProviderNameTypeId = 1,
                    ReferenceNumber = "",
                    CreatedBy = UIHelper.UserIDBySession(),
                    CreatedOn = DateTime.Now,
                    ProviderNameGuid = "Guid",
                    ActionType = actionType
                };
                string WebAPIUrl = webAPIURL + "Provider/AddPreviousSchoolInSchoolInformation";
                Object obj;
                CallWebAPI<PreviousSchoolRS>(WebAPIUrl, rQ, out obj);
                var res = (PreviousSchoolRS)obj;
                if (res.Status)
                {
                    txtSclInfoPrevSclName.Text = "";
                    txtnamechange.Text = "";

                    //TODO: Reload Grid
                    GVSclInfoPrevScl.DataSource = res.ListOfPreviousSchool;
                    GVSclInfoPrevScl.DataBind();

                }
            }
        }

    }

    public void CallMethodToCheckInitialTabActive()
    {
        ActiveMenuRQ rQ = new ActiveMenuRQ() { ProviderId = UIHelper.UserIDBySession(), ApplicationId = UIHelper.GetApplicationId(), ActiveTabToCheck = 1 };
        string WebAPIUrl = webAPIURL + "Provider/CheckInitialTabActive";
        Object obj;
        CallWebAPI<ActiveMenuRS>(WebAPIUrl, rQ, out obj);
        var res = (ActiveMenuRS)obj;
        if (res.Status)
        {
            imgbtnInstruction.ImageUrl = "~/App_Themes/Theme1/images/check_icon.png";
            rblQuestionEdit1.SelectedValue = "1";
            DisplayPanel(pnlSection1);
            MakeActiveLi(liMassageTherapistApplication);
        }
    }

    public void CallWebAPI<T>(string ApiUrl, object input, out object outputObj)
    {

        var httpWebRequest = (HttpWebRequest)WebRequest.Create(ApiUrl);
        httpWebRequest.ContentType = "application/json";
        httpWebRequest.Method = "POST";

        using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
        {
            string json = new JavaScriptSerializer().Serialize(input);

            streamWriter.Write(json);
            streamWriter.Flush();
            streamWriter.Close();

            var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
            using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
            {
                outputObj = JsonConvert.DeserializeObject<T>(streamReader.ReadToEnd());
            }
        }

    }

    public void BindGridPreviousSchools()
    {
        ProviderInformationRQ rQ = new ProviderInformationRQ() { ApplicationId = UIHelper.GetApplicationId(), ProviderId = UIHelper.GetProviderId() };
        string WebAPIUrl = webAPIURL + "Provider/GetAllSchoolInformationDetails";
        Object obj;
        CallWebAPI<PreviousSchoolRS>(WebAPIUrl, rQ, out obj);
        var res = (PreviousSchoolRS)obj;
        if (res.Status)
        {
            //This is Previous School Grid 
            GVSclInfoPrevScl.EditIndex = this.EditIndexInstQualSectionA1;
            GVSclInfoPrevScl.DataSource = res.ListOfPreviousSchool;
            GVSclInfoPrevScl.DataBind();

            //This is Previous School Address Grid to be populated
            gvSchoolInfoPrevious.EditIndex = this.EditIndexInstQualSectionA1;
            gvSchoolInfoPrevious.DataSource = res.ListOfPreviousAddress;
            gvSchoolInfoPrevious.DataBind();

            //This is Satlite Address
            gvSatelliteLocation.EditIndex = this.EditIndexInstQualSectionA1;
            gvSatelliteLocation.DataSource = res.ListOfSatliteSchool;
            gvSatelliteLocation.DataBind();

            ProviderInformationRQ myResponse = new ProviderInformationRQ();

            txtSchoolTel.Text = myResponse.SchoolTelephone;
            CheckBox57.Checked = myResponse.IsSchoolTelephoneMobile;
            txtschoolwebsite.Text = myResponse.SchoolWebsite;
            txtSchoolStreet.Text = myResponse.SchoolAddressStreet1;
            txtschool_Add.Text = myResponse.SchoolAddressStreet2;

            txtCityResEdit.Text = myResponse.SchoolAddressCity;
            ddlStateResEdit.SelectedValue = myResponse.SchoolAddressState;
            txtZipResEdit.Text = myResponse.SchoolAddressZip;
            //rQ.SchoolAddressIsVerifiedClicked = true;//TODO Need to check and update
            //rQ.SchoolAddressIsNotVerifiedClicked = false;
            txtMailingAdd.Text = myResponse.MailingAddressStreet1;
            TextBox140.Text = myResponse.MailingAddressStreet2;
            txtMailingCity.Text = myResponse.MailingAddressCity;
            ddlMailingState.SelectedValue = myResponse.MailingAddressState;
            txtMailngZip.Text = myResponse.MailingAddressZip;
            // rQ.MailingAddressIsVerifiedClicked = true;//TODO Need to check and update
            //rQ.MailingAddressIsNotVerifiedClicked = false;
            txtDirFirstName.Text = myResponse.DirectorFirstName;
            txtDirLastName.Text = myResponse.DirectorLastName;
            txtDirectorEmail.Text = myResponse.DirectorAdministratorEmail;
            txtSclInfoJobTitle.Text = myResponse.DirectorJobTitle;
            txtSclInfoPriNumber.Text = myResponse.DirectorPrimaryNumber;
            chkSclInfoPriNum.Checked = myResponse.DirectorPrimaryNumberIsMobile;
            chktxtSclInfo.Checked = myResponse.DirectorSecondaryNumberIsMobile;
            txtSclInfoSecNumber.Text = myResponse.DirectorSecondaryNumber;
            TextBox64.Text = myResponse.ContactNameLastName;
            txtApplicationEmail.Text = myResponse.ContactNameAdministratorEmail;
            txtSchInfoSecJobtitle.Text = myResponse.ContactNameJobTitle;
            txtApplicationNum.Text = myResponse.ContactNamePrimaryNumber;
            CheckBox17.Checked = myResponse.ContactNamePrimaryNumberIsMobile;
            TextBox143.Text = myResponse.ContactNameSecondaryNumber;
            CheckBox18.Checked = myResponse.ContactNameSecondaryNumberIsMobile;
        }

    }

    //Modified by Prem Singh

    //protected void GVSclInfoPrevScl_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    //{
    //    GVSclInfoPrevScl.EditIndex = -1;


    //}
    //protected void GVSclInfoPrevScl_RowEditing(object sender, GridViewEditEventArgs e)
    //{

    //    GVSclInfoPrevScl.EditIndex = e.NewEditIndex;

    //}
    //protected void GVSclInfoPrevScl_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{
    //}

    //protected void imgbtnOtherProgramNameEdit_Click(object sender, EventArgs e)
    //{


    //}

    protected void GVSclInfoPrevScl_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string strProviderNameId = null;
        if (e.CommandName.ToLower() == "editprevschool")
        {

            strProviderNameId = Convert.ToString(e.CommandArgument);
            //GVSclInfoPrevScl.Columns[0].Visible = true;
            GridViewRow gvRow = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            int rowIndex = gvRow.RowIndex;
            //Determine the RowIndex of the Row whose Button was clicked.
            // int rowIndex = Convert.ToInt32(e.CommandArgument);

            //Reference the GridView Row.
            GridViewRow row = GVSclInfoPrevScl.Rows[rowIndex];
            string name = ((row.Cells[0].Controls[0] as DataBoundLiteralControl).Text).Trim(new Char[] { ' ', '\r', '\n' });
            string nameChangeDate = ((row.Cells[1].Controls[0] as DataBoundLiteralControl).Text).Trim(new Char[] { ' ', '\r', '\n' });


            txtSclInfoPrevSclName.Text = name/* 2 */;
            txtnamechange.Text = nameChangeDate;
            btnSclInfoAdd.Text = "Update";
            //txtnamechange.Text = grid.SelectedRow.Cells[1].Text /* Ravi */;

        }
        else if (e.CommandName.ToLower() == "deleteprevschool")
        {
            strProviderNameId = Convert.ToString(e.CommandArgument);
            PreviousSchoolRQ rQ = new PreviousSchoolRQ()
            {
                ProviderNameId = Convert.ToInt32(strProviderNameId),
                ApplicationId = UIHelper.GetApplicationId()
            };
            string WebAPIUrl = webAPIURL + "Provider/DeletePreviousSchoolInSchoolInformation";
            Object obj;
            CallWebAPI<PreviousSchoolRS>(WebAPIUrl, rQ, out obj);
            var res = (PreviousSchoolRS)obj;
            if (res.Status)
            {
                txtSclInfoPrevSclName.Text = "";
                txtnamechange.Text = "";

                //TODO: Reload Grid
                GVSclInfoPrevScl.DataSource = res.ListOfPreviousSchool;
                GVSclInfoPrevScl.DataBind();

            }
        }
    }



    protected void btnMassageTherapistApplication_Click(object sender, EventArgs e)
    {
        ProviderInstructionsRQ rQ = new ProviderInstructionsRQ()
        {
            ProviderId = UIHelper.ProviderIdFromSession(),
            ApplicationId = UIHelper.ApplicationIdFromSession(),
            ContentItemLkId = 1,
            
            
            #region NotRequiredFields

            //ContentItemLkCode = "Code",
            //ReferenceNumber = "",
            //InstructionsAcceptanceDate = DateTime.Now.Date,
            //IsActive = true,
            //IsDeleted = false,
            //CreatedBy = UIHelper.GetProviderUserIdFromSession(),
            //CreatedOn = DateTime.Now,
            //ModifiedBy = 1,
            //ModifiedOn = DateTime.Now,

            #endregion

            InstructionsAcceptedBy = UIHelper.GetProviderUserIdFromSession(),            
            ProviderInstructionsGuid =Guid.NewGuid().ToString(),
            ProviderInstructionsId = 1
        };

        string WebAPIUrl = webAPIURL + "Provider/SaveButtonOfInstructions";
        Object obj;
        CallWebAPI<ProviderLoginRS>(WebAPIUrl, rQ, out obj);
        var res = (ProviderLoginRS)obj;
        if (res.Status)
        {
            //TODO
            //Make Tick mark appear for the instruction tab 
            imgbtnInstruction.ImageUrl = "~/App_Themes/Theme1/images/check_icon.png";
            DisplayPanel(pnlSection1);
            MakeActiveLi(liMassageTherapistApplication);
        }
    }

    protected void btnSchoolInfoPreviousAddNewSave_Click(object sender, EventArgs e)
    {
        if (txtPreviousAdd.Text != "")
        {
            if (txtPreviousCity.Text != "")
            {
                AddressRQ rQ = new AddressRQ() { AddressId = 0, Addressee = null, StreetLine1 = txtPreviousAdd.Text, AddressTypeId = "6", StreetLine2 = TextBox16.Text, City = txtPreviousCity.Text, StateCode = ddlPreviousAddState.SelectedValue, Zip = txtPreviousAddzip.Text, CountyId = null, IsActive = true, DateValidated = null, UseUserAddress = true, UseVerifiedAddress = false, IsDeleted = false, CreatedBy = UIHelper.UserIDBySession(), CreatedOn = DateTime.Now, AddressGuid = "", Authenticator = "", ProviderId = UIHelper.GetProviderId(), BeginDate = DateTime.Now, EndDate = DateTime.Now, IsMailingSameasPhysical = false, ProviderAddressGuid = "Guid", ProviderName = "Name", ProviderNameGuid = "Guid" };
                string WebAPIUrl = webAPIURL + "Provider/SaveAddressRequestFromSchoolInformationTab";
                Object obj;
                CallWebAPI<AddressRS>(WebAPIUrl, rQ, out obj);
                var res = (AddressRS)obj;
                if (res.Status)
                {
                    //TODO: Reload Grid for Previous School Address
                    gvSchoolInfoPrevious.DataSource = res.ListOfPreviousAddress;
                    gvSchoolInfoPrevious.DataBind();


                    txtPreviousAdd.Text = "";
                    TextBox16.Text = "";
                    txtPreviousAddzip.Text = "";
                    txtPreviousAddzip.Text = "";
                    txtDateOfAddChange.Text = "";
                    ddlPreviousAddState.SelectedValue = "1";
                }
            }
        }

        divAddbtnSchoolInfoPrevious.Visible = true;
        divAddSchoolInfoPrevious.Visible = false;
    }

    protected void btnSatelliteLocationAddNewSave_Click(object sender, EventArgs e)
    {
        if (txtSatelliteLoc.Text != "")
        {
            if (txtSatelliteCity.Text != "")
            {
                AddressRQ rQ = new AddressRQ() { AddressId = 0, StreetLine1 = txtSatelliteLoc.Text, StreetLine2 = TextBox144.Text, City = txtSatelliteCity.Text, StateCode = ddlSatelliteState.SelectedValue, Zip = txtSatelliteZip.Text, DateValidated = DateTime.Now, UseUserAddress = true, UseVerifiedAddress = false, CreatedBy = UIHelper.UserIDBySession(), CreatedOn = DateTime.Now, ProviderId = UIHelper.GetProviderId(), AddressTypeId = "4", IsMailingSameasPhysical = false };
                string WebAPIUrl = webAPIURL + "Provider/SaveAddressRequestFromSchoolInformationTab";
                Object obj;
                CallWebAPI<AddressRS>(WebAPIUrl, rQ, out obj);
                var res = (AddressRS)obj;
                if (res.Status)
                {
                    txtSatelliteLoc.Text = "";
                    TextBox144.Text = "";
                    txtSatelliteCity.Text = "";
                    txtSatelliteZip.Text = "";
                    ddlSatelliteState.SelectedValue = "1";

                    //TODO: Reload Grid for Satlite School Address
                    gvSatelliteLocation.DataSource = res.ListOfPreviousAddress;
                    gvSatelliteLocation.DataBind();
                }
            }
        }

        divAddbtnSatelliteLocation.Visible = true;
        divAddSatelliteLocation.Visible = false;
    }

    protected void btnSection2_Click(object sender, EventArgs e)
    {

        ProviderInformationRQ rQ = new ProviderInformationRQ();
        rQ.SchoolTelephone = txtSchoolTel.Text;
        rQ.IsSchoolTelephoneMobile = CheckBox57.Checked;
        rQ.SchoolWebsite = txtschoolwebsite.Text;
        rQ.SchoolAddressStreet1 = txtSchoolStreet.Text;
        rQ.SchoolAddressStreet2 = txtschool_Add.Text;

        rQ.SchoolAddressCity = txtCityResEdit.Text;
        rQ.SchoolAddressState = ddlStateResEdit.SelectedValue;
        rQ.SchoolAddressZip = txtZipResEdit.Text;
        rQ.SchoolAddressIsVerifiedClicked = true;//TODO Need to check and update
        rQ.SchoolAddressIsNotVerifiedClicked = false;
        rQ.MailingAddressStreet1 = txtMailingAdd.Text;
        rQ.MailingAddressStreet2 = TextBox140.Text;
        rQ.MailingAddressCity = txtMailingCity.Text;
        rQ.MailingAddressState = ddlMailingState.SelectedValue;
        rQ.MailingAddressZip = txtMailngZip.Text;
        rQ.MailingAddressIsVerifiedClicked = true;//TODO Need to check and update
        rQ.MailingAddressIsNotVerifiedClicked = false;
        rQ.DirectorFirstName = txtDirFirstName.Text;
        rQ.DirectorLastName = txtDirLastName.Text;
        rQ.DirectorAdministratorEmail = txtDirectorEmail.Text;
        rQ.DirectorJobTitle = txtSclInfoJobTitle.Text;
        rQ.DirectorPrimaryNumber = txtSclInfoPriNumber.Text;
        rQ.DirectorPrimaryNumberIsMobile = false; //TODO check if checked and update true or false -- chkSclInfoPriNum
        rQ.DirectorSecondaryNumber = txtSclInfoSecNumber.Text;
        rQ.DirectorSecondaryNumberIsMobile = false; //TODO check if checked and update true or false -- chktxtSclInfo

        rQ.ContactNameFirstName = TextBox62.Text;
        rQ.ContactNameLastName = TextBox64.Text;
        rQ.ContactNameAdministratorEmail = txtApplicationEmail.Text;
        rQ.ContactNameJobTitle = txtSchInfoSecJobtitle.Text;
        rQ.ContactNamePrimaryNumber = txtApplicationNum.Text;
        rQ.ContactNamePrimaryNumberIsMobile = false; //TODO check if checked and update true or false -- CheckBox17
        rQ.ContactNameSecondaryNumber = TextBox143.Text;
        rQ.ContactNameSecondaryNumberIsMobile = false; //TODO check if checked and update true or false -- CheckBox18
        rQ.CreatedBy = UIHelper.UserIDBySession();
        rQ.ProviderId = UIHelper.GetProviderId();
        rQ.IndividualId = UIHelper.GetIndividualId();
        rQ.ApplicationId = UIHelper.GetApplicationId();

        string WebAPIUrl = webAPIURL + "Provider/SaveSchoolInformation";
        Object obj;
        CallWebAPI<PreviousSchoolRS>(WebAPIUrl, rQ, out obj);
        var res = (PreviousSchoolRS)obj;
        if (res.Status)
        {
            txtSatelliteLoc.Text = "";
            TextBox144.Text = "";
            txtSatelliteCity.Text = "";
            txtSatelliteZip.Text = "";
            imgMassageTherapistApplication.ImageUrl = "~/App_Themes/Theme1/images/check_icon.png";
            DisplayPanel(pnlSection2);
            MakeActiveLi(liSection2);
        }
    }




    protected void btnSection3_Click(object sender, EventArgs e)
    {
        //pnlChecklist.Visible = false;
        //pnlPayment.Visible = false;
        //pnlApplicatinInstructions.Visible = false;
        //pnlSection1.Visible = false;
        //pnlSection2.Visible = false;
        //pnlSection3.Visible = true;
        //pnlSection4.Visible = false;
        //pnlSection5.Visible = false;
        //pnlAdministrator_Work_Experience.Visible = false;
        //pnlSection6.Visible = false;
        //pnlSection7.Visible = false;

        DisplayPanel(pnlSection3);
        MakeActiveLi(liSection3);//
    }

    protected void btnSection4_Click(object sender, EventArgs e)
    {
        //pnlChecklist.Visible = false;
        //pnlApplicatinInstructions.Visible = false;
        //pnlSection1.Visible = false;
        //pnlSection2.Visible = false;
        //pnlSection3.Visible = false;
        //pnlSection4.Visible = true;
        //pnlSection5.Visible = false;
        //pnlAdministrator_Work_Experience.Visible = false;
        //pnlSection6.Visible = false;
        //pnlSection7.Visible = false;
        string sessionValue = Session["sUserLoginInfo"].ToString();

        if (sessionValue == "SchoolContact")
        {
            DisplayPanel(PnlTransChecklist);
            MakeActiveLi(li_Transcript_Checklist);
        }

        else
        {
            DisplayPanel(PnlBackChecklist);
            MakeActiveLi(li_Background_Checklist);//
        }

    }

    protected void btnSection5_Click(object sender, EventArgs e)
    {


        //pnlChecklist.Visible = false;
        //pnlApplicatinInstructions.Visible = false;
        //pnlSection1.Visible = false;
        //pnlSection2.Visible = false;
        //pnlSection3.Visible = false;
        //pnlSection4.Visible = false;
        //pnlSection5.Visible = true;
        //pnlAdministrator_Work_Experience.Visible = false;
        //pnlSection6.Visible = false;
        //pnlSection7.Visible = false;

        DisplayPanel(pnlSection5);
        MakeActiveLi(liSection5);//
    }

    protected void btnSection6_Click(object sender, EventArgs e)
    {
        //pnlChecklist.Visible = false;
        //pnlApplicatinInstructions.Visible = false;
        //pnlSection1.Visible = false;
        //pnlSection2.Visible = false;
        //pnlSection3.Visible = false;
        //pnlSection4.Visible = false;
        //pnlSection5.Visible = false;
        //pnlAdministrator_Work_Experience.Visible = false;
        //pnlSection6.Visible = true;
        //pnlSection7.Visible = false;

        DisplayPanel(pnlSection6);
        MakeActiveLi(liSection6);//
    }

    protected void btnSection7_Click(object sender, EventArgs e)
    {
        //pnlChecklist.Visible = false;
        //pnlPayment.Visible = false;
        //pnlApplicatinInstructions.Visible = false;
        //pnlSection1.Visible = false;
        //pnlSection2.Visible = false;
        //pnlSection3.Visible = false;
        //pnlSection4.Visible = false;
        //pnlSection5.Visible = false;
        //pnlAdministrator_Work_Experience.Visible = false;
        //pnlSection6.Visible = false;
        //pnlSection7.Visible = true;

        DisplayPanel(pnlSection7);
        MakeActiveLi(liSection7);//
    }


    protected void btnAdminDec_Click(object sender, EventArgs e)
    {
        DisplayPanel(PnlAdminDeclaration);
        MakeActiveLi(li_Administrator_Declaration);
    }

    protected void btnBackCheck_Click(object sender, EventArgs e)
    {
        string sessionValue = Session["sUserLoginInfo"].ToString();
        string AOSValue = "";
        if (Request.QueryString.Count > 0)
            AOSValue = Request.QueryString["AOS"].ToString();

        if (sessionValue == "SchoolContact" && AOSValue == "")
        {
            DisplayPanel(PnlBackChecklist);
            MakeActiveLi(liSchoolContactStaff);
        }

        else if (Session["sUserLoginEmail"].ToString() == "schoolpubinst@inlumon.com")
        {
            DisplayPanel(pnlschoolpubinstStaff);
            MakeActiveLi(lischoolpubinstStaff);
        }
        else
        {
            DisplayPanel(PnlBackChecklist);
            MakeActiveLi(li_Background_Checklist);
        }


    }

    protected void btnCorrectiveAction_Click(object sender, EventArgs e)
    {
        DisplayPanel(pnlCorrectiveAction);
        MakeActiveLi(liCorrectiveAction);
    }
    protected void btnschoolpubinstStaff_Click(object sender, EventArgs e)
    {
        string sessionValue = Session["sUserLoginInfo"].ToString();
        string AOSValue = "";
        if (Request.QueryString.Count > 0)
            AOSValue = Request.QueryString["AOS"].ToString();

        if (Session["sUserLoginEmail"].ToString() == "schoolpubinst@inlumon.com")
        {
            DisplayPanel(pnlschoolpubinstStaff);
            MakeActiveLi(lischoolpubinstStaff);
        }

        else
        {
            DisplayPanel(PnlBackChecklist);
            MakeActiveLi(li_Background_Checklist);
        }


    }


    protected void btnTransCheck_Click(object sender, EventArgs e)
    {
        DisplayPanel(PnlTransChecklist);
        MakeActiveLi(li_Transcript_Checklist);
    }

    protected void btnEnrollAgreeCheck_Click(object sender, EventArgs e)
    {
        DisplayPanel(PnlEnrollAgrChecklist);
        MakeActiveLi(li_Enrollment_Agreement_Checklist);
    }

    protected void btnCourCataCheck_Click(object sender, EventArgs e)
    {
        DisplayPanel(PnlCoCatChecklist);
        MakeActiveLi(li_Course_Catalog_Checklist);
    }

    protected void btnProgHourReqWork_Click(object sender, EventArgs e)
    {
        DisplayPanel(PnlProHoReqWorksheet);
        MakeActiveLi(li_Program_Hour_Requirement_Worksheet);
    }

    protected void btnSchFacList_Click(object sender, EventArgs e)
    {
        string sessionValue = Session["sUserLoginInfo"].ToString();
        if (sessionValue == "SchoolContact" && Session["sUserLoginEmail"].ToString() == "schoolpubinst@inlumon.com")
        {
            DisplayPanel(pnlschoolpubinstStaff);
            MakeActiveLi(lischoolpubinstStaff);
        }
        else if (sessionValue == "SchoolContact")
        {
            DisplayPanel(PnlBackChecklist);
            MakeActiveLi(liSchoolContactStaff);//
        }
        else
        {
            DisplayPanel(pnlPayment);
            MakeActiveLi(liPayment);
        }


    }

    protected void btnInstQual_Click(object sender, EventArgs e)
    {
        DisplayPanel(PnlInstruQualifica);
        MakeActiveLi(li_Instructor_Qualifications);
    }

    protected void btnInstDecl_Click(object sender, EventArgs e)
    {
        DisplayPanel(PnlInstruDeclaration);
        MakeActiveLi(li_Instructor_Declaration);
    }

    protected void btnSchoolReApp_Click(object sender, EventArgs e)
    {
        DisplayPanel(pnlSchoolReApproval);
        MakeActiveLi(li_School_ReApproval);
    }
    protected void btnStudentElgList_Click(object sender, EventArgs e)
    {
        DisplayPanel(pnlStudentEligibilityList);
        MakeActiveLi(li_Student_Eligibility_List);
    }

    public void DisplayPanel(Panel objPanel)
    {
        pnlChecklist.Visible = false;
        pnlPayment.Visible = false;
        pnlApplicatinInstructions.Visible = false;
        pnlSection1.Visible = false;
        pnlSection2.Visible = false;
        pnlSection3.Visible = false;
        pnlSection4.Visible = false;
        pnlSection5.Visible = false;
        pnlAdministrator_Work_Experience.Visible = false;
        pnlSection6.Visible = false;
        pnlSection7.Visible = false;
        pnlSchoolReApproval.Visible = false;
        pnlStudentEligibilityList.Visible = false;

        pnlStaffInfo.Visible = false;

        PnlAdminDeclaration.Visible = false;
        PnlBackChecklist.Visible = false;
        pnlCorrectiveAction.Visible = false;
        PnlTransChecklist.Visible = false;
        PnlEnrollAgrChecklist.Visible = false;
        PnlCoCatChecklist.Visible = false;
        PnlProHoReqWorksheet.Visible = false;
        PnlSchFacuList.Visible = false;
        PnlInstruQualifica.Visible = false;
        PnlInstruDeclaration.Visible = false;

        pnlschoolpubinstStaff.Visible = false;

        objPanel.Visible = true;
    }

    #endregion

    #region Save & Next



    //lnkInstruction_Click
    //    btnMassageTherapistApplication_Click
    //    btnSection2_Click
    //    btnSection3_Click
    //    btnSection4_Click
    //    btnSection5_Click
    //            btnSection6_Click
    //            btnSection7_Click
    //            btnAdminExp_Click
    //            btnAdminDec_Click
    //            btnBackCheck_Click
    //            btnTransCheck_Click
    //            btnEnrollAgreeCheck_Click
    //            btnCourCataCheck_Click
    //            btnProgHourReqWork_Click
    //            btnSchFacList_Click
    //            btnInstQual_Click
    //            btnInstDecl_Click
    //            btnPayment_Click
    //            btnChecklist_Click

    protected void btnApplicationStatus_Click(object sender, EventArgs e)
    {
        btnMassageTherapistApplication_Click(sender, e);
    }

    //protected void btnSavePersonalInfo_Click(object sender, EventArgs e)
    //{
    //    btnSection2_Click(sender, e);
    //}

    protected void btnChildSupp_Click(object sender, EventArgs e)
    {
        btnSection3_Click(sender, e);
    }

    protected void btnLicNextInfo_Click(object sender, EventArgs e)
    {
        btnSection4_Click(sender, e);
    }

    protected void btnNextMassageTraning_Click(object sender, EventArgs e)
    {
        btnSection5_Click(sender, e);
    }



    protected void InfoOK_Click(object sender, EventArgs e)
    {

        //txtPrimaryEmail.Focus();
        divOwnInfoPOPup.Visible = false;

    }

    protected void btnNextCharacterReferences_Click(object sender, EventArgs e)
    {

        string strErr;
        strErr = "";

        if ((rblHistoryQ1.SelectedValue != "0") || (rblHistoryQ1.SelectedValue != "1"))
        {
            if (strErr == "")
                strErr = "Please select a option from condition 1.";
            else
            {
                strErr = strErr + "<br />" + "Please select a option from condition 1.";
            }
        }

        if ((rblHistoryQ2.SelectedValue != "0") || (rblHistoryQ2.SelectedValue != "1"))
        {
            if (strErr == "")
                strErr = "Please select a option from condition 2.";
            else
            {
                strErr = strErr + "<br />" + "Please select a option from condition 2.";
            }
        }

        if ((rblHistoryQ3.SelectedValue != "0") || (rblHistoryQ3.SelectedValue != "1"))
        {
            if (strErr == "")
                strErr = "Please select a option from condition 3.";
            else
            {
                strErr = strErr + "<br />" + "Please select a option from condition 3.";
            }
        }

        if ((rblHistoryQ4.SelectedValue != "0") || (rblHistoryQ4.SelectedValue != "1"))
        {
            if (strErr == "")
                strErr = "Please select a option from condition 4.";
            else
            {
                strErr = strErr + "<br />" + "Please select a option from condition 4.";
            }
        }

        if ((rblHistoryQ5.SelectedValue != "0") || (rblHistoryQ5.SelectedValue != "1"))
        {
            if (strErr == "")
                strErr = "Please select a option from condition 5.";
            else
            {
                strErr = strErr + "<br />" + "Please select a option from condition 5.";
            }
        }

        if ((rblHistoryQ6.SelectedValue != "0") || (rblHistoryQ6.SelectedValue != "1"))
        {
            if (strErr == "")
                strErr = "Please select a option from condition 6.";
            else
            {
                strErr = strErr + "<br />" + "Please select a option from condition 6.";
            }
        }
        if (strErr == "")
            btnSection7_Click(sender, e);
        else
        {
            lblOwnDecerror.Text = strErr;
            divOwnDeclartion.Focus();
            divOwnDeclartion.Visible = true;
        }

    }

    protected void btnNextSection7_Click(object sender, EventArgs e)
    {
        string strErrorAdminiInformation;
        strErrorAdminiInformation = "";

        if (txtAdminInfoLastName.Text == "")
        {
            strErrorAdminiInformation = "Please enter Last Name.";
        }


        if (txtAdminInfoFirstName.Text == "")
        {
            if (strErrorAdminiInformation == "")
                strErrorAdminiInformation = "Please enter First Name.";
            else
            {
                strErrorAdminiInformation = strErrorAdminiInformation + "<br />" + "Please enter First Name.";
            }
        }


        if (txtAdminInfoEmail.Text == "")
        {
            if (strErrorAdminiInformation == "")
                strErrorAdminiInformation = "Please enter Email.";
            else
            {
                strErrorAdminiInformation = strErrorAdminiInformation + "<br />" + "Please enter Email.";
            }
        }


        if (txtAdminInfoHomeAddress.Text == "")
        {
            if (strErrorAdminiInformation == "")
                strErrorAdminiInformation = "Please enter Home Address.";
            else
            {
                strErrorAdminiInformation = strErrorAdminiInformation + "<br />" + "Please enter Home Address.";
            }
        }


        if (txtAdminInfoCity.Text == "")
        {
            if (strErrorAdminiInformation == "")
                strErrorAdminiInformation = "Please enter City.";
            else
            {
                strErrorAdminiInformation = strErrorAdminiInformation + "<br />" + "Please enter City.";
            }
        }



        if (ddlAdminInfoState.SelectedValue == "-1")
        {
            if (strErrorAdminiInformation == "")
                strErrorAdminiInformation = "Please select State.";
            else
            {
                strErrorAdminiInformation = strErrorAdminiInformation + "<br />" + "Please select State.";
            }
        }


        if (txtAdminInfoZip.Text == "")
        {
            if (strErrorAdminiInformation == "")
                strErrorAdminiInformation = "Please enter Zip.";
            else
            {
                strErrorAdminiInformation = strErrorAdminiInformation + "<br />" + "Please enter Zip.";
            }
        }


        if (txtAdminInfoDOB.Text == "")
        {
            if (strErrorAdminiInformation == "")
                strErrorAdminiInformation = "Please enter DOB.";
            else
            {
                strErrorAdminiInformation = strErrorAdminiInformation + "<br />" + "Please enter DOB.";
            }
        }




        //if (strErrorAdminiInformation == "")
        //{
        btnAdminExp_Click(sender, e);
        //}
        //else
        //{
        //    lblErrorAdminiInformation.Text = strErrorAdminiInformation;
        //    dvErrorAdminiInformation.Focus();
        //    dvErrorAdminiInformation.Visible = true;
        //}



    }

    protected void btnAdminWorkInfo_Click(object sender, EventArgs e)
    {
        string strErrAdmiWorkExp;
        strErrAdmiWorkExp = "";

        if (txtAdmiWorkExpName.Text == "")
        {
            strErrAdmiWorkExp = "Please enter Name.";
        }

        if (txtAdmiWorkExpCity.Text == "")
        {
            if (strErrAdmiWorkExp == "")
                strErrAdmiWorkExp = "Please enter City.";
            else
            {
                strErrAdmiWorkExp = strErrAdmiWorkExp + "<br />" + "Please enter City.";
            }
        }

        if (ddlAdmiWorkExpState.SelectedValue == "-1")
        {
            if (strErrAdmiWorkExp == "")
                strErrAdmiWorkExp = "Please select State.";
            else
            {
                strErrAdmiWorkExp = strErrAdmiWorkExp + "<br />" + "Please select State.";
            }
        }


        if (txtAdmiWorkExpDOEmp.Text == "")
        {
            if (strErrAdmiWorkExp == "")
                strErrAdmiWorkExp = "Please enter Date of Employment.";
            else
            {
                strErrAdmiWorkExp = strErrAdmiWorkExp + "<br />" + "Please enter Date of Employment.";
            }
        }


        //if (strErrAdmiWorkExp == "")
        //{
        btnAdminDec_Click(sender, e);
        //}
        //else
        //{
        //    lblErrAdmiWorkExp.Text = strErrAdmiWorkExp;
        //    dvErrAdmiWorkExp.Focus();
        //    dvErrAdmiWorkExp.Visible = true;
        //}



    }

    protected void lbAdWorkExpCancel_Click(object sender, EventArgs e)
    {
        dvErrAdmiWorkExp.Visible = false;
    }

    protected void btnAdminDecl_Click(object sender, EventArgs e)
    {
        btnBackCheck_Click(sender, e);
    }

    protected void btnNextBackList_Click(object sender, EventArgs e)
    {
        btnTransCheck_Click(sender, e);
    }

    protected void btnsaveSclContct_Click(object sender, EventArgs e)
    {

    }

    protected void btnNextTransChkList_Click(object sender, EventArgs e)
    {
        btnEnrollAgreeCheck_Click(sender, e);
    }

    protected void btnNextEnrollChkList_Click(object sender, EventArgs e)
    {
        btnCourCataCheck_Click(sender, e);
    }

    protected void btnNextCourseChkList_Click(object sender, EventArgs e)
    {
        btnProgHourReqWork_Click(sender, e);
    }

    protected void btnNextProHo_Click(object sender, EventArgs e)
    {
        btnSchFacList_Click(sender, e);
    }

    protected void btnNextSchFac_Click(object sender, EventArgs e)
    {
        btnInstQual_Click(sender, e);
    }

    protected void btnNextInstQual_Click(object sender, EventArgs e)
    {
        btnInstDecl_Click(sender, e);
    }

    protected void btnNextInstrDecl_Click(object sender, EventArgs e)
    {
        btnPayment_Click(sender, e);
    }

    protected void btnNextSaveChecklist_Click(object sender, EventArgs e)
    {
        string strErrPay;
        strErrPay = "";




        if (ddlPaymentMethod.SelectedValue == "-1")
        {
            if (strErrPay == "")
                strErrPay = "Please select payment method.";
            else
            {
                strErrPay = strErrPay + "<br />" + "Please select payment method.";
            }
        }

        //if (strErrPay == "")
        btnChecklist_Click(sender, e);
        //else
        //{
        //    lblErrorPay.Text = strErrPay;
        //    dvErPay.Visible = true;

        //}

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

            Label lblBusinessName4 = e.Row.FindControl("lblBusinessName4") as Label;
            Label lblBusinessPhone4 = e.Row.FindControl("lblBusinessPhone4") as Label;
            Label lblCity4 = e.Row.FindControl("lblCity4") as Label;
            Label lblState4 = e.Row.FindControl("lblState4") as Label;
            Label lblZip4 = e.Row.FindControl("lblZip4") as Label;

            if (lblBusinessName4 != null && lblBusinessPhone4 != null && lblCity4 != null && lblState4 != null && lblZip4 != null)
            {
                if (ROWEdu1 == 0)
                {

                    lblBusinessName4.Text = "NATIONAL HOLISTIC INSTITUTE";
                    lblBusinessPhone4.Text = "(530) 542-0604";
                    lblCity4.Text = "EMERYVILLE";
                    lblState4.Text = "CA";
                    lblZip4.Text = "96151";
                }
                else if (ROWEdu1 == 1)
                {
                    lblBusinessName4.Text = "DAVIDS ACADEMY OF BEAUTY";
                    lblBusinessPhone4.Text = "(775) 742-0000";
                    lblCity4.Text = "TEMPLE CITY";
                    lblState4.Text = "CA";
                    lblZip4.Text = "89450";
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

        BindExams();
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
            Label lblSacramento = e.Row.FindControl("lblSacramento") as Label;
            Label lblState1 = e.Row.FindControl("lblState1") as Label;
            Label lblZip1 = e.Row.FindControl("lblZip1") as Label;

            if (lblBusinessName1 != null && lblBusinessPhone1 != null && lblSacramento != null && lblState1 != null && lblZip1 != null)
            {
                if (ROW == 0)
                {

                    lblBusinessName1.Text = "Max Health Center";
                    lblBusinessPhone1.Text = "(530) 542-0604";
                    lblSacramento.Text = "EMERYVILLE";
                    lblState1.Text = "CA";
                    lblZip1.Text = "96151";
                }
                else if (ROW == 1)
                {
                    lblBusinessName1.Text = "Intu Corporation";
                    lblBusinessPhone1.Text = "(775) 742-3752";
                    lblSacramento.Text = "TEMPLE CITY";
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
        //divbtnWorkInfo2.Visible = false;
        //divpnlWorkInfo2.Visible = true;
        this.EditIndexWorkInfo2 = -1;
        BindGridWorkInfo2();
    }
    protected void btnSaveWorkInfo2_Click(object sender, EventArgs e)
    {
        //divbtnWorkInfo2.Visible = true;
        //divpnlWorkInfo2.Visible = false;
    }
    protected void lnkCancelWorkInfo2_Click(object sender, EventArgs e)
    {
        //divbtnWorkInfo2.Visible = true;
        //divpnlWorkInfo2.Visible = false;
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

        //gvWorkInfo2.EditIndex = this.EditIndexWorkInfo2;
        //gvWorkInfo2.DataSource = ArryListName;
        //gvWorkInfo2.DataBind();

        if (this.EditIndexWorkInfo2 >= 0)
        {
            //gvWorkInfo2.Rows[this.EditIndexWorkInfo2].CssClass = "RowInEditMode";
            //gvWorkInfo2.Rows[this.EditIndexWorkInfo2].Cells[0].Attributes.Add("colspan", "6");
            //gvWorkInfo2.Rows[this.EditIndexWorkInfo2].Cells[1].Visible = false;
            //gvWorkInfo2.Rows[this.EditIndexWorkInfo2].Cells[2].Visible = false;
            //gvWorkInfo2.Rows[this.EditIndexWorkInfo2].Cells[3].Visible = false;
            //gvWorkInfo2.Rows[this.EditIndexWorkInfo2].Cells[4].Visible = false;
            //gvWorkInfo2.Rows[this.EditIndexWorkInfo2].Cells[5].Visible = false;

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
        //divbtnWorkInfo2.Visible = true;
        //divpnlWorkInfo2.Visible = false;
        this.EditIndexWorkInfo2 = -1;

        ImageButton imgbtnWorkInfo2Edit = (ImageButton)sender;
        if (imgbtnWorkInfo2Edit != null)
        {
            int ID = Convert.ToInt32(imgbtnWorkInfo2Edit.CommandArgument);
            this.EditIndexWorkInfo2 = Convert.ToInt32(imgbtnWorkInfo2Edit.Attributes["RowIndex"]);
            BindGridWorkInfo2();
            //FillControlWorkInfo2(gvWorkInfo2, this.EditIndexWorkInfo2);
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
        //divbtnWorkInfo3.Visible = false;
        //divpnlWorkInfo3.Visible = true;
        this.EditIndexWorkInfo3 = -1;
        BindGridWorkInfo3();
    }
    protected void btnSaveWorkInfo3_Click(object sender, EventArgs e)
    {
        //divbtnWorkInfo3.Visible = true;
        //divpnlWorkInfo3.Visible = false;
    }
    protected void lnkCancelWorkInfo3_Click(object sender, EventArgs e)
    {
        //divbtnWorkInfo3.Visible = true;
        //divpnlWorkInfo3.Visible = false;
    }

    public void BindGridWorkInfo3()
    {
        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");

        //gvWorkInfo3.EditIndex = this.EditIndexWorkInfo3;
        //gvWorkInfo3.DataSource = ArryListName;
        //gvWorkInfo3.DataBind();

        if (this.EditIndexWorkInfo3 >= 0)
        {
            //gvWorkInfo3.Rows[this.EditIndexWorkInfo3].CssClass = "RowInEditMode";
            //gvWorkInfo3.Rows[this.EditIndexWorkInfo3].Cells[0].Attributes.Add("colspan", "6");
            //gvWorkInfo3.Rows[this.EditIndexWorkInfo3].Cells[1].Visible = false;
            //gvWorkInfo3.Rows[this.EditIndexWorkInfo3].Cells[2].Visible = false;
            //gvWorkInfo3.Rows[this.EditIndexWorkInfo3].Cells[3].Visible = false;
            //gvWorkInfo3.Rows[this.EditIndexWorkInfo3].Cells[4].Visible = false;
            //gvWorkInfo3.Rows[this.EditIndexWorkInfo3].Cells[5].Visible = false;

        }
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
        //divbtnWorkInfo3.Visible = true;
        //divpnlWorkInfo3.Visible = false;
        this.EditIndexWorkInfo3 = -1;

        ImageButton imgbtnWorkInfo3Edit = (ImageButton)sender;
        if (imgbtnWorkInfo3Edit != null)
        {
            int ID = Convert.ToInt32(imgbtnWorkInfo3Edit.CommandArgument);
            this.EditIndexWorkInfo3 = Convert.ToInt32(imgbtnWorkInfo3Edit.Attributes["RowIndex"]);
            BindGridWorkInfo3();
            //FillControlWorkInfo3(gvWorkInfo3, this.EditIndexWorkInfo3);
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
        //divbtnWorkInfo4.Visible = false;
        //divpnlWorkInfo4.Visible = true;
        this.EditIndexWorkInfo4 = -1;
        BindGridWorkInfo4();
    }
    protected void btnSaveWorkInfo4_Click(object sender, EventArgs e)
    {
        //divbtnWorkInfo4.Visible = true;
        //divpnlWorkInfo4.Visible = false;
    }
    protected void lnkCancelWorkInfo4_Click(object sender, EventArgs e)
    {
        //divbtnWorkInfo4.Visible = true;
        //divpnlWorkInfo4.Visible = false;
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

        //gvWorkInfo4.EditIndex = this.EditIndexWorkInfo4;
        //gvWorkInfo4.DataSource = ArryListName;
        //gvWorkInfo4.DataBind();

        if (this.EditIndexWorkInfo4 >= 0)
        {
            //gvWorkInfo4.Rows[this.EditIndexWorkInfo4].CssClass = "RowInEditMode";
            //gvWorkInfo4.Rows[this.EditIndexWorkInfo4].Cells[0].Attributes.Add("colspan", "5");
            //gvWorkInfo4.Rows[this.EditIndexWorkInfo4].Cells[1].Visible = false;
            //gvWorkInfo4.Rows[this.EditIndexWorkInfo4].Cells[2].Visible = false;
            //gvWorkInfo4.Rows[this.EditIndexWorkInfo4].Cells[3].Visible = false;
            //gvWorkInfo4.Rows[this.EditIndexWorkInfo4].Cells[4].Visible = false;

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
        //divbtnWorkInfo4.Visible = true;
        //divpnlWorkInfo4.Visible = false;
        this.EditIndexWorkInfo4 = -1;

        ImageButton imgbtnWorkInfo4Edit = (ImageButton)sender;
        if (imgbtnWorkInfo4Edit != null)
        {
            int ID = Convert.ToInt32(imgbtnWorkInfo4Edit.CommandArgument);
            this.EditIndexWorkInfo4 = Convert.ToInt32(imgbtnWorkInfo4Edit.Attributes["RowIndex"]);
            BindGridWorkInfo4();
            //FillControlWorkInfo4(gvWorkInfo4, this.EditIndexWorkInfo4);
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
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
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
    //protected void btnAddHist2_Click(object sender, EventArgs e)
    //{
    //    divgvhist2.Visible = true;
    //}
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
    //protected void btnAddHist3_Click(object sender, EventArgs e)
    //{
    //    divgvhist3.Visible = true;
    //}
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
    //protected void btnAddHist4_Click(object sender, EventArgs e)
    //{
    //    divgvhist4.Visible = true;
    //}
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
    //protected void btnAddHist5_Click(object sender, EventArgs e)
    //{
    //    divgvhist5.Visible = true;
    //}
    #endregion
    #region HistoryQ6
    protected void rblHistoryQ6_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblHistoryQ6.SelectedItem.Text == "Yes")
        {
            divhist6.Visible = true;
        }
        else
        {
            divhist6.Visible = false;
        }
    }
    //protected void btnAddHist5_Click(object sender, EventArgs e)
    //{
    //    divgvhist5.Visible = true;
    //}
    #endregion

    #endregion


    #region Administrator Declaration

    #region ADQ1
    protected void rblADQ1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblADQ1.SelectedItem.Text == "Yes")
        {
            dvADQ1.Visible = true;
        }
        else
        {
            dvADQ1.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region ADQ2
    protected void rblADQ2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblADQ2.SelectedItem.Text == "Yes")
        {
            dvADQ2.Visible = true;
        }
        else
        {
            dvADQ2.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region ADQ3
    protected void rblADQ3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblADQ3.SelectedItem.Text == "Yes")
        {
            dvADQ3.Visible = true;
        }
        else
        {
            dvADQ3.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region ADQ4
    protected void rblADQ4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblADQ4.SelectedItem.Text == "Yes")
        {
            dvADQ4.Visible = true;
        }
        else
        {
            dvADQ4.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region ADQ5
    protected void rblADQ5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblADQ5.SelectedItem.Text == "Yes")
        {
            dvADQ5.Visible = true;
        }
        else
        {
            dvADQ5.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region ADQ6
    protected void rblADQ6_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblADQ6.SelectedItem.Text == "Yes")
        {
            dvADQ6.Visible = true;
        }
        else
        {
            dvADQ6.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region ADQ7
    protected void rblADQ7_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblADQ7.SelectedItem.Text == "Yes")
        {
            dvADQ7.Visible = true;
        }
        else
        {
            dvADQ7.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region ADQ8
    protected void rblADQ8_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblADQ8.SelectedItem.Text == "Yes")
        {
            dvADQ8.Visible = true;
        }
        else
        {
            dvADQ8.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    divgvhist1.Visible = true;
    //}
    #endregion
    #endregion


    #region Instructor Declaration

    #region InstructorDec1
    protected void InstructorDec1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorDec1.SelectedItem.Text == "Yes")
        {
            dvInstructorDec1.Visible = true;
        }
        else
        {
            dvInstructorDec1.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region InstructorDec2
    protected void InstructorDec2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorDec2.SelectedItem.Text == "Yes")
        {
            dvInstructorDec2.Visible = true;
        }
        else
        {
            dvInstructorDec2.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region InstructorDec3
    protected void InstructorDec3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorDec3.SelectedItem.Text == "Yes")
        {
            dvInstructorDec3.Visible = true;
        }
        else
        {
            dvInstructorDec3.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region InstructorDec4
    protected void InstructorDec4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorDec4.SelectedItem.Text == "Yes")
        {
            dvInstructorDec4.Visible = true;
        }
        else
        {
            dvInstructorDec4.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region InstructorDec5
    protected void InstructorDec5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorDec5.SelectedItem.Text == "Yes")
        {
            dvInstructorDec5.Visible = true;
        }
        else
        {
            dvInstructorDec5.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region InstructorDec6
    protected void InstructorDec6_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorDec6.SelectedItem.Text == "Yes")
        {
            dvInstructorDec6.Visible = true;
        }
        else
        {
            dvInstructorDec6.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region InstructorDec7
    protected void InstructorDec7_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorDec7.SelectedItem.Text == "Yes")
        {
            dvInstructorDec7.Visible = true;
        }
        else
        {
            dvInstructorDec7.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region InstructorDec8
    protected void InstructorDec8_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorDec8.SelectedItem.Text == "Yes")
        {
            dvInstructorDec8.Visible = true;
        }
        else
        {
            dvInstructorDec8.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion
    #endregion

    #region Payment


    protected void btnSaveNextPayment_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx?q=1", false);
    }

    protected void ddlPaymentMethod_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddlPaymentMethod.SelectedItem.Text == "Check")
        {
            trchck1.Visible = true;
            trchck2.Visible = true;
            trmonyorder.Visible = false;

            pnlMoneyOrder.Visible = false;
            pnlCheck.Visible = true;
            btnSaveNextPayment.Visible = false;
        }
        else if (ddlPaymentMethod.SelectedItem.Text == "Money Order")
        {
            trchck1.Visible = false;
            trchck2.Visible = false;
            trmonyorder.Visible = true;
            pnlMoneyOrder.Visible = true;
            pnlCheck.Visible = false;
            btnSaveNextPayment.Visible = false;
        }
        else if (ddlPaymentMethod.SelectedItem.Text == "Credit / Debit Card")
        {
            trchck1.Visible = false;
            trchck2.Visible = false;
            trmonyorder.Visible = false;
            pnlMoneyOrder.Visible = false;
            pnlCheck.Visible = false;
            btnSaveNextPayment.Visible = true;
        }
        else
        {
            trchck1.Visible = false;
            trchck2.Visible = false;
            trmonyorder.Visible = false;
            pnlMoneyOrder.Visible = false;
            pnlCheck.Visible = false;
            btnSaveNextPayment.Visible = false;
        }
    }

    protected void ddlStaffPaymentMethod_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddlStaffPaymentMethod.SelectedItem.Text == "Check")
        {
            trstaffchck1.Visible = true;
            trstaffchck2.Visible = true;
            trstaffmonyorder.Visible = false;

            pnlMoneyOrder.Visible = false;
            pnlCheck.Visible = true;
            btnSaveNextPayment.Visible = false;
        }
        else if (ddlStaffPaymentMethod.SelectedItem.Text == "Money Order")
        {
            trstaffchck1.Visible = false;
            trstaffchck2.Visible = false;
            trstaffmonyorder.Visible = true;
            pnlMoneyOrder.Visible = true;
            pnlCheck.Visible = false;
            btnSaveNextPayment.Visible = false;
        }
        else if (ddlStaffPaymentMethod.SelectedItem.Text == "Credit / Debit Card")
        {
            trstaffchck1.Visible = false;
            trstaffchck2.Visible = false;
            trstaffmonyorder.Visible = false;
            pnlMoneyOrder.Visible = false;
            pnlCheck.Visible = false;
            btnSaveNextPayment.Visible = true;
        }
        else
        {
            trstaffchck1.Visible = false;
            trstaffchck2.Visible = false;
            trstaffmonyorder.Visible = false;
            pnlMoneyOrder.Visible = false;
            pnlCheck.Visible = false;
            btnSaveNextPayment.Visible = false;
        }
    }


    protected void txtNumberOfAdditinolCerti_TextChanged(object sender, EventArgs e)
    {
        ltrPaymentError.Text = "";
        int No = 0;
        string Validate = ValidationHelper.IsValidInt(txtNumberOfAdditinolCerti.Text, "Please enter valid number of additional certiﬁcates.");

        if (Validate == "")
        {
            No = Convert.ToInt32(txtNumberOfAdditinolCerti.Text);
            FillAdditinolAmount();
            FillTotalAmount();
        }
    }

    public void FillTotalAmount()
    {
        ltrPaymentError.Text = "";
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

    public void FillAdditinolAmount()
    {
        int No = 0;

        ltrPaymentError.Text = "";
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

    #region School Eligibility

    #region Approval Agency

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

            if (lblSchoolCode != null && lblExpirationDate != null && lblApprovalAgencyName != null)
            {
                if (ROWLic == 0)
                {

                    lblSchoolCode.Text = "SCH001";
                    lblApprovalAgencyName.Text = "Agency 1";
                    lblExpirationDate.Text = "01/04/2016";
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
        divAddbtnBackgroundCheck.Visible = false;
        divAddBackgroundCheck.Visible = true;
        this.EditIndexBackgroundCheck = -1;
        BindGridBackgroundCheck();

    }

    protected void btnBackgroundCheckAddNewSave_Click(object sender, EventArgs e)
    {

        string strErrAddStaff;
        strErrAddStaff = "";

        if (txtBackCheckLastName.Text == "")
        {
            strErrAddStaff = "Please enter Last Name.";
        }


        if (txtBackCheckFirstName.Text == "")
        {
            if (strErrAddStaff == "")
                strErrAddStaff = "Please enter First Name.";
            else
            {
                strErrAddStaff = strErrAddStaff + "<br />" + "Please enter First Name.";
            }
        }



        if (CheckBoxList3.SelectedItem == null)
        {
            if (strErrAddStaff == "")
                strErrAddStaff = "Please check any one from Title/ Position.";
            else
            {
                strErrAddStaff = strErrAddStaff + "<br />" + "Please check any one from Title/ Position.";
            }
        }



        if (txtaddstaffEmail.Text == "")
        {
            if (strErrAddStaff == "")
                strErrAddStaff = "Please enter Email.";
            else
            {
                strErrAddStaff = strErrAddStaff + "<br />" + "Please enter Email.";
            }
        }


        if (rblBackgroundChekReq.SelectedItem == null)
        {
            if (strErrAddStaff == "")
                strErrAddStaff = "Please check Yes or No of Background Check.";
            else
            {
                strErrAddStaff = strErrAddStaff + "<br />" + "Please check Yes or No of Background Check.";
            }
        }





        if (strErrAddStaff == "")
        {
            divAddbtnBackgroundCheck.Visible = true;
            divAddBackgroundCheck.Visible = false;
        }

        else
        {
            lblErrAddStaff.Text = strErrAddStaff;
            dvErrAddStaff.Focus();
            dvErrAddStaff.Visible = true;
        }


    }

    protected void lnkBackgroundCheckAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnBackgroundCheck.Visible = true;
        divAddBackgroundCheck.Visible = false;
    }

    public void BindGridBackgroundCheck()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvBackgroundCheck.EditIndex = this.EditIndexBackgroundCheck;
        gvBackgroundCheck.DataSource = ArryListName;
        gvBackgroundCheck.DataBind();

        if (this.EditIndexBackgroundCheck >= 0)
        {
            gvBackgroundCheck.Rows[this.EditIndexBackgroundCheck].CssClass = "RowInEditMode";
            gvBackgroundCheck.Rows[this.EditIndexBackgroundCheck].Cells[0].Attributes.Add("colspan", "6");
            gvBackgroundCheck.Rows[this.EditIndexBackgroundCheck].Cells[1].Visible = false;
            gvBackgroundCheck.Rows[this.EditIndexBackgroundCheck].Cells[2].Visible = false;
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
        divAddBackgroundCheck.Visible = false;
        divAddbtnBackgroundCheck.Visible = true;
        this.EditIndexBackgroundCheck = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexBackgroundCheck = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridBackgroundCheck();
            FillControlBackgroundCheck(gvBackgroundCheck, this.EditIndexBackgroundCheck);
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

        if (txtSchoolCity.Text == "")
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
                else if (ROW == 1)
                {
                    lblBusinessName1.Text = "Intu Corporation";
                    lblBusinessPhone1.Text = "(775) 742-3752";
                    lblSacramento.Text = "TEMPLE CITY";
                    lblState1.Text = "CA";
                    lblZip1.Text = "89450";
                }
            }

            ROW++;

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

    }

    #endregion

    #region Verify All Address

    #region School Address

    public void fillverifyschooladdress()
    {
        txtSchoolStreet.Text = AddressHelper.GetFormatedPOBOx(txtSchoolStreet.Text);
        txtschool_Add.Text = AddressHelper.GetFormatedPOBOx(txtschool_Add.Text);

        lblUSchoolStreet1.Text = txtSchoolStreet.Text;
        lblUSchoolStreet2.Text = txtschool_Add.Text;
        lblUSchoolCity.Text = txtCityResEdit.Text;
        lblUSchoolState.Text = ddlStateResEdit.SelectedItem.Text;
        lblUSchoolZip.Text = txtZipResEdit.Text;
        components objComponenets = GNF.APIAddressValidation.ValidateAddress(txtSchoolStreet.Text, txtschool_Add.Text, txtCityResEdit.Text, ddlStateResEdit.SelectedItem.Text, txtZipResEdit.Text);
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
        txtSchoolStreet.Text = lblVSchoolStreet1.Text;
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
        txtSchoolStreet.Text = AddressHelper.GetFormatedPOBOx(txtSchoolStreet.Text);///////////////
        txtschool_Add.Text = AddressHelper.GetFormatedPOBOx(txtschool_Add.Text);

        lblUPreviousStreet1.Text = txtSchoolStreet.Text;//////////////
        lblUPreviousStreet2.Text = txtschool_Add.Text;
        lblUPreviousCity.Text = txtCityResEdit.Text;
        lblUPreviousState.Text = ddlStateResEdit.SelectedItem.Text;
        lblUPreviousZip.Text = txtZipResEdit.Text;
        components objComponenets = GNF.APIAddressValidation.ValidateAddress(txtSchoolStreet.Text, txtschool_Add.Text, txtCityResEdit.Text, ddlStateResEdit.SelectedItem.Text, txtZipResEdit.Text);/////////////////
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
        txtSchoolStreet.Text = lblVPreviousStreet1.Text;////////////////
        txtschool_Add.Text = lblVPreviousStreet2.Text;
        txtCityResEdit.Text = lblVPreviousCity.Text;
        ddlStateResEdit.SelectedValue = lblVPreviousState.Text;
        txtZipResEdit.Text = lblVPreviousZip.Text;
    }
    #endregion

    #region Satellite Address

    public void fillverifySatelliteLocationaddress()
    {
        txtSchoolStreet.Text = AddressHelper.GetFormatedPOBOx(txtSchoolStreet.Text);///////////////
        txtschool_Add.Text = AddressHelper.GetFormatedPOBOx(txtschool_Add.Text);

        lblUSatelliteLocationStreet1.Text = txtSchoolStreet.Text;//////////////
        lblUSatelliteLocationStreet2.Text = txtschool_Add.Text;
        lblUSatelliteLocationCity.Text = txtCityResEdit.Text;
        lblUSatelliteLocationState.Text = ddlStateResEdit.SelectedItem.Text;
        lblUSatelliteLocationZip.Text = txtZipResEdit.Text;
        components objComponenets = GNF.APIAddressValidation.ValidateAddress(txtSchoolStreet.Text, txtschool_Add.Text, txtCityResEdit.Text, ddlStateResEdit.SelectedItem.Text, txtZipResEdit.Text);/////////////////
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
        txtSchoolStreet.Text = lblVSatelliteLocationStreet1.Text;////////////////
        txtschool_Add.Text = lblVSatelliteLocationStreet2.Text;
        txtCityResEdit.Text = lblVSatelliteLocationCity.Text;
        ddlStateResEdit.SelectedValue = lblVSatelliteLocationState.Text;
        txtZipResEdit.Text = lblVSatelliteLocationZip.Text;
    }

    #endregion

    #region Mailing Address - Working



    public void fillverifySchoolMailingaddress()
    {
        txtSchoolStreet.Text = AddressHelper.GetFormatedPOBOx(txtSchoolStreet.Text);///////////////
        txtschool_Add.Text = AddressHelper.GetFormatedPOBOx(txtschool_Add.Text);

        lblUSchoolMailingStreet1.Text = txtSchoolStreet.Text;//////////////
        lblUSchoolMailingStreet2.Text = txtschool_Add.Text;
        lblUSchoolMailingCity.Text = txtCityResEdit.Text;
        lblUSchoolMailingState.Text = ddlStateResEdit.SelectedItem.Text;
        lblUSchoolMailingZip.Text = txtZipResEdit.Text;
        components objComponenets = GNF.APIAddressValidation.ValidateAddress(txtSchoolStreet.Text, txtschool_Add.Text, txtCityResEdit.Text, ddlStateResEdit.SelectedItem.Text, txtZipResEdit.Text);/////////////////
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
        txtSchoolStreet.Text = lblVSchoolMailingStreet1.Text;////////////////
        txtschool_Add.Text = lblVSchoolMailingStreet2.Text;
        txtCityResEdit.Text = lblVSchoolMailingCity.Text;
        ddlStateResEdit.SelectedValue = lblVSchoolMailingState.Text;
        txtZipResEdit.Text = lblVSchoolMailingZip.Text;
    }


    #endregion

    #endregion

    #region Instructor's Qualification

    #region InstQualSectionA1

    public int EditIndexInstQualSectionA1
    {
        get
        {
            if (ViewState["EditIndexInstQualSectionA1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstQualSectionA1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstQualSectionA1"] = value;
        }
    }

    protected void btnInstQualSectionA1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnPrimaryMassageSchool.Visible = false;
        divAddPrimaryMassageSchool.Visible = true;
        this.EditIndexInstQualSectionA1 = -1;
        BindGridInstQualSectionA1();
    }
    protected void btnInstQualSectionA1AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnPrimaryMassageSchool.Visible = true;
        divAddPrimaryMassageSchool.Visible = false;
    }
    protected void lnkInstQualSectionA1AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnPrimaryMassageSchool.Visible = true;
        divAddPrimaryMassageSchool.Visible = false;
    }

    int ROWIQ1 = 0;
    protected void gvInstQualSectionA1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWIQ1 == 0)
                {

                    lblSchoolName.Text = "School1";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWIQ1 == 1)
                {
                    lblSchoolName.Text = "School12";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROWIQ1++;

        }
    }

    public void BindGridInstQualSectionA1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstQualSectionA1.EditIndex = this.EditIndexInstQualSectionA1;
        gvInstQualSectionA1.DataSource = ArryListName;
        gvInstQualSectionA1.DataBind();

        if (this.EditIndexInstQualSectionA1 >= 0)
        {
            gvInstQualSectionA1.Rows[this.EditIndexInstQualSectionA1].CssClass = "RowInEditMode";
            gvInstQualSectionA1.Rows[this.EditIndexInstQualSectionA1].Cells[0].Attributes.Add("colspan", "6");
            gvInstQualSectionA1.Rows[this.EditIndexInstQualSectionA1].Cells[1].Visible = false;
            gvInstQualSectionA1.Rows[this.EditIndexInstQualSectionA1].Cells[2].Visible = false;
            gvInstQualSectionA1.Rows[this.EditIndexInstQualSectionA1].Cells[3].Visible = false;
            gvInstQualSectionA1.Rows[this.EditIndexInstQualSectionA1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstQualSectionA1].Cells[5].Visible = false;

        }
    }

    public void FillControlInstQualSectionA1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstQualSectionA1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstQualSectionA1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstQualSectionA1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstQualSectionA1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstQualSectionA1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstQualSectionA1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstQualSectionA1 = -1;
        BindGridInstQualSectionA1();
    }

    protected void lnkInstQualSectionA1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstQualSectionA1 = -1;
        BindGridInstQualSectionA1();
    }

    protected void lnkInstQualSectionA1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnPrimaryMassageSchool.Visible = true;
        divAddPrimaryMassageSchool.Visible = false;
        this.EditIndexInstQualSectionA1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstQualSectionA1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstQualSectionA1();
            FillControlInstQualSectionA1(gvInstQualSectionA1, this.EditIndexInstQualSectionA1);
        }
    }

    protected void lnkInstQualSectionA1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region InstQualSectionA2

    public int EditIndexInstQualSectionA2
    {
        get
        {
            if (ViewState["EditIndexInstQualSectionA2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstQualSectionA2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstQualSectionA2"] = value;
        }
    }

    protected void btnInstQualSectionA2AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnAddlMassageSchool.Visible = false;
        divAddAddlMassageSchool.Visible = true;
        this.EditIndexInstQualSectionA2 = -1;
        BindGridInstQualSectionA2();
    }
    protected void btnInstQualSectionA2AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnAddlMassageSchool.Visible = true;
        divAddAddlMassageSchool.Visible = false;
    }
    protected void lnkInstQualSectionA2AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnAddlMassageSchool.Visible = true;
        divAddAddlMassageSchool.Visible = false;
    }

    int ROWIQ2 = 0;
    protected void gvInstQualSectionA2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWIQ2 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWIQ2 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWIQ2++;

        }
    }

    public void BindGridInstQualSectionA2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstQualSectionA2.EditIndex = this.EditIndexInstQualSectionA2;
        gvInstQualSectionA2.DataSource = ArryListName;
        gvInstQualSectionA2.DataBind();

        if (this.EditIndexInstQualSectionA2 >= 0)
        {
            gvInstQualSectionA2.Rows[this.EditIndexInstQualSectionA2].CssClass = "RowInEditMode";
            gvInstQualSectionA2.Rows[this.EditIndexInstQualSectionA2].Cells[0].Attributes.Add("colspan", "6");
            gvInstQualSectionA2.Rows[this.EditIndexInstQualSectionA2].Cells[1].Visible = false;
            gvInstQualSectionA2.Rows[this.EditIndexInstQualSectionA2].Cells[2].Visible = false;
            gvInstQualSectionA2.Rows[this.EditIndexInstQualSectionA2].Cells[3].Visible = false;
            gvInstQualSectionA2.Rows[this.EditIndexInstQualSectionA2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstQualSectionA2].Cells[5].Visible = false;

        }
    }

    public void FillControlInstQualSectionA2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstQualSectionA2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstQualSectionA2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstQualSectionA2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstQualSectionA2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstQualSectionA2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstQualSectionA2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstQualSectionA2 = -1;
        BindGridInstQualSectionA2();
    }

    protected void lnkInstQualSectionA2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstQualSectionA2 = -1;
        BindGridInstQualSectionA2();
    }

    protected void lnkInstQualSectionA2Edit_Click(object sender, EventArgs e)
    {
        divAddBtnAddlMassageSchool.Visible = true;
        divAddAddlMassageSchool.Visible = false;
        this.EditIndexInstQualSectionA2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstQualSectionA2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstQualSectionA2();
            FillControlInstQualSectionA2(gvInstQualSectionA2, this.EditIndexInstQualSectionA2);
        }
    }

    protected void lnkInstQualSectionA2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Subject Taught

    public int EditIndexSubjectTaugh
    {
        get
        {
            if (ViewState["EditIndexSubjectTaugh"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexSubjectTaugh"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexSubjectTaugh"] = value;
        }
    }
    protected void btnSubjectTaughAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnSubjectTaugh.Visible = false;
        divAddSubjectTaugh.Visible = true;
        this.EditIndexLicensureInformation = -1;
        BindGridSubjectTaugh();
    }
    protected void btnSubjectTaughAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnSubjectTaugh.Visible = true;
        divAddSubjectTaugh.Visible = false;
    }
    protected void lnkSubjectTaugAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnSubjectTaugh.Visible = true;
        divAddSubjectTaugh.Visible = false;
    }

    public void BindGridSubjectTaugh()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvSubjectTaugh.EditIndex = this.EditIndexSubjectTaugh;
        gvSubjectTaugh.DataSource = ArryListName;
        gvSubjectTaugh.DataBind();

        if (this.EditIndexLicensureInformation >= 0)
        {
            gvSubjectTaugh.Rows[this.EditIndexSubjectTaugh].CssClass = "RowInEditMode";
            gvSubjectTaugh.Rows[this.EditIndexSubjectTaugh].Cells[0].Attributes.Add("colspan", "6");
            gvSubjectTaugh.Rows[this.EditIndexSubjectTaugh].Cells[1].Visible = false;
            gvSubjectTaugh.Rows[this.EditIndexSubjectTaugh].Cells[2].Visible = false;

        }
    }

    protected void gvSubjectTaugh_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSubjectTaught = e.Row.FindControl("lblSubjectTaught") as Label;
            Label lblEduforthisSub = e.Row.FindControl("lblEduforthisSub") as Label;

            if (lblSubjectTaught != null && lblEduforthisSub != null)
            {
                if (ROWLic == 0)
                {

                    lblSubjectTaught.Text = "Subject 1";
                    lblEduforthisSub.Text = "Graduate";
                }
                else if (ROWLic == 1)
                {
                    lblSubjectTaught.Text = "Subject 1";
                    lblEduforthisSub.Text = "Graduate";
                }
            }

            ROWLic++;

        }
    }

    protected void lnkSubjectTaughEdit_Click(object sender, EventArgs e)
    {
        divAddSubjectTaugh.Visible = false;
        divAddbtnSubjectTaugh.Visible = true;
        this.EditIndexSubjectTaugh = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexSubjectTaugh = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridSubjectTaugh();
            FillControlApprovalAgency(gvApprovalAgency, this.EditIndexSubjectTaugh);
        }
    }
    protected void lnkSubjectTaughDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlSubjectTaugh(GridView gv, int EditInd)
    {
        try
        {


            TextBox txtSchoolCodeEdit = gv.Rows[this.EditIndexSubjectTaugh].FindControl("txtSchoolCodeEdit") as TextBox;
            TextBox txtExpirationDateEdit = gv.Rows[this.EditIndexSubjectTaugh].FindControl("txtExpirationDateEdit") as TextBox;
            DropDownList ddlAddApprovalAgencyEdit = gv.Rows[this.EditIndexSubjectTaugh].FindControl("ddlAddApprovalAgencyEdit") as DropDownList;

            txtSchoolCodeEdit.Text = "SCH001";
            ddlAddApprovalAgencyEdit.SelectedValue = "A1";
            txtExpirationDateEdit.Text = "02/04/2016";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnSubjectTaughUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexSubjectTaugh = -1;
        BindGridSubjectTaugh();
    }
    protected void lnkSubjectTaughCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexSubjectTaugh = -1;
        BindGridSubjectTaugh();
    }

    #endregion

    #region InstQualSectionB1

    public int EditIndexInstQualSectionB1
    {
        get
        {
            if (ViewState["EditIndexInstQualSectionB1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstQualSectionB1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstQualSectionB1"] = value;
        }
    }

    protected void btnInstQualSectionB1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB1.Visible = false;
        divAddInstQualSectionB1.Visible = true;
        this.EditIndexInstQualSectionB1 = -1;
        BindGridInstQualSectionB1();
    }
    protected void btnInstQualSectionB1AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB1.Visible = true;
        divAddInstQualSectionB1.Visible = false;
    }
    protected void lnkInstQualSectionB1AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB1.Visible = true;
        divAddInstQualSectionB1.Visible = false;
    }

    int ROWIQB1 = 0;
    protected void gvInstQualSectionB1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWIQB1 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWIQB1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWIQB1++;

        }
    }

    public void BindGridInstQualSectionB1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstQualSectionB1.EditIndex = this.EditIndexInstQualSectionB1;
        gvInstQualSectionB1.DataSource = ArryListName;
        gvInstQualSectionB1.DataBind();

        if (this.EditIndexInstQualSectionB1 >= 0)
        {
            gvInstQualSectionB1.Rows[this.EditIndexInstQualSectionB1].CssClass = "RowInEditMode";
            gvInstQualSectionB1.Rows[this.EditIndexInstQualSectionB1].Cells[0].Attributes.Add("colspan", "6");
            gvInstQualSectionB1.Rows[this.EditIndexInstQualSectionB1].Cells[1].Visible = false;
            gvInstQualSectionB1.Rows[this.EditIndexInstQualSectionB1].Cells[2].Visible = false;
            gvInstQualSectionB1.Rows[this.EditIndexInstQualSectionB1].Cells[3].Visible = false;
            gvInstQualSectionB1.Rows[this.EditIndexInstQualSectionB1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstQualSectionB1].Cells[5].Visible = false;

        }
    }

    public void FillControlInstQualSectionB1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstQualSectionB1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstQualSectionB1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstQualSectionB1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstQualSectionB1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstQualSectionB1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstQualSectionB1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstQualSectionB1 = -1;
        BindGridInstQualSectionB1();
    }

    protected void lnkInstQualSectionB1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstQualSectionB1 = -1;
        BindGridInstQualSectionB1();
    }

    protected void lnkInstQualSectionB1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB1.Visible = true;
        divAddInstQualSectionB1.Visible = false;
        this.EditIndexInstQualSectionB1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstQualSectionB1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstQualSectionB1();
            FillControlInstQualSectionB1(gvInstQualSectionB1, this.EditIndexInstQualSectionB1);
        }
    }

    protected void lnkInstQualSectionB1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region InstQualSectionB2

    public int EditIndexInstQualSectionB2
    {
        get
        {
            if (ViewState["EditIndexInstQualSectionB2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstQualSectionB2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstQualSectionB2"] = value;
        }
    }

    protected void btnInstQualSectionB2AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB2.Visible = false;
        divAddInstQualSectionB2.Visible = true;
        this.EditIndexInstQualSectionB2 = -1;
        BindGridInstQualSectionB2();
    }
    protected void btnInstQualSectionB2AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB2.Visible = true;
        divAddInstQualSectionB2.Visible = false;
    }
    protected void lnkInstQualSectionB2AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB2.Visible = true;
        divAddInstQualSectionB2.Visible = false;
    }

    int ROWIQB2 = 0;
    protected void gvInstQualSectionB2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWIQB2 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWIQB2 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWIQB2++;

        }
    }

    public void BindGridInstQualSectionB2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstQualSectionB2.EditIndex = this.EditIndexInstQualSectionB2;
        gvInstQualSectionB2.DataSource = ArryListName;
        gvInstQualSectionB2.DataBind();

        if (this.EditIndexInstQualSectionB2 >= 0)
        {
            gvInstQualSectionB2.Rows[this.EditIndexInstQualSectionB2].CssClass = "RowInEditMode";
            gvInstQualSectionB2.Rows[this.EditIndexInstQualSectionB2].Cells[0].Attributes.Add("colspan", "6");
            gvInstQualSectionB2.Rows[this.EditIndexInstQualSectionB2].Cells[1].Visible = false;
            gvInstQualSectionB2.Rows[this.EditIndexInstQualSectionB2].Cells[2].Visible = false;
            gvInstQualSectionB2.Rows[this.EditIndexInstQualSectionB2].Cells[3].Visible = false;
            gvInstQualSectionB2.Rows[this.EditIndexInstQualSectionB2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstQualSectionB2].Cells[5].Visible = false;

        }
    }

    public void FillControlInstQualSectionB2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstQualSectionB2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstQualSectionB2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstQualSectionB2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstQualSectionB2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstQualSectionB2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstQualSectionB2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstQualSectionB2 = -1;
        BindGridInstQualSectionB2();
    }

    protected void lnkInstQualSectionB2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstQualSectionB2 = -1;
        BindGridInstQualSectionB2();
    }

    protected void lnkInstQualSectionB2Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB2.Visible = true;
        divAddInstQualSectionB2.Visible = false;
        this.EditIndexInstQualSectionB2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstQualSectionB2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstQualSectionB2();
            FillControlInstQualSectionB2(gvInstQualSectionB2, this.EditIndexInstQualSectionB2);
        }
    }

    protected void lnkInstQualSectionB2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region InstQualSectionB3

    public int EditIndexInstQualSectionB3
    {
        get
        {
            if (ViewState["EditIndexInstQualSectionB3"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstQualSectionB3"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstQualSectionB3"] = value;
        }
    }

    protected void btnInstQualSectionB3AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB3.Visible = false;
        divAddInstQualSectionB3.Visible = true;
        this.EditIndexInstQualSectionB3 = -1;
        BindGridInstQualSectionB3();
    }
    protected void btnInstQualSectionB3AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB3.Visible = true;
        divAddInstQualSectionB3.Visible = false;
    }
    protected void lnkInstQualSectionB3AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB3.Visible = true;
        divAddInstQualSectionB3.Visible = false;
    }

    int ROWIQB3 = 0;
    protected void gvInstQualSectionB3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWIQB3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWIQB3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWIQB3++;

        }
    }

    public void BindGridInstQualSectionB3()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstQualSectionB3.EditIndex = this.EditIndexInstQualSectionB3;
        gvInstQualSectionB3.DataSource = ArryListName;
        gvInstQualSectionB3.DataBind();

        if (this.EditIndexInstQualSectionB3 >= 0)
        {
            gvInstQualSectionB3.Rows[this.EditIndexInstQualSectionB3].CssClass = "RowInEditMode";
            gvInstQualSectionB3.Rows[this.EditIndexInstQualSectionB3].Cells[0].Attributes.Add("colspan", "6");
            gvInstQualSectionB3.Rows[this.EditIndexInstQualSectionB3].Cells[1].Visible = false;
            gvInstQualSectionB3.Rows[this.EditIndexInstQualSectionB3].Cells[2].Visible = false;
            gvInstQualSectionB3.Rows[this.EditIndexInstQualSectionB3].Cells[3].Visible = false;
            gvInstQualSectionB3.Rows[this.EditIndexInstQualSectionB3].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstQualSectionB3].Cells[5].Visible = false;

        }
    }

    public void FillControlInstQualSectionB3(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstQualSectionB3].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstQualSectionB3].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstQualSectionB3].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstQualSectionB3].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstQualSectionB3].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstQualSectionB3Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstQualSectionB3 = -1;
        BindGridInstQualSectionB3();
    }

    protected void lnkInstQualSectionB3CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstQualSectionB3 = -1;
        BindGridInstQualSectionB3();
    }

    protected void lnkInstQualSectionB3Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB3.Visible = true;
        divAddInstQualSectionB3.Visible = false;
        this.EditIndexInstQualSectionB3 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstQualSectionB3 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstQualSectionB3();
            FillControlInstQualSectionB3(gvInstQualSectionB3, this.EditIndexInstQualSectionB3);
        }
    }

    protected void lnkInstQualSectionB3Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region InstQualSectionB4

    public int EditIndexInstQualSectionB4
    {
        get
        {
            if (ViewState["EditIndexInstQualSectionB4"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstQualSectionB4"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstQualSectionB4"] = value;
        }
    }

    protected void btnInstQualSectionB4AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB4.Visible = false;
        divAddInstQualSectionB4.Visible = true;
        this.EditIndexInstQualSectionB4 = -1;
        BindGridInstQualSectionB4();
    }
    protected void btnInstQualSectionB4AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB4.Visible = true;
        divAddInstQualSectionB4.Visible = false;
    }
    protected void lnkInstQualSectionB4AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB4.Visible = true;
        divAddInstQualSectionB4.Visible = false;
    }

    int ROWIQB4 = 0;
    protected void gvInstQualSectionB4_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWIQB4 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWIQB4 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWIQB4++;

        }
    }

    public void BindGridInstQualSectionB4()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstQualSectionB4.EditIndex = this.EditIndexInstQualSectionB4;
        gvInstQualSectionB4.DataSource = ArryListName;
        gvInstQualSectionB4.DataBind();

        if (this.EditIndexInstQualSectionB4 >= 0)
        {
            gvInstQualSectionB4.Rows[this.EditIndexInstQualSectionB4].CssClass = "RowInEditMode";
            gvInstQualSectionB4.Rows[this.EditIndexInstQualSectionB4].Cells[0].Attributes.Add("colspan", "6");
            gvInstQualSectionB4.Rows[this.EditIndexInstQualSectionB4].Cells[1].Visible = false;
            gvInstQualSectionB4.Rows[this.EditIndexInstQualSectionB4].Cells[2].Visible = false;
            gvInstQualSectionB4.Rows[this.EditIndexInstQualSectionB4].Cells[3].Visible = false;
            gvInstQualSectionB4.Rows[this.EditIndexInstQualSectionB4].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstQualSectionB4].Cells[5].Visible = false;

        }
    }

    public void FillControlInstQualSectionB4(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstQualSectionB4].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstQualSectionB4].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstQualSectionB4].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstQualSectionB4].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstQualSectionB4].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstQualSectionB4Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstQualSectionB4 = -1;
        BindGridInstQualSectionB4();
    }

    protected void lnkInstQualSectionB4CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstQualSectionB4 = -1;
        BindGridInstQualSectionB4();
    }

    protected void lnkInstQualSectionB4Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstQualSectionB4.Visible = true;
        divAddInstQualSectionB4.Visible = false;
        this.EditIndexInstQualSectionB4 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstQualSectionB4 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstQualSectionB4();
            FillControlInstQualSectionB4(gvInstQualSectionB4, this.EditIndexInstQualSectionB4);
        }
    }

    protected void lnkInstQualSectionB4Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion
    #endregion

    #region Owner Information

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

    protected void btnOwnerInfoAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnOwnerInfo.Visible = false;
        divAddOwnerInfo.Visible = true;
        this.EditIndexOwnerInfo = -1;
        BindGridOwnerInfo();
    }
    protected void btnOwnerInfoAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnOwnerInfo.Visible = true;
        divAddOwnerInfo.Visible = false;
    }
    protected void lnkOwnerInfoAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnOwnerInfo.Visible = true;
        divAddOwnerInfo.Visible = false;
    }

    public void BindGridOwnerInfo()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOwnerInfo.EditIndex = this.EditIndexOwnerInfo;
        gvOwnerInfo.DataSource = ArryListName;
        gvOwnerInfo.DataBind();

        if (this.EditIndexOwnerInfo >= 0)
        {
            gvOwnerInfo.Rows[this.EditIndexOwnerInfo].CssClass = "RowInEditMode";
            gvOwnerInfo.Rows[this.EditIndexOwnerInfo].Cells[0].Attributes.Add("colspan", "7");
            gvOwnerInfo.Rows[this.EditIndexOwnerInfo].Cells[1].Visible = false;
            gvOwnerInfo.Rows[this.EditIndexOwnerInfo].Cells[2].Visible = false;
            gvOwnerInfo.Rows[this.EditIndexOwnerInfo].Cells[3].Visible = false;
            gvOwnerInfo.Rows[this.EditIndexOwnerInfo].Cells[4].Visible = false;
            gvOwnerInfo.Rows[this.EditIndexOwnerInfo].Cells[5].Visible = false;
            gvOwnerInfo.Rows[this.EditIndexOwnerInfo].Cells[6].Visible = false;


        }
    }

    protected void gvOwnerInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblOwnerInfo = e.Row.FindControl("lblOwnerInfo") as Label;
            Label lblownerInfLastName = e.Row.FindControl("lblownerInfLastName") as Label;
            Label lblownerInfFirstName = e.Row.FindControl("lblownerInfFirstName") as Label;
            Label lblownerPer = e.Row.FindControl("lblownerPer") as Label;
            Label lblownerInfoCity = e.Row.FindControl("lblownerInfoCity") as Label;
            Label lblownerInfState = e.Row.FindControl("lblownerInfState") as Label;

            if (lblOwnerInfo != null && lblownerInfLastName != null && lblownerInfFirstName != null && lblownerPer != null && lblownerInfoCity != null && lblownerInfState != null)
            {
                if (ROWLic == 0)
                {

                    lblOwnerInfo.Text = "Type";
                    lblownerInfLastName.Text = "Last Name1";
                    lblownerInfFirstName.Text = "First Name1";
                    lblownerPer.Text = "20";
                    lblownerInfoCity.Text = "Sacramento";
                    lblownerInfState.Text = "California";
                }
                else if (ROWLic == 1)
                {
                    lblOwnerInfo.Text = "Type";
                    lblownerInfLastName.Text = "Last Name2";
                    lblownerInfFirstName.Text = "First Name2";
                    lblownerPer.Text = "20";
                    lblownerInfoCity.Text = "Sacramento";
                    lblownerInfState.Text = "California";
                }
            }

            ROWLic++;

        }
    }

    protected void lnkOwnerInfoEdit_Click(object sender, EventArgs e)
    {
        divAddOwnerInfo.Visible = false;
        divAddbtnOwnerInfo.Visible = true;
        this.EditIndexOwnerInfo = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexOwnerInfo = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridOwnerInfo();
            FillControlOwnerInfo(gvOwnerInfo, this.EditIndexOwnerInfo);
        }
    }


    protected void lnkOwnerInfoDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlOwnerInfo(GridView gv, int EditInd)
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

    protected void btnOwnerInfoUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOwnerInfo = -1;
        BindGridOwnerInfo();
    }
    protected void lnkOwnerInfoCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOwnerInfo = -1;
        BindGridOwnerInfo();
    }

    #endregion


    #region Administrator

    #region School Attended

    public int EditIndexcollegeAtt1
    {
        get
        {
            if (ViewState["EditIndexcollegeAtt1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexcollegeAtt1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexcollegeAtt1"] = value;
        }
    }


    protected void ddlOwnAdminStaff_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlOwnAdminStaff.SelectedItem.Text == "Other (specify)")
        {
            trownadmintsf.Visible = true;
        }
        else
        {
            trownadmintsf.Visible = false;
        }
    }
    protected void btncollegeAtt1AddNew_Click(object sender, EventArgs e)
    {
        divBtnAddcollegeAtt1.Visible = false;
        divcollegeAtt1.Visible = true;
        this.EditIndexAdminInfo1 = -1;
        BindGridcollegeAtt1();
    }

    protected void btncollegeAtt1AddNewSave_Click(object sender, EventArgs e)
    {

        string strErrAdminiInfoAddPMSch;
        strErrAdminiInfoAddPMSch = "";

        if (txtAddAdminiInfoSchoolName.Text == "")
        {
            strErrAdminiInfoAddPMSch = "Please enter School Name.";
        }

        if (txtAddAdminiInfoCity.Text == "")
        {
            if (strErrAdminiInfoAddPMSch == "")
                strErrAdminiInfoAddPMSch = "Please enter City.";
            else
            {
                strErrAdminiInfoAddPMSch = strErrAdminiInfoAddPMSch + "<br />" + "Please enter City.";
            }
        }

        if (ddlAddAdminiInfoState.SelectedValue == "-1")
        {
            if (strErrAdminiInfoAddPMSch == "")
                strErrAdminiInfoAddPMSch = "Please select State.";
            else
            {
                strErrAdminiInfoAddPMSch = strErrAdminiInfoAddPMSch + "<br />" + "Please select State.";
            }
        }


        if (txtAddAdminiInfoDateOfGradu.Text == "")
        {
            if (strErrAdminiInfoAddPMSch == "")
                strErrAdminiInfoAddPMSch = "Please enter Date of Graduation.";
            else
            {
                strErrAdminiInfoAddPMSch = strErrAdminiInfoAddPMSch + "<br />" + "Please enter Date of Graduation.";
            }
        }



        if (strErrAdminiInfoAddPMSch == "")
        {
            divBtnAddcollegeAtt1.Visible = true;
            divcollegeAtt1.Visible = false;
        }
        else
        {
            lblErrAdminiInfoAddPMSch.Text = strErrAdminiInfoAddPMSch;
            dvErrAdminiInfoAddPMSch.Focus();
            dvErrAdminiInfoAddPMSch.Visible = true;
        }



    }
    protected void lnkcollegeAtt1AddNewCancel_Click(object sender, EventArgs e)
    {
        divBtnAddcollegeAtt1.Visible = true;
        divcollegeAtt1.Visible = false;
    }

    int ROWAI10 = 0;
    protected void gvCollegeAtt1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAI10 == 0)
                {

                    lblSchoolName.Text = "School1";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAI10 == 1)
                {
                    lblSchoolName.Text = "School12";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROWAI10++;

        }
    }

    public void BindGridcollegeAtt1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvCollegeAtt1.EditIndex = this.EditIndexcollegeAtt1;
        gvCollegeAtt1.DataSource = ArryListName;
        gvCollegeAtt1.DataBind();

        if (this.EditIndexcollegeAtt1 >= 0)
        {
            gvCollegeAtt1.Rows[this.EditIndexcollegeAtt1].CssClass = "RowInEditMode";
            gvCollegeAtt1.Rows[this.EditIndexcollegeAtt1].Cells[0].Attributes.Add("colspan", "6");
            gvCollegeAtt1.Rows[this.EditIndexcollegeAtt1].Cells[1].Visible = false;
            gvCollegeAtt1.Rows[this.EditIndexcollegeAtt1].Cells[2].Visible = false;
            gvCollegeAtt1.Rows[this.EditIndexcollegeAtt1].Cells[3].Visible = false;
            gvCollegeAtt1.Rows[this.EditIndexcollegeAtt1].Cells[4].Visible = false;

        }
    }

    public void FillControlCollegeAtt1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexcollegeAtt1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexcollegeAtt1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexcollegeAtt1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexcollegeAtt1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexcollegeAtt1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnCollegeAtt1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexcollegeAtt1 = -1;
        BindGridcollegeAtt1();
    }

    protected void lnkCollegeAtt1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexcollegeAtt1 = -1;
        BindGridcollegeAtt1();
    }

    protected void lnkcollegeAtt1Edit_Click(object sender, EventArgs e)
    {
        divBtnAddcollegeAtt1.Visible = true;
        divcollegeAtt1.Visible = false;
        this.EditIndexcollegeAtt1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexcollegeAtt1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridcollegeAtt1();
            FillControlCollegeAtt1(gvCollegeAtt1, this.EditIndexcollegeAtt1);
        }
    }

    protected void lnkcollegeAtt1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College Attended2

    public int EditIndexCollegeAtten2
    {
        get
        {
            if (ViewState["EditIndexCollegeAtten2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexCollegeAtten2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexCollegeAtten2"] = value;
        }
    }

    protected void btnCollegeAtten2AddNew_Click(object sender, EventArgs e)
    {
        divBtnAddCollegeAtten2.Visible = false;
        divAddCollegeAtten2.Visible = true;
        this.EditIndexCollegeAtten2 = -1;
        BindGridCollegeAtten2();
    }
    protected void btnCollegeAtten2AddNewSave_Click(object sender, EventArgs e)
    {
        divBtnAddCollegeAtten2.Visible = true;
        divAddCollegeAtten2.Visible = false;
    }
    protected void lnkCollegeAtten2AddNewCancel_Click(object sender, EventArgs e)
    {
        divBtnAddCollegeAtten2.Visible = true;
        divAddCollegeAtten2.Visible = false;
    }

    int ROWAI21 = 0;
    protected void gvCollegeAtten2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAI21 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAI21 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAI21++;

        }
    }

    public void BindGridCollegeAtten2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvCollegeAtten2.EditIndex = this.EditIndexCollegeAtten2;
        gvCollegeAtten2.DataSource = ArryListName;
        gvCollegeAtten2.DataBind();

        if (this.EditIndexCollegeAtten2 >= 0)
        {
            gvCollegeAtten2.Rows[this.EditIndexCollegeAtten2].CssClass = "RowInEditMode";
            gvCollegeAtten2.Rows[this.EditIndexCollegeAtten2].Cells[0].Attributes.Add("colspan", "6");
            gvCollegeAtten2.Rows[this.EditIndexCollegeAtten2].Cells[1].Visible = false;
            gvCollegeAtten2.Rows[this.EditIndexCollegeAtten2].Cells[2].Visible = false;
            gvCollegeAtten2.Rows[this.EditIndexCollegeAtten2].Cells[3].Visible = false;
            gvCollegeAtten2.Rows[this.EditIndexCollegeAtten2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexCollegeAtten2].Cells[5].Visible = false;

        }
    }

    public void FillControlCollegeAtten2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexCollegeAtten2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexCollegeAtten2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexCollegeAtten2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexCollegeAtten2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexCollegeAtten2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnCollegeAtten2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeAtten2 = -1;
        BindGridCollegeAtten2();
    }

    protected void lnkCollegeAtten2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeAtten2 = -1;
        BindGridCollegeAtten2();
    }

    protected void lnkCollegeAtten2Edit_Click(object sender, EventArgs e)
    {
        divBtnAddCollegeAtten2.Visible = true;
        divAddCollegeAtten2.Visible = false;
        this.EditIndexCollegeAtten2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexCollegeAtten2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridCollegeAtten2();
            FillControlCollegeAtten2(gvCollegeAtten2, this.EditIndexCollegeAtten2);
        }
    }

    protected void lnkCollegeAtten2Delete_Click(object sender, EventArgs e)
    {

    }


    #endregion

    #region College Work Experience

    public int EditIndexCollegeWrkExp1
    {
        get
        {
            if (ViewState["EditIndexCollegeWrkExp1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexCollegeWrkExp1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexCollegeWrkExp1"] = value;
        }
    }

    protected void btnCollegeWrkExp1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp1.Visible = false;
        divAddCollegeWrkExp1.Visible = true;
        this.EditIndexCollegeWrkExp1 = -1;
        BindGridCollegeWrkExp1();
    }
    protected void btnCollegeWrkExp1AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp1.Visible = true;
        divAddCollegeWrkExp1.Visible = false;
    }
    protected void lnkCollegeWrkExp1AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp1.Visible = true;
        divAddCollegeWrkExp1.Visible = false;
    }

    int ROWAWEColEx1 = 0;
    protected void gvCollegeWrkExp1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWEColEx1 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWEColEx1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWEColEx1++;

        }
    }

    public void BindGridCollegeWrkExp1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvCollegeWrkExp1.EditIndex = this.EditIndexCollegeWrkExp1;
        gvCollegeWrkExp1.DataSource = ArryListName;
        gvCollegeWrkExp1.DataBind();

        if (this.EditIndexCollegeWrkExp1 >= 0)
        {
            gvCollegeWrkExp1.Rows[this.EditIndexCollegeWrkExp1].CssClass = "RowInEditMode";
            gvCollegeWrkExp1.Rows[this.EditIndexCollegeWrkExp1].Cells[0].Attributes.Add("colspan", "6");
            gvCollegeWrkExp1.Rows[this.EditIndexCollegeWrkExp1].Cells[1].Visible = false;
            gvCollegeWrkExp1.Rows[this.EditIndexCollegeWrkExp1].Cells[2].Visible = false;
            gvCollegeWrkExp1.Rows[this.EditIndexCollegeWrkExp1].Cells[3].Visible = false;
            gvCollegeWrkExp1.Rows[this.EditIndexCollegeWrkExp1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexCollegeWrkExp1].Cells[5].Visible = false;

        }
    }

    public void FillControlCollegeWrkExp1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexCollegeWrkExp1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexCollegeWrkExp1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexCollegeWrkExp1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexCollegeWrkExp1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexCollegeWrkExp1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnCollegeWrkExp1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp1 = -1;
        BindGridCollegeWrkExp1();
    }

    protected void lnkCollegeWrkExp1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp1 = -1;
        BindGridCollegeWrkExp1();
    }

    protected void lnkCollegeWrkExp1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp1.Visible = true;
        divAddCollegeWrkExp1.Visible = false;
        this.EditIndexCollegeWrkExp1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexCollegeWrkExp1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridCollegeWrkExp1();
            FillControlCollegeWrkExp1(gvCollegeWrkExp1, this.EditIndexCollegeWrkExp1);
        }
    }

    protected void lnkCollegeWrkExp1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College Work Exp PREVIOUSLY Worked

    public int EditIndexCollegeWrkExp2
    {
        get
        {
            if (ViewState["EditIndexCollegeWrkExp2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexCollegeWrkExp2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexCollegeWrkExp2"] = value;
        }
    }

    protected void btnCollegeWrkExp2AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp2.Visible = false;
        divAddCollegeWrkExp2.Visible = true;
        this.EditIndexCollegeWrkExp2 = -1;
        BindGridCollegeWrkExp2();
    }
    protected void btnCollegeWrkExp2AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp2.Visible = true;
        divAddCollegeWrkExp2.Visible = false;
    }
    protected void lnkCollegeWrkExp2AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp2.Visible = true;
        divAddCollegeWrkExp2.Visible = false;
    }

    int ROWAWEX3 = 0;
    protected void gvCollegeWrkExp2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWEX3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWEX3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWEX3++;

        }
    }

    public void BindGridCollegeWrkExp2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvCollegeWrkExp2.EditIndex = this.EditIndexCollegeWrkExp2;
        gvCollegeWrkExp2.DataSource = ArryListName;
        gvCollegeWrkExp2.DataBind();

        if (this.EditIndexCollegeWrkExp2 >= 0)
        {
            gvCollegeWrkExp2.Rows[this.EditIndexCollegeWrkExp2].CssClass = "RowInEditMode";
            gvCollegeWrkExp2.Rows[this.EditIndexCollegeWrkExp2].Cells[0].Attributes.Add("colspan", "6");
            gvCollegeWrkExp2.Rows[this.EditIndexCollegeWrkExp2].Cells[1].Visible = false;
            gvCollegeWrkExp2.Rows[this.EditIndexCollegeWrkExp2].Cells[2].Visible = false;
            gvCollegeWrkExp2.Rows[this.EditIndexCollegeWrkExp2].Cells[3].Visible = false;
            gvCollegeWrkExp2.Rows[this.EditIndexCollegeWrkExp2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexCollegeWrkExp2].Cells[5].Visible = false;

        }
    }

    public void FillControlCollegeWrkExp2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexCollegeWrkExp2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexCollegeWrkExp2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexCollegeWrkExp2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexCollegeWrkExp2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexCollegeWrkExp2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnCollegeWrkExp2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp2 = -1;
        BindGridCollegeWrkExp2();
    }

    protected void lnkCollegeWrkExp2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp2 = -1;
        BindGridCollegeWrkExp2();
    }

    protected void lnkCollegeWrkExp2Edit_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp2.Visible = true;
        divAddCollegeWrkExp2.Visible = false;
        this.EditIndexCollegeWrkExp2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexCollegeWrkExp2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridCollegeWrkExp2();
            FillControlCollegeWrkExp2(gvCollegeWrkExp2, this.EditIndexCollegeWrkExp2);
        }
    }

    protected void lnkCollegeWrkExp2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College Massage Employment

    public int EditIndexCollegeWrkExp3
    {
        get
        {
            if (ViewState["EditIndexCollegeWrkExp3"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexCollegeWrkExp3"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexCollegeWrkExp3"] = value;
        }
    }

    protected void btnCollegeWrkExp3AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp3.Visible = false;
        divAddCollegeWrkExp3.Visible = true;
        this.EditIndexCollegeWrkExp3 = -1;
        BindGridCollegeWrkExp3();
    }
    protected void btnCollegeWrkExp3AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp3.Visible = true;
        divAddCollegeWrkExp3.Visible = false;
    }
    protected void lnkCollegeWrkExp3AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp3.Visible = true;
        divAddCollegeWrkExp3.Visible = false;
    }

    int ROWAWExp3 = 0;
    protected void gvCollegeWrkExp3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWExp3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWExp3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWExp3++;

        }
    }

    public void BindGridCollegeWrkExp3()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvCollegeWrkExp3.EditIndex = this.EditIndexCollegeWrkExp3;
        gvCollegeWrkExp3.DataSource = ArryListName;
        gvCollegeWrkExp3.DataBind();

        if (this.EditIndexCollegeWrkExp3 >= 0)
        {
            gvCollegeWrkExp3.Rows[this.EditIndexCollegeWrkExp3].CssClass = "RowInEditMode";
            gvCollegeWrkExp3.Rows[this.EditIndexCollegeWrkExp3].Cells[0].Attributes.Add("colspan", "6");
            gvCollegeWrkExp3.Rows[this.EditIndexCollegeWrkExp3].Cells[1].Visible = false;
            gvCollegeWrkExp3.Rows[this.EditIndexCollegeWrkExp3].Cells[2].Visible = false;
            gvCollegeWrkExp3.Rows[this.EditIndexCollegeWrkExp3].Cells[3].Visible = false;
            gvCollegeWrkExp3.Rows[this.EditIndexCollegeWrkExp3].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexCollegeWrkExp3].Cells[5].Visible = false;

        }
    }

    public void FillControlCollegeWrkExp3(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexCollegeWrkExp3].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexCollegeWrkExp3].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexCollegeWrkExp3].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexCollegeWrkExp3].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexCollegeWrkExp3].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnCollegeWrkExp3Update_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp3 = -1;
        BindGridCollegeWrkExp3();
    }

    protected void lnkCollegeWrkExp3CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp3 = -1;
        BindGridCollegeWrkExp3();
    }

    protected void lnkCollegeWrkExp3Edit_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp3.Visible = true;
        divAddCollegeWrkExp3.Visible = false;
        this.EditIndexCollegeWrkExp3 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexCollegeWrkExp3 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridCollegeWrkExp3();
            FillControlCollegeWrkExp3(gvCollegeWrkExp3, this.EditIndexCollegeWrkExp3);
        }
    }

    protected void lnkCollegeWrkExp3Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College PREVIOUS Massage Employment

    public int EditIndexCollegeWrkExp4
    {
        get
        {
            if (ViewState["EditIndexCollegeWrkExp4"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexCollegeWrkExp4"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexCollegeWrkExp4"] = value;
        }
    }

    protected void btnCollegeWrkExp4AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp4.Visible = false;
        divAddCollegeWrkExp4.Visible = true;
        this.EditIndexCollegeWrkExp4 = -1;
        BindGridCollegeWrkExp4();
    }
    protected void btnCollegeWrkExp4AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp4.Visible = true;
        divAddCollegeWrkExp4.Visible = false;
    }
    protected void lnkCollegeWrkExp4AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp4.Visible = true;
        divAddCollegeWrkExp4.Visible = false;
    }

    int ROWAWEx4 = 0;
    protected void gvCollegeWrkExp4_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWEx4 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWEx4 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWEx4++;

        }
    }

    public void BindGridCollegeWrkExp4()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvCollegeWrkExp4.EditIndex = this.EditIndexCollegeWrkExp4;
        gvCollegeWrkExp4.DataSource = ArryListName;
        gvCollegeWrkExp4.DataBind();

        if (this.EditIndexCollegeWrkExp4 >= 0)
        {
            gvCollegeWrkExp4.Rows[this.EditIndexCollegeWrkExp4].CssClass = "RowInEditMode";
            gvCollegeWrkExp4.Rows[this.EditIndexCollegeWrkExp4].Cells[0].Attributes.Add("colspan", "6");
            gvCollegeWrkExp4.Rows[this.EditIndexCollegeWrkExp4].Cells[1].Visible = false;
            gvCollegeWrkExp4.Rows[this.EditIndexCollegeWrkExp4].Cells[2].Visible = false;
            gvCollegeWrkExp4.Rows[this.EditIndexCollegeWrkExp4].Cells[3].Visible = false;
            gvCollegeWrkExp4.Rows[this.EditIndexCollegeWrkExp4].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexCollegeWrkExp4].Cells[5].Visible = false;

        }
    }

    public void FillControlCollegeWrkExp4(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexCollegeWrkExp4].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexCollegeWrkExp4].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexCollegeWrkExp4].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexCollegeWrkExp4].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexCollegeWrkExp4].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnCollegeWrkExp4Update_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp4 = -1;
        BindGridCollegeWrkExp4();
    }

    protected void lnkCollegeWrkExp4CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp4 = -1;
        BindGridCollegeWrkExp4();
    }

    protected void lnkCollegeWrkExp4Edit_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp4.Visible = true;
        divAddCollegeWrkExp4.Visible = false;
        this.EditIndexCollegeWrkExp4 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexCollegeWrkExp4 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridCollegeWrkExp4();
            FillControlCollegeWrkExp4(gvCollegeWrkExp4, this.EditIndexCollegeWrkExp4);
        }
    }

    protected void lnkCollegeWrkExp4Delete_Click(object sender, EventArgs e)
    {

    }



    protected void btnSaveAdministratorInformation_Click(object sender, EventArgs e)
    {
        string strErrStaffInfoAdministratorInfo;
        strErrStaffInfoAdministratorInfo = "";

        if (txtAdminiInfoLastName.Text == "")
        {
            strErrStaffInfoAdministratorInfo = "Please enter Last Name.";
        }

        if (txtAdminiInfoFirstName.Text == "")
        {
            if (strErrStaffInfoAdministratorInfo == "")
                strErrStaffInfoAdministratorInfo = "Please enter First Name.";
            else
            {
                strErrStaffInfoAdministratorInfo = strErrStaffInfoAdministratorInfo + "<br />" + "Please enter First Name.";
            }
        }


        if (txtAdminiInfoEmail.Text == "")
        {
            if (strErrStaffInfoAdministratorInfo == "")
                strErrStaffInfoAdministratorInfo = "Please enter Email.";
            else
            {
                strErrStaffInfoAdministratorInfo = strErrStaffInfoAdministratorInfo + "<br />" + "Please enter Email.";
            }
        }

        if (txtAdminiInfoHomeAddress.Text == "")
        {
            if (strErrStaffInfoAdministratorInfo == "")
                strErrStaffInfoAdministratorInfo = "Please enter Home Address.";
            else
            {
                strErrStaffInfoAdministratorInfo = strErrStaffInfoAdministratorInfo + "<br />" + "Please enter Home Address.";
            }
        }

        if (txtAdminiInfoCity.Text == "")
        {
            if (strErrStaffInfoAdministratorInfo == "")
                strErrStaffInfoAdministratorInfo = "Please enter City.";
            else
            {
                strErrStaffInfoAdministratorInfo = strErrStaffInfoAdministratorInfo + "<br />" + "Please enter City.";
            }
        }


        if (ddlAdminiInfoState.SelectedValue == "-1")
        {
            if (strErrStaffInfoAdministratorInfo == "")
                strErrStaffInfoAdministratorInfo = "Please select State.";
            else
            {
                strErrStaffInfoAdministratorInfo = strErrStaffInfoAdministratorInfo + "<br />" + "Please select State.";
            }
        }

        if (txtAdminiInfoZip.Text == "")
        {
            if (strErrStaffInfoAdministratorInfo == "")
                strErrStaffInfoAdministratorInfo = "Please enter Zip.";
            else
            {
                strErrStaffInfoAdministratorInfo = strErrStaffInfoAdministratorInfo + "<br />" + "Please enter Zip.";
            }
        }

        if (txtAdminiInfoDOB.Text == "")
        {
            if (strErrStaffInfoAdministratorInfo == "")
                strErrStaffInfoAdministratorInfo = "Please enter DOB.";
            else
            {
                strErrStaffInfoAdministratorInfo = strErrStaffInfoAdministratorInfo + "<br />" + "Please enter DOB.";
            }
        }

        if (txtAdminiInfoSignature.Text == "")
        {
            if (strErrStaffInfoAdministratorInfo == "")
                strErrStaffInfoAdministratorInfo = "Please enter Signature.";
            else
            {
                strErrStaffInfoAdministratorInfo = strErrStaffInfoAdministratorInfo + "<br />" + "Please enter Signature.";
            }
        }


        if (txtAdminiInfoDate.Text == "")
        {
            if (strErrStaffInfoAdministratorInfo == "")
                strErrStaffInfoAdministratorInfo = "Please enter Date.";
            else
            {
                strErrStaffInfoAdministratorInfo = strErrStaffInfoAdministratorInfo + "<br />" + "Please enter Date.";
            }
        }

        if (strErrStaffInfoAdministratorInfo == "")
        {

        }
        else
        {
            lblErrStaffInfoAdministratorInfo.Text = strErrStaffInfoAdministratorInfo;
            dvErrStaffInfoAdministratorInfo.Focus();
            dvErrStaffInfoAdministratorInfo.Visible = true;
        }
    }


    protected void lbCancelAdministratorInformation_Click(object sender, EventArgs e)
    {
        dvErrStaffInfoAdministratorInfo.Visible = false;
    }

    #endregion


    #region History  Administrator

    #region HistoryQ1
    protected void rblAdministHistoryQ1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdministHistoryQ1.SelectedItem.Text == "Yes")
        {
            divAdminist1.Visible = true;
        }
        else
        {
            divAdminist1.Visible = false;
        }
    }

    #endregion
    #region HistoryQ2
    protected void rblAdministHistoryQ2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdministHistoryQ2.SelectedItem.Text == "Yes")
        {
            divAdminist2.Visible = true;
        }
        else
        {
            divAdminist2.Visible = false;
        }
    }

    #endregion
    #region HistoryQ3
    protected void rblAdministHistoryQ3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdministHistoryQ3.SelectedItem.Text == "Yes")
        {
            divAdminist3.Visible = true;
        }
        else
        {
            divAdminist3.Visible = false;
        }
    }

    #endregion
    #region HistoryQ4
    protected void rblAdministHistoryQ4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdministHistoryQ4.SelectedItem.Text == "Yes")
        {
            divAdminist4.Visible = true;
        }
        else
        {
            divAdminist4.Visible = false;
        }
    }

    #endregion
    #region HistoryQ5
    protected void rblAdministHistoryQ5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdministHistoryQ5.SelectedItem.Text == "Yes")
        {
            divAdminist5.Visible = true;
        }
        else
        {
            divAdminist5.Visible = false;
        }
    }

    #endregion


    #endregion

    #endregion


    #region Staff Info OWNER-ADMINISTRATOR

    #region School Attended for OWNER-ADMINISTRATOR

    public int EditIndexOAcollegeAtt1
    {
        get
        {
            if (ViewState["EditIndexOAcollegeAtt1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOAcollegeAtt1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOAcollegeAtt1"] = value;
        }
    }
    protected void btnOAcollegeAtt1AddNew_Click(object sender, EventArgs e)
    {
        divBtnAddOAcollegeAtt1.Visible = false;
        divOAcollegeAtt1.Visible = true;
        this.EditIndexAdminInfo1 = -1;
        BindGridOAcollegeAtt1();
    }

    protected void btnOAcollegeAtt1AddNewSave_Click(object sender, EventArgs e)
    {
        divBtnAddOAcollegeAtt1.Visible = true;
        divOAcollegeAtt1.Visible = false;
    }
    protected void lnkOAcollegeAtt1AddNewCancel_Click(object sender, EventArgs e)
    {
        divBtnAddOAcollegeAtt1.Visible = true;
        divOAcollegeAtt1.Visible = false;
    }

    int ROAOWAI10 = 0;
    protected void gvOAcollegeAtt1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROAOWAI10 == 0)
                {

                    lblSchoolName.Text = "School1";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROAOWAI10 == 1)
                {
                    lblSchoolName.Text = "School12";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROAOWAI10++;

        }
    }

    public void BindGridOAcollegeAtt1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOAcollegeAtt1.EditIndex = this.EditIndexOAcollegeAtt1;
        gvOAcollegeAtt1.DataSource = ArryListName;
        gvOAcollegeAtt1.DataBind();

        if (this.EditIndexOAcollegeAtt1 >= 0)
        {
            gvOAcollegeAtt1.Rows[this.EditIndexOAcollegeAtt1].CssClass = "RowInEditMode";
            gvOAcollegeAtt1.Rows[this.EditIndexOAcollegeAtt1].Cells[0].Attributes.Add("colspan", "6");
            gvOAcollegeAtt1.Rows[this.EditIndexOAcollegeAtt1].Cells[1].Visible = false;
            gvOAcollegeAtt1.Rows[this.EditIndexOAcollegeAtt1].Cells[2].Visible = false;
            gvOAcollegeAtt1.Rows[this.EditIndexOAcollegeAtt1].Cells[3].Visible = false;
            gvOAcollegeAtt1.Rows[this.EditIndexOAcollegeAtt1].Cells[4].Visible = false;

        }
    }

    public void FillControlOAcollegeAtt1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOAcollegeAtt1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOAcollegeAtt1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOAcollegeAtt1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOAcollegeAtt1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOAcollegeAtt1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOAcollegeAtt1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOAcollegeAtt1 = -1;
        BindGridOAcollegeAtt1();
    }

    protected void lnkOAcollegeAtt1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOAcollegeAtt1 = -1;
        BindGridOAcollegeAtt1();
    }

    protected void lnkOAcollegeAtt1Edit_Click(object sender, EventArgs e)
    {
        divBtnAddOAcollegeAtt1.Visible = true;
        divOAcollegeAtt1.Visible = false;
        this.EditIndexOAcollegeAtt1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOAcollegeAtt1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOAcollegeAtt1();
            FillControlOAcollegeAtt1(gvOAcollegeAtt1, this.EditIndexOAcollegeAtt1);
        }
    }

    protected void lnkOAcollegeAtt1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College Attended2

    public int EditIndexOACollegeAtten2
    {
        get
        {
            if (ViewState["EditIndexOACollegeAtten2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOACollegeAtten2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOACollegeAtten2"] = value;
        }
    }

    protected void btnOACollegeAtten2AddNew_Click(object sender, EventArgs e)
    {
        divBtnAddOACollegeAtten2.Visible = false;
        divAddOACollegeAtten2.Visible = true;
        this.EditIndexOACollegeAtten2 = -1;
        BindGridOACollegeAtten2();
    }
    protected void btnOACollegeAtten2AddNewSave_Click(object sender, EventArgs e)
    {
        divBtnAddOACollegeAtten2.Visible = true;
        divAddOACollegeAtten2.Visible = false;
    }
    protected void lnkOACollegeAtten2AddNewCancel_Click(object sender, EventArgs e)
    {
        divBtnAddOACollegeAtten2.Visible = true;
        divAddOACollegeAtten2.Visible = false;
    }

    int ROAOWAI21 = 0;
    protected void gvOACollegeAtten2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROAOWAI21 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROAOWAI21 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROAOWAI21++;

        }
    }

    public void BindGridOACollegeAtten2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOACollegeAtten2.EditIndex = this.EditIndexOACollegeAtten2;
        gvOACollegeAtten2.DataSource = ArryListName;
        gvOACollegeAtten2.DataBind();

        if (this.EditIndexOACollegeAtten2 >= 0)
        {
            gvOACollegeAtten2.Rows[this.EditIndexOACollegeAtten2].CssClass = "RowInEditMode";
            gvOACollegeAtten2.Rows[this.EditIndexOACollegeAtten2].Cells[0].Attributes.Add("colspan", "6");
            gvOACollegeAtten2.Rows[this.EditIndexOACollegeAtten2].Cells[1].Visible = false;
            gvOACollegeAtten2.Rows[this.EditIndexOACollegeAtten2].Cells[2].Visible = false;
            gvOACollegeAtten2.Rows[this.EditIndexOACollegeAtten2].Cells[3].Visible = false;
            gvOACollegeAtten2.Rows[this.EditIndexOACollegeAtten2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOACollegeAtten2].Cells[5].Visible = false;

        }
    }

    public void FillControlOACollegeAtten2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOACollegeAtten2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOACollegeAtten2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOACollegeAtten2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOACollegeAtten2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOACollegeAtten2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOACollegeAtten2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOACollegeAtten2 = -1;
        BindGridOACollegeAtten2();
    }

    protected void lnkOACollegeAtten2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOACollegeAtten2 = -1;
        BindGridOACollegeAtten2();
    }

    protected void lnkOACollegeAtten2Edit_Click(object sender, EventArgs e)
    {
        divBtnAddOACollegeAtten2.Visible = true;
        divAddOACollegeAtten2.Visible = false;
        this.EditIndexOACollegeAtten2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOACollegeAtten2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOACollegeAtten2();
            FillControlOACollegeAtten2(gvOACollegeAtten2, this.EditIndexOACollegeAtten2);
        }
    }

    protected void lnkOACollegeAtten2Delete_Click(object sender, EventArgs e)
    {

    }


    #endregion

    #region College Work Experience

    public int EditIndexOACollegeWrkExp1
    {
        get
        {
            if (ViewState["EditIndexOACollegeWrkExp1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOACollegeWrkExp1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOACollegeWrkExp1"] = value;
        }
    }

    protected void btnOACollegeWrkExp1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp1.Visible = false;
        divAddOACollegeWrkExp1.Visible = true;
        this.EditIndexOACollegeWrkExp1 = -1;
        BindGridOACollegeWrkExp1();
    }
    protected void btnOACollegeWrkExp1AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp1.Visible = true;
        divAddOACollegeWrkExp1.Visible = false;
    }
    protected void lnkOACollegeWrkExp1AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp1.Visible = true;
        divAddOACollegeWrkExp1.Visible = false;
    }

    int ROWAWEAOColEx1 = 0;
    protected void gvOACollegeWrkExp1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWEAOColEx1 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWEAOColEx1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWEAOColEx1++;

        }
    }

    public void BindGridOACollegeWrkExp1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOACollegeWrkExp1.EditIndex = this.EditIndexOACollegeWrkExp1;
        gvOACollegeWrkExp1.DataSource = ArryListName;
        gvOACollegeWrkExp1.DataBind();

        if (this.EditIndexOACollegeWrkExp1 >= 0)
        {
            gvOACollegeWrkExp1.Rows[this.EditIndexOACollegeWrkExp1].CssClass = "RowInEditMode";
            gvOACollegeWrkExp1.Rows[this.EditIndexOACollegeWrkExp1].Cells[0].Attributes.Add("colspan", "6");
            gvOACollegeWrkExp1.Rows[this.EditIndexOACollegeWrkExp1].Cells[1].Visible = false;
            gvOACollegeWrkExp1.Rows[this.EditIndexOACollegeWrkExp1].Cells[2].Visible = false;
            gvOACollegeWrkExp1.Rows[this.EditIndexOACollegeWrkExp1].Cells[3].Visible = false;
            gvOACollegeWrkExp1.Rows[this.EditIndexOACollegeWrkExp1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOACollegeWrkExp1].Cells[5].Visible = false;

        }
    }

    public void FillControlOACollegeWrkExp1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOACollegeWrkExp1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOACollegeWrkExp1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOACollegeWrkExp1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOACollegeWrkExp1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOACollegeWrkExp1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOACollegeWrkExp1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOACollegeWrkExp1 = -1;
        BindGridOACollegeWrkExp1();
    }

    protected void lnkOACollegeWrkExp1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOACollegeWrkExp1 = -1;
        BindGridOACollegeWrkExp1();
    }

    protected void lnkOACollegeWrkExp1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp1.Visible = true;
        divAddOACollegeWrkExp1.Visible = false;
        this.EditIndexOACollegeWrkExp1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOACollegeWrkExp1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOACollegeWrkExp1();
            FillControlOACollegeWrkExp1(gvOACollegeWrkExp1, this.EditIndexOACollegeWrkExp1);
        }
    }

    protected void lnkOACollegeWrkExp1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College Work Exp PREVIOUSLY Worked

    public int EditIndexOACollegeWrkExp2
    {
        get
        {
            if (ViewState["EditIndexOACollegeWrkExp2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOACollegeWrkExp2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOACollegeWrkExp2"] = value;
        }
    }

    protected void btnOACollegeWrkExp2AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp2.Visible = false;
        divAddOACollegeWrkExp2.Visible = true;
        this.EditIndexOACollegeWrkExp2 = -1;
        BindGridOACollegeWrkExp2();
    }
    protected void btnOACollegeWrkExp2AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp2.Visible = true;
        divAddOACollegeWrkExp2.Visible = false;
    }
    protected void lnkOACollegeWrkExp2AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp2.Visible = true;
        divAddOACollegeWrkExp2.Visible = false;
    }

    int ROWAWAOEX3 = 0;
    protected void gvOACollegeWrkExp2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWAOEX3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWAOEX3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWAOEX3++;

        }
    }

    public void BindGridOACollegeWrkExp2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOACollegeWrkExp2.EditIndex = this.EditIndexOACollegeWrkExp2;
        gvOACollegeWrkExp2.DataSource = ArryListName;
        gvOACollegeWrkExp2.DataBind();

        if (this.EditIndexOACollegeWrkExp2 >= 0)
        {
            gvOACollegeWrkExp2.Rows[this.EditIndexOACollegeWrkExp2].CssClass = "RowInEditMode";
            gvOACollegeWrkExp2.Rows[this.EditIndexOACollegeWrkExp2].Cells[0].Attributes.Add("colspan", "6");
            gvOACollegeWrkExp2.Rows[this.EditIndexOACollegeWrkExp2].Cells[1].Visible = false;
            gvOACollegeWrkExp2.Rows[this.EditIndexOACollegeWrkExp2].Cells[2].Visible = false;
            gvOACollegeWrkExp2.Rows[this.EditIndexOACollegeWrkExp2].Cells[3].Visible = false;
            gvOACollegeWrkExp2.Rows[this.EditIndexOACollegeWrkExp2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOACollegeWrkExp2].Cells[5].Visible = false;

        }
    }

    public void FillControlOACollegeWrkExp2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOACollegeWrkExp2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOACollegeWrkExp2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOACollegeWrkExp2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOACollegeWrkExp2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOACollegeWrkExp2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOACollegeWrkExp2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOACollegeWrkExp2 = -1;
        BindGridOACollegeWrkExp2();
    }

    protected void lnkOACollegeWrkExp2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOACollegeWrkExp2 = -1;
        BindGridOACollegeWrkExp2();
    }

    protected void lnkOACollegeWrkExp2Edit_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp2.Visible = true;
        divAddOACollegeWrkExp2.Visible = false;
        this.EditIndexOACollegeWrkExp2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOACollegeWrkExp2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOACollegeWrkExp2();
            FillControlOACollegeWrkExp2(gvOACollegeWrkExp2, this.EditIndexOACollegeWrkExp2);
        }
    }

    protected void lnkOACollegeWrkExp2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College Massage Employment

    public int EditIndexOACollegeWrkExp3
    {
        get
        {
            if (ViewState["EditIndexOACollegeWrkExp3"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOACollegeWrkExp3"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOACollegeWrkExp3"] = value;
        }
    }

    protected void btnOACollegeWrkExp3AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp3.Visible = false;
        divAddOACollegeWrkExp3.Visible = true;
        this.EditIndexOACollegeWrkExp3 = -1;
        BindGridOACollegeWrkExp3();
    }
    protected void btnOACollegeWrkExp3AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp3.Visible = true;
        divAddOACollegeWrkExp3.Visible = false;
    }
    protected void lnkOACollegeWrkExp3AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp3.Visible = true;
        divAddOACollegeWrkExp3.Visible = false;
    }

    int ROWAWAOExp3 = 0;
    protected void gvOACollegeWrkExp3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWAOExp3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWAOExp3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWAOExp3++;

        }
    }

    public void BindGridOACollegeWrkExp3()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOACollegeWrkExp3.EditIndex = this.EditIndexOACollegeWrkExp3;
        gvOACollegeWrkExp3.DataSource = ArryListName;
        gvOACollegeWrkExp3.DataBind();

        if (this.EditIndexOACollegeWrkExp3 >= 0)
        {
            gvOACollegeWrkExp3.Rows[this.EditIndexOACollegeWrkExp3].CssClass = "RowInEditMode";
            gvOACollegeWrkExp3.Rows[this.EditIndexOACollegeWrkExp3].Cells[0].Attributes.Add("colspan", "6");
            gvOACollegeWrkExp3.Rows[this.EditIndexOACollegeWrkExp3].Cells[1].Visible = false;
            gvOACollegeWrkExp3.Rows[this.EditIndexOACollegeWrkExp3].Cells[2].Visible = false;
            gvOACollegeWrkExp3.Rows[this.EditIndexOACollegeWrkExp3].Cells[3].Visible = false;
            gvOACollegeWrkExp3.Rows[this.EditIndexOACollegeWrkExp3].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOACollegeWrkExp3].Cells[5].Visible = false;

        }
    }

    public void FillControlOACollegeWrkExp3(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOACollegeWrkExp3].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOACollegeWrkExp3].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOACollegeWrkExp3].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOACollegeWrkExp3].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOACollegeWrkExp3].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOACollegeWrkExp3Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOACollegeWrkExp3 = -1;
        BindGridOACollegeWrkExp3();
    }

    protected void lnkOACollegeWrkExp3CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOACollegeWrkExp3 = -1;
        BindGridOACollegeWrkExp3();
    }

    protected void lnkOACollegeWrkExp3Edit_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp3.Visible = true;
        divAddOACollegeWrkExp3.Visible = false;
        this.EditIndexOACollegeWrkExp3 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOACollegeWrkExp3 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOACollegeWrkExp3();
            FillControlOACollegeWrkExp3(gvOACollegeWrkExp3, this.EditIndexOACollegeWrkExp3);
        }
    }

    protected void lnkOACollegeWrkExp3Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College PREVIOUS Massage Employment

    public int EditIndexOACollegeWrkExp4
    {
        get
        {
            if (ViewState["EditIndexOACollegeWrkExp4"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOACollegeWrkExp4"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOACollegeWrkExp4"] = value;
        }
    }

    protected void btnOACollegeWrkExp4AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp4.Visible = false;
        divAddOACollegeWrkExp4.Visible = true;
        this.EditIndexOACollegeWrkExp4 = -1;
        BindGridOACollegeWrkExp4();
    }
    protected void btnOACollegeWrkExp4AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp4.Visible = true;
        divAddOACollegeWrkExp4.Visible = false;
    }
    protected void lnkOACollegeWrkExp4AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp4.Visible = true;
        divAddOACollegeWrkExp4.Visible = false;
    }

    int ROWAOAWEx4 = 0;
    protected void gvOACollegeWrkExp4_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAOAWEx4 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAOAWEx4 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAOAWEx4++;

        }
    }

    public void BindGridOACollegeWrkExp4()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOACollegeWrkExp4.EditIndex = this.EditIndexOACollegeWrkExp4;
        gvOACollegeWrkExp4.DataSource = ArryListName;
        gvOACollegeWrkExp4.DataBind();

        if (this.EditIndexOACollegeWrkExp4 >= 0)
        {
            gvOACollegeWrkExp4.Rows[this.EditIndexOACollegeWrkExp4].CssClass = "RowInEditMode";
            gvOACollegeWrkExp4.Rows[this.EditIndexOACollegeWrkExp4].Cells[0].Attributes.Add("colspan", "6");
            gvOACollegeWrkExp4.Rows[this.EditIndexOACollegeWrkExp4].Cells[1].Visible = false;
            gvOACollegeWrkExp4.Rows[this.EditIndexOACollegeWrkExp4].Cells[2].Visible = false;
            gvOACollegeWrkExp4.Rows[this.EditIndexOACollegeWrkExp4].Cells[3].Visible = false;
            gvOACollegeWrkExp4.Rows[this.EditIndexOACollegeWrkExp4].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOACollegeWrkExp4].Cells[5].Visible = false;

        }
    }

    public void FillControlOACollegeWrkExp4(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOACollegeWrkExp4].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOACollegeWrkExp4].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOACollegeWrkExp4].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOACollegeWrkExp4].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOACollegeWrkExp4].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOACollegeWrkExp4Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOACollegeWrkExp4 = -1;
        BindGridOACollegeWrkExp4();
    }

    protected void lnkOACollegeWrkExp4CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOACollegeWrkExp4 = -1;
        BindGridOACollegeWrkExp4();
    }

    protected void lnkOACollegeWrkExp4Edit_Click(object sender, EventArgs e)
    {
        divAddBtnOACollegeWrkExp4.Visible = true;
        divAddOACollegeWrkExp4.Visible = false;
        this.EditIndexOACollegeWrkExp4 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOACollegeWrkExp4 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOACollegeWrkExp4();
            FillControlOACollegeWrkExp4(gvOACollegeWrkExp4, this.EditIndexOACollegeWrkExp4);
        }
    }

    protected void lnkOACollegeWrkExp4Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region History

    #region owner HistoryQ1
    protected void rblOwnerAdminHistoryQ1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerAdminHistoryQ1.SelectedItem.Text == "Yes")
        {
            divOwnerAdminhist1.Visible = true;
        }
        else
        {
            divOwnerAdminhist1.Visible = false;
        }
    }

    #endregion
    #region HistoryQ2
    protected void rblOwnerAdminHistoryQ2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerAdminHistoryQ2.SelectedItem.Text == "Yes")
        {
            divOwnerAdminhist2.Visible = true;
        }
        else
        {
            divOwnerAdminhist2.Visible = false;
        }
    }
    //protected void btnAddHist2_Click(object sender, EventArgs e)
    //{
    //    divgvhist2.Visible = true;
    //}
    #endregion
    #region HistoryQ3
    protected void rblOwnerAdminHistoryQ3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerAdminHistoryQ3.SelectedItem.Text == "Yes")
        {
            divOwnerAdminhist3.Visible = true;
        }
        else
        {
            divOwnerAdminhist3.Visible = false;
        }
    }
    //protected void btnAddHist3_Click(object sender, EventArgs e)
    //{
    //    divgvhist3.Visible = true;
    //}
    #endregion
    #region HistoryQ4
    protected void rblOwnerAdminHistoryQ4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerAdminHistoryQ4.SelectedItem.Text == "Yes")
        {
            divOwnerAdminhist4.Visible = true;
        }
        else
        {
            divOwnerAdminhist4.Visible = false;
        }
    }
    //protected void btnAddHist4_Click(object sender, EventArgs e)
    //{
    //    divgvhist4.Visible = true;
    //}
    #endregion
    #region HistoryQ5
    protected void rblOwnerAdminHistoryQ5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerAdminHistoryQ5.SelectedItem.Text == "Yes")
        {
            divOwnerAdminhist5.Visible = true;
        }
        else
        {
            divOwnerAdminhist5.Visible = false;
        }
    }
    //protected void btnAddHist5_Click(object sender, EventArgs e)
    //{
    //    divgvhist5.Visible = true;
    //}
    #endregion


    #endregion

    #endregion

    #region Staff Info OWNER-ADMINISTRATOR-INSTRUCTOR

    #region School Attended for OWNER-ADMINISTRATOR

    public int EditIndexOAIcollegeAtt1
    {
        get
        {
            if (ViewState["EditIndexOAIcollegeAtt1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOAIcollegeAtt1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOAIcollegeAtt1"] = value;
        }
    }
    protected void btnOAIcollegeAtt1AddNew_Click(object sender, EventArgs e)
    {
        divBtnAddOAIcollegeAtt1.Visible = false;
        divOAIcollegeAtt1.Visible = true;
        this.EditIndexAdminInfo1 = -1;
        BindGridOAIcollegeAtt1();
    }

    protected void btnOAIcollegeAtt1AddNewSave_Click(object sender, EventArgs e)
    {
        divBtnAddOAIcollegeAtt1.Visible = true;
        divOAIcollegeAtt1.Visible = false;
    }
    protected void lnkOAIcollegeAtt1AddNewCancel_Click(object sender, EventArgs e)
    {
        divBtnAddOAIcollegeAtt1.Visible = true;
        divOAIcollegeAtt1.Visible = false;
    }

    int ROAOIWAI10 = 0;
    protected void gvOAIcollegeAtt1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROAOIWAI10 == 0)
                {

                    lblSchoolName.Text = "School1";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROAOIWAI10 == 1)
                {
                    lblSchoolName.Text = "School12";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROAOIWAI10++;

        }
    }

    public void BindGridOAIcollegeAtt1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOAIcollegeAtt1.EditIndex = this.EditIndexOAIcollegeAtt1;
        gvOAIcollegeAtt1.DataSource = ArryListName;
        gvOAIcollegeAtt1.DataBind();

        if (this.EditIndexOAIcollegeAtt1 >= 0)
        {
            gvOAIcollegeAtt1.Rows[this.EditIndexOAIcollegeAtt1].CssClass = "RowInEditMode";
            gvOAIcollegeAtt1.Rows[this.EditIndexOAIcollegeAtt1].Cells[0].Attributes.Add("colspan", "6");
            gvOAIcollegeAtt1.Rows[this.EditIndexOAIcollegeAtt1].Cells[1].Visible = false;
            gvOAIcollegeAtt1.Rows[this.EditIndexOAIcollegeAtt1].Cells[2].Visible = false;
            gvOAIcollegeAtt1.Rows[this.EditIndexOAIcollegeAtt1].Cells[3].Visible = false;
            gvOAIcollegeAtt1.Rows[this.EditIndexOAIcollegeAtt1].Cells[4].Visible = false;

        }
    }

    public void FillControlOAIcollegeAtt1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOAIcollegeAtt1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOAIcollegeAtt1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOAIcollegeAtt1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOAIcollegeAtt1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOAIcollegeAtt1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOAIcollegeAtt1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOAIcollegeAtt1 = -1;
        BindGridOAIcollegeAtt1();
    }

    protected void lnkOAIcollegeAtt1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOAIcollegeAtt1 = -1;
        BindGridOAIcollegeAtt1();
    }

    protected void lnkOAIcollegeAtt1Edit_Click(object sender, EventArgs e)
    {
        divBtnAddOAIcollegeAtt1.Visible = true;
        divOAIcollegeAtt1.Visible = false;
        this.EditIndexOAIcollegeAtt1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOAIcollegeAtt1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOAIcollegeAtt1();
            FillControlOAIcollegeAtt1(gvOAIcollegeAtt1, this.EditIndexOAIcollegeAtt1);
        }
    }

    protected void lnkOAIcollegeAtt1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College Attended2

    public int EditIndexOAICollegeAtten2
    {
        get
        {
            if (ViewState["EditIndexOAICollegeAtten2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOAICollegeAtten2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOAICollegeAtten2"] = value;
        }
    }

    protected void btnOAICollegeAtten2AddNew_Click(object sender, EventArgs e)
    {
        divBtnAddOAICollegeAtten2.Visible = false;
        divAddOAICollegeAtten2.Visible = true;
        this.EditIndexOAICollegeAtten2 = -1;
        BindGridOAICollegeAtten2();
    }
    protected void btnOAICollegeAtten2AddNewSave_Click(object sender, EventArgs e)
    {
        divBtnAddOAICollegeAtten2.Visible = true;
        divAddOAICollegeAtten2.Visible = false;
    }
    protected void lnkOAICollegeAtten2AddNewCancel_Click(object sender, EventArgs e)
    {
        divBtnAddOAICollegeAtten2.Visible = true;
        divAddOAICollegeAtten2.Visible = false;
    }

    int ROAOIWAI21 = 0;
    protected void gvOAICollegeAtten2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROAOIWAI21 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROAOIWAI21 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROAOIWAI21++;

        }
    }

    public void BindGridOAICollegeAtten2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOAICollegeAtten2.EditIndex = this.EditIndexOAICollegeAtten2;
        gvOAICollegeAtten2.DataSource = ArryListName;
        gvOAICollegeAtten2.DataBind();

        if (this.EditIndexOAICollegeAtten2 >= 0)
        {
            gvOAICollegeAtten2.Rows[this.EditIndexOAICollegeAtten2].CssClass = "RowInEditMode";
            gvOAICollegeAtten2.Rows[this.EditIndexOAICollegeAtten2].Cells[0].Attributes.Add("colspan", "6");
            gvOAICollegeAtten2.Rows[this.EditIndexOAICollegeAtten2].Cells[1].Visible = false;
            gvOAICollegeAtten2.Rows[this.EditIndexOAICollegeAtten2].Cells[2].Visible = false;
            gvOAICollegeAtten2.Rows[this.EditIndexOAICollegeAtten2].Cells[3].Visible = false;
            gvOAICollegeAtten2.Rows[this.EditIndexOAICollegeAtten2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOAICollegeAtten2].Cells[5].Visible = false;

        }
    }

    public void FillControlOAICollegeAtten2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOAICollegeAtten2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOAICollegeAtten2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOAICollegeAtten2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOAICollegeAtten2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOAICollegeAtten2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOAICollegeAtten2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOAICollegeAtten2 = -1;
        BindGridOAICollegeAtten2();
    }

    protected void lnkOAICollegeAtten2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOAICollegeAtten2 = -1;
        BindGridOAICollegeAtten2();
    }

    protected void lnkOAICollegeAtten2Edit_Click(object sender, EventArgs e)
    {
        divBtnAddOAICollegeAtten2.Visible = true;
        divAddOAICollegeAtten2.Visible = false;
        this.EditIndexOAICollegeAtten2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOAICollegeAtten2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOAICollegeAtten2();
            FillControlOAICollegeAtten2(gvOAICollegeAtten2, this.EditIndexOAICollegeAtten2);
        }
    }

    protected void lnkOAICollegeAtten2Delete_Click(object sender, EventArgs e)
    {

    }


    #endregion

    #region College Work Experience

    public int EditIndexOAICollegeWrkExp1
    {
        get
        {
            if (ViewState["EditIndexOAICollegeWrkExp1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOAICollegeWrkExp1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOAICollegeWrkExp1"] = value;
        }
    }

    protected void btnOAICollegeWrkExp1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp1.Visible = false;
        divAddOAICollegeWrkExp1.Visible = true;
        this.EditIndexOAICollegeWrkExp1 = -1;
        BindGridOAICollegeWrkExp1();
    }
    protected void btnOAICollegeWrkExp1AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp1.Visible = true;
        divAddOAICollegeWrkExp1.Visible = false;
    }
    protected void lnkOAICollegeWrkExp1AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp1.Visible = true;
        divAddOAICollegeWrkExp1.Visible = false;
    }

    int ROWAWEAOIColEx1 = 0;
    protected void gvOAICollegeWrkExp1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWEAOIColEx1 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWEAOIColEx1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWEAOIColEx1++;

        }
    }

    public void BindGridOAICollegeWrkExp1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOAICollegeWrkExp1.EditIndex = this.EditIndexOAICollegeWrkExp1;
        gvOAICollegeWrkExp1.DataSource = ArryListName;
        gvOAICollegeWrkExp1.DataBind();

        if (this.EditIndexOAICollegeWrkExp1 >= 0)
        {
            gvOAICollegeWrkExp1.Rows[this.EditIndexOAICollegeWrkExp1].CssClass = "RowInEditMode";
            gvOAICollegeWrkExp1.Rows[this.EditIndexOAICollegeWrkExp1].Cells[0].Attributes.Add("colspan", "6");
            gvOAICollegeWrkExp1.Rows[this.EditIndexOAICollegeWrkExp1].Cells[1].Visible = false;
            gvOAICollegeWrkExp1.Rows[this.EditIndexOAICollegeWrkExp1].Cells[2].Visible = false;
            gvOAICollegeWrkExp1.Rows[this.EditIndexOAICollegeWrkExp1].Cells[3].Visible = false;
            gvOAICollegeWrkExp1.Rows[this.EditIndexOAICollegeWrkExp1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOAICollegeWrkExp1].Cells[5].Visible = false;

        }
    }

    public void FillControlOAICollegeWrkExp1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOAICollegeWrkExp1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOAICollegeWrkExp1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOAICollegeWrkExp1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOAICollegeWrkExp1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOAICollegeWrkExp1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOAICollegeWrkExp1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOAICollegeWrkExp1 = -1;
        BindGridOAICollegeWrkExp1();
    }

    protected void lnkOAICollegeWrkExp1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOAICollegeWrkExp1 = -1;
        BindGridOAICollegeWrkExp1();
    }

    protected void lnkOAICollegeWrkExp1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp1.Visible = true;
        divAddOAICollegeWrkExp1.Visible = false;
        this.EditIndexOAICollegeWrkExp1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOAICollegeWrkExp1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOAICollegeWrkExp1();
            FillControlOAICollegeWrkExp1(gvOAICollegeWrkExp1, this.EditIndexOAICollegeWrkExp1);
        }
    }

    protected void lnkOAICollegeWrkExp1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College Work Exp PREVIOUSLY Worked

    public int EditIndexOAICollegeWrkExp2
    {
        get
        {
            if (ViewState["EditIndexOAICollegeWrkExp2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOAICollegeWrkExp2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOAICollegeWrkExp2"] = value;
        }
    }

    protected void btnOAICollegeWrkExp2AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp2.Visible = false;
        divAddOAICollegeWrkExp2.Visible = true;
        this.EditIndexOAICollegeWrkExp2 = -1;
        BindGridOAICollegeWrkExp2();
    }
    protected void btnOAICollegeWrkExp2AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp2.Visible = true;
        divAddOAICollegeWrkExp2.Visible = false;
    }
    protected void lnkOAICollegeWrkExp2AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp2.Visible = true;
        divAddOAICollegeWrkExp2.Visible = false;
    }

    int ROWAWAOIEX3 = 0;
    protected void gvOAICollegeWrkExp2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWAOIEX3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWAOIEX3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWAOIEX3++;

        }
    }

    public void BindGridOAICollegeWrkExp2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOAICollegeWrkExp2.EditIndex = this.EditIndexOAICollegeWrkExp2;
        gvOAICollegeWrkExp2.DataSource = ArryListName;
        gvOAICollegeWrkExp2.DataBind();

        if (this.EditIndexOAICollegeWrkExp2 >= 0)
        {
            gvOAICollegeWrkExp2.Rows[this.EditIndexOAICollegeWrkExp2].CssClass = "RowInEditMode";
            gvOAICollegeWrkExp2.Rows[this.EditIndexOAICollegeWrkExp2].Cells[0].Attributes.Add("colspan", "6");
            gvOAICollegeWrkExp2.Rows[this.EditIndexOAICollegeWrkExp2].Cells[1].Visible = false;
            gvOAICollegeWrkExp2.Rows[this.EditIndexOAICollegeWrkExp2].Cells[2].Visible = false;
            gvOAICollegeWrkExp2.Rows[this.EditIndexOAICollegeWrkExp2].Cells[3].Visible = false;
            gvOAICollegeWrkExp2.Rows[this.EditIndexOAICollegeWrkExp2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOAICollegeWrkExp2].Cells[5].Visible = false;

        }
    }

    public void FillControlOAICollegeWrkExp2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOAICollegeWrkExp2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOAICollegeWrkExp2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOAICollegeWrkExp2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOAICollegeWrkExp2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOAICollegeWrkExp2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOAICollegeWrkExp2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOAICollegeWrkExp2 = -1;
        BindGridOAICollegeWrkExp2();
    }

    protected void lnkOAICollegeWrkExp2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOAICollegeWrkExp2 = -1;
        BindGridOAICollegeWrkExp2();
    }

    protected void lnkOAICollegeWrkExp2Edit_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp2.Visible = true;
        divAddOAICollegeWrkExp2.Visible = false;
        this.EditIndexOAICollegeWrkExp2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOAICollegeWrkExp2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOAICollegeWrkExp2();
            FillControlOAICollegeWrkExp2(gvOAICollegeWrkExp2, this.EditIndexOAICollegeWrkExp2);
        }
    }

    protected void lnkOAICollegeWrkExp2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion


    #region College Massage Employment

    public int EditIndexOAICollegeWrkExp3
    {
        get
        {
            if (ViewState["EditIndexOAICollegeWrkExp3"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOAICollegeWrkExp3"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOAICollegeWrkExp3"] = value;
        }
    }

    protected void btnOAICollegeWrkExp3AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp3.Visible = false;
        divAddOAICollegeWrkExp3.Visible = true;
        this.EditIndexOAICollegeWrkExp3 = -1;
        BindGridOAICollegeWrkExp3();
    }
    protected void btnOAICollegeWrkExp3AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp3.Visible = true;
        divAddOAICollegeWrkExp3.Visible = false;
    }
    protected void lnkOAICollegeWrkExp3AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp3.Visible = true;
        divAddOAICollegeWrkExp3.Visible = false;
    }

    int ROWAWAOIExp3 = 0;
    protected void gvOAICollegeWrkExp3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWAOIExp3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWAOIExp3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWAOIExp3++;

        }
    }

    public void BindGridOAICollegeWrkExp3()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOAICollegeWrkExp3.EditIndex = this.EditIndexOAICollegeWrkExp3;
        gvOAICollegeWrkExp3.DataSource = ArryListName;
        gvOAICollegeWrkExp3.DataBind();

        if (this.EditIndexOAICollegeWrkExp3 >= 0)
        {
            gvOAICollegeWrkExp3.Rows[this.EditIndexOAICollegeWrkExp3].CssClass = "RowInEditMode";
            gvOAICollegeWrkExp3.Rows[this.EditIndexOAICollegeWrkExp3].Cells[0].Attributes.Add("colspan", "6");
            gvOAICollegeWrkExp3.Rows[this.EditIndexOAICollegeWrkExp3].Cells[1].Visible = false;
            gvOAICollegeWrkExp3.Rows[this.EditIndexOAICollegeWrkExp3].Cells[2].Visible = false;
            gvOAICollegeWrkExp3.Rows[this.EditIndexOAICollegeWrkExp3].Cells[3].Visible = false;
            gvOAICollegeWrkExp3.Rows[this.EditIndexOAICollegeWrkExp3].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOAICollegeWrkExp3].Cells[5].Visible = false;

        }
    }

    public void FillControlOAICollegeWrkExp3(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOAICollegeWrkExp3].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOAICollegeWrkExp3].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOAICollegeWrkExp3].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOAICollegeWrkExp3].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOAICollegeWrkExp3].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOAICollegeWrkExp3Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOAICollegeWrkExp3 = -1;
        BindGridOAICollegeWrkExp3();
    }

    protected void lnkOAICollegeWrkExp3CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOAICollegeWrkExp3 = -1;
        BindGridOAICollegeWrkExp3();
    }

    protected void lnkOAICollegeWrkExp3Edit_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp3.Visible = true;
        divAddOAICollegeWrkExp3.Visible = false;
        this.EditIndexOAICollegeWrkExp3 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOAICollegeWrkExp3 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOAICollegeWrkExp3();
            FillControlOAICollegeWrkExp3(gvOAICollegeWrkExp3, this.EditIndexOAICollegeWrkExp3);
        }
    }

    protected void lnkOAICollegeWrkExp3Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College PREVIOUS Massage Employment

    public int EditIndexOAICollegeWrkExp4
    {
        get
        {
            if (ViewState["EditIndexOAICollegeWrkExp4"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOAICollegeWrkExp4"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOAICollegeWrkExp4"] = value;
        }
    }

    protected void btnOAICollegeWrkExp4AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp4.Visible = false;
        divAddOAICollegeWrkExp4.Visible = true;
        this.EditIndexOAICollegeWrkExp4 = -1;
        BindGridOAICollegeWrkExp4();
    }
    protected void btnOAICollegeWrkExp4AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp4.Visible = true;
        divAddOAICollegeWrkExp4.Visible = false;
    }
    protected void lnkOAICollegeWrkExp4AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp4.Visible = true;
        divAddOAICollegeWrkExp4.Visible = false;
    }

    int ROWAOAIWEx4 = 0;
    protected void gvOAICollegeWrkExp4_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAOAIWEx4 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAOAIWEx4 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAOAIWEx4++;

        }
    }

    public void BindGridOAICollegeWrkExp4()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOAICollegeWrkExp4.EditIndex = this.EditIndexOAICollegeWrkExp4;
        gvOAICollegeWrkExp4.DataSource = ArryListName;
        gvOAICollegeWrkExp4.DataBind();

        if (this.EditIndexOAICollegeWrkExp4 >= 0)
        {
            gvOAICollegeWrkExp4.Rows[this.EditIndexOAICollegeWrkExp4].CssClass = "RowInEditMode";
            gvOAICollegeWrkExp4.Rows[this.EditIndexOAICollegeWrkExp4].Cells[0].Attributes.Add("colspan", "6");
            gvOAICollegeWrkExp4.Rows[this.EditIndexOAICollegeWrkExp4].Cells[1].Visible = false;
            gvOAICollegeWrkExp4.Rows[this.EditIndexOAICollegeWrkExp4].Cells[2].Visible = false;
            gvOAICollegeWrkExp4.Rows[this.EditIndexOAICollegeWrkExp4].Cells[3].Visible = false;
            gvOAICollegeWrkExp4.Rows[this.EditIndexOAICollegeWrkExp4].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOAICollegeWrkExp4].Cells[5].Visible = false;

        }
    }

    public void FillControlOAICollegeWrkExp4(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOAICollegeWrkExp4].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOAICollegeWrkExp4].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOAICollegeWrkExp4].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOAICollegeWrkExp4].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOAICollegeWrkExp4].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOAICollegeWrkExp4Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOAICollegeWrkExp4 = -1;
        BindGridOAICollegeWrkExp4();
    }

    protected void lnkOAICollegeWrkExp4CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOAICollegeWrkExp4 = -1;
        BindGridOAICollegeWrkExp4();
    }

    protected void lnkOAICollegeWrkExp4Edit_Click(object sender, EventArgs e)
    {
        divAddBtnOAICollegeWrkExp4.Visible = true;
        divAddOAICollegeWrkExp4.Visible = false;
        this.EditIndexOAICollegeWrkExp4 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOAICollegeWrkExp4 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOAICollegeWrkExp4();
            FillControlOAICollegeWrkExp4(gvOAICollegeWrkExp4, this.EditIndexOAICollegeWrkExp4);
        }
    }

    protected void lnkOAICollegeWrkExp4Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Staff Info OWNER-ADMINISTRATOR-INSTRUCTOR Subject Taught

    public int EditIndexOAISubjectTaugh
    {
        get
        {
            if (ViewState["EditIndexOAISubjectTaugh"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOAISubjectTaugh"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOAISubjectTaugh"] = value;
        }
    }
    protected void btnOAISubjectTaughAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnOAISubjectTaugh.Visible = false;
        divAddOAISubjectTaugh.Visible = true;
        this.EditIndexLicensureInformation = -1;
        BindGridOAISubjectTaugh();
    }
    protected void btnOAISubjectTaughAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnOAISubjectTaugh.Visible = true;
        divAddOAISubjectTaugh.Visible = false;
    }
    protected void lnkOAISubjectTaughAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnOAISubjectTaugh.Visible = true;
        divAddOAISubjectTaugh.Visible = false;
    }

    public void BindGridOAISubjectTaugh()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOAISubjectTaugh.EditIndex = this.EditIndexOAISubjectTaugh;
        gvOAISubjectTaugh.DataSource = ArryListName;
        gvOAISubjectTaugh.DataBind();

        if (this.EditIndexLicensureInformation >= 0)
        {
            gvOAISubjectTaugh.Rows[this.EditIndexOAISubjectTaugh].CssClass = "RowInEditMode";
            gvOAISubjectTaugh.Rows[this.EditIndexOAISubjectTaugh].Cells[0].Attributes.Add("colspan", "6");
            gvOAISubjectTaugh.Rows[this.EditIndexOAISubjectTaugh].Cells[1].Visible = false;
            gvOAISubjectTaugh.Rows[this.EditIndexOAISubjectTaugh].Cells[2].Visible = false;

        }
    }

    int ROWOAISubLic = 0;

    protected void gvOAISubjectTaugh_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblOAISubjectTaught = e.Row.FindControl("lblOAISubjectTaught") as Label;
            Label lblEduforthisSub = e.Row.FindControl("lblEduforthisSub") as Label;

            if (lblOAISubjectTaught != null && lblEduforthisSub != null)
            {
                if (ROWOAISubLic == 0)
                {

                    lblOAISubjectTaught.Text = "Subject 1";
                    lblEduforthisSub.Text = "Graduate";
                }
                else if (ROWOAISubLic == 1)
                {
                    lblOAISubjectTaught.Text = "Subject 1";
                    lblEduforthisSub.Text = "Graduate";
                }
            }

            ROWOAISubLic++;

        }
    }

    protected void lnkOAISubjectTaughEdit_Click(object sender, EventArgs e)
    {
        divAddOAISubjectTaugh.Visible = false;
        divAddbtnOAISubjectTaugh.Visible = true;
        this.EditIndexOAISubjectTaugh = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexOAISubjectTaugh = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridOAISubjectTaugh();
            FillControlApprovalAgency(gvApprovalAgency, this.EditIndexOAISubjectTaugh);
        }
    }
    protected void lnkOAISubjectTaughDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlOAISubjectTaugh(GridView gv, int EditInd)
    {
        try
        {


            TextBox txtSchoolCodeEdit = gv.Rows[this.EditIndexOAISubjectTaugh].FindControl("txtSchoolCodeEdit") as TextBox;
            TextBox txtExpirationDateEdit = gv.Rows[this.EditIndexOAISubjectTaugh].FindControl("txtExpirationDateEdit") as TextBox;
            DropDownList ddlAddApprovalAgencyEdit = gv.Rows[this.EditIndexOAISubjectTaugh].FindControl("ddlAddApprovalAgencyEdit") as DropDownList;

            txtSchoolCodeEdit.Text = "SCH001";
            ddlAddApprovalAgencyEdit.SelectedValue = "A1";
            txtExpirationDateEdit.Text = "02/04/2016";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnOAISubjectTaughUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOAISubjectTaugh = -1;
        BindGridOAISubjectTaugh();
    }
    protected void lnkOAISubjectTaughCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOAISubjectTaugh = -1;
        BindGridOAISubjectTaugh();
    }

    #endregion


    #region History Owner-Administrator-Instructor

    #region HistoryQ1
    protected void rblOwnAdmInsHistoryQ1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnAdmInsHistoryQ1.SelectedItem.Text == "Yes")
        {
            divOwnAdmIns1.Visible = true;
        }
        else
        {
            divOwnAdmIns1.Visible = false;
        }
    }

    #endregion
    #region HistoryQ2
    protected void rblOwnAdmInsHistoryQ2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnAdmInsHistoryQ2.SelectedItem.Text == "Yes")
        {
            divOwnAdmIns2.Visible = true;
        }
        else
        {
            divOwnAdmIns2.Visible = false;
        }
    }

    #endregion
    #region HistoryQ3
    protected void rblOwnAdmInsHistoryQ3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnAdmInsHistoryQ3.SelectedItem.Text == "Yes")
        {
            divOwnAdmIns3.Visible = true;
        }
        else
        {
            divOwnAdmIns3.Visible = false;
        }
    }

    #endregion
    #region HistoryQ4
    protected void rblOwnAdmInsHistoryQ4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnAdmInsHistoryQ4.SelectedItem.Text == "Yes")
        {
            divOwnAdmIns4.Visible = true;
        }
        else
        {
            divOwnAdmIns4.Visible = false;
        }
    }

    #endregion
    #region HistoryQ5
    protected void rblOwnAdmInsHistoryQ5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnAdmInsHistoryQ5.SelectedItem.Text == "Yes")
        {
            divOwnAdmIns5.Visible = true;
        }
        else
        {
            divOwnAdmIns5.Visible = false;
        }
    }
    //protected void btnAddHist5_Click(object sender, EventArgs e)
    //{
    //    divgvhist5.Visible = true;
    //}
    #endregion


    #endregion




    #endregion


    #region Staff Info OwnerInstructor

    #region School Attended for OWNER-ADMINISTRATOR

    public int EditIndexOIcollegeAtt1
    {
        get
        {
            if (ViewState["EditIndexOIcollegeAtt1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOIcollegeAtt1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOIcollegeAtt1"] = value;
        }
    }
    protected void btnOIcollegeAtt1AddNew_Click(object sender, EventArgs e)
    {
        divBtnAddOIcollegeAtt1.Visible = false;
        divOIcollegeAtt1.Visible = true;
        this.EditIndexAdminInfo1 = -1;
        BindGridOIcollegeAtt1();
    }

    protected void btnOIcollegeAtt1AddNewSave_Click(object sender, EventArgs e)
    {
        divBtnAddOIcollegeAtt1.Visible = true;
        divOIcollegeAtt1.Visible = false;
    }
    protected void lnkOIcollegeAtt1AddNewCancel_Click(object sender, EventArgs e)
    {
        divBtnAddOIcollegeAtt1.Visible = true;
        divOIcollegeAtt1.Visible = false;
    }

    int ROOIWAI10 = 0;
    protected void gvOIcollegeAtt1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROOIWAI10 == 0)
                {

                    lblSchoolName.Text = "School1";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROOIWAI10 == 1)
                {
                    lblSchoolName.Text = "School12";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROOIWAI10++;

        }
    }

    public void BindGridOIcollegeAtt1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOIcollegeAtt1.EditIndex = this.EditIndexOIcollegeAtt1;
        gvOIcollegeAtt1.DataSource = ArryListName;
        gvOIcollegeAtt1.DataBind();

        if (this.EditIndexOIcollegeAtt1 >= 0)
        {
            gvOIcollegeAtt1.Rows[this.EditIndexOIcollegeAtt1].CssClass = "RowInEditMode";
            gvOIcollegeAtt1.Rows[this.EditIndexOIcollegeAtt1].Cells[0].Attributes.Add("colspan", "6");
            gvOIcollegeAtt1.Rows[this.EditIndexOIcollegeAtt1].Cells[1].Visible = false;
            gvOIcollegeAtt1.Rows[this.EditIndexOIcollegeAtt1].Cells[2].Visible = false;
            gvOIcollegeAtt1.Rows[this.EditIndexOIcollegeAtt1].Cells[3].Visible = false;
            gvOIcollegeAtt1.Rows[this.EditIndexOIcollegeAtt1].Cells[4].Visible = false;

        }
    }

    public void FillControlOIcollegeAtt1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOIcollegeAtt1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOIcollegeAtt1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOIcollegeAtt1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOIcollegeAtt1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOIcollegeAtt1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOIcollegeAtt1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOIcollegeAtt1 = -1;
        BindGridOIcollegeAtt1();
    }

    protected void lnkOIcollegeAtt1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOIcollegeAtt1 = -1;
        BindGridOIcollegeAtt1();
    }

    protected void lnkOIcollegeAtt1Edit_Click(object sender, EventArgs e)
    {
        divBtnAddOIcollegeAtt1.Visible = true;
        divOIcollegeAtt1.Visible = false;
        this.EditIndexOIcollegeAtt1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOIcollegeAtt1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOIcollegeAtt1();
            FillControlOIcollegeAtt1(gvOIcollegeAtt1, this.EditIndexOIcollegeAtt1);
        }
    }

    protected void lnkOIcollegeAtt1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College Attended2

    public int EditIndexOICollegeAtten2
    {
        get
        {
            if (ViewState["EditIndexOICollegeAtten2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOICollegeAtten2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOICollegeAtten2"] = value;
        }
    }

    protected void btnOICollegeAtten2AddNew_Click(object sender, EventArgs e)
    {
        divBtnAddOICollegeAtten2.Visible = false;
        divAddOICollegeAtten2.Visible = true;
        this.EditIndexOICollegeAtten2 = -1;
        BindGridOICollegeAtten2();
    }
    protected void btnOICollegeAtten2AddNewSave_Click(object sender, EventArgs e)
    {
        divBtnAddOICollegeAtten2.Visible = true;
        divAddOICollegeAtten2.Visible = false;
    }
    protected void lnkOICollegeAtten2AddNewCancel_Click(object sender, EventArgs e)
    {
        divBtnAddOICollegeAtten2.Visible = true;
        divAddOICollegeAtten2.Visible = false;
    }

    int ROOIWAI21 = 0;
    protected void gvOICollegeAtten2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROOIWAI21 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROOIWAI21 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROOIWAI21++;

        }
    }

    public void BindGridOICollegeAtten2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOICollegeAtten2.EditIndex = this.EditIndexOICollegeAtten2;
        gvOICollegeAtten2.DataSource = ArryListName;
        gvOICollegeAtten2.DataBind();

        if (this.EditIndexOICollegeAtten2 >= 0)
        {
            gvOICollegeAtten2.Rows[this.EditIndexOICollegeAtten2].CssClass = "RowInEditMode";
            gvOICollegeAtten2.Rows[this.EditIndexOICollegeAtten2].Cells[0].Attributes.Add("colspan", "6");
            gvOICollegeAtten2.Rows[this.EditIndexOICollegeAtten2].Cells[1].Visible = false;
            gvOICollegeAtten2.Rows[this.EditIndexOICollegeAtten2].Cells[2].Visible = false;
            gvOICollegeAtten2.Rows[this.EditIndexOICollegeAtten2].Cells[3].Visible = false;
            gvOICollegeAtten2.Rows[this.EditIndexOICollegeAtten2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOICollegeAtten2].Cells[5].Visible = false;

        }
    }

    public void FillControlOICollegeAtten2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOICollegeAtten2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOICollegeAtten2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOICollegeAtten2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOICollegeAtten2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOICollegeAtten2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOICollegeAtten2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOICollegeAtten2 = -1;
        BindGridOICollegeAtten2();
    }

    protected void lnkOICollegeAtten2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOICollegeAtten2 = -1;
        BindGridOICollegeAtten2();
    }

    protected void lnkOICollegeAtten2Edit_Click(object sender, EventArgs e)
    {
        divBtnAddOICollegeAtten2.Visible = true;
        divAddOICollegeAtten2.Visible = false;
        this.EditIndexOICollegeAtten2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOICollegeAtten2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOICollegeAtten2();
            FillControlOICollegeAtten2(gvOICollegeAtten2, this.EditIndexOICollegeAtten2);
        }
    }

    protected void lnkOICollegeAtten2Delete_Click(object sender, EventArgs e)
    {

    }


    #endregion

    #region College Work Experience

    public int EditIndexOICollegeWrkExp1
    {
        get
        {
            if (ViewState["EditIndexOICollegeWrkExp1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOICollegeWrkExp1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOICollegeWrkExp1"] = value;
        }
    }

    protected void btnOICollegeWrkExp1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp1.Visible = false;
        divAddOICollegeWrkExp1.Visible = true;
        this.EditIndexOICollegeWrkExp1 = -1;
        BindGridOICollegeWrkExp1();
    }
    protected void btnOICollegeWrkExp1AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp1.Visible = true;
        divAddOICollegeWrkExp1.Visible = false;
    }
    protected void lnkOICollegeWrkExp1AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp1.Visible = true;
        divAddOICollegeWrkExp1.Visible = false;
    }

    int ROWAWEOIColEx1 = 0;
    protected void gvOICollegeWrkExp1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWEOIColEx1 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWEOIColEx1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWEOIColEx1++;

        }
    }

    public void BindGridOICollegeWrkExp1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOICollegeWrkExp1.EditIndex = this.EditIndexOICollegeWrkExp1;
        gvOICollegeWrkExp1.DataSource = ArryListName;
        gvOICollegeWrkExp1.DataBind();

        if (this.EditIndexOICollegeWrkExp1 >= 0)
        {
            gvOICollegeWrkExp1.Rows[this.EditIndexOICollegeWrkExp1].CssClass = "RowInEditMode";
            gvOICollegeWrkExp1.Rows[this.EditIndexOICollegeWrkExp1].Cells[0].Attributes.Add("colspan", "6");
            gvOICollegeWrkExp1.Rows[this.EditIndexOICollegeWrkExp1].Cells[1].Visible = false;
            gvOICollegeWrkExp1.Rows[this.EditIndexOICollegeWrkExp1].Cells[2].Visible = false;
            gvOICollegeWrkExp1.Rows[this.EditIndexOICollegeWrkExp1].Cells[3].Visible = false;
            gvOICollegeWrkExp1.Rows[this.EditIndexOICollegeWrkExp1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOICollegeWrkExp1].Cells[5].Visible = false;

        }
    }

    public void FillControlOICollegeWrkExp1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOICollegeWrkExp1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOICollegeWrkExp1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOICollegeWrkExp1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOICollegeWrkExp1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOICollegeWrkExp1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOICollegeWrkExp1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOICollegeWrkExp1 = -1;
        BindGridOICollegeWrkExp1();
    }

    protected void lnkOICollegeWrkExp1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOICollegeWrkExp1 = -1;
        BindGridOICollegeWrkExp1();
    }

    protected void lnkOICollegeWrkExp1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp1.Visible = true;
        divAddOICollegeWrkExp1.Visible = false;
        this.EditIndexOICollegeWrkExp1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOICollegeWrkExp1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOICollegeWrkExp1();
            FillControlOICollegeWrkExp1(gvOICollegeWrkExp1, this.EditIndexOICollegeWrkExp1);
        }
    }

    protected void lnkOICollegeWrkExp1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College Work Exp PREVIOUSLY Worked

    public int EditIndexOICollegeWrkExp2
    {
        get
        {
            if (ViewState["EditIndexOICollegeWrkExp2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOICollegeWrkExp2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOICollegeWrkExp2"] = value;
        }
    }

    protected void btnOICollegeWrkExp2AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp2.Visible = false;
        divAddOICollegeWrkExp2.Visible = true;
        this.EditIndexOICollegeWrkExp2 = -1;
        BindGridOICollegeWrkExp2();
    }
    protected void btnOICollegeWrkExp2AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp2.Visible = true;
        divAddOICollegeWrkExp2.Visible = false;
    }
    protected void lnkOICollegeWrkExp2AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp2.Visible = true;
        divAddOICollegeWrkExp2.Visible = false;
    }

    int ROWAWOIEX3 = 0;
    protected void gvOICollegeWrkExp2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWOIEX3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWOIEX3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWOIEX3++;

        }
    }

    public void BindGridOICollegeWrkExp2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOICollegeWrkExp2.EditIndex = this.EditIndexOICollegeWrkExp2;
        gvOICollegeWrkExp2.DataSource = ArryListName;
        gvOICollegeWrkExp2.DataBind();

        if (this.EditIndexOICollegeWrkExp2 >= 0)
        {
            gvOICollegeWrkExp2.Rows[this.EditIndexOICollegeWrkExp2].CssClass = "RowInEditMode";
            gvOICollegeWrkExp2.Rows[this.EditIndexOICollegeWrkExp2].Cells[0].Attributes.Add("colspan", "6");
            gvOICollegeWrkExp2.Rows[this.EditIndexOICollegeWrkExp2].Cells[1].Visible = false;
            gvOICollegeWrkExp2.Rows[this.EditIndexOICollegeWrkExp2].Cells[2].Visible = false;
            gvOICollegeWrkExp2.Rows[this.EditIndexOICollegeWrkExp2].Cells[3].Visible = false;
            gvOICollegeWrkExp2.Rows[this.EditIndexOICollegeWrkExp2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOICollegeWrkExp2].Cells[5].Visible = false;

        }
    }

    public void FillControlOICollegeWrkExp2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOICollegeWrkExp2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOICollegeWrkExp2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOICollegeWrkExp2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOICollegeWrkExp2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOICollegeWrkExp2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOICollegeWrkExp2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOICollegeWrkExp2 = -1;
        BindGridOICollegeWrkExp2();
    }

    protected void lnkOICollegeWrkExp2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOICollegeWrkExp2 = -1;
        BindGridOICollegeWrkExp2();
    }

    protected void lnkOICollegeWrkExp2Edit_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp2.Visible = true;
        divAddOICollegeWrkExp2.Visible = false;
        this.EditIndexOICollegeWrkExp2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOICollegeWrkExp2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOICollegeWrkExp2();
            FillControlOICollegeWrkExp2(gvOICollegeWrkExp2, this.EditIndexOICollegeWrkExp2);
        }
    }

    protected void lnkOICollegeWrkExp2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion


    #region College Massage Employment

    public int EditIndexOICollegeWrkExp3
    {
        get
        {
            if (ViewState["EditIndexOICollegeWrkExp3"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOICollegeWrkExp3"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOICollegeWrkExp3"] = value;
        }
    }

    protected void btnOICollegeWrkExp3AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp3.Visible = false;
        divAddOICollegeWrkExp3.Visible = true;
        this.EditIndexOICollegeWrkExp3 = -1;
        BindGridOICollegeWrkExp3();
    }
    protected void btnOICollegeWrkExp3AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp3.Visible = true;
        divAddOICollegeWrkExp3.Visible = false;
    }
    protected void lnkOICollegeWrkExp3AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp3.Visible = true;
        divAddOICollegeWrkExp3.Visible = false;
    }

    int ROWAWOIExp3 = 0;
    protected void gvOICollegeWrkExp3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWOIExp3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWOIExp3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWOIExp3++;

        }
    }

    public void BindGridOICollegeWrkExp3()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOICollegeWrkExp3.EditIndex = this.EditIndexOICollegeWrkExp3;
        gvOICollegeWrkExp3.DataSource = ArryListName;
        gvOICollegeWrkExp3.DataBind();

        if (this.EditIndexOICollegeWrkExp3 >= 0)
        {
            gvOICollegeWrkExp3.Rows[this.EditIndexOICollegeWrkExp3].CssClass = "RowInEditMode";
            gvOICollegeWrkExp3.Rows[this.EditIndexOICollegeWrkExp3].Cells[0].Attributes.Add("colspan", "6");
            gvOICollegeWrkExp3.Rows[this.EditIndexOICollegeWrkExp3].Cells[1].Visible = false;
            gvOICollegeWrkExp3.Rows[this.EditIndexOICollegeWrkExp3].Cells[2].Visible = false;
            gvOICollegeWrkExp3.Rows[this.EditIndexOICollegeWrkExp3].Cells[3].Visible = false;
            gvOICollegeWrkExp3.Rows[this.EditIndexOICollegeWrkExp3].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOICollegeWrkExp3].Cells[5].Visible = false;

        }
    }

    public void FillControlOICollegeWrkExp3(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOICollegeWrkExp3].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOICollegeWrkExp3].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOICollegeWrkExp3].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOICollegeWrkExp3].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOICollegeWrkExp3].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOICollegeWrkExp3Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOICollegeWrkExp3 = -1;
        BindGridOICollegeWrkExp3();
    }

    protected void lnkOICollegeWrkExp3CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOICollegeWrkExp3 = -1;
        BindGridOICollegeWrkExp3();
    }

    protected void lnkOICollegeWrkExp3Edit_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp3.Visible = true;
        divAddOICollegeWrkExp3.Visible = false;
        this.EditIndexOICollegeWrkExp3 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOICollegeWrkExp3 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOICollegeWrkExp3();
            FillControlOICollegeWrkExp3(gvOICollegeWrkExp3, this.EditIndexOICollegeWrkExp3);
        }
    }

    protected void lnkOICollegeWrkExp3Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College PREVIOUS Massage Employment

    public int EditIndexOICollegeWrkExp4
    {
        get
        {
            if (ViewState["EditIndexOICollegeWrkExp4"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOICollegeWrkExp4"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOICollegeWrkExp4"] = value;
        }
    }

    protected void btnOICollegeWrkExp4AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp4.Visible = false;
        divAddOICollegeWrkExp4.Visible = true;
        this.EditIndexOICollegeWrkExp4 = -1;
        BindGridOICollegeWrkExp4();
    }
    protected void btnOICollegeWrkExp4AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp4.Visible = true;
        divAddOICollegeWrkExp4.Visible = false;
    }
    protected void lnkOICollegeWrkExp4AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp4.Visible = true;
        divAddOICollegeWrkExp4.Visible = false;
    }

    int ROWOIWEx4 = 0;
    protected void gvOICollegeWrkExp4_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWOIWEx4 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWOIWEx4 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWOIWEx4++;

        }
    }

    public void BindGridOICollegeWrkExp4()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOICollegeWrkExp4.EditIndex = this.EditIndexOICollegeWrkExp4;
        gvOICollegeWrkExp4.DataSource = ArryListName;
        gvOICollegeWrkExp4.DataBind();

        if (this.EditIndexOICollegeWrkExp4 >= 0)
        {
            gvOICollegeWrkExp4.Rows[this.EditIndexOICollegeWrkExp4].CssClass = "RowInEditMode";
            gvOICollegeWrkExp4.Rows[this.EditIndexOICollegeWrkExp4].Cells[0].Attributes.Add("colspan", "6");
            gvOICollegeWrkExp4.Rows[this.EditIndexOICollegeWrkExp4].Cells[1].Visible = false;
            gvOICollegeWrkExp4.Rows[this.EditIndexOICollegeWrkExp4].Cells[2].Visible = false;
            gvOICollegeWrkExp4.Rows[this.EditIndexOICollegeWrkExp4].Cells[3].Visible = false;
            gvOICollegeWrkExp4.Rows[this.EditIndexOICollegeWrkExp4].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexOICollegeWrkExp4].Cells[5].Visible = false;

        }
    }

    public void FillControlOICollegeWrkExp4(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexOICollegeWrkExp4].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexOICollegeWrkExp4].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexOICollegeWrkExp4].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexOICollegeWrkExp4].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexOICollegeWrkExp4].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnOICollegeWrkExp4Update_Click(object sender, EventArgs e)
    {
        this.EditIndexOICollegeWrkExp4 = -1;
        BindGridOICollegeWrkExp4();
    }

    protected void lnkOICollegeWrkExp4CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOICollegeWrkExp4 = -1;
        BindGridOICollegeWrkExp4();
    }

    protected void lnkOICollegeWrkExp4Edit_Click(object sender, EventArgs e)
    {
        divAddBtnOICollegeWrkExp4.Visible = true;
        divAddOICollegeWrkExp4.Visible = false;
        this.EditIndexOICollegeWrkExp4 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexOICollegeWrkExp4 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridOICollegeWrkExp4();
            FillControlOICollegeWrkExp4(gvOICollegeWrkExp4, this.EditIndexOICollegeWrkExp4);
        }
    }

    protected void lnkOICollegeWrkExp4Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Staff Info OWNER-ADMINISTRATOR-INSTRUCTOR Subject Taught

    public int EditIndexOISubjectTaugh
    {
        get
        {
            if (ViewState["EditIndexOISubjectTaugh"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOISubjectTaugh"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOISubjectTaugh"] = value;
        }
    }
    protected void btnOISubjectTaughAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnOISubjectTaugh.Visible = false;
        divAddOISubjectTaugh.Visible = true;
        this.EditIndexLicensureInformation = -1;
        BindGridOISubjectTaugh();
    }
    protected void btnOISubjectTaughAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnOISubjectTaugh.Visible = true;
        divAddOISubjectTaugh.Visible = false;
    }
    protected void lnkOISubjectTaughAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnOISubjectTaugh.Visible = true;
        divAddOISubjectTaugh.Visible = false;
    }

    public void BindGridOISubjectTaugh()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvOISubjectTaugh.EditIndex = this.EditIndexOISubjectTaugh;
        gvOISubjectTaugh.DataSource = ArryListName;
        gvOISubjectTaugh.DataBind();

        if (this.EditIndexLicensureInformation >= 0)
        {
            gvOISubjectTaugh.Rows[this.EditIndexOISubjectTaugh].CssClass = "RowInEditMode";
            gvOISubjectTaugh.Rows[this.EditIndexOISubjectTaugh].Cells[0].Attributes.Add("colspan", "6");
            gvOISubjectTaugh.Rows[this.EditIndexOISubjectTaugh].Cells[1].Visible = false;
            gvOISubjectTaugh.Rows[this.EditIndexOISubjectTaugh].Cells[2].Visible = false;

        }
    }

    int ROWOISubLic = 0;

    protected void gvOISubjectTaugh_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblOISubjectTaught = e.Row.FindControl("lblOISubjectTaught") as Label;
            Label lblEduforthisSub = e.Row.FindControl("lblEduforthisSub") as Label;

            if (lblOISubjectTaught != null && lblEduforthisSub != null)
            {
                if (ROWOISubLic == 0)
                {

                    lblOISubjectTaught.Text = "Subject 1";
                    lblEduforthisSub.Text = "Graduate";
                }
                else if (ROWOISubLic == 1)
                {
                    lblOISubjectTaught.Text = "Subject 1";
                    lblEduforthisSub.Text = "Graduate";
                }
            }

            ROWOISubLic++;

        }
    }

    protected void lnkOISubjectTaughEdit_Click(object sender, EventArgs e)
    {
        divAddOISubjectTaugh.Visible = false;
        divAddbtnOISubjectTaugh.Visible = true;
        this.EditIndexOISubjectTaugh = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexOISubjectTaugh = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridOISubjectTaugh();
            FillControlApprovalAgency(gvApprovalAgency, this.EditIndexOISubjectTaugh);
        }
    }
    protected void lnkOISubjectTaughDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlOISubjectTaugh(GridView gv, int EditInd)
    {
        try
        {


            TextBox txtSchoolCodeEdit = gv.Rows[this.EditIndexOISubjectTaugh].FindControl("txtSchoolCodeEdit") as TextBox;
            TextBox txtExpirationDateEdit = gv.Rows[this.EditIndexOISubjectTaugh].FindControl("txtExpirationDateEdit") as TextBox;
            DropDownList ddlAddApprovalAgencyEdit = gv.Rows[this.EditIndexOISubjectTaugh].FindControl("ddlAddApprovalAgencyEdit") as DropDownList;

            txtSchoolCodeEdit.Text = "SCH001";
            ddlAddApprovalAgencyEdit.SelectedValue = "A1";
            txtExpirationDateEdit.Text = "02/04/2016";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnOISubjectTaughUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOISubjectTaugh = -1;
        BindGridOISubjectTaugh();
    }
    protected void lnkOISubjectTaughCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexOISubjectTaugh = -1;
        BindGridOISubjectTaugh();
    }

    #endregion

    #region History Owner-Instructor

    #region HistoryQ1
    protected void rblOwnInstHistoryQ1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnInstHistoryQ1.SelectedItem.Text == "Yes")
        {
            divOwnInst1.Visible = true;
        }
        else
        {
            divOwnInst1.Visible = false;
        }
    }

    #endregion
    #region HistoryQ2
    protected void rblOwnInstHistoryQ2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnInstHistoryQ2.SelectedItem.Text == "Yes")
        {
            divOwnInst2.Visible = true;
        }
        else
        {
            divOwnInst2.Visible = false;
        }
    }

    #endregion
    #region HistoryQ3
    protected void rblOwnInstHistoryQ3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnInstHistoryQ3.SelectedItem.Text == "Yes")
        {
            divOwnInst3.Visible = true;
        }
        else
        {
            divOwnInst3.Visible = false;
        }
    }

    #endregion
    #region HistoryQ4
    protected void rblOwnInstHistoryQ4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnInstHistoryQ4.SelectedItem.Text == "Yes")
        {
            divOwnInst4.Visible = true;
        }
        else
        {
            divOwnInst4.Visible = false;
        }
    }

    #endregion
    #region HistoryQ5
    protected void rblOwnInstHistoryQ5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnInstHistoryQ5.SelectedItem.Text == "Yes")
        {
            divOwnInst5.Visible = true;
        }
        else
        {
            divOwnInst5.Visible = false;
        }
    }

    #endregion


    #endregion



    #endregion





    #region ADMINISTRATOR-INSTRUCTOR

    #region ADMINISTRATOR-INSTRUCTOR School Attended

    public int EditIndexAdInstructcollegeAtt1
    {
        get
        {
            if (ViewState["EditIndexAdInstructcollegeAtt1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdInstructcollegeAtt1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdInstructcollegeAtt1"] = value;
        }
    }
    protected void btnAdInstructcollegeAtt1AddNew_Click(object sender, EventArgs e)
    {
        divBtnAddAdInstructAdInstructcollegeAtt1.Visible = false;
        divAdInstructcollegeAtt1.Visible = true;
        this.EditIndexAdminInfo1 = -1;
        BindGridAdInstructcollegeAtt1();
    }

    protected void btnAdInstructcollegeAtt1AddNewSave_Click(object sender, EventArgs e)
    {
        divBtnAddAdInstructAdInstructcollegeAtt1.Visible = true;
        divAdInstructcollegeAtt1.Visible = false;
    }
    protected void lnkAdInstructcollegeAtt1AddNewCancel_Click(object sender, EventArgs e)
    {
        divBtnAddAdInstructAdInstructcollegeAtt1.Visible = true;
        divAdInstructcollegeAtt1.Visible = false;
    }

    int ROWAIAd10 = 0;
    protected void gvAdInstructcollegeAtt1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAIAd10 == 0)
                {

                    lblSchoolName.Text = "School1";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAI10 == 1)
                {
                    lblSchoolName.Text = "School12";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROWAIAd10++;

        }
    }

    public void BindGridAdInstructcollegeAtt1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvAdInstructcollegeAtt1.EditIndex = this.EditIndexAdInstructcollegeAtt1;
        gvAdInstructcollegeAtt1.DataSource = ArryListName;
        gvAdInstructcollegeAtt1.DataBind();

        if (this.EditIndexAdInstructcollegeAtt1 >= 0)
        {
            gvAdInstructcollegeAtt1.Rows[this.EditIndexAdInstructcollegeAtt1].CssClass = "RowInEditMode";
            gvAdInstructcollegeAtt1.Rows[this.EditIndexAdInstructcollegeAtt1].Cells[0].Attributes.Add("colspan", "6");
            gvAdInstructcollegeAtt1.Rows[this.EditIndexAdInstructcollegeAtt1].Cells[1].Visible = false;
            gvAdInstructcollegeAtt1.Rows[this.EditIndexAdInstructcollegeAtt1].Cells[2].Visible = false;
            gvAdInstructcollegeAtt1.Rows[this.EditIndexAdInstructcollegeAtt1].Cells[3].Visible = false;
            gvAdInstructcollegeAtt1.Rows[this.EditIndexAdInstructcollegeAtt1].Cells[4].Visible = false;

        }
    }

    public void FillControlAdInstructcollegeAtt1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdInstructcollegeAtt1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdInstructcollegeAtt1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdInstructcollegeAtt1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdInstructcollegeAtt1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdInstructcollegeAtt1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnAdInstructcollegeAtt1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexAdInstructcollegeAtt1 = -1;
        BindGridAdInstructcollegeAtt1();
    }

    protected void lnkAdInstructcollegeAtt1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexAdInstructcollegeAtt1 = -1;
        BindGridAdInstructcollegeAtt1();
    }

    protected void lnkAdInstructcollegeAtt1Edit_Click(object sender, EventArgs e)
    {
        divBtnAddAdInstructAdInstructcollegeAtt1.Visible = true;
        divAdInstructcollegeAtt1.Visible = false;
        this.EditIndexAdInstructcollegeAtt1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdInstructcollegeAtt1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdInstructcollegeAtt1();
            FillControlAdInstructcollegeAtt1(gvAdInstructcollegeAtt1, this.EditIndexAdInstructcollegeAtt1);
        }
    }

    protected void lnkAdInstructcollegeAtt1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion
    #region ADMINISTRATOR-INSTRUCTOR College Attended

    public int EditIndexAdInstructcollegeAtt2
    {
        get
        {
            if (ViewState["EditIndexAdInstructcollegeAtt2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdInstructcollegeAtt2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdInstructcollegeAtt2"] = value;
        }
    }

    protected void btnAdInstructcollegeAtt2AddNew_Click(object sender, EventArgs e)
    {
        divBtnAddAdInstructcollegeAtt2.Visible = false;
        divAddAdInstructcollegeAtt2.Visible = true;
        this.EditIndexAdInstructcollegeAtt2 = -1;
        BindGridAdInstructcollegeAtt2();
    }
    protected void btnAdInstructcollegeAtt2AddNewSave_Click(object sender, EventArgs e)
    {
        divBtnAddAdInstructcollegeAtt2.Visible = true;
        divAddAdInstructcollegeAtt2.Visible = false;
    }
    protected void lnkAdInstructcollegeAtt2AddNewCancel_Click(object sender, EventArgs e)
    {
        divBtnAddAdInstructcollegeAtt2.Visible = true;
        divAddAdInstructcollegeAtt2.Visible = false;
    }

    int ROWAD21 = 0;
    protected void gvAdInstructcollegeAtt2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAD21 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAD21 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAD21++;

        }
    }

    public void BindGridAdInstructcollegeAtt2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvAdInstructcollegeAtt2.EditIndex = this.EditIndexAdInstructcollegeAtt2;
        gvAdInstructcollegeAtt2.DataSource = ArryListName;
        gvAdInstructcollegeAtt2.DataBind();

        if (this.EditIndexAdInstructcollegeAtt2 >= 0)
        {
            gvAdInstructcollegeAtt2.Rows[this.EditIndexAdInstructcollegeAtt2].CssClass = "RowInEditMode";
            gvAdInstructcollegeAtt2.Rows[this.EditIndexAdInstructcollegeAtt2].Cells[0].Attributes.Add("colspan", "6");
            gvAdInstructcollegeAtt2.Rows[this.EditIndexAdInstructcollegeAtt2].Cells[1].Visible = false;
            gvAdInstructcollegeAtt2.Rows[this.EditIndexAdInstructcollegeAtt2].Cells[2].Visible = false;
            gvAdInstructcollegeAtt2.Rows[this.EditIndexAdInstructcollegeAtt2].Cells[3].Visible = false;
            gvAdInstructcollegeAtt2.Rows[this.EditIndexAdInstructcollegeAtt2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdInstructcollegeAtt2].Cells[5].Visible = false;

        }
    }

    public void FillControlAdInstructcollegeAtt2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdInstructcollegeAtt2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdInstructcollegeAtt2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdInstructcollegeAtt2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdInstructcollegeAtt2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdInstructcollegeAtt2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnAdInstructcollegeAtt2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexAdInstructcollegeAtt2 = -1;
        BindGridAdInstructcollegeAtt2();
    }

    protected void lnkAdInstructcollegeAtt2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexAdInstructcollegeAtt2 = -1;
        BindGridAdInstructcollegeAtt2();
    }

    protected void lnkAdInstructcollegeAtt2Edit_Click(object sender, EventArgs e)
    {
        divBtnAddAdInstructcollegeAtt2.Visible = true;
        divAddAdInstructcollegeAtt2.Visible = false;
        this.EditIndexAdInstructcollegeAtt2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdInstructcollegeAtt2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdInstructcollegeAtt2();
            FillControlAdInstructcollegeAtt2(gvAdInstructcollegeAtt2, this.EditIndexAdInstructcollegeAtt2);
        }
    }

    protected void lnkAdInstructcollegeAtt2Delete_Click(object sender, EventArgs e)
    {

    }


    #endregion
    #region Administrator-Instructor College Work Experience

    public int EditIndexAdInsCollegeWrkExp1
    {
        get
        {
            if (ViewState["EditIndexAdInsCollegeWrkExp1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdInsCollegeWrkExp1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdInsCollegeWrkExp1"] = value;
        }
    }

    protected void btnAdInsCollegeWrkExp1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp1.Visible = false;
        divAddAdInsCollegeWrkExp1.Visible = true;
        this.EditIndexAdInsCollegeWrkExp1 = -1;
        BindGridAdInsCollegeWrkExp1();
    }
    protected void btnAdInsCollegeWrkExp1AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp1.Visible = true;
        divAddAdInsCollegeWrkExp1.Visible = false;
    }
    protected void lnkAdInsCollegeWrkExp1AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp1.Visible = true;
        divAddAdInsCollegeWrkExp1.Visible = false;
    }

    int ROWAWEAIColEx1 = 0;
    protected void gvAdInsCollegeWrkExp1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWEAIColEx1 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWEColEx1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWEAIColEx1++;

        }
    }

    public void BindGridAdInsCollegeWrkExp1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvAdInsCollegeWrkExp1.EditIndex = this.EditIndexAdInsCollegeWrkExp1;
        gvAdInsCollegeWrkExp1.DataSource = ArryListName;
        gvAdInsCollegeWrkExp1.DataBind();

        if (this.EditIndexAdInsCollegeWrkExp1 >= 0)
        {
            gvAdInsCollegeWrkExp1.Rows[this.EditIndexAdInsCollegeWrkExp1].CssClass = "RowInEditMode";
            gvAdInsCollegeWrkExp1.Rows[this.EditIndexAdInsCollegeWrkExp1].Cells[0].Attributes.Add("colspan", "6");
            gvAdInsCollegeWrkExp1.Rows[this.EditIndexAdInsCollegeWrkExp1].Cells[1].Visible = false;
            gvAdInsCollegeWrkExp1.Rows[this.EditIndexAdInsCollegeWrkExp1].Cells[2].Visible = false;
            gvAdInsCollegeWrkExp1.Rows[this.EditIndexAdInsCollegeWrkExp1].Cells[3].Visible = false;
            gvAdInsCollegeWrkExp1.Rows[this.EditIndexAdInsCollegeWrkExp1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdInsCollegeWrkExp1].Cells[5].Visible = false;

        }
    }

    public void FillControlAdInsCollegeWrkExp1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnAdInsCollegeWrkExp1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexAdInsCollegeWrkExp1 = -1;
        BindGridAdInsCollegeWrkExp1();
    }

    protected void lnkAdInsCollegeWrkExp1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexAdInsCollegeWrkExp1 = -1;
        BindGridAdInsCollegeWrkExp1();
    }

    protected void lnkAdInsCollegeWrkExp1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp1.Visible = true;
        divAddAdInsCollegeWrkExp1.Visible = false;
        this.EditIndexAdInsCollegeWrkExp1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdInsCollegeWrkExp1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdInsCollegeWrkExp1();
            FillControlAdInsCollegeWrkExp1(gvAdInsCollegeWrkExp1, this.EditIndexAdInsCollegeWrkExp1);
        }
    }

    protected void lnkAdInsCollegeWrkExp1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion
    #region Administrator-Instructor PREVIOUSLY Worked

    public int EditIndexAdInsCollegeWrkExp2
    {
        get
        {
            if (ViewState["EditIndexAdInsCollegeWrkExp2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdInsCollegeWrkExp2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdInsCollegeWrkExp2"] = value;
        }
    }

    protected void btnAdInsCollegeWrkExp2AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp2.Visible = false;
        divAddAdInsCollegeWrkExp2.Visible = true;
        this.EditIndexAdInsCollegeWrkExp2 = -1;
        BindGridAdInsCollegeWrkExp2();
    }
    protected void btnAdInsCollegeWrkExp2AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp2.Visible = true;
        divAddAdInsCollegeWrkExp2.Visible = false;
    }
    protected void lnkAdInsCollegeWrkExp2AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp2.Visible = true;
        divAddAdInsCollegeWrkExp2.Visible = false;
    }

    int ROWAIWEX3 = 0;
    protected void gvAdInsCollegeWrkExp2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAIWEX3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAIWEX3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAIWEX3++;

        }
    }

    public void BindGridAdInsCollegeWrkExp2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvAdInsCollegeWrkExp2.EditIndex = this.EditIndexAdInsCollegeWrkExp2;
        gvAdInsCollegeWrkExp2.DataSource = ArryListName;
        gvAdInsCollegeWrkExp2.DataBind();

        if (this.EditIndexAdInsCollegeWrkExp2 >= 0)
        {
            gvAdInsCollegeWrkExp2.Rows[this.EditIndexAdInsCollegeWrkExp2].CssClass = "RowInEditMode";
            gvAdInsCollegeWrkExp2.Rows[this.EditIndexAdInsCollegeWrkExp2].Cells[0].Attributes.Add("colspan", "6");
            gvAdInsCollegeWrkExp2.Rows[this.EditIndexAdInsCollegeWrkExp2].Cells[1].Visible = false;
            gvAdInsCollegeWrkExp2.Rows[this.EditIndexAdInsCollegeWrkExp2].Cells[2].Visible = false;
            gvAdInsCollegeWrkExp2.Rows[this.EditIndexAdInsCollegeWrkExp2].Cells[3].Visible = false;
            gvAdInsCollegeWrkExp2.Rows[this.EditIndexAdInsCollegeWrkExp2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdInsCollegeWrkExp2].Cells[5].Visible = false;

        }
    }

    public void FillControlAdInsCollegeWrkExp2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnAdInsCollegeWrkExp2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexAdInsCollegeWrkExp2 = -1;
        BindGridAdInsCollegeWrkExp2();
    }

    protected void lnkAdInsCollegeWrkExp2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexAdInsCollegeWrkExp2 = -1;
        BindGridAdInsCollegeWrkExp2();
    }

    protected void lnkAdInsCollegeWrkExp2Edit_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp2.Visible = true;
        divAddAdInsCollegeWrkExp2.Visible = false;
        this.EditIndexAdInsCollegeWrkExp2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdInsCollegeWrkExp2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdInsCollegeWrkExp2();
            FillControlAdInsCollegeWrkExp2(gvAdInsCollegeWrkExp2, this.EditIndexAdInsCollegeWrkExp2);
        }
    }

    protected void lnkAdInsCollegeWrkExp2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion
    #region Administrator-Instructor Massage Employment

    public int EditIndexAdInsCollegeWrkExp3
    {
        get
        {
            if (ViewState["EditIndexAdInsCollegeWrkExp3"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdInsCollegeWrkExp3"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdInsCollegeWrkExp3"] = value;
        }
    }

    protected void btnAdInsCollegeWrkExp3AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp3.Visible = false;
        divAddAdInsCollegeWrkExp3.Visible = true;
        this.EditIndexAdInsCollegeWrkExp3 = -1;
        BindGridAdInsCollegeWrkExp3();
    }
    protected void btnAdInsCollegeWrkExp3AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp3.Visible = true;
        divAddAdInsCollegeWrkExp3.Visible = false;
    }
    protected void lnkAdInsCollegeWrkExp3AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp3.Visible = true;
        divAddAdInsCollegeWrkExp3.Visible = false;
    }

    int ROWAWAIExp3 = 0;
    protected void gvAdInsCollegeWrkExp3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWAIExp3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWExp3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWAIExp3++;

        }
    }

    public void BindGridAdInsCollegeWrkExp3()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvAdInsCollegeWrkExp3.EditIndex = this.EditIndexAdInsCollegeWrkExp3;
        gvAdInsCollegeWrkExp3.DataSource = ArryListName;
        gvAdInsCollegeWrkExp3.DataBind();

        if (this.EditIndexAdInsCollegeWrkExp3 >= 0)
        {
            gvAdInsCollegeWrkExp3.Rows[this.EditIndexAdInsCollegeWrkExp3].CssClass = "RowInEditMode";
            gvAdInsCollegeWrkExp3.Rows[this.EditIndexAdInsCollegeWrkExp3].Cells[0].Attributes.Add("colspan", "6");
            gvAdInsCollegeWrkExp3.Rows[this.EditIndexAdInsCollegeWrkExp3].Cells[1].Visible = false;
            gvAdInsCollegeWrkExp3.Rows[this.EditIndexAdInsCollegeWrkExp3].Cells[2].Visible = false;
            gvAdInsCollegeWrkExp3.Rows[this.EditIndexAdInsCollegeWrkExp3].Cells[3].Visible = false;
            gvAdInsCollegeWrkExp3.Rows[this.EditIndexAdInsCollegeWrkExp3].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdInsCollegeWrkExp3].Cells[5].Visible = false;

        }
    }

    public void FillControlAdInsCollegeWrkExp3(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp3].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp3].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp3].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp3].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp3].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnAdInsCollegeWrkExp3Update_Click(object sender, EventArgs e)
    {
        this.EditIndexAdInsCollegeWrkExp3 = -1;
        BindGridAdInsCollegeWrkExp3();
    }

    protected void lnkAdInsCollegeWrkExp3CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexAdInsCollegeWrkExp3 = -1;
        BindGridAdInsCollegeWrkExp3();
    }

    protected void lnkAdInsCollegeWrkExp3Edit_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp3.Visible = true;
        divAddAdInsCollegeWrkExp3.Visible = false;
        this.EditIndexAdInsCollegeWrkExp3 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdInsCollegeWrkExp3 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdInsCollegeWrkExp3();
            FillControlAdInsCollegeWrkExp3(gvAdInsCollegeWrkExp3, this.EditIndexAdInsCollegeWrkExp3);
        }
    }

    protected void lnkAdInsCollegeWrkExp3Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion
    #region Administrator-Instructor  PREVIOUS Massage Employment

    public int EditIndexAdInsCollegeWrkExp4
    {
        get
        {
            if (ViewState["EditIndexAdInsCollegeWrkExp4"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdInsCollegeWrkExp4"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdInsCollegeWrkExp4"] = value;
        }
    }

    protected void btnAdInsCollegeWrkExp4AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp4.Visible = false;
        divAddAdInsCollegeWrkExp4.Visible = true;
        this.EditIndexAdInsCollegeWrkExp4 = -1;
        BindGridAdInsCollegeWrkExp4();
    }
    protected void btnAdInsCollegeWrkExp4AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp4.Visible = true;
        divAddAdInsCollegeWrkExp4.Visible = false;
    }
    protected void lnkAdInsCollegeWrkExp4AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp4.Visible = true;
        divAddAdInsCollegeWrkExp4.Visible = false;
    }

    int ROWAWAIEx4 = 0;
    protected void gvAdInsCollegeWrkExp4_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWAIEx4 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWAIEx4 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWAIEx4++;

        }
    }

    public void BindGridAdInsCollegeWrkExp4()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvAdInsCollegeWrkExp4.EditIndex = this.EditIndexAdInsCollegeWrkExp4;
        gvAdInsCollegeWrkExp4.DataSource = ArryListName;
        gvAdInsCollegeWrkExp4.DataBind();

        if (this.EditIndexAdInsCollegeWrkExp4 >= 0)
        {
            gvAdInsCollegeWrkExp4.Rows[this.EditIndexAdInsCollegeWrkExp4].CssClass = "RowInEditMode";
            gvAdInsCollegeWrkExp4.Rows[this.EditIndexAdInsCollegeWrkExp4].Cells[0].Attributes.Add("colspan", "6");
            gvAdInsCollegeWrkExp4.Rows[this.EditIndexAdInsCollegeWrkExp4].Cells[1].Visible = false;
            gvAdInsCollegeWrkExp4.Rows[this.EditIndexAdInsCollegeWrkExp4].Cells[2].Visible = false;
            gvAdInsCollegeWrkExp4.Rows[this.EditIndexAdInsCollegeWrkExp4].Cells[3].Visible = false;
            gvAdInsCollegeWrkExp4.Rows[this.EditIndexAdInsCollegeWrkExp4].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdInsCollegeWrkExp4].Cells[5].Visible = false;

        }
    }

    public void FillControlAdInsCollegeWrkExp4(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp4].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp4].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp4].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp4].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdInsCollegeWrkExp4].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnAdInsCollegeWrkExp4Update_Click(object sender, EventArgs e)
    {
        this.EditIndexAdInsCollegeWrkExp4 = -1;
        BindGridAdInsCollegeWrkExp4();
    }

    protected void lnkAdInsCollegeWrkExp4CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexAdInsCollegeWrkExp4 = -1;
        BindGridAdInsCollegeWrkExp4();
    }

    protected void lnkAdInsCollegeWrkExp4Edit_Click(object sender, EventArgs e)
    {
        divAddBtnAdInsCollegeWrkExp4.Visible = true;
        divAddAdInsCollegeWrkExp4.Visible = false;
        this.EditIndexAdInsCollegeWrkExp4 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdInsCollegeWrkExp4 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdInsCollegeWrkExp4();
            FillControlAdInsCollegeWrkExp4(gvAdInsCollegeWrkExp4, this.EditIndexAdInsCollegeWrkExp4);
        }
    }

    protected void lnkAdInsCollegeWrkExp4Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region ADMINISTRATOR-INSTRUCTOR Subject Taught

    public int EditIndexADMININSubjectTaugh
    {
        get
        {
            if (ViewState["EditIndexADMININSubjectTaugh"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexADMININSubjectTaugh"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexADMININSubjectTaugh"] = value;
        }
    }
    protected void btnADMININSubjectTaughAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnADMININSubjectTaugh.Visible = false;
        divAddADMININSubjectTaugh.Visible = true;
        this.EditIndexLicensureInformation = -1;
        BindGridADMININSubjectTaugh();
    }
    protected void btnADMININSubjectTaughAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnADMININSubjectTaugh.Visible = true;
        divAddADMININSubjectTaugh.Visible = false;
    }
    protected void lnkADMININSubjectTaughAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnADMININSubjectTaugh.Visible = true;
        divAddADMININSubjectTaugh.Visible = false;
    }

    public void BindGridADMININSubjectTaugh()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvADMININSubjectTaugh.EditIndex = this.EditIndexADMININSubjectTaugh;
        gvADMININSubjectTaugh.DataSource = ArryListName;
        gvADMININSubjectTaugh.DataBind();

        if (this.EditIndexLicensureInformation >= 0)
        {
            gvADMININSubjectTaugh.Rows[this.EditIndexADMININSubjectTaugh].CssClass = "RowInEditMode";
            gvADMININSubjectTaugh.Rows[this.EditIndexADMININSubjectTaugh].Cells[0].Attributes.Add("colspan", "6");
            gvADMININSubjectTaugh.Rows[this.EditIndexADMININSubjectTaugh].Cells[1].Visible = false;
            gvADMININSubjectTaugh.Rows[this.EditIndexADMININSubjectTaugh].Cells[2].Visible = false;

        }
    }

    int ROWSubLic = 0;

    protected void gvADMININSubjectTaugh_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblADMININSubjectTaught = e.Row.FindControl("lblADMININSubjectTaught") as Label;
            Label lblEduforthisSub = e.Row.FindControl("lblEduforthisSub") as Label;

            if (lblADMININSubjectTaught != null && lblEduforthisSub != null)
            {
                if (ROWSubLic == 0)
                {

                    lblADMININSubjectTaught.Text = "Subject 1";
                    lblEduforthisSub.Text = "Graduate";
                }
                else if (ROWSubLic == 1)
                {
                    lblADMININSubjectTaught.Text = "Subject 1";
                    lblEduforthisSub.Text = "Graduate";
                }
            }

            ROWSubLic++;

        }
    }

    protected void lnkADMININSubjectTaughEdit_Click(object sender, EventArgs e)
    {
        divAddADMININSubjectTaugh.Visible = false;
        divAddbtnADMININSubjectTaugh.Visible = true;
        this.EditIndexADMININSubjectTaugh = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexADMININSubjectTaugh = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridADMININSubjectTaugh();
            FillControlApprovalAgency(gvApprovalAgency, this.EditIndexADMININSubjectTaugh);
        }
    }
    protected void lnkADMININSubjectTaughDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlADMININSubjectTaugh(GridView gv, int EditInd)
    {
        try
        {


            TextBox txtSchoolCodeEdit = gv.Rows[this.EditIndexADMININSubjectTaugh].FindControl("txtSchoolCodeEdit") as TextBox;
            TextBox txtExpirationDateEdit = gv.Rows[this.EditIndexADMININSubjectTaugh].FindControl("txtExpirationDateEdit") as TextBox;
            DropDownList ddlAddApprovalAgencyEdit = gv.Rows[this.EditIndexADMININSubjectTaugh].FindControl("ddlAddApprovalAgencyEdit") as DropDownList;

            txtSchoolCodeEdit.Text = "SCH001";
            ddlAddApprovalAgencyEdit.SelectedValue = "A1";
            txtExpirationDateEdit.Text = "02/04/2016";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnADMININSubjectTaughUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexADMININSubjectTaugh = -1;
        BindGridADMININSubjectTaugh();
    }
    protected void lnkADMININSubjectTaughCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexADMININSubjectTaugh = -1;
        BindGridADMININSubjectTaugh();
    }

    #endregion

    #region History ADMINISTRATOR-INSTRUCTOR

    #region HistoryQ1
    protected void rblAdminInstructHistoryQ1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdminInstructHistoryQ1.SelectedItem.Text == "Yes")
        {
            divAdminInstruct1.Visible = true;
        }
        else
        {
            divAdminInstruct1.Visible = false;
        }
    }

    #endregion
    #region HistoryQ2
    protected void rblAdminInstructHistoryQ2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdminInstructHistoryQ2.SelectedItem.Text == "Yes")
        {
            divAdminInstruct2.Visible = true;
        }
        else
        {
            divAdminInstruct2.Visible = false;
        }
    }

    #endregion
    #region HistoryQ3
    protected void rblAdminInstructHistoryQ3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdminInstructHistoryQ3.SelectedItem.Text == "Yes")
        {
            divAdminInstruct3.Visible = true;
        }
        else
        {
            divAdminInstruct3.Visible = false;
        }
    }

    #endregion
    #region HistoryQ4
    protected void rblAdminInstructHistoryQ4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdminInstructHistoryQ4.SelectedItem.Text == "Yes")
        {
            divAdminInstruct4.Visible = true;
        }
        else
        {
            divAdminInstruct4.Visible = false;
        }
    }

    #endregion
    #region HistoryQ5
    protected void rblAdminInstructHistoryQ5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdminInstructHistoryQ5.SelectedItem.Text == "Yes")
        {
            divAdminInstruct5.Visible = true;
        }
        else
        {
            divAdminInstruct5.Visible = false;
        }
    }

    #endregion


    #endregion

    #endregion

    #region Staff Info INSTRUCTOR

    #region INSTRUCTOR School Attendance
    public int EditIndexInstInstrQualSectionA1
    {
        get
        {
            if (ViewState["EditIndexInstInstrQualSectionA1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstInstrQualSectionA1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstInstrQualSectionA1"] = value;
        }
    }

    protected void btnInstInstrQualSectionA1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstrPrimaryMassageSchool.Visible = false;
        divAddInstrPrimaryMassageSchool.Visible = true;
        this.EditIndexInstInstrQualSectionA1 = -1;
        BindGridInstInstrQualSectionA1();
    }
    protected void btnInstInstrQualSectionA1AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstrPrimaryMassageSchool.Visible = true;
        divAddInstrPrimaryMassageSchool.Visible = false;
    }
    protected void lnkInstInstrQualSectionA1AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnInstrPrimaryMassageSchool.Visible = true;
        divAddInstrPrimaryMassageSchool.Visible = false;
    }

    int ROWInstQ1 = 0;
    protected void gvInstInstrQualSectionA1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWInstQ1 == 0)
                {

                    lblSchoolName.Text = "School1";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWInstQ1 == 1)
                {
                    lblSchoolName.Text = "School12";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROWInstQ1++;

        }
    }

    public void BindGridInstInstrQualSectionA1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstInstrQualSectionA1.EditIndex = this.EditIndexInstInstrQualSectionA1;
        gvInstInstrQualSectionA1.DataSource = ArryListName;
        gvInstInstrQualSectionA1.DataBind();

        if (this.EditIndexInstInstrQualSectionA1 >= 0)
        {
            gvInstInstrQualSectionA1.Rows[this.EditIndexInstInstrQualSectionA1].CssClass = "RowInEditMode";
            gvInstInstrQualSectionA1.Rows[this.EditIndexInstInstrQualSectionA1].Cells[0].Attributes.Add("colspan", "6");
            gvInstInstrQualSectionA1.Rows[this.EditIndexInstInstrQualSectionA1].Cells[1].Visible = false;
            gvInstInstrQualSectionA1.Rows[this.EditIndexInstInstrQualSectionA1].Cells[2].Visible = false;
            gvInstInstrQualSectionA1.Rows[this.EditIndexInstInstrQualSectionA1].Cells[3].Visible = false;
            gvInstInstrQualSectionA1.Rows[this.EditIndexInstInstrQualSectionA1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstInstrQualSectionA1].Cells[5].Visible = false;

        }
    }

    public void FillControlInstInstrQualSectionA1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstInstrQualSectionA1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstInstrQualSectionA1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstInstrQualSectionA1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstInstrQualSectionA1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstInstrQualSectionA1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstInstrQualSectionA1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstInstrQualSectionA1 = -1;
        BindGridInstInstrQualSectionA1();
    }

    protected void lnkInstInstrQualSectionA1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstInstrQualSectionA1 = -1;
        BindGridInstInstrQualSectionA1();
    }

    protected void lnkInstInstrQualSectionA1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstrPrimaryMassageSchool.Visible = true;
        divAddInstrPrimaryMassageSchool.Visible = false;
        this.EditIndexInstInstrQualSectionA1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstInstrQualSectionA1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstInstrQualSectionA1();
            FillControlInstInstrQualSectionA1(gvInstInstrQualSectionA1, this.EditIndexInstInstrQualSectionA1);
        }
    }

    protected void lnkInstInstrQualSectionA1Delete_Click(object sender, EventArgs e)
    {

    }
    #endregion

    #region INSTRUCTOR School Education


    public int EditIndexInstrSchQualSectionA1
    {
        get
        {
            if (ViewState["EditIndexInstrSchQualSectionA1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstrSchQualSectionA1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstrSchQualSectionA1"] = value;
        }
    }

    protected void btnInstrSchQualSectionA1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstrSchQualMassageSchool.Visible = false;
        dvAddSchoolAtt.Visible = true;
        ltrInstrSchQualSectionA1.Visible = true;
        this.EditIndexInstrSchQualSectionA1 = -1;
        BindGridInstrSchQualSectionA1();
    }
    protected void btnInstrSchQualSectionA1AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstrSchQualMassageSchool.Visible = true;
        ltrInstrSchQualSectionA1.Visible = false;
    }
    protected void lnkInstrSchQualSectionA1AddNewCancel_Click(object sender, EventArgs e)
    {
        dvAddSchoolAtt.Visible = false;
        divAddBtnInstrSchQualMassageSchool.Visible = true;
        ltrInstrSchQualSectionA1.Visible = false;
    }

    int ROWISIIQ2 = 0;
    protected void gvInstrSchQualSectionA1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWISIIQ2 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWISIIQ2 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWISIIQ2++;

        }
    }

    public void BindGridInstrSchQualSectionA1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstrSchQualSectionA1.EditIndex = this.EditIndexInstrSchQualSectionA1;
        gvInstrSchQualSectionA1.DataSource = ArryListName;
        gvInstrSchQualSectionA1.DataBind();

        if (this.EditIndexInstrSchQualSectionA1 >= 0)
        {
            gvInstrSchQualSectionA1.Rows[this.EditIndexInstrSchQualSectionA1].CssClass = "RowInEditMode";
            gvInstrSchQualSectionA1.Rows[this.EditIndexInstrSchQualSectionA1].Cells[0].Attributes.Add("colspan", "6");
            gvInstrSchQualSectionA1.Rows[this.EditIndexInstrSchQualSectionA1].Cells[1].Visible = false;
            gvInstrSchQualSectionA1.Rows[this.EditIndexInstrSchQualSectionA1].Cells[2].Visible = false;
            gvInstrSchQualSectionA1.Rows[this.EditIndexInstrSchQualSectionA1].Cells[3].Visible = false;
            gvInstrSchQualSectionA1.Rows[this.EditIndexInstrSchQualSectionA1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstrSchQualSectionA1].Cells[5].Visible = false;

        }
    }

    public void FillControlInstrSchQualSectionA1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstrSchQualSectionA1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstrSchQualSectionA1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstrSchQualSectionA1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstrSchQualSectionA1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstrSchQualSectionA1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstrSchQualSectionA1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstrSchQualSectionA1 = -1;
        BindGridInstrSchQualSectionA1();
    }

    protected void lnkInstrSchQualSectionA1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstrSchQualSectionA1 = -1;
        BindGridInstrSchQualSectionA1();
    }

    protected void lnkInstrSchQualSectionA1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstrSchQualMassageSchool.Visible = true;
        ltrInstrSchQualSectionA1.Visible = false;
        this.EditIndexInstrSchQualSectionA1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstrSchQualSectionA1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstrSchQualSectionA1();
            FillControlInstrSchQualSectionA1(gvInstrSchQualSectionA1, this.EditIndexInstrSchQualSectionA1);
        }
    }

    protected void lnkInstrSchQualSectionA1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region School Info School(s) where CURRENTLY working

    public int EditIndexInstSchQualSectionB1
    {
        get
        {
            if (ViewState["EditIndexInstSchQualSectionB1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstSchQualSectionB1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstSchQualSectionB1"] = value;
        }
    }

    protected void btnInstSchQualSectionB1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB1.Visible = false;
        divAddInstSchQualSectionB1.Visible = true;
        this.EditIndexInstSchQualSectionB1 = -1;
        BindGridInstSchQualSectionB1();
    }
    protected void btnInstSchQualSectionB1AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB1.Visible = true;
        divAddInstSchQualSectionB1.Visible = false;
    }
    protected void lnkInstSchQualSectionB1AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB1.Visible = true;
        divAddInstSchQualSectionB1.Visible = false;
    }

    int ROWIScoQB1 = 0;
    protected void gvInstSchQualSectionB1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWIScoQB1 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWIScoQB1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWIScoQB1++;

        }
    }

    public void BindGridInstSchQualSectionB1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstSchQualSectionB1.EditIndex = this.EditIndexInstSchQualSectionB1;
        gvInstSchQualSectionB1.DataSource = ArryListName;
        gvInstSchQualSectionB1.DataBind();

        if (this.EditIndexInstSchQualSectionB1 >= 0)
        {
            gvInstSchQualSectionB1.Rows[this.EditIndexInstSchQualSectionB1].CssClass = "RowInEditMode";
            gvInstSchQualSectionB1.Rows[this.EditIndexInstSchQualSectionB1].Cells[0].Attributes.Add("colspan", "6");
            gvInstSchQualSectionB1.Rows[this.EditIndexInstSchQualSectionB1].Cells[1].Visible = false;
            gvInstSchQualSectionB1.Rows[this.EditIndexInstSchQualSectionB1].Cells[2].Visible = false;
            gvInstSchQualSectionB1.Rows[this.EditIndexInstSchQualSectionB1].Cells[3].Visible = false;
            gvInstSchQualSectionB1.Rows[this.EditIndexInstSchQualSectionB1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstSchQualSectionB1].Cells[5].Visible = false;

        }
    }

    public void FillControlInstSchQualSectionB1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstSchQualSectionB1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstSchQualSectionB1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstSchQualSectionB1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstSchQualSectionB1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstSchQualSectionB1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstSchQualSectionB1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB1 = -1;
        BindGridInstSchQualSectionB1();
    }

    protected void lnkInstSchQualSectionB1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB1 = -1;
        BindGridInstSchQualSectionB1();
    }

    protected void lnkInstSchQualSectionB1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB1.Visible = true;
        divAddInstSchQualSectionB1.Visible = false;
        this.EditIndexInstSchQualSectionB1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstSchQualSectionB1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstSchQualSectionB1();
            FillControlInstSchQualSectionB1(gvInstSchQualSectionB1, this.EditIndexInstSchQualSectionB1);
        }
    }

    protected void lnkInstSchQualSectionB1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Staff Info Other School(s) where PREVIOUSLY

    public int EditIndexInstSchQualSectionB2
    {
        get
        {
            if (ViewState["EditIndexInstSchQualSectionB2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstSchQualSectionB2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstSchQualSectionB2"] = value;
        }
    }

    protected void btnInstSchQualSectionB2AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB2.Visible = false;
        divAddInstSchQualSectionB2.Visible = true;
        this.EditIndexInstSchQualSectionB2 = -1;
        BindGridInstSchQualSectionB2();
    }
    protected void btnInstSchQualSectionB2AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB2.Visible = true;
        divAddInstSchQualSectionB2.Visible = false;
    }
    protected void lnkInstSchQualSectionB2AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB2.Visible = true;
        divAddInstSchQualSectionB2.Visible = false;
    }

    int ROWIScoQB2 = 0;
    protected void gvInstSchQualSectionB2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWIScoQB2 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWIScoQB2 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWIScoQB2++;

        }
    }

    public void BindGridInstSchQualSectionB2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstSchQualSectionB2.EditIndex = this.EditIndexInstSchQualSectionB2;
        gvInstSchQualSectionB2.DataSource = ArryListName;
        gvInstSchQualSectionB2.DataBind();

        if (this.EditIndexInstSchQualSectionB2 >= 0)
        {
            gvInstSchQualSectionB2.Rows[this.EditIndexInstSchQualSectionB2].CssClass = "RowInEditMode";
            gvInstSchQualSectionB2.Rows[this.EditIndexInstSchQualSectionB2].Cells[0].Attributes.Add("colspan", "6");
            gvInstSchQualSectionB2.Rows[this.EditIndexInstSchQualSectionB2].Cells[1].Visible = false;
            gvInstSchQualSectionB2.Rows[this.EditIndexInstSchQualSectionB2].Cells[2].Visible = false;
            gvInstSchQualSectionB2.Rows[this.EditIndexInstSchQualSectionB2].Cells[3].Visible = false;
            gvInstSchQualSectionB2.Rows[this.EditIndexInstSchQualSectionB2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstSchQualSectionB2].Cells[5].Visible = false;

        }
    }

    public void FillControlInstSchQualSectionB2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstSchQualSectionB2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstSchQualSectionB2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstSchQualSectionB2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstSchQualSectionB2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstSchQualSectionB2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstSchQualSectionB2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB2 = -1;
        BindGridInstSchQualSectionB2();
    }

    protected void lnkInstSchQualSectionB2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB2 = -1;
        BindGridInstSchQualSectionB2();
    }

    protected void lnkInstSchQualSectionB2Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB2.Visible = true;
        divAddInstSchQualSectionB2.Visible = false;
        this.EditIndexInstSchQualSectionB2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstSchQualSectionB2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstSchQualSectionB2();
            FillControlInstSchQualSectionB2(gvInstSchQualSectionB2, this.EditIndexInstSchQualSectionB2);
        }
    }

    protected void lnkInstSchQualSectionB2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region School Info Current Massage Employee

    public int EditIndexInstSchQualSectionB3
    {
        get
        {
            if (ViewState["EditIndexInstSchQualSectionB3"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstSchQualSectionB3"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstSchQualSectionB3"] = value;
        }
    }

    protected void btnInstSchQualSectionB3AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB3.Visible = false;
        divAddInstSchQualSectionB3.Visible = true;
        this.EditIndexInstSchQualSectionB3 = -1;
        BindGridInstSchQualSectionB3();
    }
    protected void btnInstSchQualSectionB3AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB3.Visible = true;
        divAddInstSchQualSectionB3.Visible = false;
    }
    protected void lnkInstSchQualSectionB3AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB3.Visible = true;
        divAddInstSchQualSectionB3.Visible = false;
    }

    int ROWScIQB3 = 0;
    protected void gvInstSchQualSectionB3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWScIQB3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWScIQB3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWScIQB3++;

        }
    }

    public void BindGridInstSchQualSectionB3()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstSchQualSectionB3.EditIndex = this.EditIndexInstSchQualSectionB3;
        gvInstSchQualSectionB3.DataSource = ArryListName;
        gvInstSchQualSectionB3.DataBind();

        if (this.EditIndexInstSchQualSectionB3 >= 0)
        {
            gvInstSchQualSectionB3.Rows[this.EditIndexInstSchQualSectionB3].CssClass = "RowInEditMode";
            gvInstSchQualSectionB3.Rows[this.EditIndexInstSchQualSectionB3].Cells[0].Attributes.Add("colspan", "6");
            gvInstSchQualSectionB3.Rows[this.EditIndexInstSchQualSectionB3].Cells[1].Visible = false;
            gvInstSchQualSectionB3.Rows[this.EditIndexInstSchQualSectionB3].Cells[2].Visible = false;
            gvInstSchQualSectionB3.Rows[this.EditIndexInstSchQualSectionB3].Cells[3].Visible = false;
            gvInstSchQualSectionB3.Rows[this.EditIndexInstSchQualSectionB3].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstSchQualSectionB3].Cells[5].Visible = false;

        }
    }

    public void FillControlInstSchQualSectionB3(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstSchQualSectionB3].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstSchQualSectionB3].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstSchQualSectionB3].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstSchQualSectionB3].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstSchQualSectionB3].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstSchQualSectionB3Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB3 = -1;
        BindGridInstSchQualSectionB3();
    }

    protected void lnkInstSchQualSectionB3CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB3 = -1;
        BindGridInstSchQualSectionB3();
    }

    protected void lnkInstSchQualSectionB3Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB3.Visible = true;
        divAddInstSchQualSectionB3.Visible = false;
        this.EditIndexInstSchQualSectionB3 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstSchQualSectionB3 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstSchQualSectionB3();
            FillControlInstSchQualSectionB3(gvInstSchQualSectionB3, this.EditIndexInstSchQualSectionB3);
        }
    }

    protected void lnkInstSchQualSectionB3Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Staff Info Prev Massage Employee

    public int EditIndexInstSchQualSectionB4
    {
        get
        {
            if (ViewState["EditIndexInstSchQualSectionB4"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstSchQualSectionB4"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstSchQualSectionB4"] = value;
        }
    }

    protected void btnInstSchQualSectionB4AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB4.Visible = false;
        divAddInstSchQualSectionB4.Visible = true;
        this.EditIndexInstSchQualSectionB4 = -1;
        BindGridInstSchQualSectionB4();
    }
    protected void btnInstSchQualSectionB4AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB4.Visible = true;
        divAddInstSchQualSectionB4.Visible = false;
    }
    protected void lnkInstSchQualSectionB4AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB4.Visible = true;
        divAddInstSchQualSectionB4.Visible = false;
    }

    int ROWScoIQB4 = 0;
    protected void gvInstSchQualSectionB4_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWScoIQB4 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWScoIQB4 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWScoIQB4++;

        }
    }

    public void BindGridInstSchQualSectionB4()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstSchQualSectionB4.EditIndex = this.EditIndexInstSchQualSectionB4;
        gvInstSchQualSectionB4.DataSource = ArryListName;
        gvInstSchQualSectionB4.DataBind();

        if (this.EditIndexInstSchQualSectionB4 >= 0)
        {
            gvInstSchQualSectionB4.Rows[this.EditIndexInstSchQualSectionB4].CssClass = "RowInEditMode";
            gvInstSchQualSectionB4.Rows[this.EditIndexInstSchQualSectionB4].Cells[0].Attributes.Add("colspan", "6");
            gvInstSchQualSectionB4.Rows[this.EditIndexInstSchQualSectionB4].Cells[1].Visible = false;
            gvInstSchQualSectionB4.Rows[this.EditIndexInstSchQualSectionB4].Cells[2].Visible = false;
            gvInstSchQualSectionB4.Rows[this.EditIndexInstSchQualSectionB4].Cells[3].Visible = false;
            gvInstSchQualSectionB4.Rows[this.EditIndexInstSchQualSectionB4].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstSchQualSectionB4].Cells[5].Visible = false;

        }
    }

    public void FillControlInstSchQualSectionB4(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstSchQualSectionB4].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstSchQualSectionB4].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstSchQualSectionB4].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstSchQualSectionB4].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstSchQualSectionB4].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstSchQualSectionB4Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB4 = -1;
        BindGridInstSchQualSectionB4();
    }

    protected void lnkInstSchQualSectionB4CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB4 = -1;
        BindGridInstSchQualSectionB4();
    }

    protected void lnkInstSchQualSectionB4Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB4.Visible = true;
        divAddInstSchQualSectionB4.Visible = false;
        this.EditIndexInstSchQualSectionB4 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstSchQualSectionB4 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstSchQualSectionB4();
            FillControlInstSchQualSectionB4(gvInstSchQualSectionB4, this.EditIndexInstSchQualSectionB4);
        }
    }

    protected void lnkInstSchQualSectionB4Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region InStroction Subject Taught

    public int EditIndexSubjectTaughInstr
    {
        get
        {
            if (ViewState["EditIndexSubjectTaughInstr"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexSubjectTaughInstr"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexSubjectTaughInstr"] = value;
        }
    }
    protected void btnSubjectTaughInstrAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnSubjectTaughInstr.Visible = false;
        divAddSubjectTaughInstr.Visible = true;
        this.EditIndexLicensureInformation = -1;
        BindGridSubjectTaughInstr();
    }
    protected void btnSubjectTaughInstrAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnSubjectTaughInstr.Visible = true;
        divAddSubjectTaughInstr.Visible = false;
    }
    protected void lnkSubjectTaugInstrAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnSubjectTaughInstr.Visible = true;
        divAddSubjectTaughInstr.Visible = false;
    }

    public void BindGridSubjectTaughInstr()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvSubjectTaughInstr.EditIndex = this.EditIndexSubjectTaughInstr;
        gvSubjectTaughInstr.DataSource = ArryListName;
        gvSubjectTaughInstr.DataBind();

        if (this.EditIndexLicensureInformation >= 0)
        {
            gvSubjectTaughInstr.Rows[this.EditIndexSubjectTaughInstr].CssClass = "RowInEditMode";
            gvSubjectTaughInstr.Rows[this.EditIndexSubjectTaughInstr].Cells[0].Attributes.Add("colspan", "6");
            gvSubjectTaughInstr.Rows[this.EditIndexSubjectTaughInstr].Cells[1].Visible = false;
            gvSubjectTaughInstr.Rows[this.EditIndexSubjectTaughInstr].Cells[2].Visible = false;

        }
    }

    int ROWSuLic = 0;
    protected void gvSubjectTaughInstr_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSubjectTaughInstrt = e.Row.FindControl("lblSubjectTaughInstrt") as Label;
            Label lblEduforthisSub = e.Row.FindControl("lblEduforthisSub") as Label;

            if (lblSubjectTaughInstrt != null && lblEduforthisSub != null)
            {
                if (ROWSuLic == 0)
                {

                    lblSubjectTaughInstrt.Text = "Subject 1";
                    lblEduforthisSub.Text = "Graduate";
                }
                else if (ROWLic == 1)
                {
                    lblSubjectTaughInstrt.Text = "Subject 1";
                    lblEduforthisSub.Text = "Graduate";
                }
            }

            ROWSuLic++;

        }
    }

    protected void lnkSubjectTaughInstrEdit_Click(object sender, EventArgs e)
    {
        divAddSubjectTaughInstr.Visible = false;
        divAddbtnSubjectTaughInstr.Visible = true;
        this.EditIndexSubjectTaughInstr = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexSubjectTaughInstr = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridSubjectTaughInstr();
            FillControlApprovalAgency(gvApprovalAgency, this.EditIndexSubjectTaughInstr);
        }
    }
    protected void lnkSubjectTaughInstrDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlSubjectTaughInstr(GridView gv, int EditInd)
    {
        try
        {


            TextBox txtSchoolCodeEdit = gv.Rows[this.EditIndexSubjectTaughInstr].FindControl("txtSchoolCodeEdit") as TextBox;
            TextBox txtExpirationDateEdit = gv.Rows[this.EditIndexSubjectTaughInstr].FindControl("txtExpirationDateEdit") as TextBox;
            DropDownList ddlAddApprovalAgencyEdit = gv.Rows[this.EditIndexSubjectTaughInstr].FindControl("ddlAddApprovalAgencyEdit") as DropDownList;

            txtSchoolCodeEdit.Text = "SCH001";
            ddlAddApprovalAgencyEdit.SelectedValue = "A1";
            txtExpirationDateEdit.Text = "02/04/2016";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnSubjectTaughInstrUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexSubjectTaughInstr = -1;
        BindGridSubjectTaughInstr();
    }
    protected void lnkSubjectTaughInstrCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexSubjectTaughInstr = -1;
        BindGridSubjectTaughInstr();
    }

    #endregion


    #region History Instructor

    #region HistoryQ1
    protected void rblInstructorHistoryQ1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorHistoryQ1.SelectedItem.Text == "Yes")
        {
            divInstructor1.Visible = true;
        }
        else
        {
            divInstructor1.Visible = false;
        }
    }

    #endregion
    #region HistoryQ2
    protected void rblInstructorHistoryQ2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorHistoryQ2.SelectedItem.Text == "Yes")
        {
            divInstructor2.Visible = true;
        }
        else
        {
            divInstructor2.Visible = false;
        }
    }

    #endregion
    #region HistoryQ3
    protected void rblInstructorHistoryQ3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorHistoryQ3.SelectedItem.Text == "Yes")
        {
            divInstructor3.Visible = true;
        }
        else
        {
            divInstructor3.Visible = false;
        }
    }

    #endregion
    #region HistoryQ4
    protected void rblInstructorHistoryQ4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorHistoryQ4.SelectedItem.Text == "Yes")
        {
            divInstructor4.Visible = true;
        }
        else
        {
            divInstructor4.Visible = false;
        }
    }

    #endregion
    #region HistoryQ5
    protected void rblInstructorHistoryQ5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorHistoryQ5.SelectedItem.Text == "Yes")
        {
            divInstructor5.Visible = true;
        }
        else
        {
            divInstructor5.Visible = false;
        }
    }

    #endregion


    #endregion

    #endregion

    #region Staff Info Owner




    #region HistoryQ1
    protected void rblOwnerDec1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerDec1.SelectedItem.Text == "Yes")
        {
            divPStaffOwner1.Visible = true;
        }
        else
        {
            divPStaffOwner1.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion
    #region HistoryQ2
    protected void rblOwnerDec2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerDec2.SelectedItem.Text == "Yes")
        {
            divPStaffOwner2.Visible = true;
        }
        else
        {
            divPStaffOwner2.Visible = false;
        }
    }
    //protected void btnAddHist2_Click(object sender, EventArgs e)
    //{
    //    divgvhist2.Visible = true;
    //}
    #endregion
    #region HistoryQ3
    protected void rblOwnerDec3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerDec3.SelectedItem.Text == "Yes")
        {
            divPStaffOwner3.Visible = true;
        }
        else
        {
            divPStaffOwner3.Visible = false;
        }
    }
    //protected void btnAddHist3_Click(object sender, EventArgs e)
    //{
    //    divgvhist3.Visible = true;
    //}
    #endregion
    #region HistoryQ4
    protected void rblOwnerDec4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerDec4.SelectedItem.Text == "Yes")
        {
            divPStaffOwner4.Visible = true;
        }
        else
        {
            divPStaffOwner4.Visible = false;
        }
    }
    //protected void btnAddHist4_Click(object sender, EventArgs e)
    //{
    //    divgvhist4.Visible = true;
    //}
    #endregion
    #region HistoryQ5
    protected void rblOwnerDec5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerDec5.SelectedItem.Text == "Yes")
        {
            divPStaffOwner5.Visible = true;
        }
        else
        {
            divPStaffOwner5.Visible = false;
        }
    }
    //protected void btnAddHist5_Click(object sender, EventArgs e)
    //{
    //    divgvhist5.Visible = true;
    //}
    #endregion
    #region HistoryQ6
    protected void rblOwnerDec6_SelectedIndexChanged(object sender, EventArgs e)
    {
        //    if (rblOwnerDec6.SelectedItem.Text == "Yes")
        //    {
        //        divPStaffOwner6.Visible = true;
        //    }
        //    else
        //    {
        //        divPStaffOwner6.Visible = false;
        //    }
    }
    //protected void btnAddHist5_Click(object sender, EventArgs e)
    //{
    //    divgvhist5.Visible = true;
    //}
    #endregion

    #endregion


    #region Administrator Information

    #region AdminInfo1

    public int EditIndexAdminInfo1
    {
        get
        {
            if (ViewState["EditIndexAdminInfo1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdminInfo1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdminInfo1"] = value;
        }
    }

    protected void btnAdminInfo1AddNew_Click(object sender, EventArgs e)
    {
        divBtnAddAdminInfo1.Visible = false;
        divAddAdminInfo1.Visible = true;
        this.EditIndexAdminInfo1 = -1;
        BindGridAdminInfo1();
    }
    protected void btnAdminInfo1AddNewSave_Click(object sender, EventArgs e)
    {
        string strErrAddAddPriMasScl;
        strErrAddAddPriMasScl = "";

        if (txtAdminInfo1SchoolName.Text == "")
        {
            strErrAddAddPriMasScl = "Please enter School Name.";
        }


        if (txtAdminInfo1City.Text == "")
        {
            if (strErrAddAddPriMasScl == "")
                strErrAddAddPriMasScl = "Please enter City.";
            else
            {
                strErrAddAddPriMasScl = strErrAddAddPriMasScl + "<br />" + "Please enter City.";
            }
        }

        if (ddlAdminInfo1State.SelectedValue == "-1")
        {
            if (strErrAddAddPriMasScl == "")
                strErrAddAddPriMasScl = "Please select State.";
            else
            {
                strErrAddAddPriMasScl = strErrAddAddPriMasScl + "<br />" + "Please select State.";
            }
        }


        if (txtAdminInfo1GradDate.Text == "")
        {
            if (strErrAddAddPriMasScl == "")
                strErrAddAddPriMasScl = "Please enter Date of Graduation.";
            else
            {
                strErrAddAddPriMasScl = strErrAddAddPriMasScl + "<br />" + "Please enter Date of Graduation.";
            }
        }


        if (strErrAddAddPriMasScl == "")
        {
            divBtnAddAdminInfo1.Visible = true;
            divAddAdminInfo1.Visible = false;
        }
        else
        {
            lblErrAddAddPriMasScl.Text = strErrAddAddPriMasScl;
            dvErrAddAddPriMasScl.Focus();
            dvErrAddAddPriMasScl.Visible = true;
        }



    }
    protected void lnkAdminInfo1AddNewCancel_Click(object sender, EventArgs e)
    {
        dvErrAddAddPriMasScl.Visible = false;
        divBtnAddAdminInfo1.Visible = true;
        divAddAdminInfo1.Visible = false;
    }

    int ROWAI1 = 0;
    protected void gvAdminInfo1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblAdminInfo1SchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblAdminInfo1City") as Label;
            Label lblState = e.Row.FindControl("lblAdminInfo1State") as Label;
            Label lblGradDate = e.Row.FindControl("lblAdminInfo1GradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAI1 == 0)
                {

                    lblSchoolName.Text = "School 1";
                    lblGradDate.Text = "02/04/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";

                }
                else if (ROWAI1 == 1)
                {
                    lblSchoolName.Text = "School 2";
                    lblGradDate.Text = "02/04/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROWAI1++;

        }
    }

    public void BindGridAdminInfo1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvAdminInfo1.EditIndex = this.EditIndexAdminInfo1;
        gvAdminInfo1.DataSource = ArryListName;
        gvAdminInfo1.DataBind();

        if (this.EditIndexAdminInfo1 >= 0)
        {
            gvAdminInfo1.Rows[this.EditIndexAdminInfo1].CssClass = "RowInEditMode";
            gvAdminInfo1.Rows[this.EditIndexAdminInfo1].Cells[0].Attributes.Add("colspan", "6");
            gvAdminInfo1.Rows[this.EditIndexAdminInfo1].Cells[1].Visible = false;
            gvAdminInfo1.Rows[this.EditIndexAdminInfo1].Cells[2].Visible = false;
            gvAdminInfo1.Rows[this.EditIndexAdminInfo1].Cells[3].Visible = false;
            gvAdminInfo1.Rows[this.EditIndexAdminInfo1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdminInfo1].Cells[5].Visible = false;

        }
    }

    public void FillControlAdminInfo1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdminInfo1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdminInfo1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdminInfo1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdminInfo1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdminInfo1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnAdminInfo1Update_Click(object sender, EventArgs e)
    {
        string strErrEditPriMasSchl;
        strErrEditPriMasSchl = "";

        if (txtSchoolNameEditAI1.Text == "")
        {
            strErrEditPriMasSchl = "Please enter School Name.";
        }



        if (txtGradDateEditAI1.Text == "")
        {
            if (strErrEditPriMasSchl == "")
                strErrEditPriMasSchl = "Please enter Date of Graduation.";
            else
            {
                strErrEditPriMasSchl = strErrEditPriMasSchl + "<br />" + "Please enter Date of Graduation.";
            }
        }

        if (strErrEditPriMasSchl == "")
        {
            this.EditIndexAdminInfo1 = -1;
            BindGridAdminInfo1();
        }
        else
        {
            lblErrEditPriMasSchl.Text = strErrEditPriMasSchl;
            dvErrEditPriMasSchl.Focus();
            dvErrEditPriMasSchl.Visible = true;
        }




    }

    protected void lnkAdminInfo1CancelUpdate_Click(object sender, EventArgs e)
    {
        dvErrEditPriMasSchl.Visible = false;
        this.EditIndexAdminInfo1 = -1;
        BindGridAdminInfo1();
    }

    protected void lnkAdminInfo1Edit_Click(object sender, EventArgs e)
    {
        divBtnAddAdminInfo1.Visible = true;
        divAddAdminInfo1.Visible = false;
        this.EditIndexAdminInfo1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdminInfo1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdminInfo1();
            FillControlAdminInfo1(gvAdminInfo1, this.EditIndexAdminInfo1);
        }
    }

    protected void lnkAdminInfo1Delete_Click(object sender, EventArgs e)
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
        divBtnAddAdminInfo2.Visible = false;
        divAddAdminInfo2.Visible = true;
        this.EditIndexAdminInfo2 = -1;
        BindGridAdminInfo2();
    }
    protected void btnAdminInfo2AddNewSave_Click(object sender, EventArgs e)
    {
        string strErrAddPriCollege;
        strErrAddPriCollege = "";

        if (txtAdminInfo2SchoolName.Text == "")
        {
            strErrAddPriCollege = "Please enter School Name.";
        }


        if (txtAdminInfo2City.Text == "")
        {
            if (strErrAddPriCollege == "")
                strErrAddPriCollege = "Please enter City.";
            else
            {
                strErrAddPriCollege = strErrAddPriCollege + "<br />" + "Please enter City.";
            }
        }

        if (ddlAdminInfo2State.SelectedValue == "-1")
        {
            if (strErrAddPriCollege == "")
                strErrAddPriCollege = "Please select State.";
            else
            {
                strErrAddPriCollege = strErrAddPriCollege + "<br />" + "Please select State.";
            }
        }

        if (txtAdminInfo2GradDate.Text == "")
        {
            if (strErrAddPriCollege == "")
                strErrAddPriCollege = "Please enter Date of Graduation.";
            else
            {
                strErrAddPriCollege = strErrAddPriCollege + "<br />" + "Please enter Date of Graduation.";
            }
        }


        if (strErrAddPriCollege == "")
        {
            divBtnAddAdminInfo2.Visible = true;
            divAddAdminInfo2.Visible = false;
        }
        else
        {
            lblErrAddPriCollege.Text = strErrAddPriCollege;
            dvErrAddPriCollege.Focus();
            dvErrAddPriCollege.Visible = true;
        }




    }
    protected void lnkAdminInfo2AddNewCancel_Click(object sender, EventArgs e)
    {
        dvErrAddPriCollege.Visible = false;
        divBtnAddAdminInfo2.Visible = true;
        divAddAdminInfo2.Visible = false;
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



        gvAdminInfo2.EditIndex = this.EditIndexAdminInfo2;
        gvAdminInfo2.DataSource = ArryListName;
        gvAdminInfo2.DataBind();

        if (this.EditIndexAdminInfo2 >= 0)
        {
            gvAdminInfo2.Rows[this.EditIndexAdminInfo2].CssClass = "RowInEditMode";
            gvAdminInfo2.Rows[this.EditIndexAdminInfo2].Cells[0].Attributes.Add("colspan", "6");
            gvAdminInfo2.Rows[this.EditIndexAdminInfo2].Cells[1].Visible = false;
            gvAdminInfo2.Rows[this.EditIndexAdminInfo2].Cells[2].Visible = false;
            gvAdminInfo2.Rows[this.EditIndexAdminInfo2].Cells[3].Visible = false;
            gvAdminInfo2.Rows[this.EditIndexAdminInfo2].Cells[4].Visible = false;
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

        string strErrorEdiPriCollege;
        strErrorEdiPriCollege = "";

        if (txtSchoolNameEdit2.Text == "")
        {
            strErrorEdiPriCollege = "Please enter School Name.";
        }

        if (ddlStateEdit2.SelectedValue == "-1")
        {
            if (strErrorEdiPriCollege == "")
                strErrorEdiPriCollege = "Please select State.";
            else
            {
                strErrorEdiPriCollege = strErrorEdiPriCollege + "<br />" + "Please select State.";
            }
        }

        if (txtGradDateEdit2.Text == "")
        {
            if (strErrorEdiPriCollege == "")
                strErrorEdiPriCollege = "Please enter Date of Graduation.";
            else
            {
                strErrorEdiPriCollege = strErrorEdiPriCollege + "<br />" + "Please enter Date of Graduation.";
            }
        }



        if (strErrorEdiPriCollege == "")
        {
            this.EditIndexAdminInfo2 = -1;
            BindGridAdminInfo2();
        }
        else
        {
            lblErrorEdiPriCollege.Text = strErrorEdiPriCollege;
            dvErrorEdiPriCollege.Focus();
            dvErrorEdiPriCollege.Visible = true;
        }





    }

    protected void lnkAdminInfo2CancelUpdate_Click(object sender, EventArgs e)
    {
        dvErrorEdiPriCollege.Visible = false;
        this.EditIndexAdminInfo2 = -1;
        BindGridAdminInfo2();
    }

    protected void lnkAdminInfo2Edit_Click(object sender, EventArgs e)
    {
        divBtnAddAdminInfo2.Visible = true;
        divAddAdminInfo2.Visible = false;
        this.EditIndexAdminInfo2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdminInfo2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdminInfo2();
            FillControlAdminInfo2(gvAdminInfo2, this.EditIndexAdminInfo2);
        }
    }

    protected void lnkAdminInfo2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #endregion

    #region Administrator Work Experience

    #region AdminWrkExp1

    public int EditIndexAdminWrkExp1
    {
        get
        {
            if (ViewState["EditIndexAdminWrkExp1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdminWrkExp1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdminWrkExp1"] = value;
        }
    }

    protected void btnAdminWrkExp1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnAdminWrkExp1.Visible = false;
        divAddAdminWrkExp1.Visible = true;
        this.EditIndexAdminWrkExp1 = -1;
        BindGridAdminWrkExp1();
    }
    protected void btnAdminWrkExp1AddNewSave_Click(object sender, EventArgs e)
    {
        string strErrAddOtherSclCWork;
        strErrAddOtherSclCWork = "";

        if (txtAdminWrkExp1Name.Text == "")
        {
            strErrAddOtherSclCWork = "Please enter School Name.";
        }

        if (txtAdminWrkExp1City.Text == "")
        {
            if (strErrAddOtherSclCWork == "")
                strErrAddOtherSclCWork = "Please enter City.";
            else
            {
                strErrAddOtherSclCWork = strErrAddOtherSclCWork + "<br />" + "Please enter City.";
            }
        }

        if (ddlAdminWrkExp1State.SelectedValue == "-1")
        {
            if (strErrAddOtherSclCWork == "")
                strErrAddOtherSclCWork = "Please select State.";
            else
            {
                strErrAddOtherSclCWork = strErrAddOtherSclCWork + "<br />" + "Please select State.";
            }
        }

        if (txtAdminWrkExp1GradDate.Text == "")
        {
            if (strErrAddOtherSclCWork == "")
                strErrAddOtherSclCWork = "Please enter Date of Employment.";
            else
            {
                strErrAddOtherSclCWork = strErrAddOtherSclCWork + "<br />" + "Please enter Date of Employment.";
            }
        }

        if (strErrAddOtherSclCWork == "")
        {

            divAddBtnAdminWrkExp1.Visible = true;
            divAddAdminWrkExp1.Visible = false;
        }
        else
        {
            lblErrAddOtherSclCWork.Text = strErrAddOtherSclCWork;
            dvErrAddOtherSclCWork.Focus();
            dvErrAddOtherSclCWork.Visible = true;
        }



    }
    protected void lnkAdminWrkExp1AddNewCancel_Click(object sender, EventArgs e)
    {
        dvErrAddOtherSclCWork.Visible = false;
        divAddBtnAdminWrkExp1.Visible = true;
        divAddAdminWrkExp1.Visible = false;
    }

    int ROWAWE1 = 0;
    protected void gvAdminWrkExp1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblAdminWrkExp1SchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblAdminWrkExp1City") as Label;
            Label lblState = e.Row.FindControl("lblAdminWrkExp1State") as Label;
            Label lblGradDate = e.Row.FindControl("lblAdminWrkExp1GradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWE1 == 0)
                {

                    lblSchoolName.Text = "School 1";
                    lblGradDate.Text = "02/04/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";

                }
                else if (ROWAWE1 == 1)
                {
                    lblSchoolName.Text = "School 2";
                    lblGradDate.Text = "02/08/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROWAWE1++;

        }
    }

    public void BindGridAdminWrkExp1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvAdminWrkExp1.EditIndex = this.EditIndexAdminWrkExp1;
        gvAdminWrkExp1.DataSource = ArryListName;
        gvAdminWrkExp1.DataBind();

        if (this.EditIndexAdminWrkExp1 >= 0)
        {
            gvAdminWrkExp1.Rows[this.EditIndexAdminWrkExp1].CssClass = "RowInEditMode";
            gvAdminWrkExp1.Rows[this.EditIndexAdminWrkExp1].Cells[0].Attributes.Add("colspan", "6");
            gvAdminWrkExp1.Rows[this.EditIndexAdminWrkExp1].Cells[1].Visible = false;
            gvAdminWrkExp1.Rows[this.EditIndexAdminWrkExp1].Cells[2].Visible = false;
            gvAdminWrkExp1.Rows[this.EditIndexAdminWrkExp1].Cells[3].Visible = false;
            gvAdminWrkExp1.Rows[this.EditIndexAdminWrkExp1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdminWrkExp1].Cells[5].Visible = false;

        }
    }

    public void FillControlAdminWrkExp1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdminWrkExp1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdminWrkExp1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdminWrkExp1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdminWrkExp1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdminWrkExp1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnAdminWrkExp1Update_Click(object sender, EventArgs e)
    {
        string strErrEdiPriMasSclAtte;
        strErrEdiPriMasSclAtte = "";

        if (txtSchoolNameEdit1.Text == "")
        {
            strErrEdiPriMasSclAtte = "Please enter School Name.";
        }




        if (txtGradDateEdit1.Text == "")
        {
            if (strErrEdiPriMasSclAtte == "")
                strErrEdiPriMasSclAtte = "Please enter Date of Employment.";
            else
            {
                strErrEdiPriMasSclAtte = strErrEdiPriMasSclAtte + "<br />" + "Please enter Date of Employment.";
            }
        }



        if (strErrEdiPriMasSclAtte == "")
        {
            this.EditIndexAdminWrkExp1 = -1;
            BindGridAdminWrkExp1();
        }
        else
        {
            lblErrEdiPriMasSclAtte.Text = strErrEdiPriMasSclAtte;
            dvErrEdiPriMasSclAtte.Focus();
            dvErrEdiPriMasSclAtte.Visible = true;
        }




    }

    protected void lnkAdminWrkExp1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexAdminWrkExp1 = -1;
        BindGridAdminWrkExp1();
    }

    protected void lnkAdminWrkExp1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnAdminWrkExp1.Visible = true;
        divAddAdminWrkExp1.Visible = false;
        this.EditIndexAdminWrkExp1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdminWrkExp1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdminWrkExp1();
            FillControlAdminWrkExp1(gvAdminWrkExp1, this.EditIndexAdminWrkExp1);
        }
    }

    protected void lnkAdminWrkExp1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region AdminWrkExp2

    public int EditIndexAdminWrkExp2
    {
        get
        {
            if (ViewState["EditIndexAdminWrkExp2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdminWrkExp2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdminWrkExp2"] = value;
        }
    }

    protected void btnAdminWrkExp2AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnAdminWrkExp2.Visible = false;
        divAddAdminWrkExp2.Visible = true;
        this.EditIndexAdminWrkExp2 = -1;
        BindGridAdminWrkExp2();
    }
    protected void btnAdminWrkExp2AddNewSave_Click(object sender, EventArgs e)
    {
        string strErrAddOtherSchlCWork;
        strErrAddOtherSchlCWork = "";

        if (txtAdminWrkExp2Name.Text == "")
        {
            strErrAddOtherSchlCWork = "Please enter School Name.";
        }

        if (txtAdminWrkExp2City.Text == "")
        {
            if (strErrAddOtherSchlCWork == "")
                strErrAddOtherSchlCWork = "Please enter City.";
            else
            {
                strErrAddOtherSchlCWork = strErrAddOtherSchlCWork + "<br />" + "Please enter City.";
            }
        }


        if (ddlAdminWrkExp2State.SelectedValue == "-1")
        {
            if (strErrAddOtherSchlCWork == "")
                strErrAddOtherSchlCWork = "Please select State.";
            else
            {
                strErrAddOtherSchlCWork = strErrAddOtherSchlCWork + "<br />" + "Please select State.";
            }
        }

        if (txtAdminWrkExp2GradDate.Text == "")
        {
            if (strErrAddOtherSchlCWork == "")
                strErrAddOtherSchlCWork = "Please enter Date of Employment.";
            else
            {
                strErrAddOtherSchlCWork = strErrAddOtherSchlCWork + "<br />" + "Please enter Date of Employment.";
            }
        }


        if (strErrAddOtherSchlCWork == "")
        {
            divAddBtnAdminWrkExp2.Visible = true;
            divAddAdminWrkExp2.Visible = false;
        }
        else
        {
            lblErrAddOtherSchlCWork.Text = strErrAddOtherSchlCWork;
            dvErrAddOtherSchlCWork.Focus();
            dvErrAddOtherSchlCWork.Visible = true;
        }


    }
    protected void lnkAdminWrkExp2AddNewCancel_Click(object sender, EventArgs e)
    {
        dvErrAddOtherSchlCWork.Visible = false;
        divAddBtnAdminWrkExp2.Visible = true;
        divAddAdminWrkExp2.Visible = false;
    }

    int ROWAWE2 = 0;
    protected void gvAdminWrkExp2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblAdminWrkExp2SchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblAdminWrkExp2City") as Label;
            Label lblState = e.Row.FindControl("lblAdminWrkExp2State") as Label;
            Label lblGradDate = e.Row.FindControl("lblAdminWrkExp2GradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWE2 == 0)
                {

                    lblSchoolName.Text = "School 1";
                    lblGradDate.Text = "02/04/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";

                }
                else if (ROWAWE2 == 1)
                {
                    lblSchoolName.Text = "School 2";
                    lblGradDate.Text = "02/08/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROWAWE2++;

        }
    }

    public void BindGridAdminWrkExp2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvAdminWrkExp2.EditIndex = this.EditIndexAdminWrkExp2;
        gvAdminWrkExp2.DataSource = ArryListName;
        gvAdminWrkExp2.DataBind();

        if (this.EditIndexAdminWrkExp2 >= 0)
        {
            gvAdminWrkExp2.Rows[this.EditIndexAdminWrkExp2].CssClass = "RowInEditMode";
            gvAdminWrkExp2.Rows[this.EditIndexAdminWrkExp2].Cells[0].Attributes.Add("colspan", "6");
            gvAdminWrkExp2.Rows[this.EditIndexAdminWrkExp2].Cells[1].Visible = false;
            gvAdminWrkExp2.Rows[this.EditIndexAdminWrkExp2].Cells[2].Visible = false;
            gvAdminWrkExp2.Rows[this.EditIndexAdminWrkExp2].Cells[3].Visible = false;
            gvAdminWrkExp2.Rows[this.EditIndexAdminWrkExp2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdminWrkExp2].Cells[5].Visible = false;

        }
    }

    public void FillControlAdminWrkExp2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdminWrkExp2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdminWrkExp2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdminWrkExp2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdminWrkExp2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdminWrkExp2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnAdminWrkExp2Update_Click(object sender, EventArgs e)
    {
        string strErrEditPriMageSclAtte;
        strErrEditPriMageSclAtte = "";

        if (txtSchoolNameEditPr2.Text == "")
        {
            strErrEditPriMageSclAtte = "Please enter School Name.";
        }


        if (txtGradDateEditPr2.Text == "")
        {
            if (strErrEditPriMageSclAtte == "")
                strErrEditPriMageSclAtte = "Please enter Date of Employment.";
            else
            {
                strErrEditPriMageSclAtte = strErrEditPriMageSclAtte + "<br />" + "Please enter Date of Employment.";
            }
        }


        if (strErrEditPriMageSclAtte == "")
        {
            this.EditIndexAdminWrkExp2 = -1;
            BindGridAdminWrkExp2();
        }
        else
        {
            lblErrEditPriMageSclAtte.Text = strErrEditPriMageSclAtte;
            dvErrEditPriMageSclAtte.Focus();
            dvErrEditPriMageSclAtte.Visible = true;
        }



    }

    protected void lnkAdminWrkExp2CancelUpdate_Click(object sender, EventArgs e)
    {
        dvErrEditPriMageSclAtte.Visible = false;
        this.EditIndexAdminWrkExp2 = -1;
        BindGridAdminWrkExp2();
    }

    protected void lnkAdminWrkExp2Edit_Click(object sender, EventArgs e)
    {
        divAddBtnAdminWrkExp2.Visible = true;
        divAddAdminWrkExp2.Visible = false;
        this.EditIndexAdminWrkExp2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdminWrkExp2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdminWrkExp2();
            FillControlAdminWrkExp2(gvAdminWrkExp2, this.EditIndexAdminWrkExp2);
        }
    }

    protected void lnkAdminWrkExp2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region AdminWrkExp3

    public int EditIndexAdminWrkExp3
    {
        get
        {
            if (ViewState["EditIndexAdminWrkExp3"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdminWrkExp3"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdminWrkExp3"] = value;
        }
    }

    protected void btnAdminWrkExp3AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnAdminWrkExp3.Visible = false;
        divAddAdminWrkExp3.Visible = true;
        this.EditIndexAdminWrkExp3 = -1;
        BindGridAdminWrkExp3();
    }
    protected void btnAdminWrkExp3AddNewSave_Click(object sender, EventArgs e)
    {
        string strErrAddCntOtherMsagEmp;
        strErrAddCntOtherMsagEmp = "";

        if (txtAdminWrkExp3Name.Text == "")
        {
            strErrAddCntOtherMsagEmp = "Please enter School Name.";
        }



        if (txtAdminWrkExp3City.Text == "")
        {
            if (strErrAddCntOtherMsagEmp == "")
                strErrAddCntOtherMsagEmp = "Please enter City.";
            else
            {
                strErrAddCntOtherMsagEmp = strErrAddCntOtherMsagEmp + "<br />" + "Please enter City.";
            }
        }


        if (ddlAdminWrkExp3State.SelectedValue == "-1")
        {
            if (strErrAddCntOtherMsagEmp == "")
                strErrAddCntOtherMsagEmp = "Please select State.";
            else
            {
                strErrAddCntOtherMsagEmp = strErrAddCntOtherMsagEmp + "<br />" + "Please select State.";
            }
        }


        if (txtAdminWrkExp3GradDate.Text == "")
        {
            if (strErrAddCntOtherMsagEmp == "")
                strErrAddCntOtherMsagEmp = "Please enter Date of Employment.";
            else
            {
                strErrAddCntOtherMsagEmp = strErrAddCntOtherMsagEmp + "<br />" + "Please enter Date of Employment.";
            }
        }



        if (strErrAddCntOtherMsagEmp == "")
        {
            divAddBtnAdminWrkExp3.Visible = true;
            divAddAdminWrkExp3.Visible = false;
        }
        else
        {
            lblErrAddCntOtherMsagEmp.Text = strErrAddCntOtherMsagEmp;
            dvErrAddCntOtherMsagEmp.Focus();
            dvErrAddCntOtherMsagEmp.Visible = true;
        }



    }
    protected void lnkAdminWrkExp3AddNewCancel_Click(object sender, EventArgs e)
    {
        dvErrAddCntOtherMsagEmp.Visible = false;
        divAddBtnAdminWrkExp3.Visible = true;
        divAddAdminWrkExp3.Visible = false;
    }

    int ROWAWE3 = 0;
    protected void gvAdminWrkExp3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblAdminWrkExp3SchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblAdminWrkExp3City") as Label;
            Label lblState = e.Row.FindControl("lblAdminWrkExp3State") as Label;
            Label lblGradDate = e.Row.FindControl("lblAdminWrkExp3GradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWE3 == 0)
                {

                    lblSchoolName.Text = "School 1";
                    lblGradDate.Text = "02/04/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";

                }
                else if (ROWAWE3 == 1)
                {
                    lblSchoolName.Text = "School 2";
                    lblGradDate.Text = "02/08/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROWAWE3++;

        }
    }

    public void BindGridAdminWrkExp3()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvAdminWrkExp3.EditIndex = this.EditIndexAdminWrkExp3;
        gvAdminWrkExp3.DataSource = ArryListName;
        gvAdminWrkExp3.DataBind();

        if (this.EditIndexAdminWrkExp3 >= 0)
        {
            gvAdminWrkExp3.Rows[this.EditIndexAdminWrkExp3].CssClass = "RowInEditMode";
            gvAdminWrkExp3.Rows[this.EditIndexAdminWrkExp3].Cells[0].Attributes.Add("colspan", "6");
            gvAdminWrkExp3.Rows[this.EditIndexAdminWrkExp3].Cells[1].Visible = false;
            gvAdminWrkExp3.Rows[this.EditIndexAdminWrkExp3].Cells[2].Visible = false;
            gvAdminWrkExp3.Rows[this.EditIndexAdminWrkExp3].Cells[3].Visible = false;
            gvAdminWrkExp3.Rows[this.EditIndexAdminWrkExp3].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdminWrkExp3].Cells[5].Visible = false;

        }
    }

    public void FillControlAdminWrkExp3(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdminWrkExp3].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdminWrkExp3].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdminWrkExp3].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdminWrkExp3].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdminWrkExp3].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnAdminWrkExp3Update_Click(object sender, EventArgs e)
    {

        string strErrEditPriMsgSclAtten;
        strErrEditPriMsgSclAtten = "";

        if (txtSchoolNameEdit3.Text == "")
        {
            strErrEditPriMsgSclAtten = "Please enter School Name.";
        }

        if (txtGradDateEdit3.Text == "")
        {
            if (strErrEditPriMsgSclAtten == "")
                strErrEditPriMsgSclAtten = "Please enter Date of Employment.";
            else
            {
                strErrEditPriMsgSclAtten = strErrEditPriMsgSclAtten + "<br />" + "Please enter Date of Employment.";
            }
        }

        if (strErrEditPriMsgSclAtten == "")
        {
            this.EditIndexAdminWrkExp3 = -1;
            BindGridAdminWrkExp3();
        }
        else
        {
            lblErrEditPriMsgSclAtten.Text = strErrEditPriMsgSclAtten;
            dvErrEditPriMsgSclAtten.Focus();
            dvErrEditPriMsgSclAtten.Visible = true;
        }



    }

    protected void lnkAdminWrkExp3CancelUpdate_Click(object sender, EventArgs e)
    {
        dvErrEditPriMsgSclAtten.Visible = false;
        this.EditIndexAdminWrkExp3 = -1;
        BindGridAdminWrkExp3();
    }

    protected void lnkAdminWrkExp3Edit_Click(object sender, EventArgs e)
    {
        divAddBtnAdminWrkExp3.Visible = true;
        divAddAdminWrkExp3.Visible = false;
        this.EditIndexAdminWrkExp3 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdminWrkExp3 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdminWrkExp3();
            FillControlAdminWrkExp3(gvAdminWrkExp3, this.EditIndexAdminWrkExp3);
        }
    }

    protected void lnkAdminWrkExp3Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region AdminWrkExp4

    public int EditIndexAdminWrkExp4
    {
        get
        {
            if (ViewState["EditIndexAdminWrkExp4"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdminWrkExp4"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdminWrkExp4"] = value;
        }
    }

    protected void btnAdminWrkExp4AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnAdminWrkExp4.Visible = false;
        divAddAdminWrkExp4.Visible = true;
        this.EditIndexAdminWrkExp4 = -1;
        BindGridAdminWrkExp4();
    }
    protected void btnAdminWrkExp4AddNewSave_Click(object sender, EventArgs e)
    {

        string strErrPREVOtherMsgEmploy;
        strErrPREVOtherMsgEmploy = "";

        if (txtAdminWrkExp4Name.Text == "")
        {
            strErrPREVOtherMsgEmploy = "Please enter School Name.";
        }

        if (txtAdminWrkExp4City.Text == "")
        {
            if (strErrPREVOtherMsgEmploy == "")
                strErrPREVOtherMsgEmploy = "Please enter City.";
            else
            {
                strErrPREVOtherMsgEmploy = strErrPREVOtherMsgEmploy + "<br />" + "Please enter City.";
            }
        }

        if (ddlAdminWrkExp4State.SelectedValue == "-1")
        {
            if (strErrPREVOtherMsgEmploy == "")
                strErrPREVOtherMsgEmploy = "Please select State.";
            else
            {
                strErrPREVOtherMsgEmploy = strErrPREVOtherMsgEmploy + "<br />" + "Please select State.";
            }
        }

        if (txtAdminWrkExp4GradDate.Text == "")
        {
            if (strErrPREVOtherMsgEmploy == "")
                strErrPREVOtherMsgEmploy = "Please enter Date of Employment.";
            else
            {
                strErrPREVOtherMsgEmploy = strErrPREVOtherMsgEmploy + "<br />" + "Please enter Date of Employment.";
            }
        }

        if (strErrPREVOtherMsgEmploy == "")
        {
            divAddBtnAdminWrkExp4.Visible = true;
            divAddAdminWrkExp4.Visible = false;
        }
        else
        {
            lblErrPREVOtherMsgEmploy.Text = strErrPREVOtherMsgEmploy;
            dvErrPREVOtherMsgEmploy.Focus();
            dvErrPREVOtherMsgEmploy.Visible = true;
        }




    }
    protected void lnkAdminWrkExp4AddNewCancel_Click(object sender, EventArgs e)
    {
        dvErrPREVOtherMsgEmploy.Visible = false;
        divAddBtnAdminWrkExp4.Visible = true;
        divAddAdminWrkExp4.Visible = false;
    }

    int ROWAWE4 = 0;
    protected void gvAdminWrkExp4_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblAdminWrkExp4SchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblAdminWrkExp4City") as Label;
            Label lblState = e.Row.FindControl("lblAdminWrkExp4State") as Label;
            Label lblGradDate = e.Row.FindControl("lblAdminWrkExp4GradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWE4 == 0)
                {

                    lblSchoolName.Text = "School 1";
                    lblGradDate.Text = "02/04/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";

                }
                else if (ROWAWE4 == 1)
                {
                    lblSchoolName.Text = "School 2";
                    lblGradDate.Text = "02/08/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROWAWE4++;

        }
    }

    public void BindGridAdminWrkExp4()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvAdminWrkExp4.EditIndex = this.EditIndexAdminWrkExp4;
        gvAdminWrkExp4.DataSource = ArryListName;
        gvAdminWrkExp4.DataBind();

        if (this.EditIndexAdminWrkExp4 >= 0)
        {
            gvAdminWrkExp4.Rows[this.EditIndexAdminWrkExp4].CssClass = "RowInEditMode";
            gvAdminWrkExp4.Rows[this.EditIndexAdminWrkExp4].Cells[0].Attributes.Add("colspan", "6");
            gvAdminWrkExp4.Rows[this.EditIndexAdminWrkExp4].Cells[1].Visible = false;
            gvAdminWrkExp4.Rows[this.EditIndexAdminWrkExp4].Cells[2].Visible = false;
            gvAdminWrkExp4.Rows[this.EditIndexAdminWrkExp4].Cells[3].Visible = false;
            gvAdminWrkExp4.Rows[this.EditIndexAdminWrkExp4].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdminWrkExp4].Cells[5].Visible = false;

        }
    }

    public void FillControlAdminWrkExp4(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdminWrkExp4].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdminWrkExp4].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdminWrkExp4].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdminWrkExp4].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdminWrkExp4].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnAdminWrkExp4Update_Click(object sender, EventArgs e)
    {
        string strErrAWEEditPriMsgSclAtten;
        strErrAWEEditPriMsgSclAtten = "";

        if (txtSchoolNameEdit4.Text == "")
        {
            strErrAWEEditPriMsgSclAtten = "Please enter School Name.";
        }


        if (txtGradDateEdit4.Text == "")
        {
            if (strErrAWEEditPriMsgSclAtten == "")
                strErrAWEEditPriMsgSclAtten = "Please enter Date of Employment.";
            else
            {
                strErrAWEEditPriMsgSclAtten = strErrAWEEditPriMsgSclAtten + "<br />" + "Please enter Date of Employment.";
            }
        }


        if (strErrAWEEditPriMsgSclAtten == "")
        {
            this.EditIndexAdminWrkExp4 = -1;
            BindGridAdminWrkExp4();
        }
        else
        {
            lblErrAWEAddCntOtherMsagEmp.Text = strErrAWEEditPriMsgSclAtten;
            dvErrAWEEditPriMsgSclAtten.Focus();
            dvErrAWEEditPriMsgSclAtten.Visible = true;
        }



    }

    protected void lnkAdminWrkExp4CancelUpdate_Click(object sender, EventArgs e)
    {
        dvErrAWEEditPriMsgSclAtten.Visible = false;
        this.EditIndexAdminWrkExp4 = -1;
        BindGridAdminWrkExp4();
    }

    protected void lnkAdminWrkExp4Edit_Click(object sender, EventArgs e)
    {
        divAddBtnAdminWrkExp4.Visible = true;
        divAddAdminWrkExp4.Visible = false;
        this.EditIndexAdminWrkExp4 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdminWrkExp4 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdminWrkExp4();
            FillControlAdminWrkExp4(gvAdminWrkExp4, this.EditIndexAdminWrkExp4);
        }
    }

    protected void lnkAdminWrkExp4Delete_Click(object sender, EventArgs e)
    {

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

    protected void lnkSchoolInfoPreviousAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnSchoolInfoPrevious.Visible = true;
        divAddSchoolInfoPrevious.Visible = false;
    }

    public void BindGridSchoolInfoPrevious()
    {


    }


    protected void lnkSchoolInfoPreviousEdit_Click(object sender, EventArgs e)
    {
        divAddOwnerInfo.Visible = false;
        divAddbtnOwnerInfo.Visible = true;
        this.EditIndexSchoolInfoPrevious = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexSchoolInfoPrevious = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridOwnerInfo();
            FillControlSchoolInfoMailing(gvOwnerInfo, this.EditIndexSchoolInfoPrevious);
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


    protected void lnkSatelliteLocationAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnSatelliteLocation.Visible = true;
        divAddSatelliteLocation.Visible = false;
    }

    public void BindGridSatelliteLocation()
    {

        //ArrayList ArryListName = new ArrayList();
        //ArryListName.Add("CA");
        //ArryListName.Add("CA");



        //gvSatelliteLocation.EditIndex = this.EditIndexSchoolInfoSatelliteLoc;
        //gvSatelliteLocation.DataSource = ArryListName;
        //gvSatelliteLocation.DataBind();

        //if (this.EditIndexSchoolInfoSatelliteLoc >= 0)
        //{
        //    gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].CssClass = "RowInEditMode";
        //    gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[0].Attributes.Add("colspan", "7");
        //    gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[1].Visible = false;
        //    gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[2].Visible = false;
        //    gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[3].Visible = false;
        //    gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[4].Visible = false;


        //}
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

    protected void lnkSatelliteLocationEdit_Click(object sender, EventArgs e)
    {
        divAddOwnerInfo.Visible = false;
        divAddbtnOwnerInfo.Visible = true;
        this.EditIndexSchoolInfoSatelliteLoc = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexSchoolInfoSatelliteLoc = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridOwnerInfo();
            FillControlSchoolInfoSatelliteLoc(gvOwnerInfo, this.EditIndexSchoolInfoSatelliteLoc);
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


    #endregion


    #endregion

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
    
    protected void lnkCourseReqAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnCourseReq.Visible = true;
        divAddCourseReq.Visible = false;
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
            FillControlPHRWInnerGrid(gvAdminInfo2, this.EditIndexPHRW1);
        }
    }

    protected void lnkCourseTitleHourDelete_Click(object sender, EventArgs e)
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


    #endregion

    #endregion

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

    #region Display Panel User LoginWise

    public void chkLoginDisplayDiv()
    {
        string sessionValue = Session["sUserLoginInfo"].ToString();
        object sender = new object();
        EventArgs e = new EventArgs();

        upStaffInfo_Default.Visible = false;
        upStaffInfo_Admin.Visible = false;
        upStaffInfo_AdministratorInstructor.Visible = false;
        upStaffInfo_Instructor.Visible = false;
        upStaffInfo_Owner.Visible = false;

        if (sessionValue == "SchoolAdmin")
        {
            btnStaffInformation_Click(sender, e);
            upStaffInfo_Admin.Visible = true;
        }


        else if (sessionValue == "SchoolAdminInst")
        {
            btnStaffInformation_Click(sender, e);
            upStaffInfo_AdministratorInstructor.Visible = true;
        }


        else if (sessionValue == "SchoolInst")
        {
            btnStaffInformation_Click(sender, e);
            upStaffInfo_Instructor.Visible = true;

        }


        else if (sessionValue == "SchoolOwner")
        {
            btnStaffInformation_Click(sender, e);
            upStaffInfo_Owner.Visible = true;
        }


        else if (sessionValue == "SchoolOwnerAdmin")
        {
            btnStaffInformation_Click(sender, e);
            upStaffInfo_OwnerAdministrator.Visible = true;
        }

        else if (sessionValue == "SchoolOwnAdminInst")
        {
            btnStaffInformation_Click(sender, e);
            upStaffInfo_OwnerAdminInstructor.Visible = true;
        }

        else if (sessionValue == "SchoolOwnInst")
        {
            btnStaffInformation_Click(sender, e);
            upStaffInfo_OwnerInstructor.Visible = true;
        }



    }

    #endregion

    #region Display Tabs User LoginWise

    public void chkLoginDisplayTab()
    {
        string sessionValue = Session["sUserLoginInfo"].ToString();
        object sender = new object();
        EventArgs e = new EventArgs();

        liApplicatinInstructions.Visible = false;
        liMassageTherapistApplication.Visible = false;
        liSection2.Visible = false;
        liSection3.Visible = false;
        li_Background_Checklist.Visible = false;
        li_Transcript_Checklist.Visible = false;
        li_Enrollment_Agreement_Checklist.Visible = false;
        li_Course_Catalog_Checklist.Visible = false;
        li_Program_Hour_Requirement_Worksheet.Visible = false;
        liPayment.Visible = false;
        liStaffInformation.Visible = false;
        liSection5.Visible = false;
        liSection4.Visible = false;
        liSection7.Visible = false;
        li_Administrator_Work_Experience.Visible = false;
        li_Administrator_Declaration.Visible = false;
        li_Instructor_Qualifications.Visible = false;
        li_Instructor_Declaration.Visible = false;
        liSection6.Visible = false;
        li_School_Faculty_List.Visible = false;
        li_School_ReApproval.Visible = false;
        li_Student_Eligibility_List.Visible = false;
        liSchoolContactStaff.Visible = false;
        liCorrectiveAction.Visible = false;

        lischoolpubinstStaff.Visible = false;

        if (sessionValue == "School" || sessionValue == "SchoolApplicant")
        {
            liApplicatinInstructions.Visible = true;
            liMassageTherapistApplication.Visible = true;
            liSection2.Visible = true;
            liSection3.Visible = true;
            li_Background_Checklist.Visible = true;
            li_Transcript_Checklist.Visible = true;
            li_Enrollment_Agreement_Checklist.Visible = true;
            li_Course_Catalog_Checklist.Visible = true;
            li_Program_Hour_Requirement_Worksheet.Visible = true;
            liPayment.Visible = true;
            liStaffInformation.Visible = true;
            liSection5.Visible = true;
            liSection4.Visible = true;
            liSection7.Visible = true;
            li_Administrator_Work_Experience.Visible = true;
            li_Administrator_Declaration.Visible = true;
            li_Instructor_Qualifications.Visible = true;
            li_Instructor_Declaration.Visible = true;
            liSection6.Visible = true;
            li_School_Faculty_List.Visible = true;

        }

        else if (sessionValue == "SchoolContact")
        {

            liApplicatinInstructions.Visible = true;
            liMassageTherapistApplication.Visible = true;
            liSection2.Visible = true;
            liSection3.Visible = true;
            liSchoolContactStaff.Visible = true; //li_Background_Checklist.Visible = true;            
            li_Transcript_Checklist.Visible = true;
            li_Enrollment_Agreement_Checklist.Visible = true;
            li_Course_Catalog_Checklist.Visible = true;
            li_Program_Hour_Requirement_Worksheet.Visible = true;
            liPayment.Visible = false;
            liCorrectiveAction.Visible = true;

            btnsubappforContct.Visible = false;

            if (Session["sUserLoginEmail"].ToString() == "schoolpubinst@inlumon.com")
            {
                liSchoolContactStaff.Visible = false;
                lischoolpubinstStaff.Visible = true;
            }


        }



        else if (sessionValue == "SchoolOwner")
        {
            liApplicatinInstructions.Visible = true;
            liMassageTherapistApplication.Visible = true;
            liSection2.Visible = true;
            liSection3.Visible = true;
            li_Background_Checklist.Visible = true;
            li_Transcript_Checklist.Visible = true;
            li_Enrollment_Agreement_Checklist.Visible = true;
            li_Course_Catalog_Checklist.Visible = true;
            li_Program_Hour_Requirement_Worksheet.Visible = true;
            liPayment.Visible = false;
            liStaffInformation.Visible = true;

            liCorrectiveAction.Visible = true;

            btnstaffpay_visible.Visible = false;
            btnPayNow.Visible = false;
            //btnPaySubmitApplication.Visible = false;
            btnNextBackList.Visible = true;
            btnsaveSclContct.Visible = false;

        }

        else if (sessionValue == "SchoolOwnerAdmin")
        {
            liApplicatinInstructions.Visible = true;
            liMassageTherapistApplication.Visible = true;
            liSection2.Visible = true;
            liSection3.Visible = true;
            li_Background_Checklist.Visible = true;
            li_Transcript_Checklist.Visible = true;
            li_Enrollment_Agreement_Checklist.Visible = true;
            li_Course_Catalog_Checklist.Visible = true;
            li_Program_Hour_Requirement_Worksheet.Visible = true;
            liPayment.Visible = false;
            liStaffInformation.Visible = true;
            btnstaffpay_visible.Visible = false;
            btnPayNow.Visible = false;
            //btnPaySubmitApplication.Visible = false;
            btnNextBackList.Visible = true;
            btnsaveSclContct.Visible = false;
        }

        else if (sessionValue == "SchoolOwnAdminInst")
        {
            liApplicatinInstructions.Visible = true;
            liMassageTherapistApplication.Visible = true;
            liSection2.Visible = true;
            liSection3.Visible = true;
            li_Background_Checklist.Visible = true;
            li_Transcript_Checklist.Visible = true;
            li_Enrollment_Agreement_Checklist.Visible = true;
            li_Course_Catalog_Checklist.Visible = true;
            li_Program_Hour_Requirement_Worksheet.Visible = true;
            liPayment.Visible = false;
            liStaffInformation.Visible = true;
            btnstaffpay_visible.Visible = false;
            btnPayNow.Visible = false;
            //btnPaySubmitApplication.Visible = false;
            btnNextBackList.Visible = true;
            btnsaveSclContct.Visible = false;
        }

        else if (sessionValue == "SchoolOwnInst")
        {
            liApplicatinInstructions.Visible = true;
            liMassageTherapistApplication.Visible = true;
            liSection2.Visible = true;
            liSection3.Visible = true;
            li_Background_Checklist.Visible = true;
            li_Transcript_Checklist.Visible = true;
            li_Enrollment_Agreement_Checklist.Visible = true;
            li_Course_Catalog_Checklist.Visible = true;
            li_Program_Hour_Requirement_Worksheet.Visible = true;
            liPayment.Visible = false;
            liStaffInformation.Visible = true;
            btnstaffpay_visible.Visible = false;
            btnPayNow.Visible = false;
            //btnPaySubmitApplication.Visible = false;
            btnNextBackList.Visible = true;
            btnsaveSclContct.Visible = false;
        }

        else if (sessionValue == "SchoolAdmin")
        {
            liStaffInformation.Visible = true;
            btnNextBackList.Visible = true;
            btnsaveSclContct.Visible = false;
        }

        else if (sessionValue == "SchoolInst")
        {
            liStaffInformation.Visible = true;
            btnNextBackList.Visible = true;
            btnsaveSclContct.Visible = false;
        }

        else if (sessionValue == "SchoolAdminInst")
        {
            liStaffInformation.Visible = true;
            btnNextBackList.Visible = true;
            btnsaveSclContct.Visible = false;
        }





        //Session.Remove("sUserLoginInfo");
    }

    #endregion

    protected void CheckOwnerDec1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckOwnerDec2_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckOwnerDec3_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckOwnerDec4_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckOwnerDec5_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckOwnerDec7_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckOwnerDec60_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void btnShowDetails_Click(object sender, EventArgs e)
    {
        if (btnShowDetails.Visible == true)
            btnShowDetails.Visible = false;
        else
            btnShowDetails.Visible = true;

        if (btnHideDetials.Visible == false)
            btnHideDetials.Visible = true;
        else
            btnHideDetials.Visible = true;

        if (showdetils1.Visible == true)
            showdetils1.Visible = false;
        else
            showdetils1.Visible = true;

        if (showdetils2.Visible == true)
            showdetils2.Visible = false;
        else
            showdetils2.Visible = true;
    }

    protected void btnStaffShowDetails_Click(object sender, EventArgs e)
    {
        if (btnStaffShowDetails.Visible == true)
            btnStaffShowDetails.Visible = false;
        else
            btnStaffShowDetails.Visible = true;

        if (btnStaffHideDetials.Visible == false)
            btnStaffHideDetials.Visible = true;
        else
            btnStaffHideDetials.Visible = true;

        if (showstaffdetils1.Visible == true)
            showstaffdetils1.Visible = false;
        else
            showstaffdetils1.Visible = true;

        if (Staffshowdetils2.Visible == true)
            Staffshowdetils2.Visible = false;
        else
            Staffshowdetils2.Visible = true;
    }
    protected void btnHideDetials_Click(object sender, EventArgs e)
    {
        if (btnHideDetials.Visible == true)
            btnHideDetials.Visible = false;
        else
            btnHideDetials.Visible = true;

        if (btnShowDetails.Visible == false)
            btnShowDetails.Visible = true;
        else
            btnShowDetails.Visible = true;

        if (showdetils1.Visible == true)
            showdetils1.Visible = false;
        else
            showdetils1.Visible = true;

        if (showdetils2.Visible == true)
            showdetils2.Visible = false;
        else
            showdetils2.Visible = true;
    }


    protected void btnStaffHideDetials_Click(object sender, EventArgs e)
    {
        if (btnStaffHideDetials.Visible == true)
            btnStaffHideDetials.Visible = false;
        else
            btnStaffHideDetials.Visible = true;

        if (btnStaffShowDetails.Visible == false)
            btnStaffShowDetails.Visible = true;
        else
            btnStaffShowDetails.Visible = true;

        if (showstaffdetils1.Visible == true)
            showstaffdetils1.Visible = false;
        else
            showstaffdetils1.Visible = true;

        if (Staffshowdetils2.Visible == true)
            Staffshowdetils2.Visible = false;
        else
            Staffshowdetils2.Visible = true;
    }



    #region AOS - Additional Online Services Links

    public void chkAOSDisplayTab()
    {
        string sessionValue = Request.QueryString["AOS"].ToString();//Session["AOS"].ToString();
        object sender = new object();
        EventArgs e = new EventArgs();

        if (sessionValue != "")
        {
            liApplicatinInstructions.Visible = false;
            liMassageTherapistApplication.Visible = false;
            liSection2.Visible = false;
            liSection3.Visible = false;
            li_Background_Checklist.Visible = false;
            li_Transcript_Checklist.Visible = false;
            li_Enrollment_Agreement_Checklist.Visible = false;
            li_Course_Catalog_Checklist.Visible = false;
            li_Program_Hour_Requirement_Worksheet.Visible = false;
            liPayment.Visible = false;
            liStaffInformation.Visible = false;
            liSection5.Visible = false;
            liSection4.Visible = false;
            liSection7.Visible = false;
            li_Administrator_Work_Experience.Visible = false;
            li_Administrator_Declaration.Visible = false;
            li_Instructor_Qualifications.Visible = false;
            li_Instructor_Declaration.Visible = false;
            liSection6.Visible = false;
            li_School_Faculty_List.Visible = false;
            li_School_ReApproval.Visible = false;
            li_Student_Eligibility_List.Visible = false;
            liSchoolContactStaff.Visible = false;

            lischoolpubinstStaff.Visible = false;

            liCorrectiveAction.Visible = false;

            divTopNote.Visible = true;

            if (sessionValue == "MS")
            {
                li_Background_Checklist.Visible = true;
                btnBackCheck_Click(sender, e);
            }

            else if (sessionValue == "MNA")
            {

                liMassageTherapistApplication.Visible = true;
                btnMassageTherapistApplication_Click(sender, e);
            }

            else if (sessionValue == "MAP")
            {

                liSection2.Visible = true;
                btnSection2_Click(sender, e);
            }

            else if (sessionValue == "MGNM")
            {

                liSection3.Visible = true;
                btnSection3_Click(sender, e);
            }



            else if (sessionValue == "MCC")
            {
                li_Course_Catalog_Checklist.Visible = true;
                btnCourCataCheck_Click(sender, e);
            }

            else if (sessionValue == "MPH")
            {
                li_Program_Hour_Requirement_Worksheet.Visible = true;
                btnProgHourReqWork_Click(sender, e);
            }

            else if (sessionValue == "MT")
            {
                li_Transcript_Checklist.Visible = true;
                btnTransCheck_Click(sender, e);
            }

            else if (sessionValue == "MEA")
            {
                li_Enrollment_Agreement_Checklist.Visible = true;
                btnEnrollAgreeCheck_Click(sender, e);
            }

            else if (sessionValue == "SRA")
            {
                li_School_ReApproval.Visible = true;
                btnSchoolReApp_Click(sender, e);
            }

            else if (sessionValue == "SGEL")
            {
                divTopNote.Visible = false;
                li_Student_Eligibility_List.Visible = true;
                btnStudentElgList_Click(sender, e);
            }

            else if (sessionValue == "PID")
            {
                liStaffInformation.Visible = true;

                string sUserLoginInfo = Session["sUserLoginInfo"].ToString();

                upStaffInfo_Default.Visible = false;
                upStaffInfo_Admin.Visible = false;
                upStaffInfo_AdministratorInstructor.Visible = false;
                upStaffInfo_Instructor.Visible = false;
                upStaffInfo_Owner.Visible = false;
                upStaffInfo_OwnerAdministrator.Visible = false;
                upStaffInfo_OwnerAdminInstructor.Visible = false;
                upStaffInfo_OwnerInstructor.Visible = false;

                if (sUserLoginInfo == "SchoolAdmin")
                {
                    btnStaffInformation_Click(sender, e);
                    upStaffInfo_Admin.Visible = true;
                }


                else if (sUserLoginInfo == "SchoolAdminInst")
                {
                    btnStaffInformation_Click(sender, e);
                    upStaffInfo_AdministratorInstructor.Visible = true;
                }


                else if (sUserLoginInfo == "SchoolInst")
                {
                    btnStaffInformation_Click(sender, e);
                    upStaffInfo_Instructor.Visible = true;

                }


                else if (sUserLoginInfo == "SchoolOwner")
                {
                    btnStaffInformation_Click(sender, e);
                    upStaffInfo_Owner.Visible = true;
                }


                else if (sUserLoginInfo == "SchoolOwnerAdmin")
                {
                    btnStaffInformation_Click(sender, e);
                    upStaffInfo_OwnerAdministrator.Visible = true;
                }

                else if (sUserLoginInfo == "SchoolOwnAdminInst")
                {
                    btnStaffInformation_Click(sender, e);
                    upStaffInfo_OwnerAdminInstructor.Visible = true;
                }

                else if (sUserLoginInfo == "SchoolOwnInst")
                {
                    btnStaffInformation_Click(sender, e);
                    upStaffInfo_OwnerInstructor.Visible = true;
                }

            }
        }


    }

    #endregion





    protected void btnStaffPay_Click(object sender, EventArgs e)
    {
        if (payment_stafftab.Visible == true)
            payment_stafftab.Visible = false;

        else
            payment_stafftab.Visible = true;

    }


    #region for login schoolpubinst@inlumon.com
    protected void btnschoolpubinstAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnschoolpubinst.Visible = false;
        divAddschoolpubinst.Visible = true;

    }

    protected void btnsclpubinstAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnschoolpubinst.Visible = true;
        divAddschoolpubinst.Visible = false;
    }

    protected void lnksclpubinstAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnschoolpubinst.Visible = true;
        divAddschoolpubinst.Visible = false;
    }

    #endregion

    protected void ddlOwnStaffType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlOwnStaffType.SelectedItem.Text == "Other (specify)")
        {
            trstafowner.Visible = true;
        }
        else
        {
            trstafowner.Visible = false;
        }
    }
    protected void ddlOwnInstrctStaff_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlOwnInstrctStaff.SelectedItem.Text == "Other (specify)")
        {
            trOwnInstctStff.Visible = true;
        }
        else
        {
            trOwnInstctStff.Visible = false;
        }
    }
    

    protected void txtAddProgrameHours_TextChanged(object sender, EventArgs e)
    {
        string value = txtAddProgrameHours.Text;

        try
        {
            if (Convert.ToInt32(value) < 500)
            {
                trTotalProgHour.Visible = true;

            }
            else
            {
                trTotalProgHour.Visible = false;
            }
        }
        catch { }

    }
    protected void btnSigntureAdd_Click(object sender, EventArgs e)
    {
        dvSignture.Visible = true;
    }


    //--basu--//
    protected void CallWebAPI_GET_ProvReqCourseOfStudyGetAll<T>(string ApiUrl, out object outputObj)
    {

        var httpWebRequest = (HttpWebRequest)WebRequest.Create(ApiUrl);
        httpWebRequest.ContentType = "application/json";
        httpWebRequest.Method = "GET";

        //using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
        //{
        //    string json = new JavaScriptSerializer().Serialize(input);

        //    streamWriter.Write(json);
        //    streamWriter.Flush();
        //    streamWriter.Close();

        var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
        using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
        {
            outputObj = JsonConvert.DeserializeObject<LAPP.ENTITY.ProvReqCourseOfStudyRS>(streamReader.ReadToEnd());
        }
        //}
    }

    protected void CallWebAPI_GET_ProvReqCourseTitleGetAllByCourseOfStudyId<T>(string ApiUrl, out object outputObj)
    {

        var httpWebRequest = (HttpWebRequest)WebRequest.Create(ApiUrl);
        httpWebRequest.ContentType = "application/json";
        httpWebRequest.Method = "GET";

        //using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
        //{
        //    string json = new JavaScriptSerializer().Serialize(input);

        //    streamWriter.Write(json);
        //    streamWriter.Flush();
        //    streamWriter.Close();

        var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
        using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
        {
            outputObj = JsonConvert.DeserializeObject<LAPP.ENTITY.ProvReqCourseTitleRS>(streamReader.ReadToEnd());
        }
        //}
    }

    protected void CallWebAPI_POST_ProvReqCourseTitle<T>(string ApiUrl, object input, out object outputObj)
    {
        var httpWebRequest = (HttpWebRequest)WebRequest.Create(ApiUrl);
        httpWebRequest.ContentType = "application/json";
        httpWebRequest.Method = "POST";

        using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
        {
            string json = new JavaScriptSerializer().Serialize(input);

            streamWriter.Write(json);
            streamWriter.Flush();
            streamWriter.Close();

            var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
            using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
            {
                outputObj = JsonConvert.DeserializeObject<LAPP.ENTITY.ProvReqCourseTitleRS>(streamReader.ReadToEnd());
            }
        }
    }

    protected void CallWebApi_POST_ProvClinicHours<T>(string ApiUrl, object input, out object outputObj)
    {
        var httpWebRequest = (HttpWebRequest)WebRequest.Create(ApiUrl);
        httpWebRequest.ContentType = "application/json";
        httpWebRequest.Method = "POST";

        using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
        {
            string json = new JavaScriptSerializer().Serialize(input);

            streamWriter.Write(json);
            streamWriter.Flush();
            streamWriter.Close();

            var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
            using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
            {
                outputObj = JsonConvert.DeserializeObject<LAPP.ENTITY.ProvClinicHoursRS>(streamReader.ReadToEnd());
            }
        }
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
    
    protected void gvProgHrWrkSheet_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //if(e.CommandName== "lnkCourses")
        //{
        //    //Get rowindex
        //    int rowindex = Convert.ToInt32(e.CommandArgument);
        //    //GridViewRow gvr = gvProgHrWrkSheet.Rows[rowindex];
        //    Session["gvProgHrWrkSheet_RowIndex"] = rowindex;
        //    gvCourseL2.Visible = true;
        //}
    }

    public ProvReqCourseOfStudyRS gvProgHrWrkSheet_Bind()
    {
        try
        {
            string WebAPIUrl = "http://localhost:1530/api/ProviderCurriculum/ProvReqCourseOfStudyGetAll/Key";

            Object obj;
            CallWebAPI_GET_ProvReqCourseOfStudyGetAll<LAPP.ENTITY.ProvReqCourseOfStudyRS>(WebAPIUrl, out obj);

            var res = (LAPP.ENTITY.ProvReqCourseOfStudyRS)obj;
            if (res.Status)
            {
                return res;
                //int objInternalCount= res.ProvReqCourseOfStudy.Count();
                //    gvProgHrWrkSheet.DataSource = res.ProvReqCourseOfStudy;
                //    gvProgHrWrkSheet.DataBind();
                //    System.Data.DataTable dt = new System.Data.DataTable();
                //System.Data.DataColumn dc1 = new System.Data.DataColumn("RequiredCourseofStudy");
                //System.Data.DataColumn dc2 = new System.Data.DataColumn("MinimumRequiredCourseHours");
                //dt.Columns.Add(dc1);
                //dt.Columns.Add(dc2);
                //for (int i=0;i< objInternalCount;i++)
                //{
                //    LAPP.CORE.ProvReqCourseOfStudy objProv = res.ProvReqCourseOfStudy[i];
                //    System.Data.DataRow dr = dt.NewRow();
                //    dr[0] = objProv.ReqCourseofStudyName;
                //    dr[1] = objProv.MinimumReqCourseHours;
                //    dt.Rows.Add(dr);
                //}
                //    gvProgHrWrkSheet.DataSource= dt;
                //    gvProgHrWrkSheet.DataBind();
            }
        }
        catch (Exception ex)
        {
        }
        return null;
    }

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

    public ProvReqCourseTitleRS gvCourseL2_Bind(int courseofstudyId)
    {
        string Key = UIHelper.GetKey();//"nancy";
        int CourseOfStudyId = courseofstudyId + 1;
        int ProviderId = UIHelper.GetProviderId();
        try
        {
            string WebAPIUrl = "http://localhost:1530/api/ProviderCurriculum/ProvReqCourseTitleGetAllByCourseOfStudyId/?Key=nancy&CourseOfStudyId=" + CourseOfStudyId + "&ProviderId=" + ProviderId + "";

            Object obj;
            CallWebAPI_GET_ProvReqCourseTitleGetAllByCourseOfStudyId<LAPP.ENTITY.ProvReqCourseTitleRS>(WebAPIUrl, out obj);


            var res = (LAPP.ENTITY.ProvReqCourseTitleRS)obj;
            if (res.Status)
            {
                return res;
                //List<ProvReqCourseTitle> list = res.ProvReqCourseTitle;
                //gvCourseL2.DataSource = list;
                //gvCourseL2.DataBind();
                ////int objInternalCount = res.ProvReqCourseTitle.Count(); 
                //System.Data.DataTable dt = new System.Data.DataTable();
                //System.Data.DataColumn dc1 = new System.Data.DataColumn("CourseTitleName");
                //System.Data.DataColumn dc2 = new System.Data.DataColumn("CourseHours");
                //dt.Columns.Add(dc1);
                //dt.Columns.Add(dc2);
                //for (int i = 0; i < objInternalCount; i++)
                //{
                //    LAPP.CORE.ProvReqCourseTitle objProv = res.ProvReqCourseTitle[i];
                //    System.Data.DataRow dr = dt.NewRow();
                //    dr[0] = objProv.CourseTitleName;
                //    dr[1] = objProv.CourseHours;
                //    dt.Rows.Add(dr);
                //}
                //gvCourseL2.DataSource = dt;
                //gvProgHrWrkSheet.DataBind();
            }
        }
        catch (Exception ex)
        {

        }
        return null;
    }

    protected void btnCourseReqAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnCourseReq.Visible = true;
        divAddCourseReq.Visible = false;
    }

    protected void txtcarculam_TextChanged(object sender, EventArgs e)
    {
        string value = txtcarculam.Text;

        try
        {
            if (Convert.ToInt32(value) > 75)
            {
                trClinicHour.Visible = true;

            }
            else
            {
                trClinicHour.Visible = false;
            }
        }
        catch { }

    }

    protected void btnSaveAboutCurriculum_Click(object sender, EventArgs e)
    {

    }
}



//Added by Prem Singh K F
public class ProviderInstructionsRQ
{
    public int ProviderInstructionsId { get; set; }
    public int ProviderId { get; set; }
    public int ApplicationId { get; set; }
    public int ContentItemLkId { get; set; }
    public string ContentItemLkCode { get; set; }
    public string ReferenceNumber { get; set; }
    public int InstructionsAcceptedBy { get; set; }
    public DateTime InstructionsAcceptanceDate { get; set; }
    public bool IsActive { get; set; }
    public bool IsDeleted { get; set; }
    public int CreatedBy { get; set; }
    public DateTime CreatedOn { get; set; }
    public int ModifiedBy { get; set; }
    public DateTime? ModifiedOn { get; set; }
    public string ProviderInstructionsGuid { get; set; }

}

public class ProviderLoginRS
{
    public string Message { get; set; }
    public Boolean Status { get; set; }
    public Int32 StatusCode { get; set; }
    public string ResponseReason { get; set; }
}

public class ActiveMenuRQ
{
    public int ProviderId { get; set; }
    public int ApplicationId { get; set; }
    public int ActiveTabToCheck { get; set; }
}

public class ActiveMenuRS
{
    public string Message { get; set; }
    public Boolean Status { get; set; }
    public Int32 StatusCode { get; set; }
    public string ResponseReason { get; set; }
}

public class PreviousSchoolRQ
{
    public int ProviderNameId { get; set; }
    public int ApplicationId { get; set; }
    public int IndividualId { get; set; }
    public string ProviderName { get; set; }
    public DateTime DateofNameChange { get; set; }
    public int ProviderNameStatusId { get; set; }
    public int ProviderNameTypeId { get; set; }
    public string ReferenceNumber { get; set; }
    public bool IsActive { get; set; }
    public bool IsDeleted { get; set; }
    public int CreatedBy { get; set; }
    public DateTime CreatedOn { get; set; }
    public int? ModifiedBy { get; set; }
    public DateTime? ModifiedOn { get; set; }
    public string ProviderNameGuid { get; set; }
    public int ActionType { get; set; }

}

public class PreviousSchoolRS
{
    public string Message { get; set; }
    public Boolean Status { get; set; }
    public Int32 StatusCode { get; set; }
    public string ResponseReason { get; set; }
    public List<ProviderNames> ListOfPreviousSchool { get; set; }
    public List<AddressRQ> ListOfPreviousAddress { get; set; }
    public List<AddressRQ> ListOfSatliteSchool { get; set; }
    public ProviderInformationRQ ProviderInformationDetails { get; set; }
}

public class AddressRQ
{
    public int AddressId { get; set; }
    public string Addressee { get; set; }
    public string StreetLine1 { get; set; }
    public string StreetLine2 { get; set; }
    public string City { get; set; }
    public string StateCode { get; set; }
    public string Zip { get; set; }
    public int? CountyId { get; set; }
    public int? CountryId { get; set; }
    public bool IsActive { get; set; }
    public DateTime? DateValidated { get; set; }
    public bool UseUserAddress { get; set; }
    public bool UseVerifiedAddress { get; set; }
    public bool IsDeleted { get; set; }
    public int CreatedBy { get; set; }
    public DateTime CreatedOn { get; set; }
    public int ModifiedBy { get; set; }
    public DateTime ModifiedOn { get; set; }
    public string AddressGuid { get; set; }
    public string Authenticator { get; set; }
    public int ProviderId { get; set; }
    public string AddressTypeId { get; set; }
    public DateTime BeginDate { get; set; }
    public DateTime EndDate { get; set; }
    public bool IsMailingSameasPhysical { get; set; }
    public string ProviderAddressGuid { get; set; }
    public string ProviderName { get; set; }
    public string ProviderNameGuid { get; set; }

}

public class AddressRS
{
    public string Message { get; set; }
    public Boolean Status { get; set; }
    public Int32 StatusCode { get; set; }
    public string ResponseReason { get; set; }
    public List<AddressRQ> ListOfPreviousAddress { get; set; }

}

public class ProviderInformationRQ : BaseEntity
{
    public string SchoolName { get; set; }
    public string SchoolTelephone { get; set; }
    public bool IsSchoolTelephoneMobile { get; set; }
    public string SchoolWebsite { get; set; }


    public string SchoolAddressStreet1 { get; set; }
    public string SchoolAddressStreet2 { get; set; }
    public string SchoolAddressCity { get; set; }
    public string SchoolAddressState { get; set; }
    public string SchoolAddressZip { get; set; }
    public bool SchoolAddressIsVerifiedClicked { get; set; }
    public bool SchoolAddressIsNotVerifiedClicked { get; set; }

    public string MailingAddressStreet1 { get; set; }
    public string MailingAddressStreet2 { get; set; }
    public string MailingAddressCity { get; set; }
    public string MailingAddressState { get; set; }
    public string MailingAddressZip { get; set; }
    public bool MailingAddressIsVerifiedClicked { get; set; }
    public bool MailingAddressIsNotVerifiedClicked { get; set; }


    public string DirectorFirstName { get; set; }
    public string DirectorLastName { get; set; }
    public string DirectorAdministratorEmail { get; set; }
    public string DirectorJobTitle { get; set; }
    public string DirectorPrimaryNumber { get; set; }
    public bool DirectorPrimaryNumberIsMobile { get; set; }
    public string DirectorSecondaryNumber { get; set; }
    public bool DirectorSecondaryNumberIsMobile { get; set; }

    public string ContactNameFirstName { get; set; }
    public string ContactNameLastName { get; set; }
    public string ContactNameAdministratorEmail { get; set; }
    public string ContactNameJobTitle { get; set; }
    public string ContactNamePrimaryNumber { get; set; }
    public bool ContactNamePrimaryNumberIsMobile { get; set; }
    public string ContactNameSecondaryNumber { get; set; }
    public bool ContactNameSecondaryNumberIsMobile { get; set; }

    public bool IsActive { get; set; }
    public bool IsDeleted { get; set; }
    public int CreatedBy { get; set; }
    public DateTime CreatedOn { get; set; }
    public int ModifiedBy { get; set; }
    public DateTime ModifiedOn { get; set; }

    public string ContactInfo { get; set; }
    public int ContactTypeId { get; set; }
    public int ProviderId { get; set; }
    public bool IsMobile { get; set; }
    public bool IsPreferredContact { get; set; }


    public int ApplicationId { get; set; }
    public int AddressId { get; set; }
    public DateTime DateValidated { get; set; }
    public bool UseUserAddress { get; set; }
    public bool UseVerifiedAddress { get; set; }
    public string AddressTypeId { get; set; }
    public bool IsMailingSameasPhysical { get; set; }

    public int IndividualId { get; set; }


}

public class ProviderInformationRS
{
    public string Message { get; set; }
    public Boolean Status { get; set; }
    public Int32 StatusCode { get; set; }
    public string ResponseReason { get; set; }
}


public class ProviderNames
{
    public int ProviderNameId { get; set; }
    public int ApplicationId { get; set; }
    public int IndividualId { get; set; }
    public string ProviderName { get; set; }
    public DateTime DateofNameChange { get; set; }
    public int ProviderNameStatusId { get; set; }
    public int ProviderNameTypeId { get; set; }
    public string ReferenceNumber { get; set; }
    public bool IsActive { get; set; }
    public bool IsDeleted { get; set; }
    public int CreatedBy { get; set; }
    public DateTime CreatedOn { get; set; }
    public int? ModifiedBy { get; set; }
    public DateTime? ModifiedOn { get; set; }
    public string ProviderNameGuid { get; set; }
}