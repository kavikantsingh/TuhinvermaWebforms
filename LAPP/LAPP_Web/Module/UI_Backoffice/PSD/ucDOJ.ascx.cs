using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_UI_Backoffice_PSD_ucDOJ : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnAddnewBGC_Click(object sender, EventArgs e)
    {
        pnlAddnewBGC.Visible = true;
        pnlAddnewButtonBGC.Visible = false;
    }

    protected void btnBCGverifyCancel_Click(object sender, EventArgs e)
    {
        pnlAddnewBGC.Visible = false;
        pnlAddnewButtonBGC.Visible = true;
    }

    protected void btnBCGverify_Click(object sender, EventArgs e)
    {
        pnlAddnewBGC.Visible = false;
        pnlAddnewButtonBGC.Visible = true;
    }

    protected void btnSubsequentArrest_Click(object sender, EventArgs e)
    {
        pblSubsequentArrestAddNew.Visible = true;
        pnlSubsequentArrestBtn.Visible = false;
    }

    protected void btnBindGridCertificateofCompletion_Click(object sender, EventArgs e)
    {

    }

    protected void btnCloseSubsequentArrestSave_Click(object sender, EventArgs e)
    {
        pblSubsequentArrestAddNew.Visible = false;
        pnlSubsequentArrestBtn.Visible = true;
    }

    protected void btnCloseSubsequentArrest_Click(object sender, EventArgs e)
    {
        pblSubsequentArrestAddNew.Visible = false;
        pnlSubsequentArrestBtn.Visible = true;
    }


    #region ADQ1
    protected void rblADQ1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblADQ1.SelectedItem.Text == "Yes")
        {
            dvADQ1.Visible = true;
        }
        else
        {
            dvADQ1.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion

    #region ADQ2
    protected void rblADQ2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblADQ2.SelectedItem.Text == "Yes")
        {
            dvADQ2.Visible = true;
        }
        else
        {
            dvADQ2.Visible = false;
        }
    }
    //protected void btnAddHist1_Click(object sender, EventArgs e)
    //{
    //    //divgvhist1.Visible = true;
    //}
    #endregion
}