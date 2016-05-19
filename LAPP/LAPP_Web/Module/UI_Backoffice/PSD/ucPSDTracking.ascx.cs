using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class NVBMT_WebProject_Modules_PSD_ucPSDTracking : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }
    protected void btnAddNewApp_Click(object sender, EventArgs e)
    {
        divAddnewApp.Visible = true;
        editrowhide();
        showrow();
        btnAddNewApp.Visible = false;
    }
    protected void lnkCloseApp_Click(object sender, EventArgs e)
    {
        divAddnewApp.Visible = false;
        editrowhide();
        showrow();
        btnAddNewApp.Visible = true;
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        divAddnewApp.Visible = false;
        editrowhide();
        showrow();
        btnAddNewApp.Visible = true;
    }
    protected void imgbtnStatus1Edit_Click(object sender, EventArgs e)
    {
        editrowhide();
        trStatus1.Visible = true;
        showrow();
        trGridRowStatus1.Visible = false;
        btnAddNewApp.Visible = true;
        divAddnewApp.Visible = false;
    }
    protected void imgbtnStatus2Edit_Click(object sender, EventArgs e)
    {
        editrowhide();
        trStatus2.Visible = true;
        showrow();
        trGridRowStatus2.Visible = false;
        btnAddNewApp.Visible = true;
        divAddnewApp.Visible = false;
    }
    protected void imgbtnStatus3Edit_Click(object sender, EventArgs e)
    {
        editrowhide();
        trStatus3.Visible = true;
        showrow();
        trGridRowStatus3.Visible = false;
        btnAddNewApp.Visible = true;
        divAddnewApp.Visible = false;
    }
    protected void imgbtnStatus4Edit_Click(object sender, EventArgs e)
    {
        editrowhide();
        trStatus4.Visible = true;
        showrow();
        trGridRowStatus4.Visible = false;
        btnAddNewApp.Visible = true;
        divAddnewApp.Visible = false;
    }
    protected void imgbtnStatus5Edit_Click(object sender, EventArgs e)
    {
        editrowhide();
        trStatus5.Visible = true;
        showrow();
        trGridRowStatus5.Visible = false;
        btnAddNewApp.Visible = true;
        divAddnewApp.Visible = false;
    }
    protected void btnPsdStatus1Update_Click(object sender, EventArgs e)
    {
        trStatus1.Visible = false;
        showrow();
    }
    protected void lnkCancelStatus1Update_Click(object sender, EventArgs e)
    {
        trStatus1.Visible = false;
        showrow();
    }

    protected void btnPsdStatus2Update_Click(object sender, EventArgs e)
    {
        trStatus2.Visible = false;
        showrow();
    }
    protected void lnkCancelStatus2Update_Click(object sender, EventArgs e)
    {
        trStatus2.Visible = false;
        showrow();
    }
    protected void btnPsdStatus3Update_Click(object sender, EventArgs e)
    {
        trStatus3.Visible = false;
        showrow();
    }
    protected void lnkCancelStatus3Update_Click(object sender, EventArgs e)
    {
        trStatus3.Visible = false;
        showrow();
    }
    protected void btnPsdStatus4Update_Click(object sender, EventArgs e)
    {
        trStatus4.Visible = false;
        showrow();
    }
    protected void lnkCancelStatus4Update_Click(object sender, EventArgs e)
    {
        trStatus4.Visible = false;
        showrow();
    }
    protected void btnPsdStatus5Update_Click(object sender, EventArgs e)
    {
        trStatus5.Visible = false;
        showrow();
    }
    protected void lnkCancelStatus5Update_Click(object sender, EventArgs e)
    {
        trStatus5.Visible = false;
        showrow();
    }

    public void showrow()
    {
        trGridRowStatus1.Visible = true;
        trGridRowStatus2.Visible = true;
        trGridRowStatus3.Visible = true;
        trGridRowStatus4.Visible = true;
        trGridRowStatus5.Visible = true;
    }

    public void editrowhide()
    {
        trStatus1.Visible = false;
        trStatus2.Visible = false;
        trStatus3.Visible = false;
        trStatus4.Visible = false;
        trStatus5.Visible = false;
    }

}
