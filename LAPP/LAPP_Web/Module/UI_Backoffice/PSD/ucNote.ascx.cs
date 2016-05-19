using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using LAPP.ENTITY.Enumerations;
using LAPP.BAL;
using LAPP.ENTITY;

public partial class Module_UI_Backoffice_PSD_ucNote : System.Web.UI.UserControl
{
    #region ClassMembers
    lapp_notes objlapp_notes = new lapp_notes();
    lapp_notesBAL objlapp_notesBAL = new lapp_notesBAL();

    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    #endregion

    #region ClassProperties

    public int EditIndexCorrspodence
    {
        get
        {
            if (ViewState["EditIndexCorrspodence"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexCorrspodence"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexCorrspodence"] = value;
        }
    }
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
    public int Note_Id
    {
        get
        {
            if (ViewState["Note_Id"] != null)
            {
                return Convert.ToInt32(ViewState["Note_Id"]);
            }
            else
            {
                return 1;
            }
        }
        set
        {
            ViewState["Note_Id"] = value;
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

    #region Commnets
    #region Page Event Handlers

    protected void Page_Load(object sender, EventArgs e)
    {

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

    protected void btnSavePersonal_Click(object sender, EventArgs e)
    {
        string Validation = Validate_ControlsSave();
        if (Validation == "")
        {
            Save();
        }
        else
        {

            ltrNote.Text = MessageBox.BuildValidationMessage(Validation, 2);
            return;
        }
    }

    private string Validate_ControlsSave()
    {
        string validateMsg = "";
        string vmsg = "";
        try
        {

            validateMsg += ValidationHelper.IsRequired(txtNewNote.Text, "<li>Please enter note.</li>");

            if (!String.IsNullOrEmpty(validateMsg))
            {
                vmsg = validateMsg;
                ltrNote.Text = MessageBox.BuildValidationMessage(vmsg, 2);

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucNotes.ascx-Validate_ControlsSave";

            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
        return vmsg;
    }

    protected void lnkCancelPersonal_Click(object sender, EventArgs e)
    {
        clearcontrol();
    }
    #endregion

    #region Private Methods

    private void clearcontrol()
    {
        txtNewNote.Text = string.Empty;
    }
    private lapp_notes FetchValueFromControle()
    {


        try
        {

            objlapp_notes = new lapp_notes();

            objlapp_notes.Note = txtNewNote.Text.Trim();
            objlapp_notes.Individual_Id = this.Individual_Id;

            objlapp_notes.Created_By = UIHelper.UserIDBySession().ToString();
            objlapp_notes.Created_On = DateTime.Now;
            objlapp_notes.Is_Active = true;
            objlapp_notes.Is_Deleted = false;
            objlapp_notes.Modified_By = "";
            objlapp_notes.Modified_On = DateTime.Now;

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "ucNotes.ascx.cs FetchValueFromControle";
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

        return objlapp_notes;

    }
    private string ValidateSave()
    {
        string validateMsg = "";
        string vmsg = "";
        ltrNote.Text = "";
        try
        {
            validateMsg = ValidationHelper.IsRequired(txtNewNote.Text, "<li>Please enter note.</li>");

            if (!String.IsNullOrEmpty(validateMsg))
            {
                vmsg = validateMsg;
                ltrNote.Text = MessageBox.BuildValidationMessage(vmsg, 2);

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "ucNotes.ascx.cs ValidateSave";
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
            objlapp_notes = FetchValueFromControle();
            if (objlapp_notes != null)
            {
                if (objlapp_notes.Note_Id > 0)
                {
                    objlapp_notesBAL.Update_lapp_notes(objlapp_notes, objlapp_notes.Note_Id);
                    ltrNote.Text = MessageBox.BuildValidationMessage("Updated Successfully", 1);
                }
                else
                {
                    objlapp_notesBAL.Save_lapp_notes(objlapp_notes);
                    ltrNote.Text = MessageBox.BuildValidationMessage("Saved Successfully", 1);
                }
                clearcontrol();
                BindGrid();

            }

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "ucNotes.ascx.cs Save";
            objExLog.Thread = ex.StackTrace.ToString();
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
        List<lapp_notes> lstNotes = new List<lapp_notes>();
        lapp_notesBAL objNotesBal = new lapp_notesBAL();
        lstNotes = objNotesBal.Get_lapp_notes_Get_by_Individual_Id(this.Individual_Id);
        if (lstNotes != null && lstNotes.Count > 0)
        {
            lstNotes = lstNotes.OrderByDescending(x => x.Modified_On).ToList();
            rptLog.DataSource = lstNotes;
            rptLog.DataBind();
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
        BindGrid();
    }
    #endregion
    #endregion


}