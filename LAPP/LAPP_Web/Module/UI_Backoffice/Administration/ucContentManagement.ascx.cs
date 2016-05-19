using LAPP.BAL;
using LAPP.ENTITY;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucContentManagement : System.Web.UI.UserControl
{
    #region Class Members
    lapp_content objContent = new lapp_content();
    lapp_contentBAL objContentBal = new lapp_contentBAL();
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    #endregion

    #region Class Properties
    public int Content_ID
    {
        get
        {
            if (ViewState["Content_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Content_ID"].ToString());
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Content_ID"] = value;
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
    public int Edit_IndexRightGrid
    {
        get
        {
            if (ViewState["Edit_IndexRightGrid"] != null)
            {
                return Convert.ToInt32(ViewState["Edit_IndexRightGrid"]);
            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["Edit_IndexRightGrid"] = value;
        }
    }
    #endregion

    #region PageEventHandler

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridRight();
        }
    }
    protected void btnSaveContentGrid_Click(object sender, EventArgs e)
    {
        if (validateContentGrid())
        {
            try
            {
                TextBox txtContentNameGrid = gvContent.Rows[this.Edit_IndexRightGrid].FindControl("txtContentNameGrid") as TextBox;
                TextBox txtContentTextGrid = gvContent.Rows[this.Edit_IndexRightGrid].FindControl("txtContentTextGrid") as TextBox;
                objContent = objContentBal.Get_lapp_content_by_Content_ID(this.Content_ID);
                if (objContent != null)
                {
                    objContent.Content_Text = txtContentTextGrid.Text.Trim();
                    objContent.DTS = DateTime.Now;
                    objContent.Content_ID = this.Content_ID;
                    objContentBal.Update_lapp_content(objContent);
                }
                MessageBox.Show(this.Page, "Updated Successfully", 1);
                this.Edit_IndexRightGrid = -1;
                this.Content_ID = 0;
                txtContentNameGrid.Text = "";
                txtContentTextGrid.Text = "";
                BindGridRight();

            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Logger = "ucContentManagement.ascx.cs btnSaveContentGrid_Click";
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }
    }

    protected void btnCancelContentGrid_Click(object sender, EventArgs e)
    {
        this.Edit_IndexRightGrid = -1;
        BindGridRight();
    }

    protected void imgbtnEditRightGrid1_Click(object sender, EventArgs e)
    {
        try
        {
            this.Edit_IndexRightGrid = -1;
            ImageButton btnEdit = (ImageButton)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
                this.Edit_IndexRightGrid = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                BindGridRight();
                this.Content_ID = ID;
                FillControlContent(gvContent, this.Edit_IndexRightGrid);
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucContentManagement.ascx.cs imgbtnEditRightGrid1_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    protected void imgBtnRightGridDelete_Click(object sender, EventArgs e)
    {
        try
        {
            ImageButton lnkBtn = (ImageButton)sender;
            if (lnkBtn != null)
            {
                int ID = Convert.ToInt32(lnkBtn.CommandArgument);
                objContent = objContentBal.Get_lapp_content_by_Content_ID(ID);
                if (objContent != null)
                {
                    objContent.Is_Deleted = true;
                    objContentBal.Update_lapp_content(objContent);
                    //MessageBox.Show(this.Page, "Deleted Successfully");
                    //ltrOtherName.Text = MessageBox.BuildValidationMessage("Deleted Successfully", 1);
                }
            }
            BindGridRight();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucContentManagement.ascx.cs imgBtnRightGridDelete_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public bool validateContentGrid()
    {
        TextBox txtContentTextGrid = gvContent.Rows[this.Edit_IndexRightGrid].FindControl("txtContentTextGrid") as TextBox;
        Literal ltrContent = gvContent.Rows[this.Edit_IndexRightGrid].FindControl("ltrContent") as Literal;
        string postfixValidateMsg = "";
        string prefixValidateMsg = "";
        ltrContent.Text = "";
        bool Valid = false;
        try
        {
            string validateMsg = "";

            validateMsg += ValidationHelper.IsRequired(txtContentTextGrid.Text, "<li>Please enter Content Text.</li>");

            if (!String.IsNullOrEmpty(validateMsg))
            {
                txtContentTextGrid.Focus();
                string vmsg = prefixValidateMsg + validateMsg + postfixValidateMsg;
                ltrContent.Text = MessageBox.BuildValidationMessage(vmsg, 2);
                Valid = true;
                return false;
            }

            if (Valid == true)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucContentManagement.ascx.cs validateContentGrid";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
            return false;
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }

    protected void btnSearchCancel_Click(object sender, EventArgs e)
    {

    }
    #endregion

    #region Public Methods

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

    public void BindGridRight()
    {
        try
        {
            List<lapp_content> lstlappContent = new List<lapp_content>();
            lapp_contentBAL objLappContentBal = new lapp_contentBAL();
            lstlappContent = objLappContentBal.Get_All_lapp_content();
            lstlappContent = lstlappContent.OrderByDescending(x => x.DTS).ToList();
            gvContent.EditIndex = this.Edit_IndexRightGrid;
            gvContent.DataSource = lstlappContent;
            gvContent.DataBind();
            if (this.Edit_IndexRightGrid >= 0)
            {
                gvContent.Rows[this.Edit_IndexRightGrid].CssClass = "RowInEditMode";
                gvContent.Rows[this.Edit_IndexRightGrid].Cells[0].Attributes.Add("colspan", "4");
                gvContent.Rows[this.Edit_IndexRightGrid].Cells[1].Visible = false;
                gvContent.Rows[this.Edit_IndexRightGrid].Cells[2].Visible = false;
                gvContent.Rows[this.Edit_IndexRightGrid].Cells[3].Visible = false;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucContentManagement.ascx.cs BindGridRight";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public void FillControlContent(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtContentNameGrid = gv.Rows[this.Edit_IndexRightGrid].FindControl("txtContentNameGrid") as TextBox;
            TextBox txtContentTextGrid = gv.Rows[this.Edit_IndexRightGrid].FindControl("txtContentTextGrid") as TextBox;
            objContent = objContentBal.Get_lapp_content_by_Content_ID(this.Content_ID);
            if (objContent != null)
            {
                txtContentNameGrid.Text = objContent.Name;
                txtContentTextGrid.Text = objContent.Content_Text;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Logger = "ucContentManagement.ascx.cs FillControlContent";
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