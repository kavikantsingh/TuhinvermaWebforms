using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucBoardInfo : System.Web.UI.UserControl
{
    string MenuName = "Board Info";

    #region Class Members
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    LAPP_administration_board_info objInfo = new LAPP_administration_board_info();
    LAPP_administration_board_infoBAL objInfoBAL = new LAPP_administration_board_infoBAL();
    LAPP_state_code objStateCd = new LAPP_state_code();
    LAPP_state_codeBAL objstateCdBAL = new LAPP_state_codeBAL();
    LAPP_administration_board_info_hist objAdminHist = new LAPP_administration_board_info_hist();
    LAPP_administration_board_info_histBAL objAdminHistBAL = new LAPP_administration_board_info_histBAL();
    #endregion

    #region Class Property

    public int Administartion_Board_Info_Id
    {
        get
        {
            if (ViewState["Administartion_Board_Info_Id"] != null)
            {
                return Convert.ToInt32(ViewState["Administartion_Board_Info_Id"].ToString());
            }
            else
            {
                return 3;
            }
        }
        set
        {
            ViewState["Administartion_Board_Info_Id"] = value;
        }
    }
    #endregion

    #region Page Event Handler

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindDropDownStatecd();
            FillControl();
        }
    }
    protected void lnkbtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("BoardInfo.aspx", false);
        ClearControl();
    }
    protected void btnNewMember_Click(object sender, EventArgs e)
    {
        Response.Redirect("BoardInfo.aspx", false);
    }
    protected void btnSave_Click1(object sender, EventArgs e)
    {
        if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
        {
            Save();
        }
    }

    #endregion

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
            objInfo = FetchValueFromControl();
            if (objInfo != null)
            {
                if (this.Administartion_Board_Info_Id > 0)
                {
                    objInfoBAL.Update_LAPP_administration_board_info(objInfo, this.Administartion_Board_Info_Id);
                    objAdminHist = FetchAdminBoardInfoHistiry();
                    if (objAdminHist != null)
                    {
                        objAdminHist.Action = "U";
                        objAdminHist.Is_Deleted = objInfo.Is_Deleted;
                        objAdminHist.Administartion_Board_Info_Id = objInfo.Administartion_Board_Info_Id;
                        objAdminHistBAL.Save_LAPP_administration_board_info_hist(objAdminHist);
                        MessageBox.Show(this.Page, Messages.UpdateSuccess(), (int)eAlertType.Success);
                        FillControl();
                    }
                }
                else
                {
                    int res = objInfoBAL.Save_LAPP_administration_board_info(objInfo);
                    if (res > 0)
                    {
                        objAdminHist = FetchAdminBoardInfoHistiry();
                        if (objAdminHist != null)
                        {
                            objAdminHist.Action = "I";
                            objAdminHist.Is_Deleted = objInfo.Is_Deleted;
                            objAdminHist.Administartion_Board_Info_Id = res; ;
                            objAdminHistBAL.Save_LAPP_administration_board_info_hist(objAdminHist);
                            MessageBox.Show(this.Page, Messages.SaveSuccess(), (int)eAlertType.Success);
                        }
                        this.Administartion_Board_Info_Id = res;

                    }
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
            objExLog.Logger = "ucBoardInfo.ascx.cs Save";
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
            objInfo = objInfoBAL.Get_LAPP_administration_board_info_BY_ID(Administartion_Board_Info_Id);
            if (objInfo != null)
            {
                txtNameOfAgency.Text = objInfo.Board_Info_Agency_Name;
                txtAddressLine1.Text = objInfo.Board_Info_Address_Line1;
                txtAddress2.Text = objInfo.Board_Info_Address_Line2;
                txtCity1.Text = objInfo.Board_Info_City;
                ddlState.SelectedValue = objInfo.Board_Info_State;
                txtZIP.Text = objInfo.Board_Info_Zip;
                txtTelephone.Text = objInfo.Board_Info_Phone;
                txtFax.Text = objInfo.Board_Info_Fax;
                txtContact.Text = objInfo.Board_Info_Contact;
                txtAE.Text = objInfo.Board_Info_Renewal_Date_AE.Date != UIHelper.DefaultDate() ? objInfo.Board_Info_Renewal_Date_AE.ToShortDateString() : "";
                txtFK.Text = objInfo.Board_Info_Renewal_Date_FK.Date != UIHelper.DefaultDate() ? objInfo.Board_Info_Renewal_Date_FK.ToShortDateString() : "";
                txtLR.Text = objInfo.Board_Info_Renewal_Date_LR.Date != UIHelper.DefaultDate() ? objInfo.Board_Info_Renewal_Date_LR.ToShortDateString() : "";
                txtSZ.Text = objInfo.Board_Info_Renewal_Date_SZ.Date != UIHelper.DefaultDate() ? objInfo.Board_Info_Renewal_Date_SZ.ToShortDateString() : "";
                txtRenewalEndDate.Text = (objInfo.Board_info_Renewal_Start_Before).ToString();
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBoardInfo.ascx.cs FillControl";
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
        txtNameOfAgency.Text = string.Empty;
        txtAddressLine1.Text = string.Empty;
        txtAddress2.Text = string.Empty;
        txtCity1.Text = string.Empty;
        ddlState.SelectedValue = null;
        txtZIP.Text = string.Empty;
        txtTelephone.Text = string.Empty;
        txtFax.Text = string.Empty;
        txtContact.Text = string.Empty;
        txtAE.Text = string.Empty;
        txtFK.Text = string.Empty;
        txtLR.Text = string.Empty;
        txtSZ.Text = string.Empty;
        this.Administartion_Board_Info_Id = 0;
    }

    #endregion

    #region Private Methods

    private LAPP_administration_board_info FetchValueFromControl()
    {
        try
        {
            objInfo = objInfoBAL.Get_LAPP_administration_board_info_BY_ID(Administartion_Board_Info_Id);
            if (objInfo != null)
            {
                objInfo.DTS = DateTime.Now;
                objInfo.Is_Active = true;
                objInfo.Board_Info_Agency_Name = txtNameOfAgency.Text;
                objInfo.Board_Info_Address_Line1 = txtAddressLine1.Text;
                objInfo.Board_Info_Address_Line2 = txtAddress2.Text;
                objInfo.Board_Info_City = txtCity1.Text;
                objInfo.Board_Info_State = ddlState.SelectedValue;
                objInfo.Board_Info_Zip = txtZIP.Text;
                objInfo.Board_Info_Phone = txtTelephone.Text;
                objInfo.Board_Info_Fax = txtFax.Text;
                objInfo.Board_Info_Contact = txtContact.Text;
                objInfo.Board_info_Renewal_Start_Before = Convert.ToInt32(txtRenewalEndDate.Text);
                objInfo.Board_Info_Renewal_Form_Text = "";
                objInfo.Board_Info_Report_Data_Path = "";
                objInfo.Board_Info_Renewal_Date_AE = string.IsNullOrWhiteSpace(txtAE.Text) ? UIHelper.DefaultDate() : Convert.ToDateTime(txtAE.Text);
                objInfo.Board_Info_Renewal_Date_FK = string.IsNullOrWhiteSpace(txtFK.Text) ? UIHelper.DefaultDate() : Convert.ToDateTime(txtFK.Text);
                objInfo.Board_Info_Renewal_Date_LR = string.IsNullOrWhiteSpace(txtLR.Text) ? UIHelper.DefaultDate() : Convert.ToDateTime(txtLR.Text);
                objInfo.Board_Info_Renewal_Date_SZ = string.IsNullOrWhiteSpace(txtSZ.Text) ? UIHelper.DefaultDate() : Convert.ToDateTime(txtSZ.Text);
                objInfo.Board_info_Renewal_Fee_1disc = 0;// Convert.ToDouble(txt1st.Text);
                objInfo.Board_info_Renewal_Fee_2disc = 0;//Convert.ToDouble(txt2nd.Text);
                objInfo.Board_Info_Late_Disc = 0;//Convert.ToDouble(txtLate.Text);
            }
            else
            {
                objInfo = new LAPP_administration_board_info();
                objInfo.Created_On = DateTime.Now;
                objInfo.DTS = DateTime.Now;
                objInfo.Is_Active = true;
                objInfo.Is_Deleted = false;
                objInfo.Board_Info_Agency_Name = txtNameOfAgency.Text;
                objInfo.Board_Info_Address_Line1 = txtAddressLine1.Text;
                objInfo.Board_Info_Address_Line2 = txtAddress2.Text;
                objInfo.Board_Info_City = txtCity1.Text;
                objInfo.Board_Info_State = ddlState.SelectedValue;
                objInfo.Board_Info_Zip = txtZIP.Text;
                objInfo.Board_Info_Phone = txtTelephone.Text;
                objInfo.Board_Info_Fax = txtFax.Text;
                objInfo.Board_Info_Contact = txtContact.Text;
                objInfo.Board_Info_Renewal_Form_Text = "";
                objInfo.Board_Info_Report_Data_Path = "";
                objInfo.Board_Info_Renewal_Date_AE = string.IsNullOrWhiteSpace(txtAE.Text) ? UIHelper.DefaultDate() : Convert.ToDateTime(txtAE.Text);
                objInfo.Board_Info_Renewal_Date_FK = string.IsNullOrWhiteSpace(txtFK.Text) ? UIHelper.DefaultDate() : Convert.ToDateTime(txtFK.Text);
                objInfo.Board_Info_Renewal_Date_LR = string.IsNullOrWhiteSpace(txtLR.Text) ? UIHelper.DefaultDate() : Convert.ToDateTime(txtLR.Text);
                objInfo.Board_Info_Renewal_Date_SZ = string.IsNullOrWhiteSpace(txtSZ.Text) ? UIHelper.DefaultDate() : Convert.ToDateTime(txtSZ.Text);
                objInfo.Board_info_Renewal_Start_Before = Convert.ToInt32(txtRenewalEndDate.Text);
                objInfo.Board_info_Renewal_Fee_1disc = 0;// string.IsNullOrWhiteSpace(txt1st.Text) ? 0.00 : Convert.ToDouble(txt1st.Text);
                objInfo.Board_info_Renewal_Fee_2disc = 0;//string.IsNullOrWhiteSpace(txt2nd.Text) ? 0.00 : Convert.ToDouble(txt2nd.Text);
                objInfo.Board_Info_Late_Disc = 0;// string.IsNullOrWhiteSpace(txtLate.Text) ? 0.00 : Convert.ToDouble(txtLate.Text);
                objInfo.Created_By = UIHelper.UserIDBySession();

            }

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBoardInfo.ascx.cs FetchValueFromControl";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
        return objInfo;

    }

    private LAPP_administration_board_info_hist FetchAdminBoardInfoHistiry()
    {
        try
        {

            objAdminHist = new LAPP_administration_board_info_hist();
            objAdminHist.Created_On = DateTime.Now;
            objAdminHist.DTS = DateTime.Now;
            objAdminHist.Is_Active = true;
            objAdminHist.Is_Deleted = false;
            objAdminHist.Board_Info_Agency_Name = txtNameOfAgency.Text;
            objAdminHist.Board_Info_Address_Line1 = txtAddressLine1.Text;
            objAdminHist.Board_Info_Address_Line2 = txtAddress2.Text;
            objAdminHist.Board_Info_City = txtCity1.Text;
            objAdminHist.Board_Info_State = ddlState.SelectedValue;
            objAdminHist.Board_Info_Zip = txtZIP.Text;
            objAdminHist.Board_Info_Phone = txtTelephone.Text;
            objAdminHist.Board_Info_Fax = txtFax.Text;
            objAdminHist.Board_Info_Contact = txtContact.Text;
            objAdminHist.Board_Info_Renewal_Form_Text = "";
            objAdminHist.Board_Info_Report_Data_Path = "";
            objAdminHist.Board_Info_Renewal_Date_AE = string.IsNullOrWhiteSpace(txtAE.Text) ? UIHelper.DefaultDate() : Convert.ToDateTime(txtAE.Text);
            objAdminHist.Board_Info_Renewal_Date_FK = string.IsNullOrWhiteSpace(txtFK.Text) ? UIHelper.DefaultDate() : Convert.ToDateTime(txtFK.Text);
            objAdminHist.Board_Info_Renewal_Date_LR = string.IsNullOrWhiteSpace(txtLR.Text) ? UIHelper.DefaultDate() : Convert.ToDateTime(txtLR.Text);
            objAdminHist.Board_Info_Renewal_Date_SZ = string.IsNullOrWhiteSpace(txtSZ.Text) ? UIHelper.DefaultDate() : Convert.ToDateTime(txtSZ.Text);
            objAdminHist.Board_info_Renewal_Fee_1disc = 0;// string.IsNullOrWhiteSpace(txt1st.Text) ? 0.00 : Convert.ToDouble(txt1st.Text);
            objAdminHist.Board_info_Renewal_Fee_2disc = 0;// string.IsNullOrWhiteSpace(txt2nd.Text) ? 0.00 : Convert.ToDouble(txt2nd.Text);
            objAdminHist.Board_info_Renewal_Start_Before = Convert.ToInt32(txtRenewalEndDate.Text);
            objAdminHist.Board_Info_Late_Disc = 0;// string.IsNullOrWhiteSpace(txtLate.Text) ? 0.00 : Convert.ToDouble(txtLate.Text);
            objAdminHist.Created_By = UIHelper.UserIDBySession();
            objAdminHist.Is_Deleted = false;
            objAdminHist.Is_Active = true;
            objAdminHist.DTS = DateTime.Now;
            objAdminHist.Modified_By = UIHelper.UserIDBySession();
            objAdminHist.Modified_DTS = DateTime.Now;

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBoardInfo.ascx.cs FetchAdminBoardInfoHistiry";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

        return objAdminHist;
    }

    private void BindDropDownStatecd()
    {
        try
        {

            List<LAPP_state_code> lstStateCd = new List<LAPP_state_code>();
            lstStateCd = objstateCdBAL.Get_All_LAPP_state_code();
            if (lstStateCd != null)
            {
                ddlState.DataSource = lstStateCd;
                ddlState.DataTextField = "state_name";
                ddlState.DataValueField = "state_code";
                ddlState.DataBind();
            }
            ddlState.Items.Insert(0, new ListItem("Select", "-1"));
            ddlState.SelectedValue = "-1";
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBoardInfo.ascx.cs BindDropDownStatecd";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }

    }

    #endregion
}