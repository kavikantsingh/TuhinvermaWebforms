using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using LAPP.BAL;

namespace NVBMT_WebProject.Modules.IndiVidual
{
    public partial class ucName : System.Web.UI.UserControl
    {
        public event EventHandler UCClickName;
        public event EventHandler UCClick2;

        #region ClassProperties

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

        public int Name_id
        {
            get
            {
                if (ViewState["Name_id"] != null)
                {
                    return Convert.ToInt32(ViewState["Name_id"]);
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                ViewState["Name_id"] = value;
            }
        }

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

        #endregion

        #region ClassMembers

        LAPP_exception_log objExLog = new LAPP_exception_log();
        LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
        LAPP_audit_info objAuditInfo = new LAPP_audit_info();
        LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
        LAPP_individual_names objindividual_names = new LAPP_individual_names();
        LAPP_individual_namesBAL objLAPP_individual_namesBAL = new LAPP_individual_namesBAL();
        LAPP_application_statusBAL objLAPP_application_statusBAL = new LAPP_application_statusBAL();

        #endregion

        #region PageEventHandler

        protected void Page_Load(object sender, EventArgs e)
        {
            ltrName.Text = "";
            if (!IsPostBack)
            {
                ltrName.Text = "";
            }
        }

        protected void btnShowHistory_Click(object sender, EventArgs e)
        {
            btnShowHistory.Enabled = false;
            lnkNext.Enabled = true;
            lnkPrev.Enabled = true;
            btnShowCurrent.Enabled = true;
        }

        protected void btnShowCurrent_Click(object sender, EventArgs e)
        {
            btnShowHistory.Enabled = true;
            lnkNext.Enabled = false;
            lnkPrev.Enabled = false;
            btnShowCurrent.Enabled = false;
        }


        protected void lnkCancel_Click1(object sender, EventArgs e)
        {
            DivbtnHistory.Visible = true;
            ltrName.Text = "";
            pnlAddNew.Visible = false;
            pnlAddNewButton.Visible = true;
            ClearControl();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            string Validation = Validate_ControlsSave();
            if (Validation == "")
            {
                Save();
                BindGrid();
                ClearControl();
                if (UCClickName != null) UCClickName(this, e);

            }
            else
            {
                MessageBox.Show(this.Page, Validation, 2);
                return;
            }
            DivbtnHistory.Visible = true;
            pnlAddNew.Visible = false;
            pnlAddNewButton.Visible = true;
        }

        protected void btnSaveName_Click(object sender, EventArgs e)
        {
            pnlAddNew.Visible = false;
            pnlAddNewButton.Visible = true;
        }

        protected void lnkCancel_Click(object sender, EventArgs e)
        {
            ltrName.Text = "";
            pnlAddNew.Visible = false;
            pnlAddNewButton.Visible = true;
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            DivbtnHistory.Visible = false;
            ltrName.Text = "";
            pnlAddNew.Visible = true;
            pnlAddNewButton.Visible = false;
            this.EditIndex = -1;
            BindGrid();
        }

        protected void lnkCancelUpdate_Click(object sender, EventArgs e)
        {
            DivbtnHistory.Visible = true;
            ltrName.Text = "";
            this.EditIndex = -1;
            BindGrid();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            try
            {


                if (this.Name_id > 0)
                {
                    string Validation = Validate_ControlsEdit();
                    if (Validation == "")
                    {
                        objindividual_names = FetchValueFromControlEdit();
                        if (objindividual_names != null)
                        {
                            objLAPP_individual_namesBAL.Update_LAPP_individual_names(objindividual_names, this.Name_id);
                            ltrName.Text = MessageBox.BuildValidationMessage("Updated Successfully", 1);
                            this.EditIndex = -1;
                            this.Name_id = 0;
                            BindGrid();
                            if (UCClickName != null) UCClickName(this, e);
                        }
                    }
                    else
                    {
                        MessageBox.Show(this.Page, Validation, 2);
                        return;
                    }
                }
                DivbtnHistory.Visible = true;
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

        protected void imgbtnEdit_Click(object sender, EventArgs e)
        {
            DivbtnHistory.Visible = false;
            pnlAddNew.Visible = false;
            pnlAddNewButton.Visible = true;
            this.EditIndex = -1;

            ImageButton btnEdit = (ImageButton)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
                this.Name_id = ID;
                this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                BindGrid();

                DropDownList ddlStatusEdit = gvName.Rows[this.EditIndex].FindControl("ddlStatusEdit") as DropDownList;
                if (ddlStatusEdit != null)
                {
                    BindDDLStatusEdit(ddlStatusEdit);
                }
                //this. = ID;
                FillControl(gvName, this.EditIndex);
            }
        }

        protected void imgBtnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                ImageButton BtnDelete = (ImageButton)sender;
                if (BtnDelete != null)
                {
                    int ID = Convert.ToInt32(BtnDelete.CommandArgument);
                    this.Name_id = ID;
                    objindividual_names = objLAPP_individual_namesBAL.Get_LAPP_individual_names_Get_BY_ID(this.Name_id);
                    if (objindividual_names != null)
                    {
                        objindividual_names.Is_Deleted = true;
                        objLAPP_individual_namesBAL.Update_LAPP_individual_names(objindividual_names, objindividual_names.Name_id);
                        ltrName.Text = MessageBox.BuildValidationMessage("Deleted Successfully", 1);
                    }
                }
                BindGrid();
            }
            catch (Exception ex)
            {

            }
        }

        #endregion

        #region Public_Methods

        public void BindGrid()
        {
            objindividual_names = new LAPP_individual_names();
            List<LAPP_individual_names> lstLAPP_individual_names = new List<LAPP_individual_names>();
            lstLAPP_individual_names = objLAPP_individual_namesBAL.Get_LAPP_individual_names_Get_BY_Indiviual_Id(this.Individual_Id);
            if (lstLAPP_individual_names != null && lstLAPP_individual_names.Count > 0)
            {
                lstLAPP_individual_names = lstLAPP_individual_names.OrderByDescending(x => x.Created_On).ToList();
                gvName.DataSource = lstLAPP_individual_names;

                gvName.EditIndex = this.EditIndex;
                gvName.DataBind();

                if (this.EditIndex >= 0)
                {
                    gvName.Rows[this.EditIndex].CssClass = "RowInEditMode";
                    gvName.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "4");
                    gvName.Rows[this.EditIndex].Cells[1].Visible = false;
                    // gvName.Rows[this.EditIndex].Cells[2].Visible = false;
                    //gvName.Rows[this.EditIndex].Cells[3].Visible = false;
                    //gvName.Rows[this.EditIndex].Cells[4].Visible = false;

                }
            }
        }
        public void FillControl(GridView gv, int EditInd)
        {
            try
            {
                TextBox txtCommentsEdit = gv.Rows[this.EditIndex].FindControl("txtCommentsEdit") as TextBox;
                DropDownList ddlStatusEdit = gv.Rows[this.EditIndex].FindControl("ddlStatusEdit") as DropDownList;
                TextBox txtDateOfBeganEdit = gv.Rows[this.EditIndex].FindControl("txtDateOfBeganEdit") as TextBox;
                TextBox txtDateOfEndedEdit = gv.Rows[this.EditIndex].FindControl("txtDateOfEndedEdit") as TextBox;
                TextBox txtPreviousNameEdit = gv.Rows[this.EditIndex].FindControl("txtPreviousNameEdit") as TextBox;
                TextBox txtSuffixEdit = gv.Rows[this.EditIndex].FindControl("txtSuffixEdit") as TextBox;
                TextBox txtMiddleNameEdit = gv.Rows[this.EditIndex].FindControl("txtMiddleNameEdit") as TextBox;
                TextBox txtFirstNameEdit = gv.Rows[this.EditIndex].FindControl("txtFirstNameEdit") as TextBox;
                TextBox txtLastNameEdit = gv.Rows[this.EditIndex].FindControl("txtLastNameEdit") as TextBox;
                TextBox txtCreatedEdit = gv.Rows[this.EditIndex].FindControl("txtCreatedEdit") as TextBox;
                TextBox txtCreatedByEdit = gv.Rows[this.EditIndex].FindControl("txtCreatedByEdit") as TextBox;
                TextBox txtModifiedEdit = gv.Rows[this.EditIndex].FindControl("txtModifiedEdit") as TextBox;
                TextBox txtModifiedByEdit = gv.Rows[this.EditIndex].FindControl("txtModifiedByEdit") as TextBox;
                objindividual_names = objLAPP_individual_namesBAL.Get_LAPP_individual_names_Get_BY_ID(this.Name_id);
                if (objindividual_names != null)
                {
                    txtLastNameEdit.Text = objindividual_names.Last_Name;
                    txtFirstNameEdit.Text = objindividual_names.First_Name;
                    txtMiddleNameEdit.Text = objindividual_names.Middle_Name;
                    txtPreviousNameEdit.Text = objindividual_names.Maiden_Name;
                    txtSuffixEdit.Text = objindividual_names.Suffix;
                    ddlStatusEdit.SelectedValue = objindividual_names.Status_ID.ToString();
                    txtDateOfBeganEdit.Text = objindividual_names.Date_Of_Beginning;
                    txtDateOfEndedEdit.Text = objindividual_names.Date_Of_Ending;
                    txtCommentsEdit.Text = objindividual_names.Comments;
                    txtCreatedEdit.Text = objindividual_names.Created_On.ToShortDateString();
                    txtCreatedByEdit.Text = objindividual_names.Created_by_Name;
                    txtModifiedEdit.Text = objindividual_names.Modified_On.ToShortDateString();
                    txtModifiedByEdit.Text = objindividual_names.Modified_by_Name;

                    txtCreatedEdit.Enabled = false;
                    txtCreatedByEdit.Enabled = false;
                    txtModifiedEdit.Enabled = false;
                    txtModifiedByEdit.Enabled = false;
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
        public LAPP_exception_log Fetchlog()
        {
            objExLog.User_Id = UIHelper.UserIDBySession();
            objExLog.Url = string.Empty;
            objExLog.Reference_Type_Id = string.Empty;
            objExLog.Reference_Id = 1;
            //objExLog.Thread = ErrorMessage.ErrorOccured();
            objExLog.Date = DateTime.Now;
            objExLog.Level = "Low";
            objExLog.Logger = "errorLogger";
            return objExLog;
        }
        public void Save()
        {
            try
            {
                objindividual_names = FetchValueFromControl();
                if (objindividual_names != null && this.Name_id > 0)
                {
                    objLAPP_individual_namesBAL.Update_LAPP_individual_names(objindividual_names, this.Name_id);
                    ltrName.Text = MessageBox.BuildValidationMessage("Updated Successfully", 1);
                }
                else
                {
                    objLAPP_individual_namesBAL.Save_LAPP_individual_names(objindividual_names);
                    ltrName.Text = MessageBox.BuildValidationMessage("Saved Successfully", 1);
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
        public void BindDDLStatus()
        {
            List<LAPP_application_status> lstLAPP_application_status = new List<LAPP_application_status>();
            lstLAPP_application_status = objLAPP_application_statusBAL.LAPP_application_status_get_by_Status_Type_Id((int)eTabStatusType.Names);
            if (lstLAPP_application_status != null && lstLAPP_application_status.Count > 0)
            {
                ddlStatus.DataSource = lstLAPP_application_status;
                ddlStatus.DataTextField = "Name";
                ddlStatus.DataValueField = "status_id";
                ddlStatus.DataBind();
            }
            ddlStatus.Items.Insert(0, new ListItem("Select", "-1"));
        }
        public void BindDDLStatusEdit(DropDownList ddlStatusEdit)
        {
            List<LAPP_application_status> lstLAPP_application_status = new List<LAPP_application_status>();
            lstLAPP_application_status = objLAPP_application_statusBAL.LAPP_application_status_get_by_Status_Type_Id((int)eTabStatusType.Names);
            if (lstLAPP_application_status != null && lstLAPP_application_status.Count > 0)
            {
                ddlStatusEdit.DataSource = lstLAPP_application_status;
                ddlStatusEdit.DataTextField = "Name";
                ddlStatusEdit.DataValueField = "status_id";
                ddlStatusEdit.DataBind();
            }
            //ddlStatusEdit.Items.Insert(0, new ListItem("Select", "-1"));
        }
        public void ClearControl()
        {
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtMiddleName.Text = string.Empty;
            txtPreviousName.Text = string.Empty;
            txtSuffix.Text = string.Empty;
            ddlStatus.SelectedValue = "-1";
            txtDateOfBegan.Text = string.Empty;
            txtDateOfEnded.Text = string.Empty;
            txtComments.Text = string.Empty;
        }
        public void OnPageLoad()
        {
            BindDDLStatus();
            BindGrid();

        }
        #endregion

        #region Private_Methods

        private LAPP_individual_names FetchValueFromControl()
        {
            try
            {
                objindividual_names = new LAPP_individual_names();
                objindividual_names.First_Name = txtFirstName.Text.Trim();
                objindividual_names.Last_Name = txtLastName.Text.Trim();
                objindividual_names.Middle_Name = txtMiddleName.Text.Trim();
                objindividual_names.Suffix = txtSuffix.Text.Trim();
                objindividual_names.Maiden_Name = txtPreviousName.Text;
                objindividual_names.Individual_Id = this.Individual_Id;
                objindividual_names.Status_ID = Convert.ToInt32(ddlStatus.SelectedValue);
                objindividual_names.Status = ddlStatus.SelectedItem.Text;
                objindividual_names.Date_Of_Beginning = txtDateOfBegan.Text.Trim();
                objindividual_names.Date_Of_Ending = txtDateOfEnded.Text.Trim();
                objindividual_names.Comments = txtComments.Text.Trim();
                objindividual_names.Is_Active = true;
                objindividual_names.Is_Deleted = false;
                objindividual_names.Created_On = DateTime.Now;
                objindividual_names.Created_By = UIHelper.UserIDBySession().ToString();
                objindividual_names.Modified_On = DateTime.Now;
                objindividual_names.Modified_By = "";


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
            return objindividual_names;
        }
        private LAPP_individual_names FetchValueFromControlEdit()
        {

            try
            {
                TextBox txtLastNameEdit = gvName.Rows[this.EditIndex].FindControl("txtLastNameEdit") as TextBox;
                TextBox txtFirstNameEdit = gvName.Rows[this.EditIndex].FindControl("txtFirstNameEdit") as TextBox;
                TextBox txtMiddleNameEdit = gvName.Rows[this.EditIndex].FindControl("txtMiddleNameEdit") as TextBox;
                TextBox txtSuffixEdit = gvName.Rows[this.EditIndex].FindControl("txtSuffixEdit") as TextBox;
                TextBox txtPreviousNameEdit = gvName.Rows[this.EditIndex].FindControl("txtPreviousNameEdit") as TextBox;
                DropDownList ddlStatusEdit = gvName.Rows[this.EditIndex].FindControl("ddlStatusEdit") as DropDownList;
                TextBox txtDateOfBeganEdit = gvName.Rows[this.EditIndex].FindControl("txtDateOfBeganEdit") as TextBox;
                TextBox txtDateOfEndedEdit = gvName.Rows[this.EditIndex].FindControl("txtDateOfEndedEdit") as TextBox;
                TextBox txtCommentsEdit = gvName.Rows[this.EditIndex].FindControl("txtCommentsEdit") as TextBox;

                TextBox txtCreatedEdit = gvName.Rows[this.EditIndex].FindControl("txtCreatedEdit") as TextBox;
                TextBox txtCreatedByEdit = gvName.Rows[this.EditIndex].FindControl("txtCreatedByEdit") as TextBox;
                TextBox txtModifiedEdit = gvName.Rows[this.EditIndex].FindControl("txtModifiedEdit") as TextBox;
                TextBox txtModifiedByEdit = gvName.Rows[this.EditIndex].FindControl("txtModifiedByEdit") as TextBox;

                objindividual_names = objLAPP_individual_namesBAL.Get_LAPP_individual_names_Get_BY_ID(this.Name_id);
                if (objindividual_names != null)
                {
                    objindividual_names = new LAPP_individual_names();
                    objindividual_names.First_Name = txtFirstNameEdit.Text.Trim();
                    objindividual_names.Last_Name = txtLastNameEdit.Text.Trim();
                    objindividual_names.Middle_Name = txtMiddleNameEdit.Text.Trim();
                    objindividual_names.Suffix = txtSuffixEdit.Text.Trim();
                    objindividual_names.Maiden_Name = txtPreviousNameEdit.Text;
                    objindividual_names.Individual_Id = this.Individual_Id;
                    objindividual_names.Status_ID = Convert.ToInt32(ddlStatusEdit.SelectedValue);
                    objindividual_names.Status = ddlStatusEdit.SelectedItem.Text;
                    objindividual_names.Date_Of_Beginning = txtDateOfBeganEdit.Text.Trim();
                    objindividual_names.Date_Of_Ending = txtDateOfEndedEdit.Text.Trim();
                    objindividual_names.Comments = txtCommentsEdit.Text.Trim();
                    objindividual_names.Modified_On = DateTime.Now;
                    objindividual_names.Modified_By = UIHelper.UserIDBySession().ToString();
                    objindividual_names.Created_By = UIHelper.UserIDBySession().ToString();
                    objindividual_names.Created_On = DateTime.Now;

                    txtCreatedEdit.Enabled = false;
                    txtCreatedByEdit.Enabled = false;
                    txtModifiedByEdit.Enabled = false;
                    txtModifiedEdit.Enabled = false;

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
            return objindividual_names;
        }
        private string Validate_ControlsSave()
        {
            string validateMsg = "";
            string vmsg = "";
            ltrName.Text = "";
            try
            {
                validateMsg += ValidationHelper.IsOnlyAlphabet(txtLastName.Text, "<li>Please enter last name</li>");
                validateMsg += ValidationHelper.IsOnlyAlphabet(txtFirstName.Text, "<li>Please enter first name</li>");
                validateMsg += ValidationHelper.IsRequiredDDL(ddlStatus.Text, "<li>Please select status</li>");
                validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtDateOfBegan.Text, "<li>Please enter valid date of beginning</li>");
                validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtDateOfEnded.Text, "<li>Please Enter valid date of ending</li>");


                if (!String.IsNullOrEmpty(validateMsg))
                {
                    vmsg = validateMsg;
                    ltrName.Text = MessageBox.BuildValidationMessage(vmsg, 2);

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
            return vmsg;
        }
        private string Validate_ControlsEdit()
        {
            string validateMsg = "";
            string vmsg = "";
            ltrName.Text = "";
            try
            {
                TextBox txtLastNameEdit = gvName.Rows[this.EditIndex].FindControl("txtLastNameEdit") as TextBox;
                TextBox txtFirstNameEdit = gvName.Rows[this.EditIndex].FindControl("txtFirstNameEdit") as TextBox;
                DropDownList ddlStatusEdit = gvName.Rows[this.EditIndex].FindControl("ddlStatusEdit") as DropDownList;
                TextBox txtDateOfBeganEdit = gvName.Rows[this.EditIndex].FindControl("txtDateOfBeganEdit") as TextBox;
                TextBox txtDateOfEndedEdit = gvName.Rows[this.EditIndex].FindControl("txtDateOfEndedEdit") as TextBox;

                validateMsg += ValidationHelper.IsOnlyAlphabet(txtLastNameEdit.Text, "<li>Please enter last name</li>");
                validateMsg += ValidationHelper.IsOnlyAlphabet(txtFirstNameEdit.Text, "<li>Please enter first name</li>");
                // validateMsg += ValidationHelper.IsRequiredDDL(ddlStatus.SelectedValue, "<li>Please Select Status</li>");
                validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtDateOfBeganEdit.Text, "<li>Please enter valid date of beginning</li>");
                validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtDateOfEndedEdit.Text, "<li>Please enter valid date of ending</li>");


                if (!String.IsNullOrEmpty(validateMsg))
                {
                    vmsg = validateMsg;
                    ltrName.Text = MessageBox.BuildValidationMessage(vmsg, 2);

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
            return vmsg;
        }

        #endregion


    }
}