﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_UI_Backoffice_PSD_ucMemoToCouncil : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void imgbtnStatus1Edit_Click(object sender, EventArgs e)
    {
        //trStatus1.Visible = true;
        //trGridRowStatus1.Visible = false;
    }
    protected void btnPsdStatus1Update_Click(object sender, EventArgs e)
    {
        trStatus1.Visible = false;
        trGridRowStatus1.Visible = true;
    }
    protected void lnkCancelStatus1Update_Click(object sender, EventArgs e)
    {
        trStatus1.Visible = false;
        trGridRowStatus1.Visible = true;
    }
    protected void chkSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkSelectAll.Checked == true)
        {
            chkcart1.Checked = true;
            chkcart2.Checked = true;
        }
        else
        {
            chkcart1.Checked = false;
            chkcart2.Checked = false;
        }
    }
}