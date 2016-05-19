using LAPP.BAL;
using LAPP.ENTITY;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucBaordInfoRenewalFees : System.Web.UI.UserControl
{
    string MenuName = "Board Info";
    string Js = "enableTabs();";
    #region Class Members
    LAPP_fee objFee = new LAPP_fee();
    LAPP_feeBAL objFeeBal = new LAPP_feeBAL();
    LAPP_fee_hist objFeeHist = new LAPP_fee_hist();
    LAPP_fee_histBAL objFeeHisBal = new LAPP_fee_histBAL();
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    #endregion

    #region Class Property

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
    public int Fee_ID
    {
        get
        {
            if (ViewState["Fee_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Fee_ID"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Fee_ID"] = value;
        }
    }

    #endregion

    #region Page Event Handler
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //MessageBox.RunJsInUpdatePanel(this.Page, Js);
            pnlSave.Visible = false;
            BindGrid();
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        pnlSave.Visible = false; lnkAddFee.Visible = true; //MessageBox.RunJsInUpdatePanel(this.Page, Js);
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
        {


            Save(); lnkAddFee.Visible = true;
        } //MessageBox.RunJsInUpdatePanel(this.Page, Js);
    }
    protected void imgBtnSave_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            ImageButton imgBtn = (ImageButton)sender;
            if (imgBtn != null)
            {
                if (PermissionHandler.UserHasPermission("U", MenuName, this.Page))
                {
                    int ID = Convert.ToInt32(imgBtn.CommandArgument);
                    SaveGrid(ID);
                }
            } //MessageBox.RunJsInUpdatePanel(this.Page, Js);
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "ucBaordInfoRenewalFees.ascx.cs imgBtnSave_Click";
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
    }
    protected void imgBtnEdit_Click(object sender, ImageClickEventArgs e)
    {

        try
        {
            ImageButton imgBtn = (ImageButton)sender;
            if (imgBtn != null)
            {
                if (PermissionHandler.UserHasPermission("U", MenuName, this.Page))
                {
                    int ID = Convert.ToInt32(imgBtn.CommandArgument);
                    this.EditIndex = Convert.ToInt32(imgBtn.Attributes["RowIndex"]);
                    BindGrid();
                    FillControl(ID);
                }
            }//MessageBox.RunJsInUpdatePanel(this.Page, Js);
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "ucBaordInfoRenewalFees.ascx.cs imgBtnEdit_Click";
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
    }
    protected void imgBtnCancel_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            ImageButton imgBtn = (ImageButton)sender;
            if (imgBtn != null)
            {
                // int ID = Convert.ToInt32(imgBtn.CommandArgument);
                this.EditIndex = -1;// Convert.ToInt32(imgBtn.Attributes["RowIndex"]);
                BindGrid();

            } //MessageBox.RunJsInUpdatePanel(this.Page, Js);
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "ucBaordInfoRenewalFees.ascx.cs imgBtnCancel_Click";
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
    }
    protected void imgBtnDelete_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            ImageButton imgBtn = (ImageButton)sender;
            if (imgBtn != null)
            {
                int ID = Convert.ToInt32(imgBtn.CommandArgument);
                objFeeBal.Delete_LAPP_fee(ID);
                if (objFee != null)
                {
                    objFee.Is_Deleted = true;
                    int recoID = objFeeBal.Save_LAPP_fee(objFee);
                }
                //   MessageBox.Show_Second(this.Page, "Fee Deleted successfully");
            }
            BindGrid(); //MessageBox.RunJsInUpdatePanel(this.Page, Js);
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBaordInfoRenewalFees.ascx.cs imgBtnDelete_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }
    }
    protected void lnkAddFee_Click(object sender, EventArgs e)
    {
        if (PermissionHandler.UserHasPermission("C", MenuName, this.Page))
        {
            pnlSave.Visible = true;
            lnkAddFee.Visible = false;
        } //MessageBox.RunJsInUpdatePanel(this.Page, Js);
    }
    #endregion

    #region Public Methods
    public void BindGrid()
    {
        try
        {

            List<LAPP_fee> lstFee = new List<LAPP_fee>();
            lstFee = objFeeBal.Get_All_LAPP_fee();
            lstFee = lstFee.Where(x => x.Fee_Type_ID == 0).ToList();
            gvRenewalFees.DataSource = lstFee;
            gvRenewalFees.EditIndex = this.EditIndex;
            gvRenewalFees.DataBind();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBaordInfoRenewalFees.ascx.cs BindGrid";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }


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
    public void Save()
    {
        try
        {
            objFee = FetchValueFromControl();
            if (objFee != null)
            {
                int res = objFeeBal.Save_LAPP_fee(objFee);
                if (res > 0)
                {
                    objFeeHist = FetchValueForHist();
                    if (objFeeHist != null)
                    {
                        objFeeHist.Action = "I";
                        objFeeHist.Is_Deleted = objFee.Is_Deleted;
                        objFeeHist.Fee_ID = objFee.Fee_ID;
                        objFeeHisBal.Save_LAPP_fee_hist(objFeeHist);
                    }
                    //  MessageBox.Show_Second(this.Page, "Fee saved successfully");
                    ClearControl();
                    pnlSave.Visible = false;

                    this.Fee_ID = res;
                }
            }
            BindGrid();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBaordInfoRenewalFees.ascx.cs Save";
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
        txtDescription.Text = string.Empty;
        txtEffectiveDate.Text = string.Empty;
        txtEndDate.Text = string.Empty;
        txtFees.Text = string.Empty;
        txtFeeName.Text = string.Empty;
        this.Fee_ID = 0;
    }
    public LAPP_fee FetchValueFromControl()
    {
        try
        {
            objFee = new LAPP_fee();
            objFee.Created_By = UIHelper.UserIDBySession();
            objFee.Created_On = DateTime.Now;
            objFee.DTS = DateTime.Now;
            objFee.Effective_Date = Convert.ToDateTime(txtEffectiveDate.Text);
            objFee.End_Date = Convert.ToDateTime(txtEndDate.Text);
            objFee.Fee_Additonal_Amount = 0;
            objFee.Fee_Amount = Convert.ToDecimal(txtFees.Text);
            objFee.Fee_Description = txtDescription.Text;
            objFee.Fee_Name = txtFeeName.Text;
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBaordInfoRenewalFees.ascx.cs FetchValueFromControl";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }

        return objFee;
    }
    public LAPP_fee_hist FetchValueForHist()
    {
        try
        {
            objFeeHist = new LAPP_fee_hist();
            objFeeHist.Created_By = UIHelper.UserIDBySession();
            objFeeHist.Created_On = DateTime.Now;
            objFeeHist.DTS = DateTime.Now;
            objFeeHist.Effective_Date = Convert.ToDateTime(txtEffectiveDate.Text);
            objFeeHist.End_Date = Convert.ToDateTime(txtEndDate.Text);
            objFeeHist.Fee_Additonal_Amount = 0;
            objFeeHist.Fee_Amount = Convert.ToDecimal(txtFees.Text);
            objFeeHist.Fee_Description = txtDescription.Text;
            objFeeHist.Fee_Name = txtFeeName.Text;
            objFeeHist.Modified_By = UIHelper.UserIDBySession();
            objFeeHist.Modified_DTS = DateTime.Now;
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBaordInfoRenewalFees.ascx.cs FetchValueForHist";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }


        return objFeeHist;
    }
    public LAPP_fee_hist FetchValueFromControlForGridHist(int ID)
    {
        objFee = objFeeBal.Get_LAPP_fee_BY_ID(ID);

        try
        {
            //TextBox txtFeesGrid = gvRenewalFees.Rows[this.EditIndex].FindControl("txtFees") as TextBox;
            //TextBox txtEffectiveDateGrid = gvRenewalFees.Rows[this.EditIndex].FindControl("txtEffectiveDate") as TextBox;
            //TextBox txtEndDateGrid = gvRenewalFees.Rows[this.EditIndex].FindControl("txtEndDate") as TextBox;
            //TextBox txtFeeNameGrid = gvRenewalFees.Rows[this.EditIndex].FindControl("txtFeeName") as TextBox;
            objFeeHist = new LAPP_fee_hist();
            objFeeHist.Created_By = objFee.Created_By;
            objFeeHist.Created_On = objFee.Created_On;
            objFeeHist.DTS = objFee.DTS;
            objFeeHist.Effective_Date = UIHelper.DefaultDate();// Convert.ToDateTime(txtEffectiveDateGrid.Text);
            objFeeHist.End_Date = UIHelper.DefaultDate();// Convert.ToDateTime(txtEndDateGrid.Text);
            objFeeHist.Fee_Additonal_Amount = objFee.Fee_Additonal_Amount;
            objFeeHist.Fee_Amount = objFee.Fee_Amount;
            objFeeHist.Fee_Description = objFee.Fee_Description;
            objFeeHist.Fee_Name = objFee.Fee_Name;
            objFeeHist.Modified_By = UIHelper.UserIDBySession();
            objFeeHist.Modified_DTS = DateTime.Now;

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBaordInfoRenewalFees.ascx.cs FetchValueFromControlForGridHist";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }
        return objFeeHist;

    }
    public LAPP_fee FetchValueFromControlForGrid()
    {
        try
        {
            TextBox txtFeesGrid = gvRenewalFees.Rows[this.EditIndex].FindControl("txtFees") as TextBox;
            TextBox txtEffectiveDateGrid = gvRenewalFees.Rows[this.EditIndex].FindControl("txtEffectiveDate") as TextBox;
            TextBox txtEndDateGrid = gvRenewalFees.Rows[this.EditIndex].FindControl("txtEndDate") as TextBox;
            TextBox txtFeeNameGrid = gvRenewalFees.Rows[this.EditIndex].FindControl("txtFeeName") as TextBox;
            objFee = new LAPP_fee();
            objFee.Created_By = UIHelper.UserIDBySession();
            objFee.Created_On = DateTime.Now;
            objFee.DTS = DateTime.Now;
            objFee.Effective_Date = UIHelper.DefaultDate();// Convert.ToDateTime(txtEffectiveDateGrid.Text);
            objFee.End_Date = UIHelper.DefaultDate();// Convert.ToDateTime(txtEndDateGrid.Text);
            objFee.Fee_Additonal_Amount = 0;
            objFee.Fee_Amount = Convert.ToDecimal(txtFeesGrid.Text);
            objFee.Fee_Description = txtDescription.Text;
            objFee.Fee_Name = txtFeeNameGrid.Text;
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBaordInfoRenewalFees.ascx.cs FetchValueFromControlForGrid";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }
        return objFee;
    }
    public void SaveGrid(int ID)
    {
        try
        {
            objFee = FetchValueFromControlForGrid();
            if (objFee != null)
            {
                int res = objFeeBal.Update_LAPP_fee(objFee, ID);

                try
                {
                    objFeeHist = FetchValueFromControlForGridHist(ID);
                    if (objFeeHist != null)
                    {
                        objFeeHist.Action = "U";
                        objFeeHist.Is_Deleted = objFee.Is_Deleted;
                        objFeeHist.Fee_ID = objFee.Fee_ID;
                        objFeeHisBal.Save_LAPP_fee_hist(objFeeHist);
                    }
                }
                catch (Exception ex)
                {
                    objExLog = Fetchlog();
                    objExLog.Thread = ex.StackTrace.ToString();
                    objExLog.Logger = "ucBaordInfoRenewalFees.ascx.cs SaveGrid";
                    objExLog.Message = ex.Message;
                    objExLog.Exception = ex.ToString();
                    objExLog.Context = ex.Source;
                    objexLogBal.Save_LAPP_exception_log(objExLog);
                    objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                    MessageBox.Show(this.Page, ex.Message, 2);
                }

                // MessageBox.Show_Second(this.Page, "Fee updated successfully");
                this.EditIndex = -1;
                BindGrid();
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucBoardInfoRenewalFees.ascx-SaveGrid";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }


    }
    public void FillControl(int ID)
    {
        try
        {
            TextBox txtFeesGrid = gvRenewalFees.Rows[this.EditIndex].FindControl("txtFees") as TextBox;
            TextBox txtEffectiveDateGrid = gvRenewalFees.Rows[this.EditIndex].FindControl("txtEffectiveDate") as TextBox;
            TextBox txtEndDateGrid = gvRenewalFees.Rows[this.EditIndex].FindControl("txtEndDate") as TextBox;
            TextBox txtFeeNameGrid = gvRenewalFees.Rows[this.EditIndex].FindControl("txtFeeName") as TextBox;

            objFee = objFeeBal.Get_LAPP_fee_BY_ID(ID);
            if (objFee != null)
            {
                //txtEffectiveDateGrid.Text = objFee.Effective_Date.ToShortDateString();
                //txtEndDateGrid.Text = objFee.End_Date.ToShortDateString();
                txtFeeNameGrid.Text = objFee.Fee_Name;
                txtFeesGrid.Text = objFee.Fee_Amount.ToString("0.00");
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucBaordInfoRenewalFees.ascx.cs FillControl";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show_Second(this.Page, ex.Message, 2);
        }


    }
    #endregion
}