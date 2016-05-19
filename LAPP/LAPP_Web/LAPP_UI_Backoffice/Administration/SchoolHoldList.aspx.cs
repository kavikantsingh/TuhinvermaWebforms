using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LAPP_UI_Backoffice_Administration_SchoolHoldList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSclInfoAdd_Click(object sender, EventArgs e)
    {
        dvAddComplint.Visible = true;
    }
    protected void btnComaplintSave_Click(object sender, EventArgs e)
    {
        dvAddComplint.Visible = false;
    }
}