using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LAPP_UI_Backoffice_UI_Individual2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }
    protected void imgbtnEdit1_Click(object sender, EventArgs e)
    {
        divEditMode.Visible = true;
        divGridRow.Visible = false;
        pnlSearch.Visible = false;
    }
    protected void imgbtnEdit2_Click(object sender, EventArgs e)
    {
        divEditMode.Visible = true;
        divGridRow.Visible = false;
        pnlSearch.Visible = false;
    }
    protected void imgbtnEdit3_Click(object sender, EventArgs e)
    {
        divEditMode.Visible = true;
        divGridRow.Visible = false;
        pnlSearch.Visible = false;
    }
    protected void lnkCloseApplication_Click(object sender, EventArgs e)
    {
        divEditMode.Visible = false;
        divGridRow.Visible = true;
    }

    protected void imgbtnOpenDetail_Click(object sender, EventArgs e)
    {
        if (pnlIndividuaDetail.Visible)
        {
            imgbtnOpenDetail.ImageUrl = "~/App_Themes/Theme1/Expandables/plus.png";
            imgbtnOpenDetail.ToolTip = "Show";
            pnlIndividuaDetail.Visible = false;
        }
        else
        {
            imgbtnOpenDetail.ImageUrl = "~/App_Themes/Theme1/Expandables/minus.png";
            imgbtnOpenDetail.ToolTip = "Hide";
            pnlIndividuaDetail.Visible = true;
        }
    }
    protected void btnAdvanceSearch_Click(object sender, EventArgs e)
    {

        if (divAdvanceSearch.Visible == true && btnAdvanceSearch.Text == "Basic Search")
        {
            divBasicSearch.Visible = true;
            divAdvanceSearch.Visible = false;
            btnAdvanceSearch.Text = "Advance Search";
        }
        else
        {
            divBasicSearch.Visible = false;
            divAdvanceSearch.Visible = true;
            btnAdvanceSearch.Text = "Basic Search";
        }

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        pnlSearch.Visible = false;
        divEditMode.Visible = false;
        pnlIndividualGrid.Visible = true;
        divGridRow.Visible = true;
    }

    protected void imgbtnSearch_Click(object sender, EventArgs e)
    {
        pnlSearch.Visible = true;
    }
    protected void btnSearchCancel_Click(object sender, EventArgs e)
    {
        if (pnlIndividualGrid.Visible == true)
        {
            pnlSearch.Visible = false;
        }
        else
        {
        }
    }

}