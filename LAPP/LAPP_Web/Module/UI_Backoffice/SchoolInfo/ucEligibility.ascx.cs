using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NVBMT_WebProject.Modules.IndiVidual
{
    public partial class ucAdvRoster : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnShowHistory_Click(object sender, EventArgs e)
        {
            btnShowHistory.Enabled = false;
            lnkNext.Enabled = true;
            lnkPrev.Enabled = true;
            btnShowCurrent.Enabled = true;
        }

        protected void btnShowCurrent_Click(object sender, EventArgs e)
        {
            btnShowHistory.Enabled = true;
            lnkNext.Enabled = false;
            lnkPrev.Enabled = false;
            btnShowCurrent.Enabled = false;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            rowEditMode.Visible = false;
            rowGrid.Visible = true;

        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            rowEditMode.Visible = true;
            rowGrid.Visible = false;
        }


        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            AddLicenseIfo.Visible = true;
            pnlAddNewButton.Visible = false;
        }

        protected void LicenseIfobtnSave_Click(object sender, EventArgs e)
        {
            AddLicenseIfo.Visible = false;
            pnlAddNewButton.Visible = true;
        }

        protected void btnVerifyHomeAddress_Click(object sender, EventArgs e)
        {
            divVerifyHomeAddressBtn.Visible = false;
            divVerifyHomeAddressPnl.Visible = true;
            lblVHomeStreet1.Text = "";
            lblVHomeStreet2.Text = "";
            lblVHomeCity.Text = "";
            lblVHomeState.Text = "";
            lblVHomeZip.Text = "";
            //fillverifyresidenceaddress();
        }

        protected void btnVerifyHomeAddressYes_Click(object sender, EventArgs e)
        {
            divVerifyHomeAddressBtn.Visible = true;
            divVerifyHomeAddressPnl.Visible = false;
        }

        protected void btnVerifyHomeAddressNo_Click(object sender, EventArgs e)
        {
            divVerifyHomeAddressBtn.Visible = true;
            divVerifyHomeAddressPnl.Visible = false;
            txtStreet.Text = lblVHomeStreet1.Text;
            txtStreet2.Text = lblVHomeStreet2.Text;
            txtCity.Text = lblVHomeCity.Text;
            //ddlState.SelectedValue = lblVHomeState.Text;
            txtZip.Text = lblVHomeZip.Text;
        }

        protected void btnVerifyHomeAddressEdit_Click(object sender, EventArgs e)
        {
            divVerifyAddressPnl.Visible = true;
            divVerifyAddressBtn.Visible = false;
        }

        protected void btnVerifyAddressYes_Click(object sender, EventArgs e)
        {
            divVerifyAddressPnl.Visible = false;
            divVerifyAddressBtn.Visible = true;
        }

    }
}