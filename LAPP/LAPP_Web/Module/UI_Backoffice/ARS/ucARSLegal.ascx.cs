using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_UI_Backoffice_ARS_ucARSLegal : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            if (Request.QueryString["act"] == "Btask")
            {
                TabContainer1.ActiveTabIndex = 1;
            }
        }
    }
    protected void LinkButton25_Click(object sender, EventArgs e)
    {

    }
    protected void chkSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkSelectAll.Checked == true)
        {
            chkCart1.Checked = true;
            chkCart2.Checked = true;
        }
        else
        {
            chkCart1.Checked = false;
            chkCart2.Checked = false;
        }
    }
    protected void chkEduSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkEduSelectAll.Checked == true)
        {
            chkcartEdu1.Checked = true;
            chkcartEdu2.Checked = true;
        }
        else
        {
            chkcartEdu1.Checked = false;
            chkcartEdu2.Checked = false;
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
    protected void chkSusSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkSusSelectAll.Checked == true)
        {
            chkSus1.Checked = true;
            chkSus2.Checked = true;
        }
        else
        {
            chkSus1.Checked = false;
            chkSus2.Checked = false;
        }
    }
    protected void SusDecSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (SusDecSelectAll.Checked == true)
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
    protected void ddlSendT1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlSendT1.SelectedValue == "1")
        {
            btnSend1.Visible = false;
        }
        else
        {
            btnSend1.Visible = true;
        }
    }
    protected void ddlLEgalStaff2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlLEgalStaff2.SelectedValue == "1")
        {
            btnAdd2.Visible = false;
        }
        else
        {
            btnAdd2.Visible = true;
        }
    }

    protected void ddlHoldStaf1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlHoldStaf1.SelectedValue == "1")
        {
            btnHoldSend.Visible = false;
        }
        else
        {
            btnHoldSend.Visible = true;
        }
    }

    protected void ddlHold2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlHold2.SelectedValue == "1")
        {
            btnHold2.Visible = false;
        }
        else
        {
            btnHold2.Visible = true;
        }
    }
}