using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_UI_Backoffice_Legal_ucHearingOutcomes : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void chkOutComeSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkOutComeSelectAll.Checked == true)
        {
            chkOutCome1.Checked = true;
            chkOutCome2.Checked = true;
        }
        else
        {
            chkOutCome1.Checked = false;
            chkOutCome2.Checked = false;
        }
    }
    protected void chkEduSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkEduSelectAll.Checked == true)
        {
            chkEdu1.Checked = true;
            chkEdu2.Checked = true;
        }
        else
        {
            chkEdu1.Checked = false;
            chkEdu2.Checked = false;
        }
    }
    protected void chkPerRevoSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkPerRevoSelectAll.Checked == true)
        {
            chkPerRevo1.Checked = true;
            chkPerRevo2.Checked = true;
        }
        else
        {
            chkPerRevo1.Checked = false;
            chkPerRevo2.Checked = false;
        }
    }
    protected void chkSusLawSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkSusLawSelectAll.Checked == true)
        {
            chkSusLaw1.Checked = true;
            chkSusLaw2.Checked = true;
        }
        else
        {
            chkSusLaw1.Checked = false;
            chkSusLaw2.Checked = false;
        }
    }
    protected void chkSusDecSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkSusDecSelectAll.Checked == true)
        {
            chkSusDec1.Checked = true;
            chkSusDec2.Checked = true;
        }
        else
        {
            chkSusDec1.Checked = false;
            chkSusDec2.Checked = false;
        }
    }
    protected void chkRevoSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkRevoSelectAll.Checked == true)
        {
            chkRevo1.Checked = true;
            chkRevo2.Checked = true;
        }
        else
        {
            chkRevo1.Checked = false;
            chkRevo2.Checked = false;
        }
    }
    protected void chkDenialSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkDenialSelectAll.Checked == true)
        {
            chkDenial1.Checked = true;
            chkDenial2.Checked = true;
        }
        else
        {
            chkDenial1.Checked = false;
            chkDenial2.Checked = false;
        }
    }
}