using LAPP.BAL;
using LAPP.ENTITY;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucDocumentPermission : System.Web.UI.UserControl
{
    #region Class Properties
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
    public int Doc_ID
    {
        get
        {
            if (ViewState["Doc_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Doc_ID"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Doc_ID"] = value;
        }
    }
    public int Role_ID
    {
        get
        {
            if (ViewState["Role_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Role_ID"]);
            }
            else
            {
                return 1;
            }
        }
        set
        {
            ViewState["Role_ID"] = value;
        }
    }
    #endregion

    #region Class Member

    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();

    lapp_role_application_doc_lk objlapp_role_application_doc_lk = new lapp_role_application_doc_lk();
    lapp_role_application_doc_lkBAL objlaplapp_role_application_doc_lkBAL = new lapp_role_application_doc_lkBAL();

    #endregion

    #region PageEventHandlers
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        try
        {
            //string Validation = Validate_ControlsSave();
            //if (Validation == "")
            //{
            int Doc_ID = 0;
            for (int i = 0; i < gvPermission.Rows.Count; i++)
            {

                CheckBox chkRead = gvPermission.Rows[i].FindControl("chkRead1") as CheckBox;
                CheckBox chkDelete = gvPermission.Rows[i].FindControl("chkDelete1") as CheckBox;
                HiddenField hfID = (HiddenField)gvPermission.Rows[i].Cells[0].FindControl("hfID");
                Doc_ID = Convert.ToInt32(hfID.Value);

                objlapp_role_application_doc_lk = objlaplapp_role_application_doc_lkBAL.Get_lapp_role_application_doc_lk_Get_by_Doc_ID(Doc_ID);
                if (objlapp_role_application_doc_lk != null)
                {
                    objlapp_role_application_doc_lk.R = chkRead.Checked;
                    objlapp_role_application_doc_lk.D = chkDelete.Checked;

                    objlaplapp_role_application_doc_lkBAL.Update_lapp_role_application_doc_lk(objlapp_role_application_doc_lk);
                }
            }
            ltrDocumentPermission.Text = MessageBox.BuildValidationMessage("Updated Sucessfully", 1);
            //}
            BindGrid();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucDocumentPermission.ascx.cs btnUpdate_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    //protected void btnCancel_Click(object sender, EventArgs e)
    //{
    //    BindGrid();
    //    this.EditIndex = -1;
    //}
    #endregion

    #region Public Methods
    public void BindGrid()
    {
        try
        {
            List<lapp_role_application_doc_lk> lstlapp_role_application_doc_lk = new List<lapp_role_application_doc_lk>();
            lstlapp_role_application_doc_lk = objlaplapp_role_application_doc_lkBAL.Get_All_lapp_role_application_doc_lk(this.Role_ID);
            if (lstlapp_role_application_doc_lk.Count > 0)
            {
                gvPermission.DataSource = lstlapp_role_application_doc_lk;
                gvPermission.DataBind();
            }

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucDocumentPermission.ascx.cs BindGrid";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
    }
    #endregion

    #region Private Methods
    private string Validate_ControlsSave()
    {
        string validateMsg = "";
        string vmsg = "";
        try
        {
            bool status = false;
            for (int i = 0; i < gvPermission.Rows.Count - 1; i++)
            {
                CheckBox chkRead = gvPermission.Rows[i].FindControl("chkRead") as CheckBox;
                CheckBox chkDelete = gvPermission.Rows[i].FindControl("chkDelete") as CheckBox;
                if (!chkRead.Checked && !chkDelete.Checked)
                {
                    status = true;
                }

            }
            if (status)
            {
                validateMsg = "<li>Please select atleast one option.</li>";
            }

            if (!String.IsNullOrEmpty(validateMsg))
            {
                vmsg = validateMsg;
                ltrDocumentPermission.Text = MessageBox.BuildValidationMessage(vmsg, 2);

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucDocumentPermission.ascx.cs Validate_ControlsSave";
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

    #region Exception
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


}