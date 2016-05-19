using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using LAPP.ENTITY;
using LAPP.BAL;
using LAPP.ENTITY.Enumerations;
using System.IO;

public partial class Module_UI_Backoffice_PSD_ucComplaint : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnSclInfoAdd_Click(object sender, EventArgs e)
    {
        //dvAddComplint.Visible = true;
    }
    protected void imgEmail_Click(object sender, EventArgs e)
    {
    }
    protected void btnBindGridCertificateofCompletion_Click(object sender, EventArgs e)
    {
        //BindGridDocuments();
    }
    protected void imgDOC1_Click(object sender, EventArgs e)
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