using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using LAPP.ENTITY;
using LAPP.BAL;
using LAPP.ENTITY.Enumerations;
public partial class Module_UI_Backoffice_Individual_ucImport : System.Web.UI.UserControl
{


    #region ClassMembers
    lapp_task objlapp_task = new lapp_task();
    lapp_taskBAL objlapp_taskBAL = new lapp_taskBAL();

    LAPP_application_status objLAPP_application_status = new LAPP_application_status();
    LAPP_application_statusBAL objLAPP_application_statusBAL = new LAPP_application_statusBAL();

    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    #endregion

    #region ClassProperties
    public int EditIndexTask
    {
        get
        {
            if (ViewState["EditIndexTask"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexTask"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexTask"] = value;
        }
    }
    public int task_Id
    {
        get
        {
            if (ViewState["task_Id"] != null)
            {
                return Convert.ToInt32(ViewState["task_Id"]);
            }
            else
            {
                return 1;
            }
        }
        set
        {
            ViewState["task_Id"] = value;
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


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridAKA();
            BindGridTask();
            ltrTask.Text = "";
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

    #region Page Event Handlers

    protected void btnTaskAddNew_Click(object sender, EventArgs e)
    {
        ltrTask.Text = "";
        DivbtnHistory.Visible = false;
        divAddPanelTask.Visible = true;
        divAddbuttonTask.Visible = false;
        DivbtnSaveCancel.Visible = true;
        this.EditIndexTask = -1;
        BindGridTask();

    }

    protected void btnTaskUpdate_Click(object sender, EventArgs e)
    {
        DivbtnHistory.Visible = true;
        try
        {

            if (this.task_Id > 0)
            {
                string Validation = Validate_ControlsEdit();
                if (Validation == "")
                {
                    objlapp_task = FetchValueFromControleEdit();
                    if (objlapp_task != null)
                    {

                        objlapp_taskBAL.Update_lapp_task(objlapp_task, this.task_Id);
                        this.EditIndexTask = -1;
                        BindGridTask();
                        ltrTask.Text = MessageBox.BuildValidationMessage("Updated Successfully", 1);

                    }
                }
                else
                {
                    MessageBox.Show(this.Page, Validation, 2);
                    return;
                }
            }

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucTask.ascx-btnTaskUpdate_Click";

            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    protected void lnkTaskCancelUpdate_Click(object sender, EventArgs e)
    {
        DivbtnHistory.Visible = true;
        ltrTask.Text = "";
        this.EditIndexTask = -1;
        BindGridTask();
    }

    protected void imgbtnEdit_Click(object sender, EventArgs e)
    {
        DivbtnHistory.Visible = false;
        divAddPanelTask.Visible = false;
        divAddbuttonTask.Visible = true;
        DivbtnSaveCancel.Visible = false;
        this.EditIndexTask = -1;
        try
        {
            ImageButton btnEdit = (ImageButton)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
                this.task_Id = ID;
                this.EditIndexTask = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                BindGridTask();
                DropDownList ddlStatusEdit = gvTask.Rows[this.EditIndexTask].FindControl("ddlStatusEdit") as DropDownList;
                //BindDDLStatusEdit(ddlStatusEdit);
                FillControlTask(gvTask, this.EditIndexTask);
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucTask.ascx-imgbtnEdit_Click";

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
                this.task_Id = ID;
                objlapp_task = objlapp_taskBAL.Get_lapp_task_Get_by_task_Id(ID);
                if (objlapp_task != null)
                {
                    objlapp_task.Is_Deleted = true;
                    objlapp_taskBAL.Update_lapp_task(objlapp_task, objlapp_task.task_Id);
                    ltrTask.Text = MessageBox.BuildValidationMessage("Deleted Successfully", 1);
                }
            }
            BindGridTask();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucTask.ascx-imgBtnDelete_Click";

            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    protected void btnTaskSave_Click(object sender, EventArgs e)
    {
        string Validation = Validate_ControlsSave();
        if (Validation == "")
        {
            Save();
            Clearcontrol();
            BindGridTask();
            divAddPanelTask.Visible = false;
            divAddbuttonTask.Visible = true;
            DivbtnHistory.Visible = true;
        }
        else
        {
            ltrTask.Text = MessageBox.BuildValidationMessage(Validation, 2);
            return;
        }
        divAddPanelTask.Visible = false;
        divAddbuttonTask.Visible = true;
        DivbtnSaveCancel.Visible = false;

    }

    protected void lnkTaskCancel_Click(object sender, EventArgs e)
    {
        ltrTask.Text = "";
        Clearcontrol();
        divAddPanelTask.Visible = false;
        divAddbuttonTask.Visible = true;
        DivbtnSaveCancel.Visible = false;
        DivbtnHistory.Visible = true;
    }

    protected void gvTask_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        if (GridViewShortDirection == SortDirection.Ascending)
        {
            GridViewShortDirection = SortDirection.Descending;
        }
        else
        {
            GridViewShortDirection = SortDirection.Ascending;
        }
        gvTask.PageIndex = e.NewPageIndex;
        this.BindGridTask();
    }

    #endregion

    #region Private Methods

    private void Clearcontrol()
    {
        txtDueDate.Text = string.Empty;
        txtComments.Text = string.Empty;
        ddlStatus.SelectedValue = "-1";
        ddlTaskType.SelectedValue = "-1";
        chkDateCompleted.Checked = false;
        this.EditIndexTask = -1;
    }
    private lapp_task FetchValueFromControle()
    {


        try
        {

            objlapp_task = new lapp_task();

            objlapp_task.Status = ddlStatus.SelectedItem.Text.Trim();
            objlapp_task.Task_Type = ddlTaskType.SelectedValue;
            objlapp_task.Comments = txtComments.Text.Trim();
            objlapp_task.Due_Date = txtDueDate.Text.Trim();
            objlapp_task.Date_Completed = chkDateCompleted.Checked;
            objlapp_task.Status_ID = Convert.ToInt32(ddlStatus.SelectedValue);

            objlapp_task.Individual_Id = this.Individual_Id;
            objlapp_task.Created_By = UIHelper.UserIDBySession().ToString();
            objlapp_task.Created_On = DateTime.Now;
            objlapp_task.Is_Active = true;
            objlapp_task.Is_Deleted = false;
            objlapp_task.Modified_By = "";
            objlapp_task.Modified_On = DateTime.Now;

            //}
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucTask.ascx-FetchValueFromControle";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

        return objlapp_task;

    }
    private lapp_task FetchValueFromControleEdit()
    {

        try
        {
            objlapp_task = new lapp_task();

            DropDownList ddlStatusEdit = gvTask.Rows[this.EditIndexTask].FindControl("ddlStatusEdit") as DropDownList;
            DropDownList ddlTaskTypeEdit = gvTask.Rows[this.EditIndexTask].FindControl("ddlTaskTypeEdit") as DropDownList;
            TextBox txtDueDateEdit = gvTask.Rows[this.EditIndexTask].FindControl("txtDueDateEdit") as TextBox;
            CheckBox chkDateCompletedEdit = gvTask.Rows[this.EditIndexTask].FindControl("chkDateCompletedEdit") as CheckBox;
            TextBox txtCommentsEdit = gvTask.Rows[this.EditIndexTask].FindControl("txtCommentsEdit") as TextBox;
            TextBox txtCreatedEdit = gvTask.Rows[this.EditIndexTask].FindControl("txtCreatedEdit") as TextBox;
            TextBox txtCreatedByEdit = gvTask.Rows[this.EditIndexTask].FindControl("txtCreatedByEdit") as TextBox;
            TextBox txtModifiedEdit = gvTask.Rows[this.EditIndexTask].FindControl("txtModifiedEdit") as TextBox;
            TextBox txtModifiedByEdit = gvTask.Rows[this.EditIndexTask].FindControl("txtModifiedByEdit") as TextBox;

            if (this.task_Id > 0)
            {
                objlapp_task = objlapp_taskBAL.Get_lapp_task_Get_by_task_Id(this.task_Id);
                if (objlapp_task != null)
                {
                    objlapp_task.Status = ddlStatusEdit.SelectedItem.Text.Trim();
                    objlapp_task.Task_Type = ddlTaskTypeEdit.SelectedValue;
                    objlapp_task.Due_Date = txtDueDateEdit.Text.Trim();
                    objlapp_task.Date_Completed = chkDateCompletedEdit.Checked;
                    objlapp_task.Comments = txtCommentsEdit.Text.Trim();
                    objlapp_task.Status_ID = Convert.ToInt32(ddlStatusEdit.SelectedValue);

                    //objlapp_task.Created_On = DateTime.Now;
                    //objlapp_task.Created_By = UIHelper.UserIDBySession().ToString();
                    objlapp_task.Modified_On = DateTime.Now;
                    objlapp_task.Modified_By = UIHelper.UserIDBySession().ToString();

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
            objExLog.Thread = "Error Occured-ucTask.ascx-FetchValueFromControleEdit";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

        return objlapp_task;

    }
    private string Validate_ControlsSave()
    {
        ltrTask.Text = "";
        string validateMsg = "";
        string vmsg = "";
        try
        {

            validateMsg += ValidationHelper.IsRequiredDDL(ddlStatus.Text, "<li>Please select status.</li>");
            validateMsg += ValidationHelper.IsRequired(txtDueDate.Text, "<li>Please enter due date.</li>");
            validateMsg += ValidationHelper.IsRequiredDDL(ddlTaskType.Text, "<li>Please select task type.</li>");


            if (!String.IsNullOrEmpty(validateMsg))
            {
                vmsg = validateMsg;
                ltrTask.Text = MessageBox.BuildValidationMessage(vmsg, 2);

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "ucTask.ascx.cs Validate_ControlsSave";
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
        ltrTask.Text = "";
        string validateMsg = "";
        string vmsg = "";
        try
        {

            DropDownList ddlStatusEdit = gvTask.Rows[this.EditIndexTask].FindControl("ddlStatusEdit") as DropDownList;
            DropDownList ddlTaskTypeEdit = gvTask.Rows[this.EditIndexTask].FindControl("ddlTaskTypeEdit") as DropDownList;
            TextBox txtDueDateEdit = gvTask.Rows[this.EditIndexTask].FindControl("txtDueDateEdit") as TextBox;
            CheckBox chkDateCompletedEdit = gvTask.Rows[this.EditIndexTask].FindControl("chkDateCompletedEdit") as CheckBox;

            validateMsg += ValidationHelper.IsRequiredDDL(ddlStatusEdit.Text, "<li>Please select status.</li>");
            validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtDueDateEdit.Text, "<li>Please enter due date.</li>");
            validateMsg += ValidationHelper.IsRequiredDDL(ddlTaskTypeEdit.Text, "<li>Please select task type.</li>");

            if (!String.IsNullOrEmpty(validateMsg))
            {
                vmsg = validateMsg;
                ltrTask.Text = MessageBox.BuildValidationMessage(vmsg, 2);

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "ucTask.ascx.cs Validate_ControlsEdit";
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

    #region Public Methods


    public void Save()
    {
        try
        {
            objlapp_task = FetchValueFromControle();
            if (objlapp_task != null)
            {
                if (objlapp_task.task_Id > 0)
                {
                    objlapp_taskBAL.Update_lapp_task(objlapp_task, objlapp_task.task_Id);
                }
                else
                {
                    objlapp_taskBAL.Save_lapp_task(objlapp_task);
                }
                ltrTask.Text = MessageBox.BuildValidationMessage("Saved Successfully", 1);
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
    public void BindGridTask()
    {
        List<lapp_task> lstlapp_task = new List<lapp_task>();
        lstlapp_task = objlapp_taskBAL.Get_lapp_task_Get_by_Individual_Id(this.Individual_Id);
        gvTask.DataSource = lstlapp_task;
        try
        {
            gvTask.EditIndex = this.EditIndexTask;
            gvTask.DataBind();

            if (this.EditIndexTask >= 0)
            {
                gvTask.Rows[this.EditIndexTask].CssClass = "RowInEditMode";
                gvTask.Rows[this.EditIndexTask].Cells[0].Attributes.Add("colspan", "4");
                gvTask.Rows[this.EditIndexTask].Cells[1].Visible = false;


            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucTask.ascx-BindGridTask";

            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public void FillControlTask(GridView gv, int EditInd)
    {
        try
        {


            DropDownList ddlTaskTypeEdit = gv.Rows[this.EditIndexTask].FindControl("ddlTaskTypeEdit") as DropDownList;
            DropDownList ddlStatusEdit = gv.Rows[this.EditIndexTask].FindControl("ddlStatusEdit") as DropDownList;
            TextBox txtDueDateEdit = gv.Rows[this.EditIndexTask].FindControl("txtDueDateEdit") as TextBox;
            CheckBox chkDateCompletedEdit = gv.Rows[this.EditIndexTask].FindControl("chkDateCompletedEdit") as CheckBox;
            TextBox txtCommentsEdit = gv.Rows[this.EditIndexTask].FindControl("txtCommentsEdit") as TextBox;
            TextBox txtCreatedEdit = gv.Rows[this.EditIndexTask].FindControl("txtCreatedEdit") as TextBox;
            TextBox txtCreatedByEdit = gv.Rows[this.EditIndexTask].FindControl("txtCreatedByEdit") as TextBox;
            TextBox txtModifiedEdit = gv.Rows[this.EditIndexTask].FindControl("txtModifiedEdit") as TextBox;
            TextBox txtModifiedByEdit = gv.Rows[this.EditIndexTask].FindControl("txtModifiedByEdit") as TextBox;

            objlapp_task = objlapp_taskBAL.Get_lapp_task_Get_by_task_Id(this.task_Id);
            if (objlapp_task != null)
            {
                txtCreatedEdit.Text = objlapp_task.Created_On.ToShortDateString();
                txtCreatedByEdit.Text = objlapp_task.Created_By;
                txtModifiedEdit.Text = objlapp_task.Modified_On.ToShortDateString();
                txtModifiedByEdit.Text = objlapp_task.Modified_By;

                txtCreatedEdit.Enabled = false;
                txtCreatedByEdit.Enabled = false;
                txtModifiedEdit.Enabled = false;
                txtModifiedByEdit.Enabled = false;

                ddlTaskTypeEdit.SelectedValue = objlapp_task.Task_Type;
                ddlStatusEdit.SelectedValue = objlapp_task.Status_ID.ToString();
                txtDueDateEdit.Text = objlapp_task.Due_Date;
                chkDateCompletedEdit.Checked = objlapp_task.Date_Completed;
                txtCommentsEdit.Text = objlapp_task.Comments;
            }
        }

        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucTask.ascx-FillControlTask";

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
        objExLog.Thread = ErrorMessage.ErrorOccured();
        objExLog.Date = DateTime.Now;
        objExLog.Level = "Low";
        objExLog.Logger = "errorLogger";
        return objExLog;
    }
    public void OnPageLoad()
    {
        BindGridTask();
 
    }
    #endregion
}