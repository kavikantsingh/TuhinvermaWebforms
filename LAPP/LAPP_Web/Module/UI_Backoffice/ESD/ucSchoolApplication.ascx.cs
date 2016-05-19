using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Collections;
using System.Text.RegularExpressions;
using System.IO;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;

public partial class Module_UI_Backoffice_ESD_ucSchoolApplication : System.Web.UI.UserControl
{
    string UploadedImageUrl;
    //public int EditIndexExam
    //{
    //    get
    //    {
    //        if (ViewState["EditIndexExam"] != null)
    //        {
    //            return Convert.ToInt32(ViewState["EditIndexExam"]);

    //        }
    //        else
    //        {
    //            return -1;
    //        }
    //    }
    //    set
    //    {
    //        ViewState["EditIndexExam"] = value;
    //    }
    //}
    #region Page Event Handler

    protected void Page_Load(object sender, EventArgs e)
    {
        //fillInDates();
        //divEMail.Visible = false;
        //ltrErrorMessageNewApp.Text = "";
        ////ltrMessage.Text = "";
        if (!IsPostBack)
        {
            MessageBox.RunJsInUpdatePanel(this.Page, "javascript:showDivSlide('');hideDivSlide('.searchBbutton');");

            //ltrErrorMessageNewApp.Text = "";
            //ltrMessage.Text = "";
            BindGridInstQualSectionA1();
            BindGridInstQualSectionA2();
            BindGridSubjectTaugh();
            BindGridInstQualSectionB1();
            BindGridInstQualSectionB2();
            BindGridInstQualSectionB3();
            BindGridInstQualSectionB4();
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

            BindGridSatelliteLocation();
            BindGridSchoolInfoPrevious();

            BindGridAdminInfo20();
            btnAllApplication_Click(sender,e);
            //BindGridPHRW1();

            MakeActiveLi(liApplicatinInstructions);
            if (rblQuestionEdit1.SelectedValue == "0") // || (rblQuestionEdit2.SelectedValue == "0"))
            {
                btnApplicationStatus.Enabled = false;
            }
            else
            {
                btnApplicationStatus.Enabled = true;
            }
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


    //protected void btnPhotoUpload_Click(object sender, EventArgs e)
    //{
    //    if (fpImageUpload.HasFile)
    //    {
    //        Session["Image"] = fpImageUpload.PostedFile;
    //        Stream fs = fpImageUpload.PostedFile.InputStream;
    //        BinaryReader br = new BinaryReader(fs);
    //        byte[] bytes = br.ReadBytes((Int32)fs.Length);
    //        string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
    //        imgProfile.ImageUrl = "data:image/png;base64," + base64String;
    //        this.UploadedImageUrl = "data:image/png;base64," + base64String;
    //    }
    //}

    //protected void lnkQues1_Click(object sender, EventArgs e)
    //{

    //    rblQuestionEdit1.Enabled = true;
    //    //rblQuestionEdit2.Enabled = true;
    //    Response.Write("<script>window.open('https://www.camtc.org/','_blank');</script>");
    //}
    //protected void rblQuestionEdit1_OnSelectedIndexChanged(object sender, EventArgs e)
    //{
    //    if (rblQuestionEdit1.SelectedValue == "0") //|| (rblQuestionEdit2.SelectedValue == "0"))
    //    {
    //        btnApplicationStatus.Enabled = false;
    //    }
    //    else
    //    {
    //        btnApplicationStatus.Enabled = true;
    //    }
    //}
    //protected void rblQuestionEdit2_OnSelectedIndexChanged(object sender, EventArgs e)
    //{
    //    if (rblQuestionEdit1.SelectedValue == "0") //|| (rblQuestionEdit2.SelectedValue == "0"))
    //    {
    //        btnApplicationStatus.Enabled = false;
    //    }
    //    else
    //    {
    //        btnApplicationStatus.Enabled = true;
    //    }
    //}
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
    protected void btnAppReqFormUpdate_Click(object sender, EventArgs e)
    {
        btnApprove.Enabled = true;
    }
    protected void imgDeficiencyTabs_Click(object sender, EventArgs e)
    {
        divDifiviency.Visible = true;
    }
    protected void btnBCGverifyCloseTab_Click(object sender, EventArgs e)
    {
        divDifiviency.Visible = false;
        trGridRowEligbility.Visible = false;
    }
    protected void btnVerify_Click(object sender, EventArgs e)
    {
        trEditMode.Visible = true;
        trGridRow.Visible = false;
        btnAddNewApp.Visible = true;
        divAddnewApp.Visible = false;
        trDeficiency.Visible = false;
        trBgc.Visible = false;
    }
    protected void btnAccepted_Click(object sender, EventArgs e)
    {
        trEditMode.Visible = true;
        trGridRow.Visible = false;
        btnAddNewApp.Visible = true;
        divAddnewApp.Visible = false;
        trDeficiency.Visible = false;
        trBgc.Visible = false;
    }
    protected void lnkCancelUpdate_Click(object sender, EventArgs e)
    {
        trEditMode.Visible = false;
        trDeficiency.Visible = false;
        trBgc.Visible = false;
        trGridRow.Visible = true;
    }
    protected void btnAddNewApp_Click(object sender, EventArgs e)
    {
        divAddnewApp.Visible = true;
        trEditMode.Visible = false;
        trGridRow.Visible = true;
        btnAddNewApp.Visible = false;
        trDeficiency.Visible = false;
        trBgc.Visible = false;
        MessageBox.RunJsInUpdatePanel(this.Page, "javascript:hideDivSlide('.userHide'); showDivSlide('.searchBbutton')");
    }
    protected void lnkCloseApp_Click(object sender, EventArgs e)
    {
        divAddnewApp.Visible = false;
        trEditMode.Visible = false;
        trGridRow.Visible = true;
        trDeficiency.Visible = false;
        trBgc.Visible = false;
        trEmail.Visible = false;
        btnAddNewApp.Visible = true;
    }

    protected void btnBGC_Click(object sender, EventArgs e)
    {
        trEditMode.Visible = false;
        trGridRow.Visible = false;
        btnAddNewApp.Visible = true;
        divAddnewApp.Visible = false;
        trDeficiency.Visible = false;
        trBgc.Visible = false;
        trEmail.Visible = false;
        trEditMode.Visible = false;
        trDeficiency.Visible = false;
        trBgc.Visible = true;



    }
    protected void btnAddnewBGC_Click(object sender, EventArgs e)
    {
        pnlAddnewBGC.Visible = true;
        pnlAddnewButtonBGC.Visible = false;
    }
    protected void btnBCGverify_Click(object sender, EventArgs e)
    {
        pnlAddnewBGC.Visible = false;
        pnlAddnewButtonBGC.Visible = true;
    }
    protected void btnBCGverifyClose_Click(object sender, EventArgs e)
    {
        pnlAddnewBGC.Visible = true;
        pnlAddnewButtonBGC.Visible = false;
        trEditMode.Visible = false;
        trDeficiency.Visible = false;
        trBgc.Visible = false;
        trGridRow.Visible = true;
    }
    protected void lnkCancelBGC_Click(object sender, EventArgs e)
    {
        pnlAddnewBGC.Visible = true;
        pnlAddnewButtonBGC.Visible = false;
        trEditMode.Visible = false;
        trDeficiency.Visible = false;
        trBgc.Visible = false;
        trEmail.Visible = false;
        trGridRow.Visible = true;
    }
    protected void imgDeficiency_Click(object sender, ImageClickEventArgs e)
    {
        trEditMode.Visible = false;
        trGridRow.Visible = false;
        btnAddNewApp.Visible = true;
        divAddnewApp.Visible = false;
        trDeficiency.Visible = false;
        trBgc.Visible = false;
        trEmail.Visible = false;
        trEditMode.Visible = false;
        trDeficiency.Visible = false;
        trBgc.Visible = false;
        trDeficiency.Visible = true;


    }
    protected void btnBCGverifyCancel_Click(object sender, EventArgs e)
    {
        pnlAddnewBGC.Visible = false;
        pnlAddnewButtonBGC.Visible = true;
    }

    protected void imgEmail_Click(object sender, EventArgs e)
    {
        trEditMode.Visible = false;
        trGridRow.Visible = false;
        btnAddNewApp.Visible = true;
        divAddnewApp.Visible = false;
        trDeficiency.Visible = false;
        trBgc.Visible = false;

        trEditMode.Visible = false;
        trDeficiency.Visible = false;
        trBgc.Visible = false;
        trDeficiency.Visible = false;
        trEmail.Visible = true;
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        trEditMode.Visible = false;
        trGridRow.Visible = false;
        btnAddNewApp.Visible = true;
        divAddnewApp.Visible = false;
        trDeficiency.Visible = false;
        trBgc.Visible = false;

        trEditMode.Visible = false;
        trDeficiency.Visible = false;
        trBgc.Visible = false;
        trDeficiency.Visible = false;
        trEmail.Visible = false;
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
        string strErr;
        strErr = "";

        if (txtFirstNameEdit.Text == "")
        {
            strErr = "Please enter school name.";
        }

       

        if (txtschoolwebsite.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter school website.";
            else
            {
                strErr = strErr + "<br />" + "Please enter school website.";
            }
        }

        if (txtschool_Add.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter school address.";
            else
            {
                strErr = strErr + "<br />" + "Please enter school address.";
            }
        }

        if (txtCityResEdit.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter city of school.";
            else
            {
                strErr = strErr + "<br />" + "Please enter city of school.";
            }
        }


        if (ddlStateResEdit.SelectedValue == "-1")
        {
            if (strErr == "")
                strErr = "Please enter school state.";
            else
            {
                strErr = strErr + "<br />" + "Please enter school state.";
            }
        }

        if (txtZipResEdit.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter zip code of school.";
            else
            {
                strErr = strErr + "<br />" + "Please enter zip code of school.";
            }
        }

        if (txtMailingAdd.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter mailing address.";
            else
            {
                strErr = strErr + "<br />" + "Please enter mailing address.";
            }
        }

        if (txtMailingCity.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter mailing city.";
            else
            {
                strErr = strErr + "<br />" + "Please enter mailing city.";
            }
        }

        if (ddlMailingState.SelectedValue == "-1")
        {
            if (strErr == "")
                strErr = "Please select mailing state.";
            else
            {
                strErr = strErr + "<br />" + "Please select mailing state.";
            }
        }

        if (txtMailngZip.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter mailing zip code.";
            else
            {
                strErr = strErr + "<br />" + "Please enter mailing zip code.";
            }
        }



        if (txtSatelliteLoc.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter satellite location address.";
            else
            {
                strErr = strErr + "<br />" + "Please enter satellite location address.";
            }
        }

        if (txtSatelliteCity.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter satellite location city.";
            else
            {
                strErr = strErr + "<br />" + "Please enter satellite location city.";
            }
        }

        if (ddlSatelliteState.SelectedValue == "-1")
        {
            if (strErr == "")
                strErr = "Please select satellite location state.";
            else
            {
                strErr = strErr + "<br />" + "Please select satellite location state.";
            }
        }

        if (txtSatelliteZip.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter satellite location zip.";
            else
            {
                strErr = strErr + "<br />" + "Please enter satellite location zip.";
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
            divEMail.Visible = true;

        }

        //if (txtStreetResEdit1.Text == "")
        //{


        //    divEMail.Focus();
        //    divEMail.Visible = true;

        //}

        //if (txtStreetResEdit3.Text == "")
        //{


        //    divEMail.Focus();
        //    divEMail.Visible = true;

        //}

        //if (txtStreetResEdit6.Text == "")
        //{


        //    divEMail.Focus();
        //    divEMail.Visible = true;

        //}



        //if (strErr == "")
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

        DisplayPanel(pnlChecklist);
        MakeActiveLi(liChecklist);
    }

    protected void btnMassageTherapistApplication_Click(object sender, EventArgs e)
    {
        //pnlChecklist.Visible = false;
        //pnlPayment.Visible = false;
        //pnlApplicatinInstructions.Visible = false;
        //pnlSection1.Visible = true;
        //pnlSection2.Visible = false;
        //pnlSection3.Visible = false;
        //pnlSection4.Visible = false;
        //pnlSection5.Visible = false;
        //pnlAdministrator_Work_Experience.Visible = false;
        //pnlSection6.Visible = false;
        //pnlSection7.Visible = false;

        DisplayPanel(pnlSection1);
        MakeActiveLi(liMassageTherapistApplication);
    }

    protected void btnSection2_Click(object sender, EventArgs e)
    {

        //pnlChecklist.Visible = false;
        //pnlPayment.Visible = false;
        //pnlApplicatinInstructions.Visible = false;
        //pnlSection1.Visible = false;
        //pnlSection2.Visible = true;
        //pnlSection3.Visible = false;
        //pnlSection4.Visible = false;
        //pnlSection5.Visible = false;
        //pnlAdministrator_Work_Experience.Visible = false;
        //pnlSection6.Visible = false;
        //pnlSection7.Visible = false;

        DisplayPanel(pnlSection2);
        MakeActiveLi(liSection2);//
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

        DisplayPanel(pnlSection4);
        MakeActiveLi(liSection4);//
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
        DisplayPanel(PnlBackChecklist);
        MakeActiveLi(li_Background_Checklist);
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
        DisplayPanel(PnlSchFacuList);
        MakeActiveLi(li_School_Faculty_List);
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

        PnlAdminDeclaration.Visible = false;
        PnlBackChecklist.Visible = false;
        PnlTransChecklist.Visible = false;
        PnlEnrollAgrChecklist.Visible = false;
        PnlCoCatChecklist.Visible = false;
        PnlProHoReqWorksheet.Visible = false;
        PnlSchFacuList.Visible = false;
        PnlInstruQualifica.Visible = false;
        PnlInstruDeclaration.Visible = false;

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
        btnAdminExp_Click(sender, e);
    }

    protected void btnAdminWorkInfo_Click(object sender, EventArgs e)
    {
        btnAdminDec_Click(sender, e);
    }

    protected void btnAdminDecl_Click(object sender, EventArgs e)
    {
        btnBackCheck_Click(sender, e);
    }

    protected void btnNextBackList_Click(object sender, EventArgs e)
    {
        btnTransCheck_Click(sender, e);
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
        btnChecklist_Click(sender, e);
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
            pnlMoneyOrder.Visible = false;
            pnlCheck.Visible = true;
            btnSaveNextPayment.Visible = false;
        }
        else if (ddlPaymentMethod.SelectedItem.Text == "Money Order")
        {
            pnlMoneyOrder.Visible = true;
            pnlCheck.Visible = false;
            btnSaveNextPayment.Visible = false;
        }
        else if (ddlPaymentMethod.SelectedItem.Text == "Credit / Debit Card")
        {
            pnlMoneyOrder.Visible = false;
            pnlCheck.Visible = false;
            btnSaveNextPayment.Visible = true;
        }
        else
        {
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
        divAddbtnApprovalAgency.Visible = true;
        divAddApprovalAgency.Visible = false;
    }
    protected void lnkApprovalAgencyAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnApprovalAgency.Visible = true;
        divAddApprovalAgency.Visible = false;
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
        this.EditIndexLicensureInformation = -1;
        BindGridApprovalAgency();
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
        divAddbtnMassageProgramName.Visible = true;
        divAddMassageProgramName.Visible = false;
    }

    protected void lnkMassageprogramAddNewCancel_Click(object sender, EventArgs e)
    {
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
    { if (e.Row.RowType == DataControlRowType.DataRow)
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
        divAddbtnBackgroundCheck.Visible = true;
        divAddBackgroundCheck.Visible = false;
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



        gvMassageProgram.EditIndex = this.EditIndexBackgroundCheck;
        gvMassageProgram.DataSource = ArryListName;
        gvMassageProgram.DataBind();

        if (this.EditIndexBackgroundCheck >= 0)
        {
            gvMassageProgram.Rows[this.EditIndexBackgroundCheck].CssClass = "RowInEditMode";
            gvMassageProgram.Rows[this.EditIndexBackgroundCheck].Cells[0].Attributes.Add("colspan", "6");
            gvMassageProgram.Rows[this.EditIndexBackgroundCheck].Cells[1].Visible = false;
            gvMassageProgram.Rows[this.EditIndexBackgroundCheck].Cells[2].Visible = false;
            //gvMassageProgram.Rows[this.EditIndexMassageProgram].Cells[3].Visible = false;

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
            FillControlBackgroundCheck(gvMassageProgram, this.EditIndexBackgroundCheck);
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
        divBtnAddNewRelatedSchools.Visible = true;
        divAddNewRelatedSchools.Visible = false;
    }
    protected void lnkCancelRelatedSchool_Click(object sender, EventArgs e)
    {
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
            Label lblCity1 = e.Row.FindControl("lblCity1") as Label;
            Label lblState1 = e.Row.FindControl("lblState1") as Label;
            Label lblZip1 = e.Row.FindControl("lblZip1") as Label;

            if (lblBusinessName1 != null && lblBusinessPhone1 != null && lblCity1 != null && lblState1 != null && lblZip1 != null)
            {
                if (ROWRS == 0)
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
        this.EditIndexRelatedSchool = -1;
        BindGridRelatedSchool();
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
                    lblState.Text = "Reno";

                }
                else if (ROWIQ1 == 1)
                {
                    lblSchoolName.Text = "School12";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "City1";
                    lblState.Text = "Reno";
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
                    lblState.Text = "Reno";

                }
                else if (ROWIQ2 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "Reno";
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
                    lblState.Text = "Reno";

                }
                else if (ROWIQB1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "Reno";
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
                    lblState.Text = "Reno";

                }
                else if (ROWIQB2 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "Reno";
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
                    lblState.Text = "Reno";

                }
                else if (ROWIQB3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "Reno";
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
                    lblState.Text = "Reno";

                }
                else if (ROWIQB4 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "Reno";
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
                    lblownerInfoCity.Text = "Navada";
                    lblownerInfState.Text = "US";
                }
                else if (ROWLic == 1)
                {
                    lblOwnerInfo.Text = "Type";
                    lblownerInfLastName.Text = "Last Name2";
                    lblownerInfFirstName.Text = "First Name2";
                    lblownerPer.Text = "20";
                    lblownerInfoCity.Text = "Navada";
                    lblownerInfState.Text = "US";
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
        divBtnAddAdminInfo1.Visible = true;
        divAddAdminInfo1.Visible = false;
    }
    protected void lnkAdminInfo1AddNewCancel_Click(object sender, EventArgs e)
    {
        divBtnAddAdminInfo1.Visible = true;
        divAddAdminInfo1.Visible = false;
    }

    int ROWAI1 = 0;
    protected void gvAdminInfo1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAI1 == 0)
                {

                    lblSchoolName.Text = "School1";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "Reno";

                }
                else if (ROWAI1 == 1)
                {
                    lblSchoolName.Text = "School12";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "City1";
                    lblState.Text = "Reno";
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
        this.EditIndexAdminInfo1 = -1;
        BindGridAdminInfo1();
    }

    protected void lnkAdminInfo1CancelUpdate_Click(object sender, EventArgs e)
    {
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
        divBtnAddAdminInfo2.Visible = true;
        divAddAdminInfo2.Visible = false;
    }
    protected void lnkAdminInfo2AddNewCancel_Click(object sender, EventArgs e)
    {
        divBtnAddAdminInfo2.Visible = true;
        divAddAdminInfo2.Visible = false;
    }

    int ROWAI2 = 0;
    protected void gvAdminInfo2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAI2 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "Reno";

                }
                else if (ROWAI2 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "Reno";
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
        this.EditIndexAdminInfo2 = -1;
        BindGridAdminInfo2();
    }

    protected void lnkAdminInfo2CancelUpdate_Click(object sender, EventArgs e)
    {
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
        divAddBtnAdminWrkExp1.Visible = true;
        divAddAdminWrkExp1.Visible = false;
    }
    protected void lnkAdminWrkExp1AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnAdminWrkExp1.Visible = true;
        divAddAdminWrkExp1.Visible = false;
    }

    int ROWAWE1 = 0;
    protected void gvAdminWrkExp1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWE1 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "Reno";

                }
                else if (ROWAWE1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "Reno";
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
        this.EditIndexAdminWrkExp1 = -1;
        BindGridAdminWrkExp1();
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
        divAddBtnAdminWrkExp2.Visible = true;
        divAddAdminWrkExp2.Visible = false;
    }
    protected void lnkAdminWrkExp2AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnAdminWrkExp2.Visible = true;
        divAddAdminWrkExp2.Visible = false;
    }

    int ROWAWE2 = 0;
    protected void gvAdminWrkExp2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWE2 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "Reno";

                }
                else if (ROWAWE2 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "Reno";
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
        this.EditIndexAdminWrkExp2 = -1;
        BindGridAdminWrkExp2();
    }

    protected void lnkAdminWrkExp2CancelUpdate_Click(object sender, EventArgs e)
    {
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
        divAddBtnAdminWrkExp3.Visible = true;
        divAddAdminWrkExp3.Visible = false;
    }
    protected void lnkAdminWrkExp3AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnAdminWrkExp3.Visible = true;
        divAddAdminWrkExp3.Visible = false;
    }

    int ROWAWE3 = 0;
    protected void gvAdminWrkExp3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWE3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "Reno";

                }
                else if (ROWAWE3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "Reno";
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
        this.EditIndexAdminWrkExp3 = -1;
        BindGridAdminWrkExp3();
    }

    protected void lnkAdminWrkExp3CancelUpdate_Click(object sender, EventArgs e)
    {
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
        divAddBtnAdminWrkExp4.Visible = true;
        divAddAdminWrkExp4.Visible = false;
    }
    protected void lnkAdminWrkExp4AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnAdminWrkExp4.Visible = true;
        divAddAdminWrkExp4.Visible = false;
    }

    int ROWAWE4 = 0;
    protected void gvAdminWrkExp4_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWE4 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "Reno";

                }
                else if (ROWAWE4 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "Reno";
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
        this.EditIndexAdminWrkExp4 = -1;
        BindGridAdminWrkExp4();
    }

    protected void lnkAdminWrkExp4CancelUpdate_Click(object sender, EventArgs e)
    {
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

    int ROWPrevAdd = 0;
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

    int ROWLocAddress = 0;
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
                    lblState.Text = "Reno";

                }
                else if (ROWPHRW1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "Reno";
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

    #region top tabs design for school overflow

     public void ShowPanelonButtonClick(string pnlValue)
    {
        pnlAllApplication.Visible = false;
        pnlSchoolApplication.Visible = false;
        pnlStaff.Visible = false;
        pnlSchoolNameandAddress.Visible = false;
        pnlApprovalandPrograms.Visible = false;
        pnlGraduateNumbers.Visible = false;
        pnlCourseCatalog.Visible = false;
        pnlCurriculum.Visible = false;
        pnlTranscript.Visible = false;
        pnlEnrollmentAgreement.Visible = false;
        pnlEligibilityList.Visible = false;

        if (pnlValue == "AllApp")
            pnlAllApplication.Visible = true;
        else if (pnlValue == "SclApp")
            pnlSchoolApplication.Visible = true;
        else if (pnlValue == "Staff")
            pnlStaff.Visible = true;
        else if (pnlValue == "SclNameAdd")
            pnlSchoolNameandAddress.Visible = true;
        else if (pnlValue == "AppProg")
            pnlApprovalandPrograms.Visible = true;
        else if (pnlValue == "GraduNum")
            pnlGraduateNumbers.Visible = true;
        else if (pnlValue == "CourseCat")
            pnlCourseCatalog.Visible = true;
        else if (pnlValue == "Curr")
            pnlCurriculum.Visible = true;
        else if (pnlValue == "Transc")
            pnlTranscript.Visible = true;
        else if (pnlValue == "EnrollAg")
            pnlEnrollmentAgreement.Visible = true;
        else if (pnlValue == "Eligible")
            pnlEligibilityList.Visible = true;
        


    }
    protected void btnAllApplication_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("AllApp");
        MakeActiveBtn(btnAllApplication);
    }

    protected void btnSchoolApplication_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("SclApp");
        MakeActiveBtn(btnSchoolApplication);
    }
    protected void btnStaff_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Staff");
        MakeActiveBtn(btnStaff);
    }
    protected void btnSchoolNameandAddress_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("SclNameAdd");
        MakeActiveBtn(btnSchoolNameandAddress);
    }
    protected void btnApprovalandPrograms_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("AppProg");
        MakeActiveBtn(btnApprovalandPrograms);
    }
    protected void btnGraduateNumbers_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("GraduNum");
        MakeActiveBtn(btnGraduateNumbers);
    }
    protected void btnCourseCatalog_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("CourseCat");
        MakeActiveBtn(btnCourseCatalog);
    }
    protected void btnCurriculum_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Curr");
        MakeActiveBtn(btnCurriculum);
    }
    protected void btnTranscript_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Transc");
        MakeActiveBtn(btnTranscript);
    }
    protected void btnEnrollmentAgreement_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("EnrollAg");
        MakeActiveBtn(btnEnrollmentAgreement);
    }
    protected void btnEligibilityList_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Eligible");
        //MakeActiveBtn(btnEligibilityList);
    }

    public void MakeActiveBtn(Button btn)
    {
        btnAllApplication.CssClass = "tabBtn";
        btnSchoolApplication.CssClass = "tabBtn";
        btnStaff.CssClass = "tabBtn";
        btnSchoolNameandAddress.CssClass = "tabBtn";
        btnApprovalandPrograms.CssClass = "tabBtn";
        btnGraduateNumbers.CssClass = "tabBtn";
        btnCourseCatalog.CssClass = "tabBtn";
        btnCurriculum.CssClass = "tabBtn";
        btnTranscript.CssClass = "tabBtn";
        btnEnrollmentAgreement.CssClass = "tabBtn";
       // btnEligibilityList.CssClass = "tabBtn";
        
       

        btn.CssClass = "tab_activeBtn";
    }

    #endregion




    protected void btnVerify_EligList_Click(object sender, EventArgs e)
    {
        trEligList.Visible = true;
        trEligListbottomclose.Visible = true;
        trGridRowEligbility.Visible = false;
    }

    protected void lntcoseEnrollgrid_Click(object sender, EventArgs e)
    {
        trEligList.Visible = false;
        trEligListbottomclose.Visible = false;
        trGridRowEligbility.Visible = true;
    }
    protected void btnVerify_EnrAgre_Click(object sender, EventArgs e)
    {
        trEnrollAgment.Visible = true;
        trEnrollbottomclose.Visible = true;
        trEnrolAgreGrid.Visible = false;
    }

    protected void lnkbtncloseEnroll_Click(object sender, EventArgs e)
    {
        trEnrollAgment.Visible = false;
        trEnrollbottomclose.Visible = false;
        trEnrolAgreGrid.Visible = true;
    }
    protected void btnVerify_Trans_Click(object sender, EventArgs e)
    {
        trTansCrpt.Visible = true;
        trtrnscriptbottomclose.Visible = true;
        trGirdTranscript.Visible = false;
    }

    protected void lntcosetrincriptgrid_Click(object sender, EventArgs e)
    {
        trTansCrpt.Visible = false;
        trtrnscriptbottomclose.Visible = false;
        trGirdTranscript.Visible = true;
    }
    protected void btnVerify_Crr_Click(object sender, EventArgs e)
    {

    }
    protected void btnVerify_schapp_Click(object sender, EventArgs e)
    {
        trschapp.Visible = true;
        SchoolApptr.Visible = false;
        dvscholinfo.Visible = true;
    }
    protected void lnkcloseSCLinfo_Click(object sender, EventArgs e)
    {
        dvscholinfo.Visible = false;
        trschapp.Visible = false;
    }



    protected void btnCurriculamverify_Click(object sender, EventArgs e)
    {
        trCurriculam.Visible = true;
        trCurrColumn1.Visible = false;
        trCurrfootertab.Visible = true;
    }
    protected void lnkCurrClose_Click(object sender, EventArgs e)
    {
        trCurriculam.Visible = false;
        trCurrColumn1.Visible = true;
        trCurrfootertab.Visible = false;
    }
    protected void btnVerify_staff_Click(object sender, EventArgs e)
    {
        trWorkStaff.Visible = true;
        trStafffootertab.Visible = true;
        trStaffColumn1.Visible = false;
    }
    protected void lnkStaffClose_Click(object sender, EventArgs e)
    {
        trWorkStaff.Visible = false;
        trStafffootertab.Visible = false;
        trStaffColumn1.Visible = true;
    }
    protected void btnCourseCatalogVerify_Click(object sender, EventArgs e)
    {
        trWorkCourseCatalog.Visible = true;
        trCourseCatalogootertab.Visible = true;
        trCorseCatalogColumn1.Visible = false;
    }
    protected void lnktrCourseCatalogootertabClose_Click(object sender, EventArgs e)
    {
        trWorkCourseCatalog.Visible = false;
        trCourseCatalogootertab.Visible = false;
        trCorseCatalogColumn1.Visible = true;
    }
    protected void btnGradNumbersVerify_Click(object sender, EventArgs e)
    {
        trWorkGradNumbers.Visible = true;
        trGradNumbersFootertab.Visible = true;
        trGradNumbersColumn1.Visible = false;
    }
    protected void lnlGradNumbersClose_Click(object sender, EventArgs e)
    {
        trWorkGradNumbers.Visible = false;
        trGradNumbersFootertab.Visible = false;
        trGradNumbersColumn1.Visible = true;
    }
    protected void btnAppProgVerify_Click(object sender, EventArgs e)
    {
        trWorkAppProg.Visible = true;
        trWorkAppProgfootertab.Visible = true;
        trAppProgColumn1.Visible = false;
    }
    protected void lnkAppProgClose_Click(object sender, EventArgs e)
    {
        trWorkAppProg.Visible = false;
        trWorkAppProgfootertab.Visible = false;
        trAppProgColumn1.Visible = true;
    }
    protected void btnSchoolNameAddress_Click(object sender, EventArgs e)
    {
        trWorkSchoolNameAddress.Visible = true;
        trSchoolNameAddressFootertab.Visible = true;
        trSchoolNameAddressColumn1.Visible = false;
    }
    protected void lnkSchoolNameAddressClose_Click(object sender, EventArgs e)
    {
        trWorkSchoolNameAddress.Visible = false;
        trSchoolNameAddressFootertab.Visible = false;
        trSchoolNameAddressColumn1.Visible = true;
    }
    protected void chkAppiSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkAppiSelectAll.Checked == true)
        {
            chkAppi1.Checked = true;
            chkAppi2.Checked = true;
            chkAppi3.Checked = true;
        }
        else
        {
            chkAppi1.Checked = false;
            chkAppi2.Checked = false;
            chkAppi3.Checked = false;
        }
    }
}