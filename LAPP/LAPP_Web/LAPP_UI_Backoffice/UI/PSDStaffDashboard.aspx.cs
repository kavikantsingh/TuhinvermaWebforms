using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LAPP_UI_Backoffice_UI_PSDStaffDashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    { 
    }

    protected void btnAdvanceSearch_Click(object sender, EventArgs e)
    {
        try
        {
            if (divAdvanceSearch.Visible == true && btnAdvanceSearch.Text == "Basic Search")
            {
                divBasicSearch.Visible = true;
                divAdvanceSearch.Visible = false;
                btnAdvanceSearch.Text = "Advance Search";
            }
            else
            {
                divBasicSearch.Visible = false;
                divAdvanceSearch.Visible = true;
                btnAdvanceSearch.Text = "Basic Search";
            }
        }
        catch (Exception ex)
        {
            
        }
    }

    protected void btnSearchCancel_Click(object sender, EventArgs e)
    {
        divBasicSearch.Visible = true;
        divAdvanceSearch.Visible = false ;
        btnAdvanceSearch.Text = "Advance Search";
    }


   

}