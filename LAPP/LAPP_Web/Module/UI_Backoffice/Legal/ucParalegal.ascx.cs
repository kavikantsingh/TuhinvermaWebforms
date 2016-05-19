using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_UI_Backoffice_Legal_ucParalegal : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            if (Request.QueryString["act"] == "HWR")
            {
                TabContainer1.ActiveTabIndex = 1;
            }

            if (Request.QueryString["act"] == "NOD")
            {
                TabContainer1.ActiveTabIndex = 3;
            }
        }


    }
    protected void chkHearingRequestsAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkHearingRequestsAll.Checked == true)
        {
            chkHearingRequests1.Checked = true;
            chkHearingRequests2.Checked = true;
        }
        else
        {
            chkHearingRequests1.Checked = false;
            chkHearingRequests2.Checked = false;
        }
    }
    protected void chkHearingsScheduledAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkHearingsScheduledAll.Checked == true)
        {
            chkHearingsScheduled1.Checked = true;
            chkHearingsScheduled2.Checked = true;
        }
        else
        {
            chkHearingsScheduled1.Checked = false;
            chkHearingsScheduled2.Checked = false;
        }
    }
    protected void chkLatterSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkLatterSelectAll.Checked == true)
        {
            chkLatter1.Checked = true;
            chkLatter2.Checked = true;
        }
        else
        {
            chkLatter1.Checked = false;
            chkLatter2.Checked = false;
        }
    }
    protected void chkLDecSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkLDecSelectAll.Checked == true)
        {
            chkLDec1.Checked = true;
            chkLDec2.Checked = true;
        }
        else
        {
            chkLDec1.Checked = false;
            chkLDec2.Checked = false;
        }
    }
    protected void chkLRinSelectAll_CheckedChanged(object sender, EventArgs e)
    {

        if (chkLRinSelectAll.Checked == true)
        {
            chkLRin1.Checked = true;
            chkLRin2.Checked = true;
        }
        else
        {
            chkLRin1.Checked = false;
            chkLRin2.Checked = false;
        }
    }
    protected void chkLRevoSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkLRevoSelectAll.Checked == true)
        {
            chkLRevo1.Checked = true;
            chkLRevo2.Checked = true;
        }
        else
        {
            chkLRevo1.Checked = false;
            chkLRevo2.Checked = false;
        }
    }
    protected void chkLNodeSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkLNodeSelectAll.Checked == true)
        {
            chkLNode1.Checked = true;
            chkLNode2.Checked = true;
        }
        else
        {
            chkLNode1.Checked = false;
            chkLNode2.Checked = false;
        }
    }
    protected void LEduSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (LEduSelectAll.Checked == true)
        {
            LEdu1.Checked = true;
            LEdu2.Checked = true;
        }
        else
        {
            LEdu1.Checked = false;
            LEdu2.Checked = false;
        }
    }
    protected void chkHNodeSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkHNodeSelectAll.Checked == true)
        {
            chkHNode1.Checked = true;
            chkHNode2.Checked = true;
        }
        else
        {
            chkHNode1.Checked = false;
            chkHNode2.Checked = false;
        }
    }
    protected void chkHeNoteSelectAll_CheckedChanged(object sender, EventArgs e)
    {

        if (chkHeNoteSelectAll.Checked == true)
        {
            chkHeNote1.Checked = true;
            chkHeNote2.Checked = true;
        }
        else
        {
            chkHeNote1.Checked = false;
            chkHeNote2.Checked = false;
        }
    }
    protected void chkLTemSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkLTemSelectAll.Checked == true)
        {
            chkLTem1.Checked = true;
            chkLTem2.Checked = true;
        }
        else
        {
            chkLTem1.Checked = false;
            chkLTem2.Checked = false;
        }
    }
}