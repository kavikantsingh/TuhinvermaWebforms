using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.IO;
using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.CORE;
using LAPP.ENTITY.Enumerations;
using LAPP.CONFIG;

public partial class Module_UI_School_ucSchoolAdministratorDashboard : System.Web.UI.UserControl
{
    #region Class Members
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    #endregion

    #region ClassProperties
    public int EditIndexQuestion5
    {
        get
        {
            if (ViewState["EditIndexQuestion5"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexQuestion5"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexQuestion5"] = value;
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
    public int Edit_IndexPayment
    {
        get
        {
            if (ViewState["Edit_IndexPayment"] != null)
            {
                return Convert.ToInt32(ViewState["Edit_IndexPayment"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["Edit_IndexPayment"] = value;
        }
    }
    public int Edit_IndexApplicationdetail
    {
        get
        {
            if (ViewState["Edit_IndexApplicationdetail"] != null)
            {
                return Convert.ToInt32(ViewState["Edit_IndexApplicationdetail"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["Edit_IndexApplicationdetail"] = value;
        }
    }
    public int Application_request_ID
    {
        get
        {
            if (ViewState["Application_request_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Application_request_ID"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Application_request_ID"] = value;
        }
    }
    #endregion

    #region PageEvantHandler

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //pnl.Visible = false;
            //BindGridPayment();
            BindGridRenewalDetail();
            //BindGridQuestion5();
            BindGridContinuingEducation();
            BindGriduserTask();

            Fill_ApplicationLinks();
        }
    }

    protected void EditMailingbtn_Click(object sender, EventArgs e)
    {
        EditMailingbtn.Visible = false;
        divEditMailingAddress.Visible = true;
        divGridMailingAddress.Visible = false;
        divGridPhysicalAddress.Visible = false;
    }
    protected void btnSaveMailingAddress_Click(object sender, EventArgs e)
    {
        EditMailingbtn.Visible = true;
        divEditMailingAddress.Visible = false;
        divGridMailingAddress.Visible = true;
        divGridPhysicalAddress.Visible = true;
    }
    protected void btnSaveCancelMailingAddress_Click(object sender, EventArgs e)
    {
        EditMailingbtn.Visible = true;
        divEditMailingAddress.Visible = false;
        divGridMailingAddress.Visible = true;
        divGridPhysicalAddress.Visible = true;
    }

    protected void imgbtnEditContact_Click(object sender, EventArgs e)
    {
        trEditContactAddress.Visible = true;
        trGridContactAddress.Visible = false;
        
    }
    protected void btnSaveContact_Click(object sender, EventArgs e)
    {
        trEditContactAddress.Visible = false;
        trGridContactAddress.Visible = true;
       
    }
    protected void btnSaveCancelContact_Click(object sender, EventArgs e)
    {
        trEditContactAddress.Visible = false;
        trGridContactAddress.Visible = true;
        
    }

    private void Fill_ApplicationLinks()
    {
        //hlkDuplicateLicense.NavigateUrl =AppHelper.GetPrefixURLApplication() +"UI/DuplicateLicense.aspx?id="+ Encryption.Base64Encrypt("Individual_Id="+ApplicantHelper.GetIndividualID_ByMemberSession());
        //hlkDuplicateLicense.Text = "Duplicate License - " + AppHelper.Get_Duplicate_License_Fee();
    }

    #endregion

    #region Private Methods

    private void BindDropdownState(DropDownList ddl)
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
    #endregion

    #region Mailing Address Grid

    #region PageEvantHandler

    //protected void btnUpdateQ5_Click(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        if (validateConfigGrid())
    //        {
    //            TextBox txtStreet = gvQuestion5.Rows[EditIndexQuestion5].FindControl("txtStreet") as TextBox;
    //            TextBox txtCity = gvQuestion5.Rows[EditIndexQuestion5].FindControl("txtCity") as TextBox;
    //            DropDownList ddlState = gvQuestion5.Rows[EditIndexQuestion5].FindControl("ddlState") as DropDownList;
    //            TextBox txtZip = gvQuestion5.Rows[EditIndexQuestion5].FindControl("txtZip") as TextBox;
    //            TextBox txtCellPhone = gvQuestion5.Rows[EditIndexQuestion5].FindControl("txtCellPhone") as TextBox;
    //            TextBox txtEmail = gvQuestion5.Rows[EditIndexQuestion5].FindControl("txtEmail") as TextBox;

    //            Lapp_Application_requestBAL objLapp_Application_requestBAL = new Lapp_Application_requestBAL();
    //            Lapp_Application_request objLapp_Application_request = new Lapp_Application_request();
    //            objLapp_Application_request = objLapp_Application_requestBAL.Get_Lapp_Application_request_Get_by_Application_Request_ID(this.Application_request_ID);
    //            if (objLapp_Application_request != null && this.Application_request_ID > 0)
    //            {
    //                objLapp_Application_request.State = ddlState.SelectedValue;
    //                objLapp_Application_request.Street = txtStreet.Text.Trim();
    //                objLapp_Application_request.Zip = txtZip.Text.Trim();
    //                objLapp_Application_request.Email = txtEmail.Text.Trim();
    //                objLapp_Application_request.DayTimePhone = txtCellPhone.Text.Trim();
    //                objLapp_Application_request.City = txtCity.Text.Trim();
    //                objLapp_Application_request.DTS = DateTime.Now;
    //                objLapp_Application_request.Application_Request_ID = this.Application_request_ID;
    //                objLapp_Application_requestBAL.Update_Lapp_Application(objLapp_Application_request, objLapp_Application_request.Application_Request_ID);
    //                ltrMessage.Text = MessageBox.BuildValidationMessage("Updated Successfully", 1);
    //            }
    //            Editbtn.Visible = true;
    //            txtStreet.Text = "";
    //            txtCity.Text = "";
    //            txtEmail.Text = "";
    //            txtCellPhone.Text = "";
    //            txtZip.Text = "";
    //            ddlState.SelectedValue = "-1";
    //            this.EditIndexQuestion5 = -1;
    //            BindGridQuestion5();
    //        }
    //        else
    //        {
    //            return;
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        objExLog = Fetchlog();
    //        objExLog.Thread = ex.StackTrace.ToString();
    //        objExLog.Logger = "ucDashboard.aspx.cs btnUpdateQ5_Click";
    //        objExLog.Message = ex.Message;
    //        objExLog.Exception = ex.ToString();
    //        objExLog.Context = ex.Source;
    //        objexLogBal.Save_LAPP_exception_log(objExLog);
    //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
    //        MessageBox.Show(this.Page, ex.Message, 2);
    //    }
    //}

    //protected void lnkCancelQ5Update_Click(object sender, EventArgs e)
    //{
    //    ltrMessage.Text = "";
    //    Editbtn.Visible = true;
    //    this.EditIndexQuestion5 = -1;
    //    BindGridQuestion5();
    //}

    //protected void imgBtnDeleteQ5_Click(object sender, EventArgs e)
    //{

    //}

    //protected void Editbtn_Click(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        ltrMessage.Text = "";
    //        this.EditIndexQuestion5 = -1;
    //        Editbtn.Visible = false;
    //        Button btnEdit = (Button)sender;
    //        if (btnEdit != null)
    //        {
    //            int ID = Convert.ToInt32(btnEdit.CommandArgument);
    //            this.EditIndexQuestion5 = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
    //            BindGridQuestion5();
    //            this.Application_request_ID = ID;
    //            DropDownList ddlState = gvQuestion5.Rows[EditIndexQuestion5].FindControl("ddlState") as DropDownList;
    //            BindDropdownState(ddlState);
    //            FillControlQuestion5(gvQuestion5, this.EditIndexQuestion5);
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        objExLog = Fetchlog();
    //        objExLog.Thread = ex.StackTrace.ToString();
    //        objExLog.Logger = "Dashboard.aspx.cs Editbtn_Click";
    //        objExLog.Message = ex.Message;
    //        objExLog.Exception = ex.ToString();
    //        objExLog.Context = ex.Source;
    //        objexLogBal.Save_LAPP_exception_log(objExLog);
    //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
    //        MessageBox.Show(this.Page, ex.Message, 2);
    //    }
    //}
    #endregion

    #region Public Method
    //public bool validateConfigGrid()
    //{
    //    TextBox txtStreet = gvQuestion5.Rows[EditIndexQuestion5].FindControl("txtStreet") as TextBox;
    //    TextBox txtCity = gvQuestion5.Rows[EditIndexQuestion5].FindControl("txtCity") as TextBox;
    //    DropDownList ddlState = gvQuestion5.Rows[EditIndexQuestion5].FindControl("ddlState") as DropDownList;
    //    TextBox txtZip = gvQuestion5.Rows[EditIndexQuestion5].FindControl("txtZip") as TextBox;
    //    TextBox txtCellPhone = gvQuestion5.Rows[EditIndexQuestion5].FindControl("txtCellPhone") as TextBox;
    //    TextBox txtEmail = gvQuestion5.Rows[EditIndexQuestion5].FindControl("txtEmail") as TextBox;
    //    string postfixValidateMsg = "";
    //    string prefixValidateMsg = "";
    //    ltrMessage.Text = "";
    //    bool Valid = false;
    //    try
    //    {
    //        string validateMsg = "";

    //        validateMsg += ValidationHelper.IsRequired(txtStreet.Text, "<li>Please enter Street.</li>");
    //        validateMsg += ValidationHelper.IsOnlyAlphabet(txtCity.Text, "<li>Please enter City(Only Alphabet allow.)</li>", true);
    //        validateMsg += ValidationHelper.IsRequiredDDL(ddlState.SelectedValue, "<li>Please select State.</li>");
    //        validateMsg += ValidationHelper.IsValidUSZIP(txtZip.Text, "<li>Please enter valid ZIP code eg: xxxxx-xxxx or xxxxx.</li>");
    //        if (!String.IsNullOrEmpty(validateMsg))
    //        {
    //            txtStreet.Focus();
    //            string vmsg = prefixValidateMsg + validateMsg + postfixValidateMsg;
    //            ltrMessage.Text = MessageBox.BuildValidationMessage(vmsg, 2);
    //            Valid = true;
    //            return false;
    //        }

    //        if (Valid == true)
    //        {
    //            return false;
    //        }
    //        else
    //        {
    //            return true;
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        objExLog = Fetchlog();
    //        objExLog.Thread = ex.StackTrace.ToString();
    //        objExLog.Logger = "Dashboard.aspx.cs validateConfigGrid";
    //        objExLog.Message = ex.Message;
    //        objExLog.Exception = ex.ToString();
    //        objExLog.Context = ex.Source;
    //        objexLogBal.Save_LAPP_exception_log(objExLog);
    //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
    //        MessageBox.Show(this.Page, ex.Message, 2);
    //        return false;
    //    }
    //}
    public void FillControlQuestion5(GridView gv, int EditInd)
    {

    }

    #endregion

    #endregion

    #region Renewal Detail Grid
    public void BindGridRenewalDetail()
    {
        try
        {
            //List<LAPP_individual> lstlapp_individual = new List<LAPP_individual>();
            //LAPP_individualBAL objLapp_individualBAL = new LAPP_individualBAL();
            //LAPP_individual objLAPP_individual = new LAPP_individual();
            //objLAPP_individual = objLapp_individualBAL.Get_lapp_Individual_getby_IndividualId(ApplicantHelper.GetIndividualID_ByMemberSession());
            //if (objLAPP_individual != null)
            //{
            //    lstlapp_individual.Add(objLAPP_individual);

            //}
            //gvRenewalDetail.DataSource = lstlapp_individual;
            //gvRenewalDetail.DataBind();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucApplicantDashboard.ascx.cs BindGridApplicationDetail";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    #endregion

    #region Payment Grid
    //public void BindGridPayment()
    //{
    //    try
    //    {

    //        List<Lapp_payment> lstLapp_payment = new List<Lapp_payment>();
    //        Lapp_paymentBAL objLapp_paymentBAL = new Lapp_paymentBAL();
    //        lstLapp_payment = objLapp_paymentBAL.Get_lapp_payment_get_by_ApplicantId(UIHelper.UserIDBySession());
    //        gvPayment.DataSource = lstLapp_payment;
    //        gvPayment.DataBind();

    //        if (this.Edit_IndexPayment >= 0)
    //        {
    //            gvPayment.Rows[this.Edit_IndexPayment].CssClass = "RowInEditMode";
    //            gvPayment.Rows[this.Edit_IndexPayment].Cells[0].Attributes.Add("colspan", "1");

    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        objExLog = Fetchlog();
    //        objExLog.Thread = ex.StackTrace.ToString();
    //        objExLog.Logger = "ucApplicantDashboard.ascx.cs BindGridPayment";
    //        objExLog.Message = ex.Message;
    //        objExLog.Exception = ex.ToString();
    //        objExLog.Context = ex.Source;
    //        objexLogBal.Save_LAPP_exception_log(objExLog);
    //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
    //        MessageBox.Show(this.Page, ex.Message, 2);
    //    }
    //}

    //protected void gvPayment_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //{
    //    gvPayment.PageIndex = e.NewPageIndex;
    //    this.BindGridPayment();
    //}
    #endregion

    public int EditIndexContinuingEducation
    {
        get
        {
            if (ViewState["EditIndexContinuingEducation"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexContinuingEducation"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexContinuingEducation"] = value;
        }
    }

    public void BindGridContinuingEducation()
    {
        //try
        //{
        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("GIC");
        ArryListName.Add("Nevada");
        ArryListName.Add("Nevada");

        gvContinuingEducation.EditIndex = this.EditIndexContinuingEducation;
        gvContinuingEducation.DataSource = ArryListName;
        gvContinuingEducation.DataBind();

        if (this.EditIndexContinuingEducation >= 0)
        {
            gvContinuingEducation.Rows[this.EditIndexContinuingEducation].CssClass = "RowInEditMode";
            gvContinuingEducation.Rows[this.EditIndexContinuingEducation].Cells[0].Attributes.Add("colspan", "5");
            gvContinuingEducation.Rows[this.EditIndexContinuingEducation].Cells[1].Visible = false;
            gvContinuingEducation.Rows[this.EditIndexContinuingEducation].Cells[2].Visible = false;
            //gvContinuingEducation.Rows[this.EditIndexContinuingEducation].Cells[3].Visible = false;
            // gvContinuingEducation.Rows[this.EditIndexContinuingEducation].Cells[4].Visible = false;

        }
    }

    public void BindGriduserTask()
    {
        //try
        //{
        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("GIC");
        ArryListName.Add("Nevada");
        ArryListName.Add("Nevada");

        gvUserTask.EditIndex = this.EditIndexContinuingEducation;
        gvUserTask.DataSource = ArryListName;
        gvUserTask.DataBind();

        if (this.EditIndexContinuingEducation >= 0)
        {
            gvUserTask.Rows[this.EditIndexContinuingEducation].CssClass = "RowInEditMode";
            gvUserTask.Rows[this.EditIndexContinuingEducation].Cells[0].Attributes.Add("colspan", "5");
            gvUserTask.Rows[this.EditIndexContinuingEducation].Cells[1].Visible = false;
            gvUserTask.Rows[this.EditIndexContinuingEducation].Cells[2].Visible = false;
            //gvContinuingEducation.Rows[this.EditIndexContinuingEducation].Cells[3].Visible = false;
            // gvContinuingEducation.Rows[this.EditIndexContinuingEducation].Cells[4].Visible = false;

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
}