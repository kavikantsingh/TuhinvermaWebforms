using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_UI_Backoffice_Legal_ucHearingSchedule : System.Web.UI.UserControl
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
                e.Cell.Controls.Add(new LiteralControl("<div style=\"background-color: " + eventColor + divStyle + "\">@PSD=15</div>"));
            }

            if (e.Day.Date >= DateTime.Now.AddDays(19) && e.Day.Date <= DateTime.Now.AddDays(20))
            {
                e.Cell.Controls.Add(new LiteralControl("<div style=\"background-color: " + eventColor + divStyle + "\">@PSD=10</div>"));
            }



        }
        catch (Exception ex)
        {
        }
    }
    protected void lnkDate1_Click(object sender, EventArgs e)
    {
        trStatus1.Visible = true;
        trGridRowStatus1.Visible = false;
    }
    protected void lnkcalceldate1_Click(object sender, EventArgs e)
    {
        trStatus1.Visible = false;
        trGridRowStatus1.Visible = true;
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
    protected void btnSend1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/LAPP_UI_Backoffice/ARS/ARSLegal.aspx");
    }
}