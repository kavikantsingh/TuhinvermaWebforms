using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ApplicantDashboard : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }

        }
        protected void EditMailingbtn_Click(object sender, EventArgs e)
        {
            EditMailingbtn.Visible = false;
            divEditMailingAddress.Visible = true;
            divGridMailingAddress.Visible = false;
            divGridPhysicalAddress.Visible = false;
        }
        protected void btnSaveMailingAddress_Click(object sender, EventArgs e)
        {
            EditMailingbtn.Visible = true;
            divEditMailingAddress.Visible = false;
            divGridMailingAddress.Visible = true;
            divGridPhysicalAddress.Visible = true;
        }
        protected void btnSaveCancelMailingAddress_Click(object sender, EventArgs e)
        {
            EditMailingbtn.Visible = true;
            divEditMailingAddress.Visible = false;
            divGridMailingAddress.Visible = true;
            divGridPhysicalAddress.Visible = true;
        }

        protected void imgbtnEditContact_Click(object sender, EventArgs e)
        {
            trEditContactAddress.Visible = true;
            trGridContactAddress.Visible = false;
            
        }
        protected void btnSaveContact_Click(object sender, EventArgs e)
        {
            trEditContactAddress.Visible = false;
            trGridContactAddress.Visible = true;
           
        }
        protected void btnSaveCancelContact_Click(object sender, EventArgs e)
        {
            trEditContactAddress.Visible = false;
            trGridContactAddress.Visible = true;
            
        }

    }
 