using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LAPP_UI_Backoffice_ESD_SchoolComplaint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void rblPoliceRepot_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblPoliceRepot.SelectedItem.Text == "Yes")
        {
            dvPoliceReport.Visible = true;
        }
        else
        {
            dvPoliceReport.Visible = false;
        }
    }
    protected void btnAddName_Click(object sender, EventArgs e)
    {
        dvAddName.Visible = true;
    }
    protected void btnAddNameSave_Click(object sender, EventArgs e)
    {
        dvAddName.Visible = false;
    }
    protected void btnSclInfoAdd_Click(object sender, EventArgs e)
    {
        dvAddComplint.Visible = true;
    }
    protected void btnComaplintSave_Click(object sender, EventArgs e)
    {
        dvAddComplint.Visible = false;
    }
}