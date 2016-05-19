using LAPP.BAL;
using LAPP.ENTITY;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucApplicationFee : System.Web.UI.UserControl
{
    #region Class Members

    Lapp_application_fee objLapp_application_fee = new Lapp_application_fee();
    Lapp_application_feeBAL objLapp_application_feeBAL = new Lapp_application_feeBAL();
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    lapp_application_fee_detailsBAL objlapp_application_fee_detailsBAL = new lapp_application_fee_detailsBAL();
    lapp_application_fee_details objlapp_application_fee_details = new lapp_application_fee_details();

    #endregion

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
    public int EditIndexDetail
    {
        get
        {
            if (ViewState["EditIndexDetail"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexDetail"]);
            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexDetail"] = value;
        }
    }
    public int Application_ID
    {
        get
        {
            if (ViewState["Application_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Application_ID"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Application_ID"] = value;
        }
    }
    public int Fee_Detail_Id
    {
        get
        {
            if (ViewState["Fee_Detail_Id"] != null)
            {
                return Convert.ToInt32(ViewState["Fee_Detail_Id"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Fee_Detail_Id"] = value;
        }
    }
    public string Application_Name
    {
        get
        {
            if (ViewState["Application_Name"] != null)
            {
                return Convert.ToString(ViewState["Application_Name"]);
            }
            else
            {
                return "";
            }
        }
        set
        {
            ViewState["Application_Name"] = value;
        }
    }
    #endregion

    #region Page Event Handler

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            string Validation = Validate_ControlsSave();
            if (Validation == "")
            {
                int Application_ID = 0;
                for (int i = 0; i < gvAppFee.Rows.Count; i++)
                {
                    TextBox txtFee = gvAppFee.Rows[i].FindControl("txtFee") as TextBox;
                    TextBox txtLateFee = gvAppFee.Rows[i].FindControl("txtLateFee") as TextBox;
                    HiddenField hfID = (HiddenField)gvAppFee.Rows[i].Cells[0].FindControl("hfID");
                    Application_ID = Convert.ToInt32(hfID.Value);
                    if (txtFee != null && txtLateFee != null)
                    {
                        objLapp_application_fee = objLapp_application_feeBAL.Get_Lapp_application_fee_Get_by_Application_ID(Application_ID);
                        if (objLapp_application_fee != null)
                        {
                            objLapp_application_fee.Fee = Convert.ToDecimal(txtFee.Text);
                            objLapp_application_fee.Late_Fee = Convert.ToDecimal(txtLateFee.Text);
                            objLapp_application_fee.Created_By = 1;
                            objLapp_application_fee.Modified_By = 1;
                            objLapp_application_feeBAL.Update_Lapp_application_fee(objLapp_application_fee, Application_ID);
                        }

                    }
                }
                MessageBox.Show(this.Page, "Updated Sucessfully", 1);
            }
            BindGrid();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucApplicationFee.ascx.cs btnUpdate_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    protected void gvAppFee_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvAppFee.PageIndex = e.NewPageIndex;
        BindGrid();
    }

    #endregion

    #region Public Methods

    public void BindGrid()
    {
        try
        {
            List<Lapp_application_fee> lstLapp_application_fee = new List<Lapp_application_fee>();
            lstLapp_application_fee = objLapp_application_feeBAL.Get_All_Lapp_application_fee();
            {
                gvAppFee.DataSource = lstLapp_application_fee;
                gvAppFee.EditIndex = this.EditIndex;
                gvAppFee.DataBind();
                if (this.EditIndex >= 0)
                {
                    gvAppFee.Rows[this.EditIndex].CssClass = "RowInEditMode";
                    gvAppFee.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "5");
                    gvAppFee.Rows[this.EditIndex].Cells[1].Visible = false;
                    gvAppFee.Rows[this.EditIndex].Cells[2].Visible = false;
                    gvAppFee.Rows[this.EditIndex].Cells[3].Visible = false;
                    gvAppFee.Rows[this.EditIndex].Cells[4].Visible = false;
                }
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucApplicationFee.ascx.cs BindGrid";
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
        for (int i = 0; i < gvAppFee.Rows.Count; i++)
        {

            TextBox txtFee = gvAppFee.Rows[i].FindControl("txtFee") as TextBox;
            txtFee.Text = string.Empty;
        }
    }

    #endregion

    #region Private Methods
    private string Validate_ControlsSave()
    {
        string prefixValidateMsg = "<ul class=\"Validation\">";
        string validateMsg = "";
        string vmsg = "";
        try
        {
            for (int i = 0; i < gvAppFee.Rows.Count; i++)
            {
                TextBox txtFee = gvAppFee.Rows[i].FindControl("txtFee") as TextBox;
                TextBox txtLateFee = gvAppFee.Rows[i].FindControl("txtLateFee") as TextBox;
                validateMsg += ValidationHelper.IsValidIntDecimal(txtFee.Text, "<li>Please Enter Valid Fee</li>");
                validateMsg += ValidationHelper.IsValidIntDecimal(txtLateFee.Text, "<li>Please Enter Valid Late Fee</li>");

                string postfixValidateMsg = "</ul>";

                if (!String.IsNullOrEmpty(validateMsg))
                {
                    vmsg = prefixValidateMsg + validateMsg + postfixValidateMsg;
                    MessageBox.Show(this.Page, vmsg, 2);

                }
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucApplicationFee.ascx.cs Validate_ControlsSave";
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
        objExLog.Thread = "error occured";
        objExLog.Date = DateTime.Now;
        objExLog.Level = "Low";
        objExLog.Logger = "errorLogger";
        return objExLog;
    }

    #endregion

    protected void lnkDetail_Click(object sender, EventArgs e)
    {
        LinkButton btnEdit = (LinkButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            string AppName = btnEdit.CommandName;
            this.Application_ID = ID;
            this.Application_Name = AppName;
            this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGrid();
            BindGridDetail();

        }
    }
    protected void btnClose_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        BindGrid();
    }

    #region FeeDetail
    protected void gvAppFeeDetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView gvDetail = gvAppFee.Rows[this.EditIndex].FindControl("gvAppFeeDetail") as GridView;
        gvDetail.PageIndex = e.NewPageIndex;
        BindGridDetail();
    }
    protected void imgbtnFeeDetailEdit_Click(object sender, EventArgs e)
    {
        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.Fee_Detail_Id = ID;
            this.EditIndexDetail = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridDetail();

            FillDetailEdit();

            HtmlGenericControl divAddNewButton = gvAppFee.Rows[this.EditIndex].FindControl("divAddNewButton") as HtmlGenericControl;
            HtmlGenericControl divAddNew = gvAppFee.Rows[this.EditIndex].FindControl("divAddNew") as HtmlGenericControl;
            divAddNewButton.Visible = true;
            divAddNew.Visible = false;
        }
    }
    public void BindGridDetail()
    {
        try
        {
            GridView gvDetail = gvAppFee.Rows[this.EditIndex].FindControl("gvAppFeeDetail") as GridView;


            List<lapp_application_fee_details> lstLapp_application_feeDetails = new List<lapp_application_fee_details>();
            lstLapp_application_feeDetails = objlapp_application_fee_detailsBAL.Get_All_lapp_application_fee_details_by_Application_Id(this.Application_ID);
            {
                gvDetail.DataSource = lstLapp_application_feeDetails;
                gvDetail.EditIndex = this.EditIndexDetail;
                gvDetail.DataBind();
                if (this.EditIndexDetail >= 0)
                {
                    gvDetail.Rows[this.EditIndexDetail].CssClass = "RowInEditMode";
                    gvDetail.Rows[this.EditIndexDetail].Cells[0].Attributes.Add("colspan", "4");
                    gvDetail.Rows[this.EditIndexDetail].Cells[1].Visible = false;
                    gvDetail.Rows[this.EditIndexDetail].Cells[2].Visible = false;
                    gvDetail.Rows[this.EditIndexDetail].Cells[3].Visible = false;
                }
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucApplicationFee.ascx.cs BindGrid";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);

        }
    }
    public void FillDetailEdit()
    {
        GridView gvAppFeeDetail = gvAppFee.Rows[this.EditIndex].FindControl("gvAppFeeDetail") as GridView;
        TextBox txtNameEdit = gvAppFeeDetail.Rows[this.EditIndexDetail].FindControl("txtNameEdit") as TextBox;

        TextBox txtFeeEdit = gvAppFeeDetail.Rows[this.EditIndexDetail].FindControl("txtFeeEdit") as TextBox;
        TextBox txtSOEdit = gvAppFeeDetail.Rows[this.EditIndexDetail].FindControl("txtSOEdit") as TextBox;
        TextBox txtLateFeeEdit = gvAppFeeDetail.Rows[this.EditIndexDetail].FindControl("txtLateFeeEdit") as TextBox;

        objlapp_application_fee_details = objlapp_application_fee_detailsBAL.Get_lapp_application_fee_details_BY_ID(this.Fee_Detail_Id);
        if (objlapp_application_fee_details != null)
        {
            txtFeeEdit.Text = objlapp_application_fee_details.Fee.ToString();
            txtSOEdit.Text = objlapp_application_fee_details.Sort_order.ToString();
            txtLateFeeEdit.Text = objlapp_application_fee_details.Late_Fee.ToString();
            txtNameEdit.Text = objlapp_application_fee_details.Application_Name;
        }

    }
    protected void brnAddNew_Click(object sender, EventArgs e)
    {
        HtmlGenericControl divAddNewButton = gvAppFee.Rows[this.EditIndex].FindControl("divAddNewButton") as HtmlGenericControl;
        HtmlGenericControl divAddNew = gvAppFee.Rows[this.EditIndex].FindControl("divAddNew") as HtmlGenericControl;
        divAddNewButton.Visible = false;
        divAddNew.Visible = true;
    }
    protected void btnAddNewCancel_Click(object sender, EventArgs e)
    {
        HtmlGenericControl divAddNewButton = gvAppFee.Rows[this.EditIndex].FindControl("divAddNewButton") as HtmlGenericControl;
        HtmlGenericControl divAddNew = gvAppFee.Rows[this.EditIndex].FindControl("divAddNew") as HtmlGenericControl;
        Literal ltrErrorMessage = gvAppFee.Rows[this.EditIndex].FindControl("ltrErrorMessage") as Literal;
        ltrErrorMessage.Text = "";
        divAddNewButton.Visible = true;
        divAddNew.Visible = false;
    }
    protected void btnUpdateDetailCancel_Click(object sender, EventArgs e)
    {
        Literal ltrErrorMessage = gvAppFee.Rows[this.EditIndex].FindControl("ltrErrorMessage") as Literal;
        ltrErrorMessage.Text = "";
        this.EditIndexDetail = -1;
        BindGridDetail();
    }
    protected void btnUpdateDetail_Click(object sender, EventArgs e)
    {
        GridView gvAppFeeDetail = gvAppFee.Rows[this.EditIndex].FindControl("gvAppFeeDetail") as GridView;
        TextBox txtFeeEdit = gvAppFeeDetail.Rows[this.EditIndexDetail].FindControl("txtFeeEdit") as TextBox;
        TextBox txtSOEdit = gvAppFeeDetail.Rows[this.EditIndexDetail].FindControl("txtSOEdit") as TextBox;
        TextBox txtNameEdit = gvAppFeeDetail.Rows[this.EditIndexDetail].FindControl("txtNameEdit") as TextBox;
        TextBox txtLateFeeEdit = gvAppFeeDetail.Rows[this.EditIndexDetail].FindControl("txtLateFeeEdit") as TextBox;
        Literal ltrErrorMessage = gvAppFee.Rows[this.EditIndex].FindControl("ltrErrorMessage") as Literal;
        ltrErrorMessage.Text = "";
        string validateMsgOther = "";

        validateMsgOther += ValidationHelper.IsValidIntDecimal(txtFeeEdit.Text, "<li>Please enter valid Fee.</li>");
        validateMsgOther += ValidationHelper.IsRequired(txtFeeEdit.Text, "<li>Please enter Name.</li>");

        if (!String.IsNullOrEmpty(validateMsgOther))
        {
            txtFeeEdit.Focus();
            ltrErrorMessage.Text = MessageBox.BuildValidationMessage(validateMsgOther, 2);
            return;
        }
        if (txtLateFeeEdit.Text == "")
        {
            txtLateFeeEdit.Text = "0";
        }
        if (txtSOEdit.Text == "")
        {
            txtSOEdit.Text = "0";
        }
        objlapp_application_fee_details = new lapp_application_fee_details();
        objlapp_application_fee_details = objlapp_application_fee_detailsBAL.Get_lapp_application_fee_details_BY_ID(this.Fee_Detail_Id);
        if (objlapp_application_fee_details != null)
        {
            objlapp_application_fee_details.Application_Id = this.Application_ID;
            objlapp_application_fee_details.Application_Name = txtNameEdit.Text;
            objlapp_application_fee_details.DTS = DateTime.Now;
            objlapp_application_fee_details.Fee = Convert.ToDecimal(txtFeeEdit.Text);
            objlapp_application_fee_details.Late_Fee = Convert.ToDecimal(txtLateFeeEdit.Text);
            objlapp_application_fee_details.Sort_order = Convert.ToInt32(txtSOEdit.Text);
            objlapp_application_fee_details.Modified_By = UIHelper.UserIDBySession();
            objlapp_application_fee_details.Modified_On = DateTime.Now;

            objlapp_application_fee_detailsBAL.Update_lapp_application_fee_details(objlapp_application_fee_details);
        }
        this.EditIndexDetail = -1;
        BindGridDetail();
    }
    protected void btnSaveDetail_Click(object sender, EventArgs e)
    {
        TextBox txtFee = gvAppFee.Rows[this.EditIndex].FindControl("txtFee") as TextBox;
        TextBox txtLateFee = gvAppFee.Rows[this.EditIndex].FindControl("txtLateFee") as TextBox;
        TextBox txtSO = gvAppFee.Rows[this.EditIndex].FindControl("txtSO") as TextBox;
        TextBox txtName = gvAppFee.Rows[this.EditIndex].FindControl("txtName") as TextBox;

        Literal ltrErrorMessage = gvAppFee.Rows[this.EditIndex].FindControl("ltrErrorMessage") as Literal;
        ltrErrorMessage.Text = "";
        string validateMsgOther = "";

        validateMsgOther += ValidationHelper.IsValidIntDecimal(txtFee.Text, "<li>Please enter valid Fee.</li>");

        validateMsgOther += ValidationHelper.IsRequired(txtName.Text, "<li>Please enter Name.</li>");

        if (!String.IsNullOrEmpty(validateMsgOther))
        {
            txtFee.Focus();
            ltrErrorMessage.Text = MessageBox.BuildValidationMessage(validateMsgOther, 2);
            return;
        }
        if (txtLateFee.Text == "")
        {
            txtLateFee.Text = "0";
        }
        if (txtSO.Text == "")
        {
            txtSO.Text = "0";
        }
        objlapp_application_fee_details = new lapp_application_fee_details();
        objlapp_application_fee_details.Application_Id = this.Application_ID;
        objlapp_application_fee_details.Application_Name = txtName.Text;
        objlapp_application_fee_details.Created_By = UIHelper.UserIDBySession();
        objlapp_application_fee_details.Created_On = DateTime.Now;
        objlapp_application_fee_details.DTS = DateTime.Now;
        objlapp_application_fee_details.Fee = Convert.ToDecimal(txtFee.Text);
        objlapp_application_fee_details.Late_Fee = Convert.ToDecimal(txtLateFee.Text);
        objlapp_application_fee_details.Sort_order = Convert.ToInt32(txtSO.Text);
        objlapp_application_fee_details.Modified_By = UIHelper.UserIDBySession();
        objlapp_application_fee_details.Modified_On = DateTime.Now;

        if (objlapp_application_fee_details != null)
        {
            objlapp_application_fee_detailsBAL.Save_lapp_application_fee_details(objlapp_application_fee_details);
        }

        HtmlGenericControl divAddNewButton = gvAppFee.Rows[this.EditIndex].FindControl("divAddNewButton") as HtmlGenericControl;
        HtmlGenericControl divAddNew = gvAppFee.Rows[this.EditIndex].FindControl("divAddNew") as HtmlGenericControl;
        divAddNewButton.Visible = true;
        divAddNew.Visible = false;
        BindGridDetail();
    }
    protected void imgBtnFeeDetailDelete_Click(object sender, EventArgs e)
    {
        try
        {
            ImageButton lnkBtn = (ImageButton)sender;
            if (lnkBtn != null)
            {
                int ID = Convert.ToInt32(lnkBtn.CommandArgument);
                objlapp_application_fee_details = objlapp_application_fee_detailsBAL.Get_lapp_application_fee_details_BY_ID(ID);
                if (objlapp_application_fee_details != null)
                {
                    objlapp_application_fee_details.Is_Deleted = true;
                    objlapp_application_fee_details.DTS = DateTime.Now;

                    objlapp_application_fee_detailsBAL.Update_lapp_application_fee_details(objlapp_application_fee_details);
                    //MessageBox.Show(this.Page, "Deleted Successfully");
                    //ltrOtherName.Text = MessageBox.BuildValidationMessage("Deleted Successfully", 1);
                }
            }
            BindGridDetail();
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

    #endregion
}