using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.ENTITY;
using LAPP.BAL;
using LAPP.ENTITY.Enumerations;


    public partial class ucConfiguration_Page : System.Web.UI.UserControl
    {
        #region Class Members
        LAPP_exception_log objExLog = new LAPP_exception_log();
        LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
        LAPP_audit_info objAuditInfo = new LAPP_audit_info();
        LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
        LAPP_configuration objConfiguration = new LAPP_configuration();
        LAPP_configurationBAL objConfigurationBAL = new LAPP_configurationBAL();

        #endregion

        #region Class Property

        public int Configuration_Id
        {
            get
            {
                if (ViewState["Configuration_Id"] != null)
                {
                    return Convert.ToInt32(ViewState["Configuration_Id"].ToString());
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                ViewState["Configuration_Id"] = value;
            }
        }
        public int Edit_Index
        {
            get
            {
                if (ViewState["Edit_Index"] != null)
                {
                    return Convert.ToInt32(ViewState["Edit_Index"]);
                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["Edit_Index"] = value;
            }
        }
        #endregion

        string MenuName = "Configuration";

        #region Page Event Handler

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //if (Configuration_Id == 0)
                //{
                //    btnSave.Enabled = false;
                //    lnkbtnCancel.Enabled = false;
                //}
                //OnLoad_Method();
                BindGrid();
            }
        }

        //public void OnLoad_Method()
        //{
        //    BindGrid();
        //    if (this.Configuration_Id > 0)
        //    {

        //        FillControl();
        //    }
        //    else
        //    {
        //        ClearControl();
        //    }
        //}
        //protected void btnSave_Click(object sender, EventArgs e)
        //{
        //    if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
        //    {
        //        Save();
        //        BindGrid();
        //        ClearControl();
        //    }
        //}

        protected void lnkbtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Configuration.aspx", false);
        }

        //protected void btnFirst_Click(object sender, ImageClickEventArgs e)
        //{
        //    ImageButton btn = (ImageButton)sender;
        //    if (btn != null)
        //    {
        //        int ID = 0;
        //        if (!String.IsNullOrEmpty(btn.CommandArgument) && int.TryParse(btn.CommandArgument, out ID) && Convert.ToInt32(btn.CommandArgument) > 0)
        //        {
        //            this.Edit_Index = Convert.ToInt32(btn.Attributes["RowIndex"]);
        //            this.Configuration_Id = Convert.ToInt32(btn.CommandArgument);
        //            OnLoad_Method();
        //        }
        //    }
        //}
        //protected void btnPrev_Click(object sender, ImageClickEventArgs e)
        //{
        //    ImageButton btn = (ImageButton)sender;
        //    if (btn != null)
        //    {
        //        int ID = 0;
        //        if (!String.IsNullOrEmpty(btn.CommandArgument) && int.TryParse(btn.CommandArgument, out ID) && Convert.ToInt32(btn.CommandArgument) > 0)
        //        {
        //            this.Edit_Index = Convert.ToInt32(btn.Attributes["RowIndex"]);
        //            this.Configuration_Id = Convert.ToInt32(btn.CommandArgument);
        //            OnLoad_Method();
        //        }
        //    }
        //}
        //protected void btnNext_Click(object sender, ImageClickEventArgs e)
        //{
        //    ImageButton btn = (ImageButton)sender;
        //    if (btn != null)
        //    {
        //        int ID = 0;
        //        if (!String.IsNullOrEmpty(btn.CommandArgument) && int.TryParse(btn.CommandArgument, out ID) && Convert.ToInt32(btn.CommandArgument) > 0)
        //        {
        //            this.Edit_Index = Convert.ToInt32(btn.Attributes["RowIndex"]);
        //            this.Configuration_Id = Convert.ToInt32(btn.CommandArgument);

        //            OnLoad_Method();
        //        }
        //    }
        //}
        //protected void btnLast_Click(object sender, ImageClickEventArgs e)
        //{
        //    ImageButton btn = (ImageButton)sender;
        //    if (btn != null)
        //    {
        //        int ID = 0;
        //        if (!String.IsNullOrEmpty(btn.CommandArgument) && int.TryParse(btn.CommandArgument, out ID) && Convert.ToInt32(btn.CommandArgument) > 0)
        //        {
        //            this.Edit_Index = Convert.ToInt32(btn.Attributes["RowIndex"]);
        //            this.Configuration_Id = Convert.ToInt32(btn.CommandArgument);
        //            OnLoad_Method();
        //        }
        //    }
        //}
        protected void btnSaveContentGrid_Click(object sender, EventArgs e)
        {
            if (validateConfigGrid())
            {
                try
                {
                    TextBox txtSettingName = gvConfiguration.Rows[this.Edit_Index].FindControl("txtSettingName") as TextBox;
                    TextBox txtDataTy = gvConfiguration.Rows[this.Edit_Index].FindControl("txtDataTy") as TextBox;
                    TextBox txtValidationRegEx = gvConfiguration.Rows[this.Edit_Index].FindControl("txtValidationRegEx") as TextBox;
                    TextBox txtValue = gvConfiguration.Rows[this.Edit_Index].FindControl("txtValue") as TextBox;
                    TextBox txtDesc = gvConfiguration.Rows[this.Edit_Index].FindControl("txtDesc") as TextBox;

                    objConfiguration = objConfigurationBAL.Get_LAPP_configuration_BY_ID(this.Configuration_Id);
                    if (objConfiguration != null)
                    {
                        objConfiguration.Setting = txtSettingName.Text.Trim();
                        objConfiguration.Data_Type = txtDataTy.Text.Trim();
                        objConfiguration.ValidationRegEx = txtValidationRegEx.Text.Trim();
                        objConfiguration.Value = txtValue.Text.Trim();
                        objConfiguration.Description = txtDesc.Text.Trim();
                        objConfiguration.DTS = DateTime.Now;
                        objConfiguration.Configuration_Id = this.Configuration_Id;
                        objConfigurationBAL.Update_LAPP_configuration(objConfiguration, objConfiguration.Configuration_Id);
                    }
                    MessageBox.Show(this.Page, "Updated Successfully", 1);
                    this.Edit_Index = -1;
                    this.Configuration_Id = 0;
                    txtSettingName.Text = "";
                    txtDataTy.Text = "";
                    txtValidationRegEx.Text = "";
                    txtValue.Text = "";
                    txtDesc.Text = "";
                    BindGrid();

                }
                catch (Exception ex)
                {
                    objExLog = Fetchlog();
                    objExLog.Thread = ex.StackTrace.ToString();
                    objExLog.Logger = "ucConfiguration_Page.ascx.cs btnSaveContentGrid_Click";
                    objExLog.Message = ex.Message;
                    objExLog.Exception = ex.ToString();
                    objExLog.Context = ex.Source;
                    objexLogBal.Save_LAPP_exception_log(objExLog);
                    objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                    MessageBox.Show(this.Page, ex.Message, 2);
                }
            }
        }

        protected void btnCancelContentGrid_Click(object sender, EventArgs e)
        {
            this.Edit_Index = -1;
            BindGrid();
        }
        protected void imgBtnEdit_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                this.Edit_Index = -1;
                ImageButton btnEdit = (ImageButton)sender;
                if (btnEdit != null)
                {
                    int ID = Convert.ToInt32(btnEdit.CommandArgument);
                    this.Edit_Index = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                    BindGrid();
                    this.Configuration_Id = ID;
                    FillControlConfig(gvConfiguration, this.Edit_Index);
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucConfiguration_Page.ascx.cs imgBtnEdit_Click";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }
        protected void gvConfiguration_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (GridViewShortDirection == SortDirection.Ascending)
            {
                GridViewShortDirection = SortDirection.Descending;
            }
            else
            {
                GridViewShortDirection = SortDirection.Ascending;
            }
            this.Edit_Index = -1;
            gvConfiguration.PageIndex = e.NewPageIndex;
            this.Configuration_Id = 0;
            this.BindGrid();
            //OnLoad_Method();
        }
        #endregion

        #region Private Methods
        //private LAPP_configuration FetchValueFromControl()
        //{
        //    try
        //    {
        //        if (this.Configuration_Id > 0)
        //        {
        //            objConfiguration = objConfigurationBAL.Get_LAPP_configuration_BY_ID(Configuration_Id);
        //            if (objConfiguration != null)
        //            {
        //                objConfiguration.Configuration_Type_Id = 0;
        //                objConfiguration.Facility_Id = 0;
        //                objConfiguration.Dept_Center_Id = 0;
        //                objConfiguration.Org_Id = 0;
        //                objConfiguration.Data_Type = txtDataTy.Text.Trim();
        //                objConfiguration.Description = txtDescription.Text.Trim();
        //                objConfiguration.ValidationRegEx = txtValidationReg.Text.Trim();
        //                objConfiguration.Value = txtValue.Text.Trim();
        //                //objConfiguration.Is_Editable = chkIsEitable.Checked;
        //                objConfiguration.DTS = DateTime.Now;
        //            }
        //        }
        //        else
        //        {
        //            objConfiguration = new LAPP_configuration();
        //            objConfiguration.Facility_Id = 0;
        //            objConfiguration.Dept_Center_Id = 0;
        //            objConfiguration.Org_Id = 0;
        //            objConfiguration.Configuration_Type_Id = 0;
        //            objConfiguration.Setting = ltrSetting.Text.Trim();
        //            objConfiguration.Description = txtDescription.Text.Trim();
        //            objConfiguration.Data_Type = txtDataTy.Text.Trim();
        //            objConfiguration.ValidationRegEx = txtValidationReg.Text.Trim();
        //            objConfiguration.Value = txtValue.Text.Trim();
        //            //objConfiguration.Is_Editable = chkIsEitable.Checked;
        //            objConfiguration.DTS = DateTime.Now;
        //            objConfiguration.Is_Active = true;
        //            objConfiguration.Is_Deleted = false;
        //            objConfiguration.User_Id = 1;
        //            objConfiguration.Created_By = UIHelper.UserIDBySession();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        objExLog = Fetchlog();
        //        objExLog.Thread = "Error Occured-ucConfiguration_Page.ascx-FetchValueFromControl";
        //        objExLog.Message = ex.Message;
        //        objExLog.Exception = ex.ToString();
        //        objExLog.Context = ex.Source;
        //        objexLogBal.Save_LAPP_exception_log(objExLog);
        //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
        //        MessageBox.Show(this.Page, ex.Message, 2);
        //    }


        //    return objConfiguration;
        //}

        #endregion

        #region Shorting
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
        public string GridViewSortExpression
        {
            get
            {
                if (ViewState["sortExpression"] == null)
                    ViewState["sortExpression"] = "CreatedOn";

                return ViewState["sortExpression"].ToString();
            }
            set
            {
                ViewState["sortExpression"] = value;
            }
        }

        #endregion

        #region Public Methods
        //public void Save()
        //{
        //    try
        //    {
        //        objConfiguration = FetchValueFromControl();
        //        if (objConfiguration != null)
        //        {
        //            if (this.Configuration_Id > 0)
        //            {
        //                if (PermissionHandler.UserHasPermission("U", MenuName, this.Page))
        //                {

        //                    objConfigurationBAL.Update_LAPP_configuration(objConfiguration, this.Configuration_Id);
        //                    MessageBox.Show(this.Page, Messages.UpdateSuccess(), (int)eAlertType.Success);
        //                }
        //            }
        //            else
        //            {
        //                if (PermissionHandler.UserHasPermission("U", MenuName, this.Page))
        //                {
        //                    int res = objConfigurationBAL.Save_LAPP_configuration(objConfiguration);
        //                    this.Configuration_Id = res;
        //                    MessageBox.Show(this.Page, Messages.SaveSuccess(), (int)eAlertType.Success);
        //                }
        //            }
        //        }
        //        else
        //        {
        //            MessageBox.Show(this.Page, "Error Occured", (int)eAlertType.Error);

        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        objExLog = Fetchlog();
        //        objExLog.Thread = "Error Occured-ucConfiguration_Page.ascx-Save";
        //        objExLog.Message = ex.Message;
        //        objExLog.Exception = ex.ToString();
        //        objExLog.Context = ex.Source;
        //        objexLogBal.Save_LAPP_exception_log(objExLog);
        //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
        //        MessageBox.Show(this.Page, ex.Message, 2);
        //    }
        //}

        //public void BindGridRight()
        //{
        //    try
        //    {
        //        List<lapp_content> lstlappContent = new List<lapp_content>();
        //        lapp_contentBAL objLappContentBal = new lapp_contentBAL();
        //        lstlappContent = objLappContentBal.Get_All_lapp_content();
        //        lstlappContent = lstlappContent.OrderByDescending(x => x.DTS).ToList();
        //        gvContent.EditIndex = this.Edit_IndexRightGrid;
        //        gvContent.DataSource = lstlappContent;
        //        gvContent.DataBind();
        //        if (this.Edit_IndexRightGrid >= 0)
        //        {
        //            gvContent.Rows[this.Edit_IndexRightGrid].CssClass = "RowInEditMode";
        //            gvContent.Rows[this.Edit_IndexRightGrid].Cells[0].Attributes.Add("colspan", "4");
        //            gvContent.Rows[this.Edit_IndexRightGrid].Cells[1].Visible = false;
        //            gvContent.Rows[this.Edit_IndexRightGrid].Cells[2].Visible = false;
        //            gvContent.Rows[this.Edit_IndexRightGrid].Cells[3].Visible = false;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        objExLog = Fetchlog();
        //        objExLog.Thread = ex.StackTrace.ToString();

        //        objExLog.Message = ex.Message;
        //        objExLog.Exception = ex.ToString();
        //        objExLog.Context = ex.Source;
        //        objexLogBal.Save_LAPP_exception_log(objExLog);
        //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
        //        MessageBox.Show(this.Page, ex.Message, 2);
        //    }
        //}
        public void FillControlConfig(GridView gv, int EditInd)
        {
            try
            {
                TextBox txtSettingName = gv.Rows[this.Edit_Index].FindControl("txtSettingName") as TextBox;
                TextBox txtDataTy = gv.Rows[this.Edit_Index].FindControl("txtDataTy") as TextBox;
                TextBox txtValidationRegEx = gv.Rows[this.Edit_Index].FindControl("txtValidationRegEx") as TextBox;
                TextBox txtValue = gv.Rows[this.Edit_Index].FindControl("txtValue") as TextBox;
                TextBox txtDesc = gv.Rows[this.Edit_Index].FindControl("txtDesc") as TextBox;

                objConfiguration = objConfigurationBAL.Get_LAPP_configuration_BY_ID(this.Configuration_Id);
                if (objConfiguration != null)
                {
                    txtSettingName.Text = objConfiguration.Setting;
                    txtDataTy.Text = objConfiguration.Data_Type;
                    txtValidationRegEx.Text = objConfiguration.ValidationRegEx;
                    txtValue.Text = objConfiguration.Value;
                    txtDesc.Text = objConfiguration.Description;
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucConfiguration_Page.ascx.cs FillControlConfig";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }

        public void BindGrid()
        {
            try
            {
                List<LAPP_configuration> lstConfiguration = new List<LAPP_configuration>();
                lstConfiguration = objConfigurationBAL.Get_All_LAPP_configuration();
                lstConfiguration = lstConfiguration.OrderByDescending(x => x.DTS).ToList();
                gvConfiguration.EditIndex = this.Edit_Index;
                gvConfiguration.DataSource = lstConfiguration;
                gvConfiguration.DataBind();
                if (this.Edit_Index >= 0)
                {
                    gvConfiguration.Rows[this.Edit_Index].CssClass = "RowInEditMode";
                    gvConfiguration.Rows[this.Edit_Index].Cells[0].Attributes.Add("colspan", "4");
                    gvConfiguration.Rows[this.Edit_Index].Cells[1].Visible = false;
                    gvConfiguration.Rows[this.Edit_Index].Cells[2].Visible = false;
                    gvConfiguration.Rows[this.Edit_Index].Cells[3].Visible = false;
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucConfiguration_Page.ascx.cs BindGrid";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }

        //public void FillControl()
        //{
        //    try
        //    {
        //        if (this.Configuration_Id > 0)
        //        {
        //            objConfiguration = objConfigurationBAL.Get_LAPP_configuration_BY_ID(Configuration_Id);
        //            if (objConfiguration != null)
        //            {
        //                if (objConfiguration.Is_Editable == true)
        //                {
        //                    //txtFacilityId.Text = objConfiguration.Facility_Id.ToString();
        //                    //txtDeptCenterId.Text = objConfiguration.Dept_Center_Id.ToString();
        //                    //txtOrgID.Text = objConfiguration.Org_Id.ToString();
        //                    //txtConfigType.Text = objConfiguration.Configuration_Type_Id.ToString();
        //                    txtDescription.Text = objConfiguration.Description;
        //                    if (this.Configuration_Id > 0)
        //                    {
        //                        ltrSetting.Text = objConfiguration.Setting;

        //                    }
        //                    txtDataTy.Text = objConfiguration.Data_Type;
        //                    txtValidationReg.Text = objConfiguration.ValidationRegEx;
        //                    txtValue.Text = objConfiguration.Value;
        //                    //chkIsEitable.Checked = objConfiguration.Is_Editable;
        //                    txtValue.Enabled = true;
        //                    btnSave.Visible = true;
        //                    lnkbtnCancel.Visible = true;
        //                    PanelConfig.Enabled = true;
        //                }
        //                else
        //                {
        //                    txtDescription.Text = objConfiguration.Description;
        //                    if (this.Configuration_Id > 0)
        //                    {
        //                        ltrSetting.Text = objConfiguration.Setting;

        //                    }
        //                    txtDataTy.Text = objConfiguration.Data_Type;
        //                    txtValidationReg.Text = objConfiguration.ValidationRegEx;
        //                    txtValue.Text = objConfiguration.Value;

        //                    //txtDescription.Enabled = false;
        //                    if (this.Configuration_Id > 0)
        //                    {
        //                        ltrSetting.Text = objConfiguration.Setting;

        //                    }
        //                    //txtDataTy.Enabled = false;
        //                    //txtValidationReg.Enabled = false;
        //                    txtValue.Enabled = false;
        //                    btnSave.Visible = false;
        //                    lnkbtnCancel.Visible = false;
        //                    PanelConfig.Enabled = false;
        //                }

        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        objExLog = Fetchlog();
        //        objExLog.Thread = "Error Occured-ucConfiguration_Page.ascx-Fill Control";
        //        objExLog.Message = ex.Message;
        //        objExLog.Exception = ex.ToString();
        //        objExLog.Context = ex.Source;
        //        objexLogBal.Save_LAPP_exception_log(objExLog);
        //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
        //        MessageBox.Show(this.Page, ex.Message, 2);
        //    }

        //}

        public bool validateConfigGrid()
        {
            TextBox txtValue = gvConfiguration.Rows[this.Edit_Index].FindControl("txtValue") as TextBox;
            Literal ltrConfig = gvConfiguration.Rows[this.Edit_Index].FindControl("ltrConfig") as Literal;
            string postfixValidateMsg = "";
            string prefixValidateMsg = "";
            ltrConfig.Text = "";
            bool Valid = false;
            try
            {
                string validateMsg = "";

                validateMsg += ValidationHelper.IsRequired(txtValue.Text, "<li>Please enter Value.</li>");

                if (!String.IsNullOrEmpty(validateMsg))
                {
                    txtValue.Focus();
                    string vmsg = prefixValidateMsg + validateMsg + postfixValidateMsg;
                    ltrConfig.Text = MessageBox.BuildValidationMessage(vmsg, 2);
                    Valid = true;
                    return false;
                }

                if (Valid == true)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucConfiguration_Page.ascx.cs validateConfigGrid";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
                return false;
            }
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }

        protected void btnSearchCancel_Click(object sender, EventArgs e)
        {

        }

        public LAPP_exception_log Fetchlog()
        {
            objExLog.User_Id = UIHelper.UserIDBySession();
            objExLog.Url = string.Empty;
            objExLog.Reference_Type_Id = string.Empty;
            objExLog.Reference_Id = 1;
            objExLog.Thread = "error occured";
            objExLog.Date = DateTime.Now;
            objExLog.Level = "Low";
            objExLog.Logger = "errorLogger";
            return objExLog;
        }
        #endregion
    }
