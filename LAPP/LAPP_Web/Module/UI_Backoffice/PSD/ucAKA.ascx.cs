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
                BindGridAKA();
            }
        }
        #region Education 2

        public int EditIndexAKA
        {
            get
            {
                if (ViewState["EditIndexAKA"] != null)
                {
                    return Convert.ToInt32(ViewState["EditIndexAKA"]);

                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["EditIndexAKA"] = value;
            }
        }

        protected void btnAKAAddNew_Click(object sender, EventArgs e)
        {
            divAKA.Visible = false;
            divAddPanelAKA.Visible = true;
            this.EditIndexAKA = -1;
            BindGridAKA();
        }
        protected void btnAKASave_Click(object sender, EventArgs e)
        {
            divAKA.Visible = true;
            divAddPanelAKA.Visible = false;
        }
        protected void lnkAKACancel_Click(object sender, EventArgs e)
        {
            divAKA.Visible = true;
            divAddPanelAKA.Visible = false;
        }

        public void BindGridAKA()
        {

            ArrayList ArryListName = new ArrayList();
            ArryListName.Add("CA");

            gvAKA.EditIndex = this.EditIndexAKA;
            gvAKA.DataSource = ArryListName;
            gvAKA.DataBind();

            if (this.EditIndexAKA >= 0)
            {
                gvAKA.Rows[this.EditIndexAKA].CssClass = "RowInEditMode";
                gvAKA.Rows[this.EditIndexAKA].Cells[0].Attributes.Add("colspan", "7");
                gvAKA.Rows[this.EditIndexAKA].Cells[1].Visible = false;
                gvAKA.Rows[this.EditIndexAKA].Cells[2].Visible = false;
                gvAKA.Rows[this.EditIndexAKA].Cells[3].Visible = false;
                gvAKA.Rows[this.EditIndexAKA].Cells[4].Visible = false;
                gvAKA.Rows[this.EditIndexAKA].Cells[5].Visible = false;
                gvAKA.Rows[this.EditIndexAKA].Cells[6].Visible = false;
            }
        }


        protected void btnAKAUpdate_Click(object sender, EventArgs e)
        {
            this.EditIndexAKA = -1;
            BindGridAKA();
        }

        protected void lnkAKACancelUpdate_Click(object sender, EventArgs e)
        {
            this.EditIndexAKA = -1;
            BindGridAKA();
        }

        protected void lnkAKAEdit_Click(object sender, EventArgs e)
        {
            divAKA.Visible = true;
            divAddPanelAKA.Visible = false;
            this.EditIndexAKA = -1;

            ImageButton imgbtnAKAEdit = (ImageButton)sender;
            if (imgbtnAKAEdit != null)
            {
                int ID = Convert.ToInt32(imgbtnAKAEdit.CommandArgument);
                this.EditIndexAKA = Convert.ToInt32(imgbtnAKAEdit.Attributes["RowIndex"]);
                BindGridAKA();
                //FillControlAKA(gvAKA, this.EditIndexAKA);
            }
        }

        protected void lnkAKADelete_Click(object sender, EventArgs e)
        {

        }

        #endregion
    }
}