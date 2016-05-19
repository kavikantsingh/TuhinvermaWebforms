using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucCodePopup : System.Web.UI.UserControl
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
    LAPP_code_hist objCodeHist = new LAPP_code_hist();
    LAPP_code_histBAL objCodeHistBal = new LAPP_code_histBAL();
    #endregion

    #region Class Property

    public int Code_ID
    {
        get
        {
            if (ViewState["Code_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Code_ID"].ToString());
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Code_ID"] = value;
        }
    }
    #endregion

    #region Page Event Handler
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindDropDownCodeTy();
            FillControl();
        }
    }

    protected void btnSave_Click1(object sender, EventArgs e)
    {
        Save();
        ClearControl();
        Response.Redirect("Codes.aspx", false);

    }
    #endregion

    #region Private Methods
    private LAPP_code FetchValueFromControl()
    {
        try
        {
            objCode = objCodeBAL.Get_LAPP_code_BY_ID(Code_ID);
            if (objCode != null)
            {
                objCode.Code_Name = txtCodeName.Text.Trim();
                objCode.Code_Type_CD = ddlCdeTy.SelectedItem.Text;
                objCode.Code_Description = txtDescription.Text.Trim();
                objCode.Display_Order = Convert.ToInt32(txtDisplayOrder.Text);
                objCode.Default_Display = chkDefaultDisplay.Checked;
                objCode.DTS = DateTime.Now;
                objCode.Code_Type_ID = Convert.ToInt32(ddlCdeTy.SelectedValue);
            }
            else
            {
                objCode = new LAPP_code();
                objCode.Code_Name = txtCodeName.Text.Trim();
                objCode.Code_Type_CD = ddlCdeTy.SelectedItem.Text;
                objCode.Code_Description = txtDescription.Text.Trim();
                objCode.Display_Order = Convert.ToInt32(txtDisplayOrder.Text);
                objCode.Default_Display = chkDefaultDisplay.Checked;
                objCode.DTS = DateTime.Now;
                objCode.Is_Active = true;
                objCode.Is_Deleted = false;
                objCode.Created_On = DateTime.Now;
                objCode.Created_By = UIHelper.UserIDBySession();
                objCode.Code_Type_ID = Convert.ToInt32(ddlCdeTy.SelectedValue);
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodePopup.ascx.cs FetchValueFromControl";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }


        return objCode;
    }

    private LAPP_code_hist FetchCodeHistory()
    {
        try
        {
            objCodeHist = new LAPP_code_hist();
            objCodeHist.Code_Name = txtCodeName.Text.Trim();
            objCodeHist.Code_Type_CD = ddlCdeTy.SelectedValue;
            objCodeHist.Code_Description = txtDescription.Text.Trim();
            objCodeHist.Display_Order = Convert.ToInt32(txtDisplayOrder.Text);
            objCodeHist.Default_Display = chkDefaultDisplay.Checked;
            objCodeHist.DTS = DateTime.Now;
            objCodeHist.Is_Active = true;
            objCodeHist.Is_Deleted = false;
            objCodeHist.Created_On = DateTime.Now;
            objCodeHist.Created_By = UIHelper.UserIDBySession();
            objCodeHist.Code_Type_ID = 1;
            objCodeHist.Modified_By = UIHelper.UserIDBySession();
            objCodeHist.Modified_DTS = DateTime.Now;
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodePopup.ascx.cs FetchCodeHistory";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }

        return objCodeHist;
    }
    private void BindDropDownCodeTy()
    {
        try
        {
            List<LAPP_code_type> lstCodeTy = new List<LAPP_code_type>();
            lstCodeTy = objCodeTyBAL.Get_All_LAPP_code_type();
            if (lstCodeTy != null)
            {
                ddlCdeTy.DataSource = lstCodeTy;
                ddlCdeTy.DataTextField = "Code_Type_CD";
                ddlCdeTy.DataValueField = "Code_Type_ID";
                ddlCdeTy.DataBind();
            }
            ddlCdeTy.Items.Insert(0, new ListItem("Select", "-1"));
            ddlCdeTy.SelectedValue = "-1";
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodePopup.ascx.cs BindDropDownCodeTy";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }
    }
    #endregion

    #region Public Methods
    public void Save()
    {
        try
        {
            objCode = FetchValueFromControl();
            if (objCode != null)
            {
                if (this.Code_ID > 0)
                {
                    objCodeBAL.Update_LAPP_code(objCode, this.Code_ID);
                    objCodeHist = FetchCodeHistory();
                    if (objCodeHist != null)
                    {
                        objCodeHist.Action = "U";
                        objCodeHist.Is_Deleted = objCode.Is_Deleted;
                        objCodeHist.Code_ID = this.Code_ID;
                        objCodeHistBal.Save_LAPP_code_hist(objCodeHist);
                    }
                    MessageBox.Show_Second(this.Page, Messages.UpdateSuccess(), (int)eAlertType.Success);
                }

                else
                {
                    int res = objCodeBAL.Save_LAPP_code(objCode);
                    objCodeHist = FetchCodeHistory();
                    if (objCodeHist != null)
                    {
                        objCodeHist.Action = "I";
                        objCodeHist.Is_Deleted = objCode.Is_Deleted;
                        objCodeHist.Code_ID = res;
                        objCodeHistBal.Save_LAPP_code_hist(objCodeHist);
                    }
                    this.Code_ID = res;
                    MessageBox.Show_Second(this.Page, "Saved Succesfully", (int)eAlertType.Success);
                }
            }

            else
            {
                MessageBox.Show_Second(this.Page, "Error Occured", (int)eAlertType.Error);

            }
        }


        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodePopup.ascx.cs Save";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }
    }

    public void FillControl()
    {
        try
        {
            objCode = objCodeBAL.Get_LAPP_code_BY_ID(Code_ID);
            if (objCode != null)
            {
                txtCodeName.Text = objCode.Code_Name;
                ddlCdeTy.SelectedValue = objCode.Code_Type_CD;
                txtDescription.Text = objCode.Code_Description;
                txtDisplayOrder.Text = objCode.Display_Order.ToString();
                chkDefaultDisplay.Checked = objCode.Default_Display;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucCodePopup.ascx.cs FillControl";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }
    }

    public void ClearControl()
    {
        txtCodeName.Text = string.Empty;
        ddlCdeTy.SelectedValue = null;
        txtDescription.Text = string.Empty;
        txtDisplayOrder.Text = string.Empty;
        chkDefaultDisplay.Checked = false;
        this.Code_ID = 0;
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