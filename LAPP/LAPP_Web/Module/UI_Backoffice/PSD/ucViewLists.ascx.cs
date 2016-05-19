using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class NVBMT_WebProject_Modules_IndiVidual_ucViewLists : System.Web.UI.UserControl
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
    }
