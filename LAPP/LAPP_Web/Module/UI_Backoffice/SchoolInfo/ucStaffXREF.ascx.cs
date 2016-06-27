using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_UI_Backoffice_Individual_ucAuthorization : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAddNew_Click(object sender, EventArgs e)
    {
        divbtnAddNew.Visible = false;
        divpnlAuthorization.Visible = true;
    }
    protected void btnAuthorizationSave_Click(object sender, EventArgs e)
    {
        divbtnAddNew.Visible = true;
        divpnlAuthorization.Visible = false;
    }
    //protected void btnShowHistory_Click(object sender, EventArgs e)
    //{
    //    btnShowHistory.Enabled = false;
    //    lnkNext.Enabled = true;
    //    lnkPrev.Enabled = true;
    //    btnShowCurrent.Enabled = true;
    //}

    //protected void btnShowCurrent_Click(object sender, EventArgs e)
    //{
    //    btnShowHistory.Enabled = true;
    //    lnkNext.Enabled = false;
    //    lnkPrev.Enabled = false;
    //    btnShowCurrent.Enabled = false;
    //}
    protected void btnAddform_Click(object sender, EventArgs e)
    {
        dvdocaddd.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dvdocaddd.Visible = false;
    }
}