using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_UI_Backoffice_ESD_ucESDCallSheet : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Selection_Change(Object sender, EventArgs e)
    {
        divCalenderpnl.Visible = false;
        divCallList.Visible = true;
        LinkButton1.Visible = true;

        scheduler_here.Visible = false;
    }
    protected void backCalender_Click(Object sender, EventArgs e)
    {
        divCalenderpnl.Visible = true;
        divCallList.Visible = false;
        LinkButton1.Visible = false;

        scheduler_here.Visible = true;
    }
    public void calEvent_DayRender(object source, DayRenderEventArgs e)
    {
        string eventColor = "Tomato";
        string divStyle = " ; border-radius: 10px; color: white; padding: 2px 8px; font-size: 12px; text-align: left; margin-bottom: 3px; margin-top: 3px;";

        try
        {
            if (e.Day.Date >= DateTime.Now.AddDays(10) && e.Day.Date <= DateTime.Now.AddDays(11))
            {
                e.Cell.Controls.Add(new LiteralControl("<div style=\"background-color: " + eventColor + divStyle + "\">@ESD=15</div>"));
            }

            if (e.Day.Date >= DateTime.Now.AddDays(19) && e.Day.Date <= DateTime.Now.AddDays(20))
            {
                e.Cell.Controls.Add(new LiteralControl("<div style=\"background-color: " + eventColor + divStyle + "\">@ESD=10</div>"));
            }



        }
        catch (Exception ex)
        {
        }
    }
    protected void btnCreateDeficiency_Click(object sender, EventArgs e)
    {
        trDificency.Visible = true;
        dvDificency.Visible = true;
        grdCreatDef.Visible = false;
    }
    protected void lnkcloseSCLinfo_Click(object sender, EventArgs e)
    {
        trDificency.Visible = false;
        dvDificency.Visible = false;
        grdCreatDef.Visible = true;
    }
    protected void chkESD1SelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkESDSelectAll.Checked == true)
        {
            chkESD1.Checked = true;
            chkESD2.Checked = true;
            chkESD3.Checked = true;
            chkESD4.Checked = true;
            chkESD5.Checked = true;
            chkESD6.Checked = true;
            chkESD7.Checked = true;
            chkESD8.Checked = true;
            chkESD9.Checked = true;
            chkESD10.Checked = true;
        }
        else
        {
            chkESD1.Checked = false;
            chkESD2.Checked = false;
            chkESD3.Checked = false;
            chkESD4.Checked = false;
            chkESD5.Checked = false;
            chkESD6.Checked = false;
            chkESD7.Checked = false;
            chkESD8.Checked = true;
            chkESD9.Checked = false;
            chkESD10.Checked = false;
        }
    }
}