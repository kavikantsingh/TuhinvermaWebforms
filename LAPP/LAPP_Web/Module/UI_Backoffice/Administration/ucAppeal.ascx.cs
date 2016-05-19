using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucAppeal : System.Web.UI.UserControl
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

    protected void btnAppealSave_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        BindGrid();
    }

    protected void btnAppealSaveCancel_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        BindGrid();
    }

    protected void btnStartAppeal_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        Button btnEdit = (Button)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGrid();
            //this. = ID;
            FillControlLicensureInformation(gvAppeal, this.EditIndex);
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



        gvAppeal.EditIndex = this.EditIndex;
        gvAppeal.DataSource = ArryListName;
        gvAppeal.DataBind();

        if (this.EditIndex >= 0)
        {
            gvAppeal.Rows[this.EditIndex].CssClass = "RowInEditMode";
            gvAppeal.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "11");
            gvAppeal.Rows[this.EditIndex].Cells[1].Visible = false;
            gvAppeal.Rows[this.EditIndex].Cells[2].Visible = false;
            gvAppeal.Rows[this.EditIndex].Cells[3].Visible = false;
            gvAppeal.Rows[this.EditIndex].Cells[4].Visible = false;
            gvAppeal.Rows[this.EditIndex].Cells[5].Visible = false;
            gvAppeal.Rows[this.EditIndex].Cells[6].Visible = false;
            gvAppeal.Rows[this.EditIndex].Cells[7].Visible = false;
            gvAppeal.Rows[this.EditIndex].Cells[8].Visible = false;
            gvAppeal.Rows[this.EditIndex].Cells[9].Visible = false;
            gvAppeal.Rows[this.EditIndex].Cells[10].Visible = false;

        }
    }

    public void FillControlLicensureInformation(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtAppealReceived = gv.Rows[this.EditIndex].FindControl("txtAppealReceived") as TextBox;
            DropDownList ddlAppealType = gv.Rows[this.EditIndex].FindControl("ddlAppealType") as DropDownList;
        }

        catch (Exception ex)
        {

        }
    }

    #endregion
}