using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

 
    public partial class ucUserTask : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            trStatic2.Visible = true;
            trStatic1.Visible = true;
        }

        protected void imgbtnStatus1Edit_Click(object sender, ImageClickEventArgs e)
        {
            Button3.Visible = true;
            divAddNew.Visible = false;
            trStatic1.Visible = false;
            trEdit.Visible = true;
            txtEdit.Text = "Allison to obtain";
            ddlEdit.SelectedValue = "1";
            ltrUserName.Text = "Chris Menally";
            ltrTask.Text = "Allison to obtain";
            ltrId.Text = "1";
        }

        protected void imgbtnStatus2Edit_Click(object sender, ImageClickEventArgs e)
        {
            Button3.Visible = true;
            divAddNew.Visible = false;
            trStatic2.Visible = false;
            trEdit.Visible = true;
            txtEdit.Text = "Beverly to Review";
            ddlEdit.SelectedValue = "2";
            ltrUserName.Text = "Beverly Nas";
            ltrTask.Text = "Beverly to Review";
            ltrId.Text = "2";
        }

        protected void btnPsdStatus1Update_Click(object sender, EventArgs e)
        {
            trStatic2.Visible = true;
            trStatic1.Visible = true;
            trEdit.Visible = false;
            divAddNew.Visible = false;
            Button3.Visible = true;
        }

        protected void lnkCancelStatus1Update_Click(object sender, EventArgs e)
        {
            trStatic2.Visible = true;
            trStatic1.Visible = true;
            trEdit.Visible = false;
            divAddNew.Visible = false;
            Button3.Visible = true;
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            divAddNew.Visible = true;
            Button3.Visible = false;
        }
    }
 