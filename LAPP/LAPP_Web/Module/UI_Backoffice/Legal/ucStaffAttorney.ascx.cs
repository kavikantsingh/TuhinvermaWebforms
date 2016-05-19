using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_UI_Backoffice_Legal_ucStaffAttorney : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            if (Request.QueryString["act"] == "tbHearing")
            {
                TabContainer1.ActiveTabIndex = 1;
            }
        }


    }
    protected void chkMTSSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkMTSSelectAll.Checked == true)
        {
            chkMTS1.Checked = true;
            chkMTS2.Checked = true;
        }
        else
        {
            chkMTS1.Checked = false;
            chkMTS2.Checked = false;
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
    protected void chkPerSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkPerSelectAll.Checked == true)
        {
            chkPer1.Checked = true;
            chkPer2.Checked = true;
        }
        else
        {
            chkPer1.Checked = false;
            chkPer2.Checked = false;
        }

    }
    protected void chlSusLawSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chlSusLawSelectAll.Checked == true)
        {
            chlSusLaw1.Checked = true;
            chlSusLaw2.Checked = true;
        }
        else
        {
            chlSusLaw1.Checked = false;
            chlSusLaw2.Checked = false;
        }
    }
    protected void chkReinstatements_CheckedChanged(object sender, EventArgs e)
    {
        if (chkReinstatements.Checked == true)
        {
            CheckBox2.Checked = true;
            CheckBox5.Checked = true;
        }
        else
        {
            CheckBox2.Checked = false;
            CheckBox2.Checked = false;
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