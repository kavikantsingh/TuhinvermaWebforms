using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucDetermination : System.Web.UI.UserControl
{
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

    #endregion

    #region PageEventHandler

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }

    }

    protected void btnFingerPrintSave_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        BindGrid();
    }

    protected void btnFingerPrintSaveCancel_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        BindGrid();
    }

    protected void btnDeterminationSave_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        BindGrid();
    }

    protected void btnDeterminationSaveCancel_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        BindGrid();
    }

    protected void btnEnterDetermination_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        Button btnEdit = (Button)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGrid();

            //this. = ID;
            HtmlGenericControl divRejectedFingerprint = gvDetermination.Rows[this.EditIndex].FindControl("divRejectedFingerprint") as HtmlGenericControl;
            HtmlGenericControl dviAddDetermination = gvDetermination.Rows[this.EditIndex].FindControl("dviAddDetermination") as HtmlGenericControl;
            divRejectedFingerprint.Visible = false;
            dviAddDetermination.Visible = true;

            FillControlLicensureInformation(gvDetermination, this.EditIndex);
        }
    }

    protected void btnRejectedFingerprint_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        Button btnEdit = (Button)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGrid();
            //this. = ID;
            HtmlGenericControl divRejectedFingerprint = gvDetermination.Rows[this.EditIndex].FindControl("divRejectedFingerprint") as HtmlGenericControl;
            HtmlGenericControl dviAddDetermination = gvDetermination.Rows[this.EditIndex].FindControl("dviAddDetermination") as HtmlGenericControl;
            divRejectedFingerprint.Visible = true;
            dviAddDetermination.Visible = false;

            FillControlLicensureInformation(gvDetermination, this.EditIndex);
        }
    }

    protected void imgBtnDelete_Click(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }

    protected void btnSearchCancel_Click(object sender, EventArgs e)
    {

    }

    protected void lnkArchive_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Methods

    public void BindGrid()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("GIC");



        gvDetermination.EditIndex = this.EditIndex;
        gvDetermination.DataSource = ArryListName;
        gvDetermination.DataBind();

        if (this.EditIndex >= 0)
        {
            gvDetermination.Rows[this.EditIndex].CssClass = "RowInEditMode";
            gvDetermination.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "10");
            gvDetermination.Rows[this.EditIndex].Cells[1].Visible = false;
            gvDetermination.Rows[this.EditIndex].Cells[2].Visible = false;
            gvDetermination.Rows[this.EditIndex].Cells[3].Visible = false;
            gvDetermination.Rows[this.EditIndex].Cells[4].Visible = false;
            gvDetermination.Rows[this.EditIndex].Cells[5].Visible = false;
            gvDetermination.Rows[this.EditIndex].Cells[6].Visible = false;
            gvDetermination.Rows[this.EditIndex].Cells[7].Visible = false;
            gvDetermination.Rows[this.EditIndex].Cells[8].Visible = false;
            gvDetermination.Rows[this.EditIndex].Cells[9].Visible = false;

        }
    }

    public void FillControlLicensureInformation(GridView gv, int EditInd)
    {
        try
        {
            //TextBox txtAppealReceived = gv.Rows[this.EditIndex].FindControl("txtAppealReceived") as TextBox;
            //DropDownList ddlAppealType = gv.Rows[this.EditIndex].FindControl("ddlAppealType") as DropDownList;
        }

        catch (Exception ex)
        {

        }
    }

    #endregion

    protected void ddlStateDetermination_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList ddl = (DropDownList)sender;
        Label lblFinalDetermination = gvDetermination.Rows[this.EditIndex].FindControl("lblFinalDetermination") as Label;
        DropDownList ddlStateDetermination = gvDetermination.Rows[this.EditIndex].FindControl("ddlStateDetermination") as DropDownList;
        DropDownList ddlFederalDetermination = gvDetermination.Rows[this.EditIndex].FindControl("ddlFederalDetermination") as DropDownList;

        if (ddl != null)
        {
            if (ddlFederalDetermination.SelectedValue == "1" || ddlStateDetermination.SelectedValue == "1")
            {
                lblFinalDetermination.Text = "Not Eligible";
            }
            else
            {
                lblFinalDetermination.Text = "Eligible";
            }
        }

    }

    protected void ddlFederalDetermination_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList ddl = (DropDownList)sender;
        Label lblFinalDetermination = gvDetermination.Rows[this.EditIndex].FindControl("lblFinalDetermination") as Label;
        DropDownList ddlStateDetermination = gvDetermination.Rows[this.EditIndex].FindControl("ddlStateDetermination") as DropDownList;
        DropDownList ddlFederalDetermination = gvDetermination.Rows[this.EditIndex].FindControl("ddlFederalDetermination") as DropDownList;

        if (ddl != null)
        {
            if (ddlFederalDetermination.SelectedValue == "1" || ddlStateDetermination.SelectedValue == "1")
            {
                lblFinalDetermination.Text = "Not Eligible";
            }
            else
            {
                lblFinalDetermination.Text = "Eligible";
            }
        }
    }
}