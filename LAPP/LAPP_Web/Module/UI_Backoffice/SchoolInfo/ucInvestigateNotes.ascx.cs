using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NVBMT_WebProject.Modules.IndiVidual
{
    public partial class ucFinancial : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnClose_Click(object sender, EventArgs e)
        {
            rowGrid.Visible = true;
            rowInEdit.Visible = false;
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            rowGrid.Visible = false;
            rowInEdit.Visible = true;
        }

        protected void makepaymentbtn_Click(object sender, EventArgs e)
        {
            pnlPaymentSection.Visible = true;
            
        }

        protected void pnlPaymentSectionClose_Click(object sender, EventArgs e)
        {
            pnlPaymentSection.Visible = false;

        }

        //protected void btnShowHistory_Click(object sender, EventArgs e)
        //{
        //    btnShowHistory.Enabled = false;
        //    lnkNext.Enabled = true;
        //    lnkPrev.Enabled = true;
        //    btnShowCurrent.Enabled = true;
        //}
        //protected void btnShowCurrent_Click(object sender, EventArgs e)
        //{
        //    btnShowHistory.Enabled = true;
        //    lnkNext.Enabled = false;
        //    lnkPrev.Enabled = false;
        //    btnShowCurrent.Enabled = false;
        //}
        protected void ddlpayment_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ( ddlpayment.SelectedItem.Text == "Check")
            {
                dvchek.Visible = true;
            }

            else
            {

                dvchek.Visible = false;
        }
        }
}
}