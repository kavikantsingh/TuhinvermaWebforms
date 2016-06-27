using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace NVBMT_WebProject.Modules.IndiVidual
{
    public partial class ucAKA : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               // BindGridAKA();
            }
        }
       
    }
}