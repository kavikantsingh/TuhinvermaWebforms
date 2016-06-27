using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NVBMT_WebProject.Modules.IndiVidual
{
    public partial class ucBoardPacket : System.Web.UI.UserControl
    {
        public int Individual_Id
        {
            get
            {
                if (ViewState["Individual_Id"] != null)
                {
                    return Convert.ToInt32(ViewState["Individual_Id"]);
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                ViewState["Individual_Id"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}