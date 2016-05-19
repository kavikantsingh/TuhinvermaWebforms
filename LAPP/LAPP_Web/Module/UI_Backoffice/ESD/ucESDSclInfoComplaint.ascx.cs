using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_UI_Backoffice_ESD_ucESDSclInfoComplaint : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
}