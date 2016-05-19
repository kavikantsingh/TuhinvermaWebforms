using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 
    public partial class NVBMT_WebProject_Modules_PSD_ucPSDMinuteMeeting : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            trStatic2.Visible = true;
            trStatic1.Visible = true;
        }

        //protected void imgbtnStatus1Edit_Click(object sender, ImageClickEventArgs e)
        //{
        //    trStatic1.Visible = false;
        //    trEdit.Visible = true;
        //    txtEdit.Text = "LINDA ARGIRIS";
        //    ddlEdit.SelectedValue = "Allison to obtain";
        //    ltrUserName.Text = "LINDA ARGIRIS";
        //    ltrTask.Text = "Allison to obtain";
        //    ltrId.Text = "1";
        //}

        //protected void imgbtnStatus2Edit_Click(object sender, ImageClickEventArgs e)
        //{
        //    trStatic2.Visible = false;
        //    trEdit.Visible = true;
        //    txtEdit.Text = "NANCY BLACHLY";
        //    ddlEdit.SelectedValue = "Beverly to Review";
        //    ltrUserName.Text = "NANCY BLACHLY";
        //    ltrTask.Text = "Allison to obtain";
        //    ltrId.Text = "1";
        //}

        protected void btnPsdStatus1Update_Click(object sender, EventArgs e)
        {
            trStatic2.Visible = true;
            trStatic1.Visible = true;
            trEdit.Visible = false; divAddNew.Visible = false;
        }

        protected void lnkCancelStatus1Update_Click(object sender, EventArgs e)
        {
            trStatic2.Visible = true;
            trStatic1.Visible = true;
            trEdit.Visible = false; divAddNew.Visible = false;
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            divAddNew.Visible = true; trStatic2.Visible = true;
            trStatic1.Visible = true;
            trEdit.Visible = false;  
        }
    }
 