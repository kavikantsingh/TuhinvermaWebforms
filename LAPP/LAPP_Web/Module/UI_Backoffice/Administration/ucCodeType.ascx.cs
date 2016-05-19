using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucCodeType : System.Web.UI.UserControl
{
    #region Class Members
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    LAPP_code objCode = new LAPP_code();
    LAPP_codeBAL objCodeBAL = new LAPP_codeBAL();
    LAPP_code_type objCodeTy = new LAPP_code_type();
    LAPP_code_typeBAL objCodeTyBAL = new LAPP_code_typeBAL();
    LAPP_code_type_hist objCodeTypeHist = new LAPP_code_type_hist();
    LAPP_code_type_histBAL objCodeTypeHistBal = new LAPP_code_type_histBAL();
    #endregion

    #region Class Property

    public int Code_Type_Id
    {
        get
        {
            if (ViewState["Code_Type_Id"] != null)
            {
                return Convert.ToInt32(ViewState["Code_Type_Id"].ToString());
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Code_Type_Id"] = value;
        }
    }
    #endregion

    #region Page Event Handler
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillControl();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        Save();
        ClearControl();
        Response.Redirect("~/Administration/Codes.aspx", false);

    }
    #endregion

    #region Private Methods

    private LAPP_code_type FetchValueFromControl()
    {
        try
        {
            objCodeTy = objCodeTyBAL.Get_LAPP_code_type_BY_ID(Code_Type_Id);
            if (objCodeTy != null)
            {
                objCodeTy.Code_Type_CD = txtCodeTy.Text.Trim();
                objCodeTy.Code_Type_Description = txtDescriptions.Text.Trim();
                objCodeTy.DTS = DateTime.Now;
            }
            else
            {
                objCodeTy = new LAPP_code_type();
                objCodeTy.Code_Type_CD = txtCodeTy.Text.Trim();
                objCodeTy.Code_Type_Description = txtDescriptions.Text.Trim();
                objCodeTy.DTS = DateTime.Now;
                objCodeTy.Is_Active = true;
                objCodeTy.Is_Deleted = false;
                objCodeTy.Created_On = DateTime.Now;
                objCodeTy.Created_By = UIHelper.UserIDBySession();
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodeType.ascx.cs FetchValueFromControl";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }


        return objCodeTy;
    }

    private LAPP_code_type_hist FetchCodeTypeHistory()
    {
        try
        {
            objCodeTypeHist = new LAPP_code_type_hist();
            objCodeTypeHist.Code_Type_CD = txtCodeTy.Text.Trim();
            objCodeTypeHist.Code_Type_Description = txtDescriptions.Text.Trim();
            objCodeTypeHist.DTS = DateTime.Now;
            objCodeTypeHist.Is_Active = true;
            objCodeTypeHist.Is_Deleted = false;
            objCodeTypeHist.Created_On = DateTime.Now;
            objCodeTypeHist.Created_By = UIHelper.UserIDBySession();
            objCodeTypeHist.Modified_By = UIHelper.UserIDBySession();
            objCodeTypeHist.Modified_DTS = DateTime.Now;
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodeType.ascx.cs FetchCodeTypeHistory";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

        return objCodeTypeHist;
    }

    #endregion

    #region Public Methods
    public void Save()
    {
        try
        {
            objCodeTy = FetchValueFromControl();
            if (objCodeTy != null)
            {
                if (this.Code_Type_Id > 0)
                {
                    objCodeTyBAL.Update_LAPP_code_type(objCodeTy, this.Code_Type_Id);
                    MessageBox.Show(this.Page, Messages.UpdateSuccess(), (int)eAlertType.Success);
                }
                else
                {
                    int res = objCodeTyBAL.Save_LAPP_code_type(objCodeTy);
                    objCodeTypeHist = FetchCodeTypeHistory();
                    if (objCodeTypeHist != null)
                    {
                        objCodeTypeHist.Action = "I";
                        objCodeTypeHist.Is_Deleted = objCodeTy.Is_Deleted;
                        objCodeTypeHist.Code_Type_Id = res;
                        objCodeTypeHistBal.Save_LAPP_code_type_hist(objCodeTypeHist);

                    }
                    this.Code_Type_Id = res;
                    MessageBox.Show(this.Page, Messages.SaveSuccess(), (int)eAlertType.Success);
                }
            }
            else
            {
                MessageBox.Show(this.Page, "Error Occured", (int)eAlertType.Error);

            }

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodeType.ascx.cs Save";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    public void FillControl()
    {
        try
        {
            objCodeTy = objCodeTyBAL.Get_LAPP_code_type_BY_ID(Code_Type_Id);
            if (objCodeTy != null)
            {
                txtCodeTy.Text = objCodeTy.Code_Type_CD;
                txtDescriptions.Text = objCodeTy.Code_Type_Description;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodeType.ascx.cs FillControl";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    public void ClearControl()
    {
        txtCodeTy.Text = string.Empty;
        txtDescriptions.Text = string.Empty;
        this.Code_Type_Id = 0;
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