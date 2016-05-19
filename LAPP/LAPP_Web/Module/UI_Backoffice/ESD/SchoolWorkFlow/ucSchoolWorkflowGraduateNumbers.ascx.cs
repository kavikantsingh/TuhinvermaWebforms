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

public partial class Module_UI_Backoffice_ESD_SchoolWorkFlow_ucSchoolWorkflowGraduateNumbers : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGridRelatedSchool();
    }

    protected void btnSection3_Click(object sender, EventArgs e)
    {
    }

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

    }

    #endregion



    #region Verify All Address

   

    #region Mailing Address

    public void fillverifyMailingaddress()
    {
       
    }
    protected void btnVerifyMailingAddress_Click(object sender, EventArgs e)
    {
       
        fillverifyMailingaddress();
    }
    protected void btnVerifyMailingAddressYes_Click(object sender, EventArgs e)
    {
       
    }
    protected void btnVerifyMailingAddressNo_Click(object sender, EventArgs e)
    {
        
    }
    #endregion

    protected void btnVerifyPreviousAddress_Click(object sender, EventArgs e)
    {
        
    }

    
    #endregion


    protected void btnLicNextInfo_Click(object sender, EventArgs e)
    {
        
    }


    protected void lnkCancelLiceInfo_Click(object sender, EventArgs e)
    {

    }

}