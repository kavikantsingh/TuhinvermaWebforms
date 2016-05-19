using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;


    public partial class ucBranches : System.Web.UI.UserControl
    {
        public int EditIndex
        {
            get
            {
                if (ViewState["EditIndex"] != null)
                {
                    return Convert.ToInt32(ViewState["EditIndex"]);

                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["EditIndex"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        public void BindGrid()
        {

            ArrayList ArryListName = new ArrayList();
            ArryListName.Add("GIC");

            gvBranchList.EditIndex = this.EditIndex;
            gvBranchList.DataSource = ArryListName;
            gvBranchList.DataBind();

            if (this.EditIndex >= 0)
            {
                gvBranchList.Rows[this.EditIndex].CssClass = "RowInEditMode";
                gvBranchList.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "3");
                gvBranchList.Rows[this.EditIndex].Cells[1].Visible = false;
                gvBranchList.Rows[this.EditIndex].Cells[2].Visible = false;



            }
        }

        protected void btnBranchAddNew_Click(object sender, EventArgs e)
        {
            pnlBranch.Visible = true;
            pnlBranchControl.Visible = true;
            btnBranchAddNew.Visible = false;
            pnlBranchControlup.Visible = false;
            this.EditIndex = -1;
            BindGrid();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            pnlBranch.Visible = false;
            pnlBranchControl.Visible = false;
            btnBranchAddNew.Visible = true;
        }

        protected void lnkbtnCancel_Click(object sender, EventArgs e)
        {
            pnlBranch.Visible = false;
            pnlBranchControl.Visible = false;
            btnBranchAddNew.Visible = true;
        }
        public void FillControl(GridView gv, int EditIndex)
        {
            try
            {
                TextBox txtBranchEdit = gv.Rows[this.EditIndex].FindControl("txtBranchEdit") as TextBox;
                TextBox txtAddress1Edit = gv.Rows[this.EditIndex].FindControl("txtAddress1Edit") as TextBox;
                TextBox txtCityEdit = gv.Rows[this.EditIndex].FindControl("txtCityEdit") as TextBox;
                TextBox txtZipEdit = gv.Rows[this.EditIndex].FindControl("txtZipEdit") as TextBox;
                DropDownList ddlStateEdit = gv.Rows[this.EditIndex].FindControl("ddlStateEdit") as DropDownList;
                TextBox txtMailingStreetEdit = gv.Rows[this.EditIndex].FindControl("txtMailingStreetEdit") as TextBox;
                TextBox txtMailingCityEdit = gv.Rows[this.EditIndex].FindControl("txtMailingCityEdit") as TextBox;
                DropDownList ddlMailingStateEdit = gv.Rows[this.EditIndex].FindControl("ddlMailingStateEdit") as DropDownList;
                TextBox txtMailingZipEdit = gv.Rows[this.EditIndex].FindControl("txtMailingZipEdit") as TextBox;
                TextBox txtLastNameEdit = gv.Rows[this.EditIndex].FindControl("txtLastNameEdit") as TextBox;
                TextBox txtFirstNameEdit = gv.Rows[this.EditIndex].FindControl("txtFirstNameEdit") as TextBox;
                TextBox txtPhoneEdit = gv.Rows[this.EditIndex].FindControl("txtPhoneEdit") as TextBox;
                TextBox txtFaxEdit = gv.Rows[this.EditIndex].FindControl("txtFaxEdit") as TextBox;
                TextBox txtEmailEdit = gv.Rows[this.EditIndex].FindControl("txtEmailEdit") as TextBox;
                TextBox txtCommentsEdit = gv.Rows[this.EditIndex].FindControl("txtCommentEdits") as TextBox;


                txtBranchEdit.Text = "R&D";
                txtAddress1Edit.Text = "Street 21,Times Square";
                txtCityEdit.Text = "New York";
                txtZipEdit.Text = "226";
                txtMailingStreetEdit.Text = "Times Square";
                txtMailingCityEdit.Text = "New York";
                txtMailingZipEdit.Text = "226";
                txtLastNameEdit.Text = "Smith";
                txtFirstNameEdit.Text = "David";
                txtPhoneEdit.Text = "733718";
                txtFaxEdit.Text = "DAVID126";
                txtEmailEdit.Text = "shekhar.ebsoft@gmail.com";
                txtCommentsEdit.Text = "good";

            }

            catch (Exception ex)
            {

            }
        }
        protected void imgBtnDelete_Branch_Click(object sender, ImageClickEventArgs e)
        {

        }
        protected void imgBtnEdit_Responsible_Click(object sender, ImageClickEventArgs e)
        {

        }
        protected void imgBtnEdit_Branch_Click(object sender, ImageClickEventArgs e)
        {
            pnlBranch.Visible = false;
            pnlBranchControl.Visible = false;
            btnBranchAddNew.Visible = true;
            pnlBranchControlup.Visible = true;

            this.EditIndex = -1;

            ImageButton btnEdit = (ImageButton)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
                this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                BindGrid();
                //this. = ID;
                FillControl(gvBranchList, this.EditIndex);
            }
        }

        protected void imgBtnDelete_Responsible_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void btnAddNew_Responsible_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Responsible_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Responsible_Click(object sender, EventArgs e)
        {

        }

        protected void imgBtnDelete_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void imgbtnSave3_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void imgBtnCancel_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            pnlBranch.Visible = false;
            pnlBranchControl.Visible = false;
            btnBranchAddNew.Visible = true;
            pnlBranchControlup.Visible = false;
            this.EditIndex = -1;
            BindGrid();
        }

        protected void lnkbtnCancelup_Click(object sender, EventArgs e)
        {
            pnlBranch.Visible = false;
            pnlBranchControl.Visible = false;
            btnBranchAddNew.Visible = true;
            pnlBranchControlup.Visible = false;
            this.EditIndex = -1;
            BindGrid();
        }
    }
