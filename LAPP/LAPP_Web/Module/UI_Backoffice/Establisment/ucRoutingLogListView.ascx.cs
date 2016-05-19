using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Web.UI.HtmlControls;


    public partial class ucRoutingLogListView : System.Web.UI.UserControl
    {
        #region AgendaBlock
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

        public int EditIndexInspectionDetails
        {
            get
            {
                if (ViewState["EditIndexInspectionDetails"] != null)
                {
                    return Convert.ToInt32(ViewState["EditIndexInspectionDetails"]);

                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["EditIndexInspectionDetails"] = value;
            }
        }

        public int EditIndexINGrid
        {
            get
            {
                if (ViewState["EditIndexINGrid"] != null)
                {
                    return Convert.ToInt32(ViewState["EditIndexINGrid"]);

                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["EditIndexINGrid"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridQuestion1();
            }
        }

        public void BindGridQuestion1()
        {
            //try
            //{
            ArrayList ArryListName = new ArrayList();
            ArryListName.Add("GIC");
            gvQuestion1.EditIndex = this.EditIndex;
            gvQuestion1.DataSource = ArryListName;
            gvQuestion1.DataBind();

            if (this.EditIndex >= 0)
            {
                gvQuestion1.Rows[this.EditIndex].CssClass = "RowInEditMode";
                gvQuestion1.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "5");
                gvQuestion1.Rows[this.EditIndex].Cells[1].Visible = false;
                gvQuestion1.Rows[this.EditIndex].Cells[2].Visible = false;
                gvQuestion1.Rows[this.EditIndex].Cells[3].Visible = false;
                gvQuestion1.Rows[this.EditIndex].Cells[4].Visible = false;

            }
        }

        protected void btnQ1Save_Click(object sender, EventArgs e)
        {
            divAddPanelQ1.Visible = false;
            divAddButtonQ1.Visible = true;
        }

        protected void lnkQ1Cancel_Click(object sender, EventArgs e)
        {
            divAddPanelQ1.Visible = false;
            divAddButtonQ1.Visible = true;
        }

        public void FillControlQuestion1(GridView gv, int EditInd)
        {
            try
            {

                //TextBox txtDateOfRevocationetcEdit = gv.Rows[EditInd].FindControl("txtDateOfRevocationetcEdit") as TextBox;
                //TextBox txtLicensingAgencyEdit = gv.Rows[EditInd].FindControl("txtLicensingAgencyEdit") as TextBox;
                //TextBox txtReasonOfActionEdit = gv.Rows[EditInd].FindControl("txtReasonOfActionEdit") as TextBox;
                //TextBox txtNameEdit = gv.Rows[EditInd].FindControl("txtNameEdit") as TextBox;
                //TextBox txtStreet1Edit = gv.Rows[EditInd].FindControl("txtStreet1Edit") as TextBox;
                //TextBox txtCityEdit = gv.Rows[EditInd].FindControl("txtCityEdit") as TextBox;
                //TextBox txtZipEdit = gv.Rows[EditInd].FindControl("txtZipEdit") as TextBox;
                //DropDownList ddlStateEdit = gv.Rows[EditInd].FindControl("ddlStateEdit") as DropDownList;


                //txtNameEdit.Text = " Jhon Smith";
                //txtStreet1Edit.Text = "101 North ";
                //txtCityEdit.Text = " Carson";
                //txtZipEdit.Text = "21250";
                //ddlStateEdit.SelectedValue = "Nevada";
                //txtLicensingAgencyEdit.Text = "Nevada";
                //txtReasonOfActionEdit.Text = "Reason action";
                //txtDateOfRevocationetcEdit.Text = "11/11/2015";
            }

            catch (Exception ex)
            {

            }
        }

        protected void btnUpdateQ1_Click(object sender, EventArgs e)
        {
            this.EditIndex = -1;
            BindGridQuestion1();
        }

        protected void lnkCancelQ1Update_Click(object sender, EventArgs e)
        {
            this.EditIndex = -1;
            BindGridQuestion1();
        }

        protected void imgbtnEditQ1_Click(object sender, EventArgs e)
        {
            //HtmlControl pnlMainEdit = gvQuestion1.Rows[this.EditIndex].FindControl("pnlMainEdit") as HtmlControl;
            //HtmlControl OpenonAddnew = gvQuestion1.Rows[this.EditIndex].FindControl("OpenonAddnew") as HtmlControl;

            divAddPanelQ1.Visible = false;
            divAddButtonQ1.Visible = true;
            //pnlMainEdit.Visible = true;
            //OpenonAddnew.Visible = false;

            this.EditIndex = -1;
            ImageButton btnEdit = (ImageButton)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
                this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                BindGridQuestion1();
                //this. = ID;
                FillControlQuestion1(gvQuestion1, this.EditIndex);
                HtmlControl pnlMainEdit = gvQuestion1.Rows[this.EditIndex].FindControl("pnlMainEdit") as HtmlControl;
                pnlMainEdit.Visible = true;
            }

        }

        protected void imgBtnDeleteQ1_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            divAddPanelQ1.Visible = true;
            divAddButtonQ1.Visible = false;
            this.EditIndex = -1;
            BindGridQuestion1();
            //BindGridQuestion1onAddNew();
        }

        protected void btnExecute_Click(object sender, EventArgs e)
        {
            divAddPanelQ1.Visible = false;
            divAddButtonQ1.Visible = true;
            this.EditIndex = -1;
            BindGridQuestion1();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            divAddPanelQ1.Visible = false;
            divAddButtonQ1.Visible = true;
            this.EditIndex = -1;
            BindGridQuestion1();
        }
        #endregion

        #region ConfrenceBlockOnGridAddNew

        public void EditNestedGrid(GridView gv)
        {

        }

        protected void imgbtnEditQ1onGridAddNew_Click(object sender, EventArgs e)
        {

            ImageButton btnEdit = (ImageButton)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
                this.EditIndexINGrid = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                BindGridQuestion1onGridAddNew();
                GridView gvQuestion1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("gvQuestion1onGridAddNew") as GridView;
                if (gvQuestion1onGridAddNew != null)
                {
                    TextBox txtInspectionDate = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("txtInspectionDate") as TextBox;
                    TextBox txtInspectionDoneBy = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("txtInspectionDoneBy") as TextBox;
                    TextBox txtResult = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("txtResult") as TextBox;
                    TextBox txtComment = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("txtComment") as TextBox;
                    //DropDownList ddlStateonGridAddNew = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("ddlStateonGridAddNew") as DropDownList;

                }

                //BindGridInspectionDetail();
                HtmlControl pnlInspectionDetailGrid = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("pnlDetailInEditmode") as HtmlControl;
                HtmlControl divAddPanelQ1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("divAddPanelQ1onGridAddNew") as HtmlControl;

                pnlInspectionDetailGrid.Visible = true;
                divAddPanelQ1onGridAddNew.Visible = false;
            }
        }
        public void BindGridQuestion1onGridAddNew()
        {
            try
            {
                GridView gvQuestion1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("gvQuestion1onGridAddNew") as GridView;
                //try
                //{
                ArrayList ArryListName = new ArrayList();

                ArryListName.Add("Nevada");

                gvQuestion1onGridAddNew.EditIndex = this.EditIndexINGrid;
                gvQuestion1onGridAddNew.DataSource = ArryListName;
                gvQuestion1onGridAddNew.DataBind();

                if (this.EditIndexINGrid >= 0)
                {
                    gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].CssClass = "RowInEditMode";
                    gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].Cells[0].Attributes.Add("colspan", "6");
                    gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].Cells[1].Visible = false;
                    gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].Cells[2].Visible = false;
                    gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].Cells[3].Visible = false;
                    gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].Cells[4].Visible = false;
                    gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].Cells[5].Visible = false;
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnQ1SaveonGridAddNew_Click(object sender, EventArgs e)
        {
            //HtmlControl divAddButtonQ1onGridAddNew = (HtmlControl)Page.FindControl("divAddButtonQ1onGridAddNew");
            HtmlControl divAddPanelQ1onGridAddNew = (HtmlControl)Page.FindControl("divAddPanelQ1onGridAddNew");


            divAddPanelQ1onGridAddNew.Visible = false;
            //divAddButtonQ1onGridAddNew.Visible = true;
        }

        protected void lnkQ1CancelonGridAddNew_Click(object sender, EventArgs e)
        {
            //HtmlControl divAddButtonQ1onGridAddNew = (HtmlControl)Page.FindControl("divAddButtonQ1onGridAddNew");
            HtmlControl divAddPanelQ1onGridAddNew = (HtmlControl)Page.FindControl("divAddPanelQ1onGridAddNew");

            divAddPanelQ1onGridAddNew.Visible = false;
            //divAddButtonQ1onGridAddNew.Visible = true;
        }
        public void FillControlQuestion1onGridAddNew(GridView gv, int EditInd)
        {
            try
            {

                //TextBox txtDateOfRevocationetcEdit = gv.Rows[EditInd].FindControl("txtDateOfRevocationetcEdit") as TextBox;
                //TextBox txtLicensingAgencyEdit = gv.Rows[EditInd].FindControl("txtLicensingAgencyEdit") as TextBox;
                //TextBox txtReasonOfActionEdit = gv.Rows[EditInd].FindControl("txtReasonOfActionEdit") as TextBox;
                //TextBox txtNameEdit = gv.Rows[EditInd].FindControl("txtNameEdit") as TextBox;
                //TextBox txtStreet1Edit = gv.Rows[EditInd].FindControl("txtStreet1Edit") as TextBox;
                //TextBox txtCityEdit = gv.Rows[EditInd].FindControl("txtCityEdit") as TextBox;
                //TextBox txtZipEdit = gv.Rows[EditInd].FindControl("txtZipEdit") as TextBox;
                //DropDownList ddlStateEdit = gv.Rows[EditInd].FindControl("ddlStateEdit") as DropDownList;


                //txtNameEdit.Text = " Jhon Smith";
                //txtStreet1Edit.Text = "101 North ";
                //txtCityEdit.Text = " Carson";
                //txtZipEdit.Text = "21250";
                //ddlStateEdit.SelectedValue = "Nevada";
                //txtLicensingAgencyEdit.Text = "Nevada";
                //txtReasonOfActionEdit.Text = "Reason action";
                //txtDateOfRevocationetcEdit.Text = "11/11/2015";
            }

            catch (Exception ex)
            {

            }
        }

        protected void btnUpdateQ1onGridAddNew_Click(object sender, EventArgs e)
        {
            this.EditIndexINGrid = -1;
            BindGridQuestion1onGridAddNew();
        }

        protected void lnkCancelQ1UpdateonGridAddNew_Click(object sender, EventArgs e)
        {
            this.EditIndexINGrid = -1;
            BindGridQuestion1onGridAddNew();
        }



        protected void imgBtnDeleteQ1onGridAddNew_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddNewRouteDetails_Click(object sender, EventArgs e)
        {
            try
            {
                //HtmlControl divAddButtonQ1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("divAddButtonQ1onGridAddNew") as HtmlControl;
                HtmlControl divAddPanelQ1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("divAddPanelQ1onGridAddNew") as HtmlControl;

                divAddPanelQ1onGridAddNew.Visible = true;
                //divAddButtonQ1onGridAddNew.Visible = false;
                this.EditIndexINGrid = -1;
                BindGridQuestion1onGridAddNew();
            }
            catch (Exception ex)
            {

            }
        }
        protected void btnListViewDetailsSave_Click(object sender, EventArgs e)
        {
            //GridView gvQuestion1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("gvQuestion1onGridAddNew") as GridView;

            //HtmlControl divAddButtonQ1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("divAddButtonQ1onGridAddNew") as HtmlControl;
            HtmlControl divAddPanelQ1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("divAddPanelQ1onGridAddNew") as HtmlControl;

            divAddPanelQ1onGridAddNew.Visible = false;
            //divAddButtonQ1onGridAddNew.Visible = true;
            this.EditIndexINGrid = -1;
            BindGridQuestion1onGridAddNew();
        }

        protected void btnListViewDetailsCancel_Click(object sender, EventArgs e)
        {
            //HtmlControl divAddButtonQ1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("divAddButtonQ1onGridAddNew") as HtmlControl;
            HtmlControl divAddPanelQ1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("divAddPanelQ1onGridAddNew") as HtmlControl;

            divAddPanelQ1onGridAddNew.Visible = false;
            //divAddButtonQ1onGridAddNew.Visible = true;
            this.EditIndexINGrid = -1;
            BindGridQuestion1onGridAddNew();
        }

        #endregion

        protected void btnDetails_Click(object sender, EventArgs e)
        {


            divAddPanelQ1.Visible = false;
            divAddButtonQ1.Visible = true;
            this.EditIndex = -1;
            Button btnEdit = (Button)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
                this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                BindGridQuestion1();
                BindGridQuestion1onGridAddNew();
                //this. = ID;
                FillControlQuestion1(gvQuestion1, this.EditIndex);
                HtmlControl OpenonAddnew = gvQuestion1.Rows[this.EditIndex].FindControl("OpenonAddnew") as HtmlControl;
                OpenonAddnew.Visible = true;
            }

        }


        protected void btnInspectionDetails_Click(object sender, EventArgs e)
        {
            Button btnEdit = (Button)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
                this.EditIndexINGrid = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                BindGridQuestion1onGridAddNew();
                GridView gvQuestion1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("gvQuestion1onGridAddNew") as GridView;
                if (gvQuestion1onGridAddNew != null)
                {
                    TextBox txtInspectionDate = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("txtInspectionDate") as TextBox;
                    TextBox txtInspectionDoneBy = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("txtInspectionDoneBy") as TextBox;
                    TextBox txtResult = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("txtResult") as TextBox;
                    TextBox txtComment = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("txtComment") as TextBox;
                }
                BindGridInspectionDetail();
                HtmlControl pnlDetailInEditmode = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("pnlDetailInEditmode") as HtmlControl;
                HtmlControl pnlInspectionDetailGrid = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("pnlInspectionDetailGrid") as HtmlControl;
                pnlInspectionDetailGrid.Visible = true;
                //pnlDetailInEditmode.Visible = true;
            }
        }

        #region Inspection Detail Block

        protected void btnAddNewInspectionDetails_Click(object sender, EventArgs e)
        {
            GridView gvQuestion1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("gvQuestion1onGridAddNew") as GridView;


            HtmlControl divAddNewInspectionPnl = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("divAddNewInspectionPnl") as HtmlControl;
            HtmlControl divAddNewbtnInspectionDetail = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("divAddNewbtnInspectionDetail") as HtmlControl;

            divAddNewInspectionPnl.Visible = true;
            //divAddNewbtnInspectionDetail.Visible = false;
            this.EditIndexInspectionDetails = -1;
            BindGridInspectionDetail();

        }

        public void BindGridInspectionDetail()
        {

            ArrayList ArryListName = new ArrayList();
            ArryListName.Add("GIC");

            GridView gvQuestion1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("gvQuestion1onGridAddNew") as GridView;
            GridView gvInspectionDetails = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("gvInspectionDetails") as GridView;


            gvInspectionDetails.EditIndex = this.EditIndexInspectionDetails;
            gvInspectionDetails.DataSource = ArryListName;
            gvInspectionDetails.DataBind();

            if (this.EditIndexInspectionDetails >= 0)
            {
                gvInspectionDetails.Rows[this.EditIndexInspectionDetails].CssClass = "RowInEditMode";
                gvInspectionDetails.Rows[this.EditIndexInspectionDetails].Cells[0].Attributes.Add("colspan", "6");
                gvInspectionDetails.Rows[this.EditIndexInspectionDetails].Cells[1].Visible = false;
                gvInspectionDetails.Rows[this.EditIndexInspectionDetails].Cells[2].Visible = false;
                gvInspectionDetails.Rows[this.EditIndexInspectionDetails].Cells[3].Visible = false;
                gvInspectionDetails.Rows[this.EditIndexInspectionDetails].Cells[4].Visible = false;
                gvInspectionDetails.Rows[this.EditIndexInspectionDetails].Cells[5].Visible = false;

            }
        }

        protected void btnInspectionDetailUpdate_Click(object sender, EventArgs e)
        {

            GridView gvQuestion1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("gvQuestion1onGridAddNew") as GridView;

            HtmlControl divAddNewInspectionPnl = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("divAddNewInspectionPnl") as HtmlControl;
            HtmlControl divAddNewbtnInspectionDetail = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("divAddNewbtnInspectionDetail") as HtmlControl;

            divAddNewInspectionPnl.Visible = false;
            divAddNewbtnInspectionDetail.Visible = true;

            this.EditIndexInspectionDetails = -1;
            BindGridInspectionDetail();
        }

        protected void lnkInspectionDetailUpdateCancel_Click(object sender, EventArgs e)
        {
            GridView gvQuestion1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("gvQuestion1onGridAddNew") as GridView;

            HtmlControl divAddNewInspectionPnl = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("divAddNewInspectionPnl") as HtmlControl;
            HtmlControl divAddNewbtnInspectionDetail = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("divAddNewbtnInspectionDetail") as HtmlControl;

            divAddNewInspectionPnl.Visible = false;
            divAddNewbtnInspectionDetail.Visible = true;
            this.EditIndexInspectionDetails = -1;
            BindGridInspectionDetail();
        }
        public void FillControlInspectionDetails(GridView gv, int EditInd)
        {
            try
            {
                GridView gvQuestion1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("gvQuestion1onGridAddNew") as GridView;
                GridView gvInspectionDetails = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("gvInspectionDetails") as GridView;


                TextBox txtDateEdit = gv.Rows[this.EditIndexInspectionDetails].FindControl("txtDateEdit") as TextBox;
                TextBox txtTypeEdit = gv.Rows[this.EditIndexInspectionDetails].FindControl("txtTypeEdit") as TextBox;
                TextBox txtResultEdit = gv.Rows[this.EditIndexInspectionDetails].FindControl("txtResultEdit") as TextBox;
                TextBox txtDoneByEdit = gv.Rows[this.EditIndexInspectionDetails].FindControl("txtDoneByEdit") as TextBox;

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

        protected void imgbtnEditInspectionDateail_Click(object sender, EventArgs e)
        {
            GridView gvQuestion1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("gvQuestion1onGridAddNew") as GridView;
            GridView gvInspectionDetails = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("gvInspectionDetails") as GridView;
            HtmlControl divAddNewInspectionPnl = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("divAddNewInspectionPnl") as HtmlControl;
            HtmlControl divAddNewbtnInspectionDetail = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("divAddNewbtnInspectionDetail") as HtmlControl;

            divAddNewInspectionPnl.Visible = false;
            divAddNewbtnInspectionDetail.Visible = true;
            this.EditIndexInspectionDetails = -1;

            ImageButton btnEdit = (ImageButton)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
                this.EditIndexInspectionDetails = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                BindGridInspectionDetail();
                //this. = ID;
                FillControlInspectionDetails(gvInspectionDetails, this.EditIndexInspectionDetails);
            }
        }

        protected void imgBtnDeleteInspectionDateail_Click(object sender, EventArgs e)
        {

        }

        protected void btnInspectionDetailsSave_Click(object sender, EventArgs e)
        {
            GridView gvQuestion1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("gvQuestion1onGridAddNew") as GridView;

            HtmlControl pnlInspectionDetailGrid = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("pnlInspectionDetailGrid") as HtmlControl;
            HtmlControl divAddNewInspectionPnl = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("divAddNewInspectionPnl") as HtmlControl;
            pnlInspectionDetailGrid.Visible = true;
            divAddNewInspectionPnl.Visible = false;

        }

        protected void btnRouteDetailsCancel_Click(object sender, EventArgs e)
        {
            this.EditIndex = -1;
            BindGridQuestion1();
        }
        protected void btnInspectionDetailsCancelGrid_Click(object sender, EventArgs e)
        {
            GridView gvQuestion1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("gvQuestion1onGridAddNew") as GridView;

            this.EditIndexINGrid = -1;
            BindGridQuestion1onGridAddNew();
        }

        protected void btnInspectionDetailsCancel_Click(object sender, EventArgs e)
        {
            GridView gvQuestion1onGridAddNew = gvQuestion1.Rows[this.EditIndex].FindControl("gvQuestion1onGridAddNew") as GridView;

            HtmlControl pnlInspectionDetailGrid = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("pnlInspectionDetailGrid") as HtmlControl;
            HtmlControl divAddNewInspectionPnl = gvQuestion1onGridAddNew.Rows[this.EditIndexINGrid].FindControl("divAddNewInspectionPnl") as HtmlControl;
            pnlInspectionDetailGrid.Visible = true;
            divAddNewInspectionPnl.Visible = false;

        }

        #endregion

    }
