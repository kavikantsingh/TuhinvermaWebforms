using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.CONFIG;
using LAPP.ENTITY.Enumerations;
public partial class Module_UI_Backoffice_Individual_ucLicense : System.Web.UI.UserControl
{
    #region ClassProperties
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
    public int EditIndexNCBTMBEI
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
    public int EditIndexCharacterReferences
    {
        get
        {
            if (ViewState["EditIndexCharacterReferences"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexCharacterReferences"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexCharacterReferences"] = value;
        }
    }
    public int EditIndexMassageTrainingandEducation
    {
        get
        {
            if (ViewState["EditIndexMassageTrainingandEducation"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexMassageTrainingandEducation"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexMassageTrainingandEducation"] = value;
        }
    }
    public int EditIndexLicensureInformation
    {
        get
        {
            if (ViewState["EditIndexLicensureInformation"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexLicensureInformation"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexLicensureInformation"] = value;
        }
    }
    public int EditIndexOtherName
    {
        get
        {
            if (ViewState["EditIndexOtherName"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexOtherName"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexOtherName"] = value;
        }
    }
    public string UploadedImageUrl
    {
        get
        {
            if (Session["UploadedImageUrl"] != null)
            {
                return Convert.ToString(Session["UploadedImageUrl"]);

            }
            else
            {
                return "";
            }
        }
        set
        {
            Session["UploadedImageUrl"] = value;
        }
    }
    public int EditIndexQuestion1
    {
        get
        {
            if (ViewState["EditIndexQuestion1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexQuestion1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexQuestion1"] = value;
        }
    }
    public int EditIndexQuestion2
    {
        get
        {
            if (ViewState["EditIndexQuestion2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexQuestion2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexQuestion2"] = value;
        }
    }
    public int EditIndexQuestion5
    {
        get
        {
            if (ViewState["EditIndexQuestion5"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexQuestion5"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexQuestion5"] = value;
        }
    }
    public int Question_ID
    {
        get
        {
            if (ViewState["Question_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Question_ID"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Question_ID"] = value;
        }
    }
    public int Record_Question1_ID
    {
        get
        {
            if (ViewState["Record_Question1_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Record_Question1_ID"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Record_Question1_ID"] = value;
        }
    }
    public int Record_Question2_ID
    {
        get
        {
            if (ViewState["Record_Question2_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Record_Question2_ID"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Record_Question2_ID"] = value;
        }
    }
    public int Record_Question5_ID
    {
        get
        {
            if (ViewState["Record_Question5_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Record_Question5_ID"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Record_Question5_ID"] = value;
        }
    }

    #endregion

    #region Class Members

    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();

    LAPP_individual objLAPP_individual = new LAPP_individual();
    LAPP_individualBAL objLAPP_individualBAL = new LAPP_individualBAL();

    LAPP_application_status objLAPP_application_status = new LAPP_application_status();
    LAPP_application_statusBAL objLAPP_application_statusBAL = new LAPP_application_statusBAL();
 
    #endregion

    #region Page Event Handler
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridAddress();
        }
    }

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

    protected void btnNote_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton btnEdit = (LinkButton)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
                this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                BindGridAddress();
                FillControlLicence(gvLicense, this.EditIndex);
            }
            DivbtnHistory.Visible = false;
        }
        catch (Exception ex)
        { }
    }

    protected void lnkCloseLicense_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        BindGridAddress();
        DivbtnHistory.Visible = true;
    }

    #endregion

    public void BindGridAddress()
    {
        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("GIC");
        gvLicense.EditIndex = this.EditIndex;
        gvLicense.DataSource = ArryListName;
        gvLicense.DataBind();

        if (this.EditIndex >= 0)
        {
            gvLicense.Rows[this.EditIndex].CssClass = "RowInEditMode";
            gvLicense.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "6");
            gvLicense.Rows[this.EditIndex].Cells[1].Visible = false;
            gvLicense.Rows[this.EditIndex].Cells[2].Visible = false;
            gvLicense.Rows[this.EditIndex].Cells[3].Visible = false;
            gvLicense.Rows[this.EditIndex].Cells[4].Visible = false;
            gvLicense.Rows[this.EditIndex].Cells[5].Visible = false;

        }
    }

    #region PublicMethod

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
    public void Load()
    {
    }
    #endregion

    #region License

    public void BindDDLStatus()
    {
        DropDownList ddlStatus = gvLicense.Rows[this.EditIndex].FindControl("ddlStatus") as DropDownList;

        List<LAPP_application_status> lstLAPP_application_status = new List<LAPP_application_status>();
        lstLAPP_application_status = objLAPP_application_statusBAL.LAPP_application_status_get_by_Status_Type_Id((int)eTabStatusType.Individual);
        if (lstLAPP_application_status != null && lstLAPP_application_status.Count > 0)
        {
            ddlStatus.DataSource = lstLAPP_application_status;
            ddlStatus.DataTextField = "Name";
            ddlStatus.DataValueField = "status_id";
            ddlStatus.DataBind();

        }
        ddlStatus.Items.Insert(0, new ListItem("Select", "-1"));
    }

    public void FillControlLicence(GridView gv, int EditInd)
    {

        BindDDLStatus();

        TextBox txtLicenseNo = gv.Rows[this.EditIndex].FindControl("txtLicenseNo") as TextBox;
        DropDownList ddlStatus = gv.Rows[this.EditIndex].FindControl("ddlStatus") as DropDownList;
        TextBox txtBeganDate = gv.Rows[this.EditIndex].FindControl("txtBeganDate") as TextBox;
        TextBox txtEndingDate = gv.Rows[this.EditIndex].FindControl("txtEndingDate") as TextBox;
        TextBox txtOriginalLicenseDate = gv.Rows[this.EditIndex].FindControl("txtOriginalLicenseDate") as TextBox;
        TextBox txtPostMrkDate = gv.Rows[this.EditIndex].FindControl("txtPostMrkDate") as TextBox;

        objLAPP_individual = new LAPP_individual();
        objLAPP_individual = objLAPP_individualBAL.Get_lapp_Individual_getby_IndividualId(this.Individual_Id);
        if (objLAPP_individual != null)
        {
            txtLicenseNo.Text = objLAPP_individual.License_Number;
            ddlStatus.SelectedValue = Convert.ToString(objLAPP_individual.Status_ID);
            txtBeganDate.Text = objLAPP_individual.Issued_On;
            txtEndingDate.Text = objLAPP_individual.Expired_On;
            txtOriginalLicenseDate.Text = objLAPP_individual.Issued_On;
            txtPostMrkDate.Text = objLAPP_individual.Last_Updated;
        }

    }

    #endregion


}