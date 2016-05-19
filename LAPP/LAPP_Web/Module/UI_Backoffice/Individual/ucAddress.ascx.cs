using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System.Web.UI.HtmlControls;

namespace NVBMT_WebProject.Modules.IndiVidual
{

    public partial class ucAddress : System.Web.UI.UserControl
    {
        #region Class Members
        lapp_individual_address objlapp_individual_address = new lapp_individual_address();
        lapp_individual_addressBAL objlapp_individual_addressBAL = new lapp_individual_addressBAL();
        LAPP_application_status objLAPP_application_status = new LAPP_application_status();
        LAPP_application_statusBAL objLAPP_application_statusBAL = new LAPP_application_statusBAL();

        LAPP_exception_log objExLog = new LAPP_exception_log();
        LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
        LAPP_audit_info objAuditInfo = new LAPP_audit_info();
        LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
        #endregion

        #region Class Properties
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
        public int Address_Id
        {
            get
            {
                if (ViewState["Address_Id"] != null)
                {
                    return Convert.ToInt32(ViewState["Address_Id"]);
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                ViewState["Address_Id"] = value;
            }
        }
        public int EditIndexContact
        {
            get
            {
                if (ViewState["EditIndexContact"] != null)
                {
                    return Convert.ToInt32(ViewState["EditIndexContact"]);

                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["EditIndexContact"] = value;
            }
        }
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
        public SortDirection GridViewShortDirection
        {
            get
            {
                if (ViewState["sortDirection"] == null)
                    ViewState["sortDirection"] = SortDirection.Ascending;
                return (SortDirection)ViewState["sortDirection"];
            }
            set
            {
                ViewState["sortDirection"] = value;
            }
        }
        #endregion

        #region PageEventHandlers
        protected void Page_Load(object sender, EventArgs e)
        {
            ltrAddress.Text = "";
            if (!IsPostBack)
            {
                ltrAddress.Text = "";
                BindgridContact();
            }
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

        public void fillverifyresidenceaddressEdit()
        {
            TextBox txtStreet2Edit = gvAddress.Rows[this.EditIndex].FindControl("txtStreet2Edit") as TextBox;
            TextBox txtStreetEdit = gvAddress.Rows[this.EditIndex].FindControl("txtStreetEdit") as TextBox;
            TextBox txtCityEdit = gvAddress.Rows[this.EditIndex].FindControl("txtCityEdit") as TextBox;
            DropDownList ddlStateEdit = gvAddress.Rows[this.EditIndex].FindControl("ddlStateEdit") as DropDownList;
            TextBox txtZipEdit = gvAddress.Rows[this.EditIndex].FindControl("txtZipEdit") as TextBox;
            Label lblUHomeStreet1Edit = gvAddress.Rows[this.EditIndex].FindControl("lblUHomeStreet1Edit") as Label;
            Label lblUHomeStreet2Edit = gvAddress.Rows[this.EditIndex].FindControl("lblUHomeStreet2Edit") as Label;
            Label lblUHomeCityEdit = gvAddress.Rows[this.EditIndex].FindControl("lblUHomeCityEdit") as Label;
            Label lblUHomeStateEdit = gvAddress.Rows[this.EditIndex].FindControl("lblUHomeStateEdit") as Label;
            Label lblUHomeZipEdit = gvAddress.Rows[this.EditIndex].FindControl("lblUHomeZipEdit") as Label;
            Label lblVHomeStreet1Edit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeStreet1Edit") as Label;
            Label lblVHomeStreet2Edit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeStreet2Edit") as Label;
            Label lblVHomeCityEdit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeCityEdit") as Label;
            Label lblVHomeStateEdit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeStateEdit") as Label;
            Label lblVHomeZipEdit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeZipEdit") as Label;
            Label lblUnverifiedAddEdit = gvAddress.Rows[this.EditIndex].FindControl("lblUnverifiedAddEdit") as Label;
            Button btnVerifyHomeAddressNoEdit = gvAddress.Rows[this.EditIndex].FindControl("btnVerifyHomeAddressNoEdit") as Button;
            HtmlGenericControl divNotVerifiedAddEdit = gvAddress.Rows[this.EditIndex].FindControl("divNotVerifiedAddEdit") as HtmlGenericControl;

            txtStreetEdit.Text = AddressHelper.GetFormatedPOBOx(txtStreetEdit.Text);
            txtStreet2Edit.Text = AddressHelper.GetFormatedPOBOx(txtStreet2Edit.Text);

            lblUHomeStreet1Edit.Text = txtStreetEdit.Text;
            lblUHomeStreet2Edit.Text = txtStreet2Edit.Text;
            lblUHomeCityEdit.Text = txtCityEdit.Text;
            lblUHomeStateEdit.Text = ddlStateEdit.SelectedItem.Text;
            lblUHomeZipEdit.Text = txtZipEdit.Text;
            components objComponenets = GNF.APIAddressValidation.ValidateAddress(txtStreetEdit.Text, txtStreet2Edit.Text, txtCityEdit.Text, ddlStateEdit.SelectedValue, txtZipEdit.Text);
            if (objComponenets != null)
            {
                lblVHomeStreet1Edit.Text = objComponenets.street1;
                lblVHomeStreet2Edit.Text = objComponenets.street2;
                lblVHomeCityEdit.Text = objComponenets.city_name;
                lblVHomeStateEdit.Text = objComponenets.state_abbreviation;
                lblVHomeZipEdit.Text = objComponenets.zipcode;
                btnVerifyHomeAddressNoEdit.Enabled = true;
                divNotVerifiedAddEdit.Visible = true;
                lblUnverifiedAddEdit.Text = "";
            }
            else
            {
                btnVerifyHomeAddressNoEdit.Enabled = false;
                divNotVerifiedAddEdit.Visible = false;
                lblUnverifiedAddEdit.Text = "This is not a verified address.";
            }
        }
        protected void btnVerifyHomeAddressEdit_Click(object sender, EventArgs e)
        {
            Label lblVHomeStreet1Edit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeStreet1Edit") as Label;
            Label lblVHomeStreet2Edit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeStreet2Edit") as Label;
            Label lblVHomeCityEdit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeCityEdit") as Label;
            Label lblVHomeStateEdit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeStateEdit") as Label;
            Label lblVHomeZipEdit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeZipEdit") as Label;
            Label lblUnverifiedAddEdit = gvAddress.Rows[this.EditIndex].FindControl("lblUnverifiedAddEdit") as Label;
            HtmlGenericControl divVerifyHomeAddressBtnEdit = gvAddress.Rows[this.EditIndex].FindControl("divVerifyHomeAddressBtnEdit") as HtmlGenericControl;
            HtmlGenericControl divVerifyHomeAddressPnlEdit = gvAddress.Rows[this.EditIndex].FindControl("divVerifyHomeAddressPnlEdit") as HtmlGenericControl;

            divVerifyHomeAddressBtnEdit.Visible = false;
            divVerifyHomeAddressPnlEdit.Visible = true;
            lblVHomeStreet1Edit.Text = "";
            lblVHomeStreet2Edit.Text = "";
            lblVHomeCityEdit.Text = "";
            lblVHomeStateEdit.Text = "";
            lblVHomeZipEdit.Text = "";
            fillverifyresidenceaddressEdit();
        }
        protected void btnVerifyHomeAddressYesEdit_Click(object sender, EventArgs e)
        {
            HtmlGenericControl divVerifyHomeAddressBtnEdit = gvAddress.Rows[this.EditIndex].FindControl("divVerifyHomeAddressBtnEdit") as HtmlGenericControl;
            HtmlGenericControl divVerifyHomeAddressPnlEdit = gvAddress.Rows[this.EditIndex].FindControl("divVerifyHomeAddressPnlEdit") as HtmlGenericControl;
            divVerifyHomeAddressBtnEdit.Visible = true;
            divVerifyHomeAddressPnlEdit.Visible = false;
        }
        protected void btnVerifyHomeAddressNoEdit_Click(object sender, EventArgs e)
        {
            TextBox txtStreet2Edit = gvAddress.Rows[this.EditIndex].FindControl("txtStreet2Edit") as TextBox;
            TextBox txtStreetEdit = gvAddress.Rows[this.EditIndex].FindControl("txtStreetEdit") as TextBox;
            TextBox txtCityEdit = gvAddress.Rows[this.EditIndex].FindControl("txtCityEdit") as TextBox;
            DropDownList ddlStateEdit = gvAddress.Rows[this.EditIndex].FindControl("ddlStateEdit") as DropDownList;
            TextBox txtZipEdit = gvAddress.Rows[this.EditIndex].FindControl("txtZipEdit") as TextBox;
            Label lblVHomeStreet1Edit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeStreet1Edit") as Label;
            Label lblVHomeStreet2Edit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeStreet2Edit") as Label;
            Label lblVHomeCityEdit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeCityEdit") as Label;
            Label lblVHomeStateEdit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeStateEdit") as Label;
            Label lblVHomeZipEdit = gvAddress.Rows[this.EditIndex].FindControl("lblVHomeZipEdit") as Label;
            Label lblUnverifiedAddEdit = gvAddress.Rows[this.EditIndex].FindControl("lblUnverifiedAddEdit") as Label;
            HtmlGenericControl divVerifyHomeAddressBtnEdit = gvAddress.Rows[this.EditIndex].FindControl("divVerifyHomeAddressBtnEdit") as HtmlGenericControl;
            HtmlGenericControl divVerifyHomeAddressPnlEdit = gvAddress.Rows[this.EditIndex].FindControl("divVerifyHomeAddressPnlEdit") as HtmlGenericControl;
            divVerifyHomeAddressBtnEdit.Visible = true;
            divVerifyHomeAddressPnlEdit.Visible = false;
            txtStreetEdit.Text = lblVHomeStreet1Edit.Text;
            txtStreet2Edit.Text = lblVHomeStreet2Edit.Text;
            txtCityEdit.Text = lblVHomeCityEdit.Text;
            ddlStateEdit.SelectedValue = lblVHomeStateEdit.Text;
            txtZipEdit.Text = lblVHomeZipEdit.Text;
        }

        public void fillverifyresidenceaddress()
        {
            txtStreet.Text = AddressHelper.GetFormatedPOBOx(txtStreet.Text);
            txtStreet2.Text = AddressHelper.GetFormatedPOBOx(txtStreet2.Text);

            lblUHomeStreet1.Text = txtStreet.Text;
            lblUHomeStreet2.Text = txtStreet2.Text;
            lblUHomeCity.Text = txtCity.Text;
            lblUHomeState.Text = ddlState.SelectedItem.Text;
            lblUHomeZip.Text = txtZip.Text;
            components objComponenets = GNF.APIAddressValidation.ValidateAddress(txtStreet.Text, txtStreet2.Text, txtCity.Text, ddlState.SelectedValue, txtZip.Text);
            if (objComponenets != null)
            {
                lblVHomeStreet1.Text = objComponenets.street1;
                lblVHomeStreet2.Text = objComponenets.street2;
                lblVHomeCity.Text = objComponenets.city_name;
                lblVHomeState.Text = objComponenets.state_abbreviation;
                lblVHomeZip.Text = objComponenets.zipcode;
                btnVerifyHomeAddressNo.Enabled = true;
                divNotVerifiedAdd.Visible = true;
                lblUnverifiedAdd.Text = "";
            }
            else
            {
                btnVerifyHomeAddressNo.Enabled = false;
                divNotVerifiedAdd.Visible = false;
                lblUnverifiedAdd.Text = "This is not a verified address.";
            }
        }
        protected void btnVerifyHomeAddress_Click(object sender, EventArgs e)
        {
            divVerifyHomeAddressBtn.Visible = false;
            divVerifyHomeAddressPnl.Visible = true;
            lblVHomeStreet1.Text = "";
            lblVHomeStreet2.Text = "";
            lblVHomeCity.Text = "";
            lblVHomeState.Text = "";
            lblVHomeZip.Text = "";
            fillverifyresidenceaddress();
        }
        protected void btnVerifyHomeAddressYes_Click(object sender, EventArgs e)
        {
            divVerifyHomeAddressBtn.Visible = true;
            divVerifyHomeAddressPnl.Visible = false;
        }
        protected void btnVerifyHomeAddressNo_Click(object sender, EventArgs e)
        {
            divVerifyHomeAddressBtn.Visible = true;
            divVerifyHomeAddressPnl.Visible = false;
            txtStreet.Text = lblVHomeStreet1.Text;
            txtStreet2.Text = lblVHomeStreet2.Text;
            txtCity.Text = lblVHomeCity.Text;
            ddlState.SelectedValue = lblVHomeState.Text;
            txtZip.Text = lblVHomeZip.Text;
        }

        protected void btnAddressAddNew_Click(object sender, EventArgs e)
        {
            ltrAddress.Text = "";
            divAddPanelAddress.Visible = true;
            divAddbuttonAddress.Visible = false;
            DivbtnSaveCancel.Visible = true;
            this.EditIndex = -1;
            BindGridAddress();

        }

        protected void btnAddressUpdate_Click(object sender, EventArgs e)
        {
            try
            {

                if (this.Address_Id > 0)
                {

                    objlapp_individual_address = FetchValueFromControleEdit();
                    if (objlapp_individual_address != null)
                    {
                        objlapp_individual_addressBAL.Update_lapp_individual_address(objlapp_individual_address, this.Address_Id);
                        ltrAddress.Text = MessageBox.BuildValidationMessage("Updated Successfully", 1);
                        this.EditIndex = -1;
                        this.Address_Id = 0;
                        BindGridAddress();
                    }
                }

            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = "Error Occured-ucAddress.ascx-btnAddressUpdate_Click";

                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }

        }

        protected void lnkAddressCancelUpdate_Click(object sender, EventArgs e)
        {
            //clearcontrolEdit();
            ltrAddress.Text = "";
            this.EditIndex = -1;
            BindGridAddress();
        }

        protected void imgbtnEdit_Click(object sender, EventArgs e)
        {
            ltrAddress.Text = "";
            divAddPanelAddress.Visible = false;
            divAddbuttonAddress.Visible = true;
            DivbtnSaveCancel.Visible = false;
            this.EditIndex = -1;
            try
            {
                ImageButton btnEdit = (ImageButton)sender;
                if (btnEdit != null)
                {
                    int ID = Convert.ToInt32(btnEdit.CommandArgument);
                    this.Address_Id = ID;
                    this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                    BindGridAddress();
                    DropDownList ddlStatusEdit = gvAddress.Rows[this.EditIndex].FindControl("ddlStatusEdit") as DropDownList;
                    DropDownList ddlStateEdit = gvAddress.Rows[this.EditIndex].FindControl("ddlStateEdit") as DropDownList;

                    BindDropdownState(ddlStateEdit);
                    BindDDLStatusEdit(ddlStatusEdit);
                    FillControle(gvAddress, this.EditIndex);
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = "Error Occured-ucAddress.ascx-imgbtnEdit_Click";

                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }

        protected void imgBtnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                ImageButton lnkBtn = (ImageButton)sender;
                if (lnkBtn != null)
                {
                    int ID = Convert.ToInt32(lnkBtn.CommandArgument);
                    this.Address_Id = ID;
                    objlapp_individual_address = objlapp_individual_addressBAL.Get_lapp_individual_address_Get_by_Address_Id(ID);
                    if (objlapp_individual_address != null)
                    {
                        objlapp_individual_address.Is_Deleted = true;
                        objlapp_individual_addressBAL.Update_lapp_individual_address(objlapp_individual_address, objlapp_individual_address.Address_Id);
                        ltrAddress.Text = MessageBox.BuildValidationMessage("Deleted Successfully", 1);
                    }
                }
                BindGridAddress();
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = "Error Occured-ucAddress.ascx-imgBtnDelete_Click";

                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }

        protected void gvAddress_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            if (GridViewShortDirection == SortDirection.Ascending)
            {
                GridViewShortDirection = SortDirection.Descending;
            }
            else
            {
                GridViewShortDirection = SortDirection.Ascending;
            }
            gvAddress.PageIndex = e.NewPageIndex;
            this.BindGridAddress();
        }

        protected void btnAddressSave_Click(object sender, EventArgs e)
        {
            string Validation = Validate_ControlsSave();
            if (Validation == "")
            {
                Save();
                BindGridAddress();
                clearcontrol();
                divAddPanelAddress.Visible = false;
                divAddbuttonAddress.Visible = true;
                DivbtnSaveCancel.Visible = false;
            }
            else
            {
                MessageBox.Show(this.Page, Validation, 2);
                return;
            }
        }

        protected void lnkAddressCancel_Click(object sender, EventArgs e)
        {
            ltrAddress.Text = "";
            clearcontrol();
            BindGridAddress();
            divAddPanelAddress.Visible = false;
            divAddbuttonAddress.Visible = true;
            DivbtnSaveCancel.Visible = false;
            this.EditIndex = -1;
        }
        #endregion

        #region Address Panel
        #region Private_Method

        private lapp_individual_address FetchValueFromControle()
        {


            try
            {

                objlapp_individual_address = new lapp_individual_address();

                objlapp_individual_address.Status = ddlStatus.SelectedItem.Text.Trim();
                objlapp_individual_address.Street = txtStreet.Text.Trim();
                objlapp_individual_address.City = txtCity.Text.Trim();
                objlapp_individual_address.State = ddlState.SelectedItem.Text.Trim();
                objlapp_individual_address.Zip = txtZip.Text.Trim();
                objlapp_individual_address.Country = ddlCountry.SelectedItem.Text.Trim();
                objlapp_individual_address.Phone = "";
                objlapp_individual_address.Cell = "";
                objlapp_individual_address.Email = "";
                objlapp_individual_address.Date_of_Beginning = txtBeginning.Text.Trim();
                objlapp_individual_address.Date_of_Ending = txtEnding.Text.Trim();
                objlapp_individual_address.Comments = txtComments.Text.Trim();
                objlapp_individual_address.Status_ID = Convert.ToInt32(ddlStatus.SelectedValue);

                objlapp_individual_address.Individual_Id = this.Individual_Id;
                objlapp_individual_address.Created_By = UIHelper.UserIDBySession().ToString();
                objlapp_individual_address.Created_On = DateTime.Now;
                objlapp_individual_address.Is_Active = true;
                objlapp_individual_address.Is_Deleted = false;
                objlapp_individual_address.Modified_By = "";
                objlapp_individual_address.Modified_On = DateTime.Now;

                //}
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = "Error Occured-ucAddress.ascx-FetchValueFromControleEdit";

                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
                return null;
            }

            return objlapp_individual_address;

        }
        private lapp_individual_address FetchValueFromControleEdit()
        {

            try
            {
                objlapp_individual_address = new lapp_individual_address();

                DropDownList ddlStatusEdit = gvAddress.Rows[this.EditIndex].FindControl("ddlStatusEdit") as DropDownList;
                TextBox txtStreetEdit = gvAddress.Rows[this.EditIndex].FindControl("txtStreetEdit") as TextBox;
                TextBox txtCityEdit = gvAddress.Rows[this.EditIndex].FindControl("txtCityEdit") as TextBox;
                DropDownList ddlStateEdit = gvAddress.Rows[this.EditIndex].FindControl("ddlStateEdit") as DropDownList;
                TextBox txtZipEdit = gvAddress.Rows[this.EditIndex].FindControl("txtZipEdit") as TextBox;
                DropDownList ddlCountryEdit = gvAddress.Rows[this.EditIndex].FindControl("ddlCountryEdit") as DropDownList;
                TextBox txtPhoneEdit = gvAddress.Rows[this.EditIndex].FindControl("txtPhoneEdit") as TextBox;
                //TextBox txtCellEdit = gvAddress.Rows[this.EditIndex].FindControl("txtCellEdit") as TextBox;
                //TextBox txtEmailEdit = gvAddress.Rows[this.EditIndex].FindControl("txtEmailEdit") as TextBox;
                TextBox txtBeginningEdit = gvAddress.Rows[this.EditIndex].FindControl("txtBeginningEdit") as TextBox;
                TextBox txtEndingEdit = gvAddress.Rows[this.EditIndex].FindControl("txtEndingEdit") as TextBox;
                TextBox txtCommentsEdit = gvAddress.Rows[this.EditIndex].FindControl("txtCommentsEdit") as TextBox;
                TextBox txtCreatedEdit = gvAddress.Rows[this.EditIndex].FindControl("txtCreatedEdit") as TextBox;
                TextBox txtCreatedByEdit = gvAddress.Rows[this.EditIndex].FindControl("txtCreatedByEdit") as TextBox;
                TextBox txtModifiedEdit = gvAddress.Rows[this.EditIndex].FindControl("txtModifiedEdit") as TextBox;
                TextBox txtModifiedByEdit = gvAddress.Rows[this.EditIndex].FindControl("txtModifiedByEdit") as TextBox;
                if (this.Address_Id > 0)
                {
                    objlapp_individual_address = objlapp_individual_addressBAL.Get_lapp_individual_address_Get_by_Address_Id(this.Address_Id);
                    if (objlapp_individual_address != null)
                    {
                        objlapp_individual_address.Status = ddlStatusEdit.SelectedItem.Text.Trim();
                        objlapp_individual_address.Street = txtStreetEdit.Text.Trim();
                        objlapp_individual_address.City = txtCityEdit.Text.Trim();
                        objlapp_individual_address.State = ddlStateEdit.SelectedValue.Trim();
                        objlapp_individual_address.Zip = txtZipEdit.Text.Trim();
                        objlapp_individual_address.Country = ddlCountryEdit.SelectedValue.Trim();
                        objlapp_individual_address.Phone = "";
                        objlapp_individual_address.Cell = "";
                        objlapp_individual_address.Email = "";
                        objlapp_individual_address.Date_of_Beginning = txtBeginningEdit.Text.Trim();
                        objlapp_individual_address.Date_of_Ending = txtEndingEdit.Text.Trim();
                        objlapp_individual_address.Comments = txtCommentsEdit.Text.Trim();
                        objlapp_individual_address.Status_ID = Convert.ToInt32(ddlStatusEdit.SelectedValue);

                        objlapp_individual_address.Created_On = DateTime.Now;
                        objlapp_individual_address.Created_By = UIHelper.UserIDBySession().ToString();
                        objlapp_individual_address.Modified_On = DateTime.Now;
                        objlapp_individual_address.Modified_By = UIHelper.UserIDBySession().ToString();

                        txtCreatedByEdit.Enabled = false;
                        txtCreatedEdit.Enabled = false;
                        txtModifiedByEdit.Enabled = false;
                        txtModifiedEdit.Enabled = false;
                    }
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = "Error Occured-ucAddress.ascx-FetchValueFromControleEdit";

                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }

            return objlapp_individual_address;

        }
        private void clearcontrol()
        {
            ddlStatus.SelectedValue = "-1";
            txtStreet.Text = string.Empty;
            txtCity.Text = string.Empty;
            ddlState.SelectedValue = "-1";
            txtZip.Text = string.Empty;
            ddlCountry.SelectedValue = "-1";
            //txtPhone.Text = string.Empty;
            //txtCell.Text = string.Empty;
            //txtEmail.Text = string.Empty;
            txtBeginning.Text = string.Empty;
            txtEnding.Text = string.Empty;
            txtComments.Text = string.Empty;
            this.EditIndex = -1;
        }
        #endregion

        #region Public_Methods


        private void BindDropdownState(DropDownList ddl)
        {
            try
            {

                ddl.Items.Clear();
                LAPP_state_codeBAL objStateBal = new LAPP_state_codeBAL();
                List<LAPP_state_code> lstStateCd = new List<LAPP_state_code>();
                if (Session["lstStateCd"] == null)
                {
                    lstStateCd = objStateBal.Get_All_LAPP_state_code();
                    Session["lstStateCd"] = lstStateCd;
                }
                else
                {
                    lstStateCd = (List<LAPP_state_code>)Session["lstStateCd"];
                }
                if (lstStateCd != null)
                {
                    ddl.DataSource = lstStateCd;
                    ddl.DataTextField = "state_name";
                    ddl.DataValueField = "state_code";
                    ddl.DataBind();
                }
                ddl.Items.Insert(0, new ListItem("Select", "-1"));
                ddl.SelectedValue = "-1";
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucNewApplication.ascx.cs BindDropdownState";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }

        }
        public void Save()
        {
            try
            {


                objlapp_individual_address = FetchValueFromControle();
                if (objlapp_individual_address != null)
                {
                    if (objlapp_individual_address.Address_Id > 0)
                    {
                        objlapp_individual_addressBAL.Update_lapp_individual_address(objlapp_individual_address, objlapp_individual_address.Address_Id);
                        ltrAddress.Text = MessageBox.BuildValidationMessage("Updated Successfully", 1);
                    }
                    else
                    {
                        objlapp_individual_addressBAL.Save_lapp_individual_address(objlapp_individual_address);
                        ltrAddress.Text = MessageBox.BuildValidationMessage("Saved Successfully", 1);
                    }

                }


            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }

        }
        public void BindGridAddress()
        {
            try
            {
                List<lapp_individual_address> lstlapp_individual_address = new List<lapp_individual_address>();
                lstlapp_individual_address = objlapp_individual_addressBAL.Get_lapp_individual_address_Get_by_Individual_Id(this.Individual_Id);
                if (lstlapp_individual_address != null && lstlapp_individual_address.Count > 0)
                {
                    lstlapp_individual_address = lstlapp_individual_address.OrderByDescending(x => x.Created_On).ToList();
                    gvAddress.DataSource = lstlapp_individual_address;

                    gvAddress.EditIndex = this.EditIndex;
                    gvAddress.DataBind();

                    if (this.EditIndex >= 0)
                    {
                        gvAddress.Rows[this.EditIndex].CssClass = "RowInEditMode";
                        gvAddress.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "4");
                        gvAddress.Rows[this.EditIndex].Cells[1].Visible = false;

                    }
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = "Error Occured-ucAddress.ascx-BindGridAddress";

                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }
        public void BindDDLStatus()
        {
            List<LAPP_application_status> lstLAPP_application_status = new List<LAPP_application_status>();
            lstLAPP_application_status = objLAPP_application_statusBAL.LAPP_application_status_get_by_Status_Type_Id((int)eTabStatusType.Address);
            if (lstLAPP_application_status != null && lstLAPP_application_status.Count > 0)
            {
                ddlStatus.DataSource = lstLAPP_application_status;
                ddlStatus.DataTextField = "Name";
                ddlStatus.DataValueField = "status_id";
                ddlStatus.DataBind();
            }
            ddlStatus.Items.Insert(0, new ListItem("Select", "-1"));
        }
        public void BindDDLStatusEdit(DropDownList ddlSta)
        {
            List<LAPP_application_status> lstLAPP_application_status = new List<LAPP_application_status>();
            lstLAPP_application_status = objLAPP_application_statusBAL.LAPP_application_status_get_by_Status_Type_Id((int)eTabStatusType.Address);
            if (lstLAPP_application_status != null && lstLAPP_application_status.Count > 0)
            {
                ddlSta.DataSource = lstLAPP_application_status;
                ddlSta.DataTextField = "Name";
                ddlSta.DataValueField = "status_id";
                ddlSta.DataBind();
            }
            ddlSta.Items.Insert(0, new ListItem("Select", "-1"));
        }

        public string Validate_ControlsEdit()
        {
            ltrAddress.Text = "";
            string validateMsg = "";
            string vmsg = "";
            try
            {
                DropDownList ddlStatusEdit = gvAddress.Rows[this.EditIndex].FindControl("ddlStatusEdit") as DropDownList;
                TextBox txtStreetEdit = gvAddress.Rows[this.EditIndex].FindControl("txtStreetEdit") as TextBox;
                TextBox txtCityEdit = gvAddress.Rows[this.EditIndex].FindControl("txtCityEdit") as TextBox;
                DropDownList ddlStateEdit = gvAddress.Rows[this.EditIndex].FindControl("ddlStateEdit") as DropDownList;
                TextBox txtZipEdit = gvAddress.Rows[this.EditIndex].FindControl("txtZipEdit") as TextBox;
                DropDownList ddlCountryEdit = gvAddress.Rows[this.EditIndex].FindControl("ddlCountryEdit") as DropDownList;
                TextBox txtPhoneEdit = gvAddress.Rows[this.EditIndex].FindControl("txtPhoneEdit") as TextBox;
                //TextBox txtCellEdit = gvAddress.Rows[this.EditIndex].FindControl("txtCellEdit") as TextBox;
                //TextBox txtEmailEdit = gvAddress.Rows[this.EditIndex].FindControl("txtEmailEdit") as TextBox;
                TextBox txtBeginningEdit = gvAddress.Rows[this.EditIndex].FindControl("txtBeginningEdit") as TextBox;
                TextBox txtEndingEdit = gvAddress.Rows[this.EditIndex].FindControl("txtEndingEdit") as TextBox;



                validateMsg += ValidationHelper.IsRequiredDDL(ddlStatusEdit.Text, "<li>Please select status.</li>");
                validateMsg += ValidationHelper.IsRequired(txtStreetEdit.Text, "<li>Please enter street.</li>");
                validateMsg += ValidationHelper.IsOnlyAlphabet(txtCityEdit.Text, "<li>Please enter city.</li>");
                validateMsg += ValidationHelper.IsRequiredDDL(ddlStateEdit.Text, "<li>Please select state.</li>");
                validateMsg += ValidationHelper.IsValidUSZIP(txtZipEdit.Text, "<li>Please enter valid zip code eg: xxxxx-xxxx or xxxxx</li>");
                validateMsg += ValidationHelper.IsRequiredDDL(ddlCountryEdit.Text, "<li>Please select country.</li>");
                //validateMsg += ValidationHelper.IsValidEmails(txtEmailEdit.Text, "<li>Please enter valid email.</li>");
                validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtBeginningEdit.Text, "<li>Please enter date of beginning.</li>");
                validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtEndingEdit.Text, "<li>Please enter date of ending.</li>");

                //if (txtCell.Text != "")
                //{
                //    validateMsg += ValidationHelper.IsValidUSPhoneNo(txtCellEdit.Text, "<li>Please enter valid cell number.</li>");

                //}
                //if (txtPhone.Text != "")
                //{
                //    validateMsg += ValidationHelper.IsValidUSPhoneNo(txtPhoneEdit.Text, "<li>Please enter valid phone number.</li>");
                //}


                if (!String.IsNullOrEmpty(validateMsg))
                {
                    vmsg = validateMsg;
                    ltrAddress.Text = MessageBox.BuildValidationMessage(vmsg, 2);

                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = "Error Occured-ucAddress.ascx-Validate_ControlsSave";

                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
            return vmsg;
        }
        public string Validate_ControlsSave()
        {
            string validateMsg = "";
            string vmsg = "";
            ltrAddress.Text = "";
            try
            {

                validateMsg += ValidationHelper.IsRequiredDDL(ddlStatus.Text, "<li>Please select status.</li>");
                validateMsg += ValidationHelper.IsRequired(txtStreet.Text, "<li>Please enter Street.</li>");
                validateMsg += ValidationHelper.IsOnlyAlphabet(txtCity.Text, "<li>Please enter city.</li>");
                validateMsg += ValidationHelper.IsRequiredDDL(ddlState.Text, "<li>Please select state.</li>");
                validateMsg += ValidationHelper.IsValidUSZIP(txtZip.Text, "<li>Please enter valid zip code eg: xxxxx-xxxx or xxxxx</li>");
                validateMsg += ValidationHelper.IsRequiredDDL(ddlCountry.Text, "<li>Please select country.</li>");
                //validateMsg += ValidationHelper.IsValidEmails(txtEmail.Text, "<li>Please enter valid email.</li>");
                validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtBeginning.Text, "<li>Please enter date of beginning.</li>");
                validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtEnding.Text, "<li>Please enter date of ending.</li>");

                //if (txtCell.Text != "")
                //{
                //    validateMsg += ValidationHelper.IsValidUSPhoneNo(txtCell.Text, "<li>Please enter valid cell Number.</li>");

                //}
                //if (txtPhone.Text != "")
                //{
                //    validateMsg += ValidationHelper.IsValidUSPhoneNo(txtPhone.Text, "<li>Please enter valid phone number.</li>");
                //}


                if (!String.IsNullOrEmpty(validateMsg))
                {
                    vmsg = validateMsg;
                    ltrAddress.Text = MessageBox.BuildValidationMessage(vmsg, 2);

                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = "Error Occured-ucAddress.ascx-Validate_ControlsSave";

                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
            return vmsg;
        }
        public LAPP_exception_log Fetchlog()
        {
            objExLog.User_Id = UIHelper.UserIDBySession();
            objExLog.Url = string.Empty;
            objExLog.Reference_Type_Id = string.Empty;
            objExLog.Reference_Id = 1;
            objExLog.Thread = ErrorMessage.ErrorOccured();
            objExLog.Date = DateTime.Now;
            objExLog.Level = "Low";
            objExLog.Logger = "errorLogger";
            return objExLog;
        }
        public void FillControle(GridView gv, int EditInd)
        {
            try
            {


                TextBox txtBeginningEdit = gv.Rows[this.EditIndex].FindControl("txtBeginningEdit") as TextBox;
                DropDownList ddlStatusEdit = gv.Rows[this.EditIndex].FindControl("ddlStatusEdit") as DropDownList;
                TextBox txtEndingEdit = gv.Rows[this.EditIndex].FindControl("txtEndingEdit") as TextBox;
                TextBox txtStreetEdit = gv.Rows[this.EditIndex].FindControl("txtStreetEdit") as TextBox;
                TextBox txtCityEdit = gv.Rows[this.EditIndex].FindControl("txtCityEdit") as TextBox;
                DropDownList ddlStateEdit = gv.Rows[this.EditIndex].FindControl("ddlStateEdit") as DropDownList;
                TextBox txtZipEdit = gv.Rows[this.EditIndex].FindControl("txtZipEdit") as TextBox;
                //TextBox txtCellEdit = gv.Rows[this.EditIndex].FindControl("txtCellEdit") as TextBox;
                //TextBox txtPhoneEdit = gv.Rows[this.EditIndex].FindControl("txtPhoneEdit") as TextBox;
                //TextBox txtEmailEdit = gv.Rows[this.EditIndex].FindControl("txtEmailEdit") as TextBox;
                TextBox txtCommentsEdit = gv.Rows[this.EditIndex].FindControl("txtCommentsEdit") as TextBox;
                DropDownList ddlCountryEdit = gv.Rows[this.EditIndex].FindControl("ddlCountryEdit") as DropDownList;
                TextBox txtCreatedEdit = gv.Rows[this.EditIndex].FindControl("txtCreatedEdit") as TextBox;
                TextBox txtCreatedByEdit = gv.Rows[this.EditIndex].FindControl("txtCreatedByEdit") as TextBox;
                TextBox txtModifiedEdit = gv.Rows[this.EditIndex].FindControl("txtModifiedEdit") as TextBox;
                TextBox txtModifiedByEdit = gv.Rows[this.EditIndex].FindControl("txtModifiedByEdit") as TextBox;

                objlapp_individual_address = objlapp_individual_addressBAL.Get_lapp_individual_address_Get_by_Address_Id(this.Address_Id);
                if (objlapp_individual_address != null)
                {

                    ddlStatusEdit.SelectedValue = objlapp_individual_address.Status_ID.ToString();
                    //txtPhoneEdit.Text = objlapp_individual_address.Phone;
                    ddlStateEdit.SelectedValue = objlapp_individual_address.State;
                    ddlCountryEdit.SelectedValue = objlapp_individual_address.Country;
                    //txtEmailEdit.Text = objlapp_individual_address.Email;
                    txtBeginningEdit.Text = objlapp_individual_address.Date_of_Beginning;
                    txtEndingEdit.Text = objlapp_individual_address.Date_of_Ending;
                    txtStreetEdit.Text = objlapp_individual_address.Street;
                    txtCityEdit.Text = objlapp_individual_address.City;
                    txtZipEdit.Text = objlapp_individual_address.Zip;
                    //txtCellEdit.Text = objlapp_individual_address.Cell;
                    txtCommentsEdit.Text = objlapp_individual_address.Comments;
                    txtCreatedEdit.Text = objlapp_individual_address.Created_On.ToShortDateString();
                    txtCreatedByEdit.Text = objlapp_individual_address.Created_by_Name;
                    txtModifiedEdit.Text = objlapp_individual_address.Modified_On.ToShortDateString();
                    txtModifiedByEdit.Text = objlapp_individual_address.Modified_by_Name;

                    txtCreatedEdit.Enabled = false;
                    txtCreatedByEdit.Enabled = false;
                    txtModifiedEdit.Enabled = false;
                    txtModifiedByEdit.Enabled = false;
                }
                else
                {

                }
            }

            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = "Error Occured-ucAddress.ascx-FillControle";

                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }
        public void OnPageLoad()
        {
            BindDropdownState(ddlState);
            BindGridAddress();
            BindDDLStatus();


        }

        #endregion

        #endregion

        #region Contact Panel
        #region Private Method

        private void FillControlContact(GridView gv, int EditInd)
        {
            TextBox txtEmailEdit = gv.Rows[EditIndexContact].FindControl("txtEmailEdit") as TextBox;
            CheckBox chkPrefrencesEdit = gv.Rows[EditIndexContact].FindControl("chkPrefrencesEdit") as CheckBox;
            DropDownList ddlContactTypeEdit = gv.Rows[EditIndexContact].FindControl("ddlContactTypeEdit") as DropDownList;

            chkPrefrencesEdit.Checked = true;
            txtEmailEdit.Text = "Joe@example.com";
            ddlContactTypeEdit.SelectedItem.Text = "Email";

        }

        #endregion

        #region Public Method

        private void BindgridContact()
        {
            ArrayList ArryListName = new ArrayList();
            ArryListName.Add("GIC");


            gvContact.EditIndex = this.EditIndexContact;
            gvContact.DataSource = ArryListName;
            gvContact.DataBind();

            if (this.EditIndexContact >= 0)
            {
                gvContact.Rows[this.EditIndexContact].CssClass = "RowInEditMode";
                gvContact.Rows[this.EditIndexContact].Cells[0].Attributes.Add("colspan", "4");
                gvContact.Rows[this.EditIndexContact].Cells[1].Visible = false;
                gvContact.Rows[this.EditIndexContact].Cells[2].Visible = false;
                gvContact.Rows[this.EditIndexContact].Cells[3].Visible = false;

            }
        }

        #endregion

        #region PageEvantHandler

        protected void imgbtnContactEdit_Click(object sender, EventArgs e)
        {
            try
            {
                ImageButton btnEdit = (ImageButton)sender;
                if (btnEdit != null)
                {
                    int ID = Convert.ToInt32(btnEdit.CommandArgument);
                    this.EditIndexContact = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                    BindgridContact();
                    FillControlContact(gvContact, this.EditIndexContact);
                }

                divAddbuttonContact.Visible = true;
                divAddPanelContact.Visible = false;
            }
            catch (Exception ex)
            { }
        }
        protected void btnContactAddNew_Click(object sender, EventArgs e)
        {
            divAddbuttonContact.Visible = false;
            divAddPanelContact.Visible = true;
            this.EditIndexContact = -1;
            BindgridContact();
        }
        protected void btnSaveContact_Click(object sender, EventArgs e)
        {
            divAddbuttonContact.Visible = true;
            divAddPanelContact.Visible = false;

        }
        protected void btnCoresspodenceUpdate_Click(object sender, EventArgs e)
        {
            this.EditIndexContact = -1;
            BindgridContact();
        }
        protected void btnCancelContact_Click(object sender, EventArgs e)
        {
            this.EditIndexContact = -1;
            BindgridContact();
            divAddbuttonContact.Visible = true;
            divAddPanelContact.Visible = false;
        }
        protected void lnkCoresspodenceCancelUpdate_Click(object sender, EventArgs e)
        {
            this.EditIndexContact = -1;
            BindgridContact();
        }
        protected void imgBtnContactDelete_Click(object sender, ImageClickEventArgs e)
        {

        }

        #endregion
        #endregion
    }
}