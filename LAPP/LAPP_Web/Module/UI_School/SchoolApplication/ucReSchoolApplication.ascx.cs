using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Collections;
using LAPP.ENTITY;
using System.Text.RegularExpressions;
using LAPP.ENTITY.Enumerations;


public partial class ucReCertificationApplication : System.Web.UI.UserControl
{
    #region Page Event Handler

    protected void Page_Load(object sender, EventArgs e)
    {
        ltrErrorMessageNewApp.Text = "";
        if (!IsPostBack)
        {
            FillPaymentDetail();
            ltrErrorMessageNewApp.Text = "";
            BindGridWorkInfo1();
            BindGridWorkInfo2();
            MakeActiveLi(liSection1);
        }
    }

    #endregion

    #region CertificationApplication

    #region PublicMethods

    public void MakeActiveLi(HtmlControl element)
    {
        liSection1.Attributes.Remove("class");
        liSection2.Attributes.Remove("class");
        liSection3.Attributes.Remove("class");
        liSection4.Attributes.Remove("class");
        liSection5.Attributes.Remove("class");
        liChecklist.Attributes.Remove("class");
        element.Attributes.Add("class", "actived");
    }

    #endregion

    #region APPLICATION INSTRUCTIONS Tab
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



    End:
        btnNextSection7.Enabled = showBtn;


    }

    protected void lnkApplicationStatusCancel_Click(object sender, EventArgs e)
    {
    }
    protected void btnApplicationStatus_Click(object sender, EventArgs e)
    {
        //if (ValidationInstruction())
        //{
        //    SaveInstruction(gvNewApplication, this.EditIndex);
        btnSection1_Click(sender, e);
        //}
        //else
        //{
        //    return;
        //}
    }
    #endregion

    protected void lnkCancelLiceInfo_Click(object sender, EventArgs e)
    {

    }
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

    protected void btnEducation_Click(object sender, EventArgs e)
    {
        btnSection3_Click(sender, e);
    }

    protected void lnkExamInfoCancel_Click(object sender, EventArgs e)
    {

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

    #region Section CharacterReferences

    #region Page Event Handler

    protected void btnNextCharacterReferences_Click(object sender, EventArgs e)
    {
        btnSection4_Click(sender, e);
    }
    protected void lnkCancleNextCharacterReferences_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #endregion

    #region Payment
    protected void btnSaveNextPayment_Click(object sender, EventArgs e)
    {
        btnChecklist_Click(sender, e);
    }
    protected void btnSaveNextCivilAppWaiver_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx?q=2", false);
    }

    #endregion

    #region Section7

    protected void btnNextSection7_Click(object sender, EventArgs e)
    {
        btnSection5_Click(sender, e);
    }
    protected void lnkCalcelSection7_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Menu Navigation Links Of Certification Application

    protected void btnChecklist_Click(object sender, EventArgs e)
    {

        pnlChecklist.Visible = true;
        pnlPayment.Visible = false;
        pnlSection1.Visible = false;
        pnlSection5.Visible = false;
        pnlSection6.Visible = false;
        pnlSection7.Visible = false;
        MakeActiveLi(liSection5);
        MakeActiveLi(liChecklist);
    }

    protected void btnSection5_Click(object sender, EventArgs e)
    {

        pnlPayment.Visible = true;
        pnlChecklist.Visible = false;
        pnlSection1.Visible = false;
        pnlSection5.Visible = false;
        pnlSection6.Visible = false;
        pnlSection7.Visible = false;
        MakeActiveLi(liSection5);
    }

    protected void btnSection1_Click(object sender, EventArgs e)
    {
        pnlPayment.Visible = false;
        pnlChecklist.Visible = false;
        pnlSection1.Visible = true;
        pnlSection5.Visible = false;
        pnlSection6.Visible = false;
        pnlSection7.Visible = false;

        MakeActiveLi(liSection1);//

    }

    protected void btnSection2_Click(object sender, EventArgs e)
    {
        pnlPayment.Visible = false;
        pnlChecklist.Visible = false;
        pnlSection1.Visible = false;
        pnlSection5.Visible = true;
        pnlSection6.Visible = false;
        pnlSection7.Visible = false;

        MakeActiveLi(liSection2);//
    }

    protected void btnSection3_Click(object sender, EventArgs e)
    {
        pnlPayment.Visible = false;
        pnlChecklist.Visible = false;
        pnlSection1.Visible = false;
        pnlSection5.Visible = false;
        pnlSection6.Visible = true;
        pnlSection7.Visible = false;

        MakeActiveLi(liSection3);//
    }

    protected void btnSection4_Click(object sender, EventArgs e)
    {
        pnlPayment.Visible = false;
        pnlChecklist.Visible = false;
        pnlSection1.Visible = false;
        pnlSection5.Visible = false;
        pnlSection6.Visible = false;
        pnlSection7.Visible = true;

        MakeActiveLi(liSection4);//
    }

    #endregion

    public void ClearLiteral()
    {
        ltrCharacterReferenceEdit.Text = "";
        ltrResidenceAddEdit.Text = "";
        ltrPersonalInfoEdit.Text = "";
    }

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
            TextBox txtWorkInfo2BusinessNameEdit = gv.Rows[this.EditIndexWorkInfo2].FindControl("txtWorkInfo2BusinessNameEdit") as TextBox;
            DropDownList ddlWorkInfoQ2StateEdit = gv.Rows[this.EditIndexWorkInfo2].FindControl("ddlWorkInfoQ2StateEdit") as DropDownList;
            TextBox txtWorkInfoQ2CityEdit = gv.Rows[this.EditIndexWorkInfo2].FindControl("txtWorkInfoQ2CityEdit") as TextBox;
            TextBox txtWorkInfoQ2ZipEdit = gv.Rows[this.EditIndexWorkInfo2].FindControl("txtWorkInfoQ2ZipEdit") as TextBox;
            TextBox txtWorkInfo2BusinessPhoneEdit = gv.Rows[this.EditIndexWorkInfo2].FindControl("txtWorkInfo2BusinessPhoneEdit") as TextBox;

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
    protected void btnAddHist6_Click(object sender, EventArgs e)
    {
        divgvhist6.Visible = true;
    }
    #endregion

    #endregion

    #region Payment

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


    protected void txtTotalNoOfAdditional_TextChanged(object sender, EventArgs e)
    {
        ltrRePaymentError.Text = "";
        int No = 0;
        string Validate = ValidationHelper.IsValidInt(txtTotalNoOfAdditional.Text, "Please enter valid number of additional certiﬁcates.");

        if (Validate == "")
        {
            No = Convert.ToInt32(txtTotalNoOfAdditional.Text);
            FillAdditinolAmount();
            FillTotalAmount();
        }
    }
    protected void txtReLateFee_TextChanged(object sender, EventArgs e)
    {
        ltrRePaymentError.Text = "";
        int No = 0;
        string Validate = ValidationHelper.IsValidIntDecimal(txtReLateFee.Text, "Please enter valid late fee.");

        if (Validate == "")
        {
            No = Convert.ToInt32(txtReLateFee.Text);
            //FillAdditinolAmount();
            FillTotalAmount();
        }
    }
    public void FillTotalAmount()
    {
        ltrRePaymentError.Text = "";
        decimal ApplicationFee = 0;
        decimal AdditionalCertificateAmt = 0;
        decimal LateFee = 0;
        string Validate = ValidationHelper.IsValidInt(txtTotalNoOfAdditional.Text, "Please enter valid number of additional certiﬁcates.");
        if (Validate == "")
        {
            AdditionalCertificateAmt = Convert.ToInt32(txtTotalNoOfAdditional.Text);
        }

        string Validate2 = ValidationHelper.IsValidInt(RetxtApplicationFees.Text, "Please enter valid Application Fees.");

        if (Validate2 == "")
        {
            ApplicationFee = Convert.ToInt32(RetxtApplicationFees.Text);
        }

        string Validate3 = ValidationHelper.IsValidInt(txtReLateFee.Text, "Please enter valid Late Fees.");

        if (Validate3 == "")
        {
            LateFee = Convert.ToInt32(txtReLateFee.Text);
        }


        decimal TotalAmount = ApplicationFee + AdditionalCertificateAmt + LateFee;

        txtTotalFee.Text = TotalAmount.ToString();

    }

    public void FillAdditinolAmount()
    {
        int No = 0;

        ltrRePaymentError.Text = "";
        string Validate = ValidationHelper.IsValidInt(txtTotalNoOfAdditional.Text, "Please enter valid number of additional certiﬁcates.");
        if (Validate == "")
        {
            No = Convert.ToInt32(txtTotalNoOfAdditional.Text);
        }

        int Amount = 0;
        if (No > 0)
        {
            Amount = No * 15;
        }
        txtFeeForAdditional.Text = (Amount.ToString());
    }
    public void FillPaymentDetail()
    {
        FillAdditinolAmount();
        FillTotalAmount();
    }

    #endregion
}
