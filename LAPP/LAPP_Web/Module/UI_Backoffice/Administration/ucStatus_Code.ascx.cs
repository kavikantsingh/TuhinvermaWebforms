using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using LAPP.BAL;
using LAPP.ENTITY.Enumerations;
using LAPP.ENTITY;


    public partial class ucStatus_Code : System.Web.UI.UserControl
    {

        #region Class Members
        LAPP_exception_log objExLog = new LAPP_exception_log();
        LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
        LAPP_audit_info objAuditInfo = new LAPP_audit_info();
        LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
        LAPP_application_statusBAL objLAPP_application_statusBAL = new LAPP_application_statusBAL();
        LAPP_application_status objLAPP_application_status = new LAPP_application_status();
        #endregion

        #region Class Properties

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
        public int Status_Type_Id
        {
            get
            {
                if (ViewState["Status_Type_Id"] != null)
                {
                    return Convert.ToInt32(ViewState["Status_Type_Id"]);
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                ViewState["Status_Type_Id"] = value;
            }
        }
        #endregion

        #region Page Event Handler

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridAppStatusTy();
                BindGrid(0);

                //select top row
                if (gvApplicationStatusType.Rows.Count > 0)
                {
                    int RowIndex = 0;
                    this.Edit_Index = RowIndex;
                    HiddenField hfID = gvApplicationStatusType.Rows[RowIndex].FindControl("hfID") as HiddenField;
                    if (hfID != null)
                    {
                        this.Status_Type_Id = Convert.ToInt32(hfID.Value);
                        BindGrid(this.Status_Type_Id);

                        BindGridAppStatusTy();
                    }
                }
            }
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            BindGridAppStatusTy();
            BindGrid(0);
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                LAPP_application_status objLAPP_application_status = new LAPP_application_status();
                string Validation = Validate_ControlsSave();
                if (Validation == "")
                {
                    int status_id = 0;

                    for (int i = 0; i < gvColor_Code.Rows.Count; i++)
                    {
                        TextBox txtColorCode = gvColor_Code.Rows[i].FindControl("txtColorCode") as TextBox;

                        HiddenField hfID = (HiddenField)gvColor_Code.Rows[i].Cells[0].FindControl("hfID");
                        status_id = Convert.ToInt32(hfID.Value);
                        if (txtColorCode != null)
                        {
                            objLAPP_application_status = objLAPP_application_statusBAL.Get_LAPP_application_status_Get_By_ID(status_id);
                            if (objLAPP_application_status != null)
                            {
                                objLAPP_application_status.Color_Code = txtColorCode.Text.Trim();
                                objLAPP_application_statusBAL.Update_LAPP_application_status(objLAPP_application_status, status_id);

                            }
                        }

                    }
                    MessageBox.Show(this.Page, "Updated Sucessfully", 1);
                }
            }
            catch (Exception ex)
            {

                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucStatus_Code.ascx.cs btnUpdate_Click";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }

        protected void gvColor_Code_PageIndexChanging(object sender, GridViewPageEventArgs e)
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
            gvColor_Code.PageIndex = e.NewPageIndex;
            this.BindGrid(this.Status_Type_Id);

        }
        protected void gvApplicationStatusType_PageIndexChanging(object sender, GridViewPageEventArgs e)
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
            gvApplicationStatusType.PageIndex = e.NewPageIndex;
            this.BindGridAppStatusTy();

        }
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


        public void BindGridAppStatusTy()
        {
            try
            {
                List<Lapp_application_status_type> lstLapp_application_status_type = new List<Lapp_application_status_type>();
                Lapp_application_status_typeBAL objLapp_application_status_typeBal = new Lapp_application_status_typeBAL();
                lstLapp_application_status_type = objLapp_application_status_typeBal.Get_All_Lapp_application_status_type();
                lstLapp_application_status_type = lstLapp_application_status_type.OrderByDescending(x => x.DTS).ToList();
                gvApplicationStatusType.EditIndex = this.Edit_Index;
                gvApplicationStatusType.DataSource = lstLapp_application_status_type;
                gvApplicationStatusType.DataBind();

                if (this.Edit_Index >= 0)
                {
                    gvApplicationStatusType.Rows[this.Edit_Index].CssClass = "RowInEditMode";
                    gvApplicationStatusType.Rows[this.Edit_Index].CssClass = "selected";
                    gvApplicationStatusType.Rows[this.Edit_Index].Cells[0].Attributes.Add("colspan", "1");
                    //gvApplicationStatusType.Rows[this.Edit_Index].Cells[1].Visible = false;

                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucStatus_Code.ascx.cs BindGridAppStatusTy";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }
        protected void lnkSelect_Click(object sender, EventArgs e)
        {
            try
            {
                Button lnkSelect = sender as Button;
                if (lnkSelect != null)
                {

                    int RowIndex = Convert.ToInt32(lnkSelect.Attributes["RowIndex"]);
                    this.Edit_Index = RowIndex;
                    HiddenField hfID = gvApplicationStatusType.Rows[RowIndex].FindControl("hfID") as HiddenField;
                    if (hfID != null)
                    {
                        this.Status_Type_Id = Convert.ToInt32(hfID.Value);
                        BindGrid(this.Status_Type_Id);

                        BindGridAppStatusTy();
                    }
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucStatus_Code.ascx.cs lnkSelect_Click";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }

        public void BindGrid(int Tab_id)
        {
            try
            {
                List<LAPP_application_status> lstLAPP_application_status = new List<LAPP_application_status>();
                lstLAPP_application_status = objLAPP_application_statusBAL.LAPP_application_status_get_by_Status_Type_Id(Tab_id);

                gvColor_Code.DataSource = lstLAPP_application_status;
                gvColor_Code.DataBind();
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucStatus_Code.ascx.cs BindGrid";
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

        #endregion

        #region Private Method
        private string Validate_ControlsSave()
        {
            string prefixValidateMsg = "<ul class=\"Validation\">";
            string validateMsg = "";
            string vmsg = "";
            try
            {

                //validateMsg += ValidationHelper.IsRequiredDDL(ddlStatus.Text, "<li>Please Select Status</li>");


                string postfixValidateMsg = "</ul>";

                if (!String.IsNullOrEmpty(validateMsg))
                {
                    vmsg = prefixValidateMsg + validateMsg + postfixValidateMsg;
                    MessageBox.Show(this.Page, vmsg, 2);

                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucStatus_Code.ascx.cs Validate_ControlsSave";
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
