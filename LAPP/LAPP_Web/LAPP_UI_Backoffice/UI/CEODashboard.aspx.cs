using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LAPP_UI_Backoffice_UI_CEODashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void ShowPanelonButtonClick(string pnlValue)
    {
        pnlWeekly.Visible = false;
        pnlbtnMonthly.Visible = false;
        pnlbtnMonthlyDetails.Visible = false;

        if (pnlValue == "week")
            pnlWeekly.Visible = true;
        else if (pnlValue == "Month")
            pnlbtnMonthly.Visible = true;
        else if (pnlValue == "MonthDet")
            pnlbtnMonthlyDetails.Visible = true;
    }

    public void MakeActiveBtn(Button btn)
    {
        btnWeekly.CssClass = "tabBtn";
        btnMonthly.CssClass = "tabBtn";
        btnMonthlyDetails.CssClass = "tabBtn";
        
        btn.CssClass = "tab_activeBtn";
    }
    protected void btnWeekly_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("week");
        MakeActiveBtn(btnWeekly);
    }
    protected void btnMonthly_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Month");
        MakeActiveBtn(btnMonthly);
    }
    protected void btnMonthlyDetails_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("MonthDet");
        MakeActiveBtn(btnMonthlyDetails);
    }
}