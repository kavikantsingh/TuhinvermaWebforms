using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucTransactionFeeConfig : System.Web.UI.UserControl
{

    #region Class Members

    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    LAPP_transaction_fee_config objTransaction_Configuration_Fee = new LAPP_transaction_fee_config();
    LAPP_transaction_fee_configBAL objTransaction_Configuration_FeeBAL = new LAPP_transaction_fee_configBAL();

    #endregion

    #region Class Property

    public int Transaction_Fee_Config_Id
    {
        get
        {
            if (ViewState["Transaction_Fee_Config_Id"] != null)
            {
                return Convert.ToInt32(ViewState["Transaction_Fee_Config_Id"].ToString());
            }
            else
            {
                return 1;
            }
        }
        set
        {
            ViewState["Transaction_Fee_Config_Id"] = value;
        }
    }
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack == true)
        {
            FillControl();
        }
    }

    protected void btnSave_Click1(object sender, EventArgs e)
    {
        Save();
    }


    #region Public Methods


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

    public void Save()
    {
        try
        {
            objTransaction_Configuration_Fee = FetchValueFromControl();
            if (objTransaction_Configuration_Fee != null)
            {
                if (this.Transaction_Fee_Config_Id > 0)
                {
                    objTransaction_Configuration_FeeBAL.Update_LAPP_transaction_fee_config(objTransaction_Configuration_Fee, this.Transaction_Fee_Config_Id);
                    MessageBox.Show(this.Page, Messages.UpdateSuccess(), (int)eAlertType.Success);
                    FillControl();
                }
                else
                {
                    int res = objTransaction_Configuration_FeeBAL.Save_LAPP_transaction_fee_config(objTransaction_Configuration_Fee);
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
            objExLog.Logger = "ucTransactionFeeConfig.ascx.cs Save";
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
            objTransaction_Configuration_Fee = objTransaction_Configuration_FeeBAL.Get_LAPP_transaction_fee_config_By_ID(Transaction_Fee_Config_Id);
            if (objTransaction_Configuration_Fee != null)
            {
                txtConfigurationName.Text = objTransaction_Configuration_Fee.Config_Name;
                //txtEffDate.Text = objTransaction_Configuration_Fee.Effective_Date.ToShortDateString();
                //txtEndDate.Text = objTransaction_Configuration_Fee.End_Date.ToShortDateString();
                txtFee.Text = (objTransaction_Configuration_Fee.ACH_Fee).ToString("#,##0.00");
                string.Format("{0:0.00}", txtFee.Text);
                txtCreditCardFee.Text = (objTransaction_Configuration_Fee.CreditCard_Fee).ToString("#,##0.00");
                txtRemark.Text = objTransaction_Configuration_Fee.Remark;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucTransactionFeeConfig.ascx.cs FillControl";
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
        txtConfigurationName.Text = string.Empty;
        //txtEffDate.Text = string.Empty;
        //txtEndDate.Text = string.Empty;
        txtFee.Text = string.Empty;
        txtCreditCardFee.Text = string.Empty;
        txtRemark.Text = string.Empty;
        this.Transaction_Fee_Config_Id = 0;
    }

    #endregion

    #region Private Methods
    private LAPP_transaction_fee_config FetchValueFromControl()
    {
        try
        {
            objTransaction_Configuration_Fee = objTransaction_Configuration_FeeBAL.Get_LAPP_transaction_fee_config_By_ID(Transaction_Fee_Config_Id);
            if (objTransaction_Configuration_Fee != null)
            {
                objTransaction_Configuration_Fee.Config_Name = txtConfigurationName.Text.Trim();
                objTransaction_Configuration_Fee.Effective_Date = UIHelper.DefaultDate();
                objTransaction_Configuration_Fee.End_Date = UIHelper.DefaultDate();
                //objTransaction_Configuration_Fee.Effective_Date = Convert.ToDateTime(txtEffDate.Text.Trim());
                //objTransaction_Configuration_Fee.End_Date = Convert.ToDateTime(txtEndDate.Text.Trim());
                objTransaction_Configuration_Fee.ACH_Fee = Convert.ToDouble(txtFee.Text.Trim());
                objTransaction_Configuration_Fee.Remark = txtRemark.Text.Trim();
                objTransaction_Configuration_Fee.CreditCard_Fee = Convert.ToDouble(txtCreditCardFee.Text.Trim());

            }
            else
            {
                objTransaction_Configuration_Fee = new LAPP_transaction_fee_config();
                objTransaction_Configuration_Fee.Created_On = DateTime.Now;
                objTransaction_Configuration_Fee.DTS = DateTime.Now;
                objTransaction_Configuration_Fee.Is_Active = true;
                objTransaction_Configuration_Fee.Is_Deleted = false;
                objTransaction_Configuration_Fee.Config_Name = txtConfigurationName.Text.Trim();
                objTransaction_Configuration_Fee.Effective_Date = UIHelper.DefaultDate();
                objTransaction_Configuration_Fee.End_Date = UIHelper.DefaultDate();
                //objTransaction_Configuration_Fee.Effective_Date = Convert.ToDateTime(txtEffDate.Text.Trim());
                //objTransaction_Configuration_Fee.End_Date = Convert.ToDateTime(txtEndDate.Text.Trim());
                objTransaction_Configuration_Fee.ACH_Fee = Convert.ToDouble(txtFee.Text.Trim());
                objTransaction_Configuration_Fee.CreditCard_Fee = Convert.ToDouble(txtCreditCardFee.Text.Trim());
                objTransaction_Configuration_Fee.Remark = txtRemark.Text.Trim();
                //objInfo.Board_Info_Renewal_Date_AE = string.IsNullOrWhiteSpace(txtAE.Text) ? UIHelper.DefaultDate() : Convert.ToDateTime(txtAE.Text);
                objTransaction_Configuration_Fee.Created_By = UIHelper.UserIDBySession();
                //if (((objTransaction_Configuration_Fee.Effective_Date).Date) > ((objTransaction_Configuration_Fee.End_Date).Date))
                //{
                //    MessageBox.Show(this.Page, "Effective date can not be greater than End date", (int)eAlertType.Error);
                //}

            }

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucTransactionFeeConfig.ascx.cs FetchValueFromControl";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
        return objTransaction_Configuration_Fee;

    }

    #endregion
}