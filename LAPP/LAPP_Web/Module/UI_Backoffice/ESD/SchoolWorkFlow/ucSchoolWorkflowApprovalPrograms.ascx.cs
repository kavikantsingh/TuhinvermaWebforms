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

public partial class Module_UI_Backoffice_ESD_SchoolWorkFlow_ucSchoolWorkflowApprovalPrograms : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGridApprovalAgency();
        BindGridMassageProgrameName();
    }
    protected void btnSection2_Click(object sender, EventArgs e)
    {

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

    #endregion

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

    protected void lnkApprovalAgencyDelete_Click(object sender, EventArgs e)
    {

    }

    int ROWLic = 0;
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

    protected void lnkMassageProgramDelete_Click(object sender, EventArgs e)
    {

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


    #endregion

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

    protected void btnChildSupp_Click(object sender, EventArgs e)
    {
        //btnSection3_Click(sender, e);
    }

    protected void lnkCancelCSD_Click(object sender, EventArgs e)
    {

    }


}