using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;


    public partial class ucInspection : System.Web.UI.UserControl
    {
        public int EditIndexCaseName
        {
            get
            {
                if (ViewState["EditIndexCaseName"] != null)
                {
                    return Convert.ToInt32(ViewState["EditIndexCaseName"]);

                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["EditIndexCaseName"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridCaseName();
            }

        }

        protected void btnCaseNameAddNew_Click(object sender, EventArgs e)
        {
            divAddPanelCaseName.Visible = true;
            divAddbuttonCaseName.Visible = false;
            divUpdatebtns.Visible = false;
            divSavebtns.Visible = true;
            this.EditIndexCaseName = -1;
            BindGridCaseName();

        }

        public void BindGridCaseName()
        {

            ArrayList ArryListName = new ArrayList();
            ArryListName.Add("GIC");
            gvCaseName.EditIndex = this.EditIndexCaseName;
            gvCaseName.DataSource = ArryListName;
            gvCaseName.DataBind();

            if (this.EditIndexCaseName >= 0)
            {
                gvCaseName.Rows[this.EditIndexCaseName].CssClass = "RowInEditMode";
                gvCaseName.Rows[this.EditIndexCaseName].Cells[0].Attributes.Add("colspan", "5");
                gvCaseName.Rows[this.EditIndexCaseName].Cells[1].Visible = false;
                gvCaseName.Rows[this.EditIndexCaseName].Cells[2].Visible = false;
                gvCaseName.Rows[this.EditIndexCaseName].Cells[3].Visible = false;
                gvCaseName.Rows[this.EditIndexCaseName].Cells[4].Visible = false;


            }
        }

        protected void btnCaseNameUpdate_Click(object sender, EventArgs e)
        {
            divSavebtns.Visible = false;
            divUpdatebtns.Visible = false;
            divSavebtns.Visible = false;
            divUpdatebtns.Visible = false;
            this.EditIndexCaseName = -1;
            BindGridCaseName();
        }

        protected void lnkCaseNameCancelUpdate_Click(object sender, EventArgs e)
        {
            divSavebtns.Visible = false;
            divUpdatebtns.Visible = false;
            divSavebtns.Visible = false;
            divUpdatebtns.Visible = false;
            this.EditIndexCaseName = -1;
            BindGridCaseName();
        }
        public void FillControlCaseName(GridView gv, int EditInd)
        {
            try
            {


                TextBox txtDateEdit = gv.Rows[this.EditIndexCaseName].FindControl("txtDateEdit") as TextBox;
                TextBox txtTypeEdit = gv.Rows[this.EditIndexCaseName].FindControl("txtTypeEdit") as TextBox;
                TextBox txtResultEdit = gv.Rows[this.EditIndexCaseName].FindControl("txtResultEdit") as TextBox;
                TextBox txtDoneByEdit = gv.Rows[this.EditIndexCaseName].FindControl("txtDoneByEdit") as TextBox;

                //if (objSGBP_Grade_Info != null)
                //{

                txtDateEdit.Text = "10/01/2014";
                txtTypeEdit.Text = "Test";
                txtResultEdit.Text = "Test";
                txtDoneByEdit.Text = "Test";

                //}

                //else
                //{
                //ClearControl();
                //}

            }

            catch (Exception ex)
            {

            }
        }

        protected void imgbtnEdit_Click(object sender, EventArgs e)
        {
            divAddPanelCaseName.Visible = false;
            divAddbuttonCaseName.Visible = true;
            divUpdatebtns.Visible = true;
            divSavebtns.Visible = false;
            this.EditIndexCaseName = -1;

            ImageButton btnEdit = (ImageButton)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
                this.EditIndexCaseName = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                BindGridCaseName();
                //this. = ID;
                FillControlCaseName(gvCaseName, this.EditIndexCaseName);
            }
        }

        protected void imgBtnDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnCaseNameSave_Click(object sender, EventArgs e)
        {
            divAddPanelCaseName.Visible = false;
            divAddbuttonCaseName.Visible = true;
            divSavebtns.Visible = false;
            divUpdatebtns.Visible = false;
        }

        protected void lnkCaseNameCancel_Click(object sender, EventArgs e)
        {
            divAddPanelCaseName.Visible = false;
            divAddbuttonCaseName.Visible = true;
            divSavebtns.Visible = false;
            divUpdatebtns.Visible = false;
        }
    }
