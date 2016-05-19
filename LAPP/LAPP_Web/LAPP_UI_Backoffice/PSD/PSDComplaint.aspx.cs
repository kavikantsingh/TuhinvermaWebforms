using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LAPP_UI_Backoffice_PSD_PSDComplaint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void rblPoliceRepot_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    if (rblPoliceRepot.SelectedItem.Text == "Yes")
    //    {
    //        dvPoliceReport.Visible = true;
    //    }
    //    else
    //    {
    //        dvPoliceReport.Visible = false;
    //    }
    //}
    protected void btnAddName_Click(object sender, EventArgs e)
    {

    }
    protected void btnAddNameSave_Click(object sender, EventArgs e)
    {

    }
    protected void btnSclInfoAdd_Click(object sender, EventArgs e)
    {
        dvAddComplint.Visible = true;
    }
    protected void btnComaplintSave_Click(object sender, EventArgs e)
    {
        dvAddComplint.Visible = false;
    }
    protected void imgEmail_Click(object sender, EventArgs e)
    {
    }
    protected void imgDOC1_Click(object sender, ImageClickEventArgs e)
    {
        AddDocm1.Visible = true;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        AddDocm1.Visible = false;
    }
    protected void imgDOC2_Click1(object sender, ImageClickEventArgs e)
    {
        AddDocm2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        AddDocm2.Visible = false;
    }
    protected void btnRunQuery_Click(object sender, EventArgs e)
    {
        dvcompalintgrid.Visible = false;
        reciveCMTC.Visible = true;
        btnSclInfoAdd.Visible = false;
    }
    protected void btnCanclequery_Click(object sender, EventArgs e)
    {
        dvcompalintgrid.Visible = true;
        reciveCMTC.Visible = false;
        dvcomGrid.Visible = false;
        btnSclInfoAdd.Visible = true;
    }
    protected void btnsearchquery_Click(object sender, EventArgs e)
    {
        dvcomGrid.Visible = true;
    }

    protected void btnclosequery1_Click(object sender, EventArgs e)
    {

    }
    protected void imgDocQuery2_Click(object sender, ImageClickEventArgs e)
    {
        dvdocquery2.Visible = true;
    }
    protected void btnclosequery2_Click(object sender, EventArgs e)
    {
        dvdocquery2.Visible = false;
    }
    protected void imgbutnquryedit1_Click(object sender, ImageClickEventArgs e)
    {
        dvcompalintgrid.Visible = true;
        reciveCMTC.Visible = false;
        btnSclInfoAdd.Visible = true;
        dvcomGrid.Visible = false;
    }
    protected void lblCancelAboutBusinessDoc_Click(object sender, EventArgs e)
    {
        dvcomGrid.Visible = false;
        reciveCMTC.Visible = false;
        dvcompalintgrid.Visible = true;
        btnSclInfoAdd.Visible = true;

    }
}