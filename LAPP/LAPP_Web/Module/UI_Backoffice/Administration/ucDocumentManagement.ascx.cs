using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucDocumentManagement : System.Web.UI.UserControl
{
    #region Class Members

    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();


    lapp_documents objlapp_documents = new lapp_documents();
    lapp_documentsBAL objlapp_documentsBAL = new lapp_documentsBAL();
    LAPP_file_holder objLAPP_file_holder = new LAPP_file_holder();
    LAPP_file_holderBAL objLAPP_file_holderBAL = new LAPP_file_holderBAL();

    LAPP_application_status objLAPP_application_status = new LAPP_application_status();
    LAPP_application_statusBAL objLAPP_application_statusBAL = new LAPP_application_statusBAL();
    LAPP_individual objLAPP_individual = new LAPP_individual();
    LAPP_individualBAL objLAPP_individualBAL = new LAPP_individualBAL();

    #endregion

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
    public string License_Number
    {
        get
        {
            if (ViewState["License_Number"] != null)
            {
                return (ViewState["License_Number"]).ToString();
            }
            else
            {
                return "NVBMT0001";
            }

        }
        set
        {
            ViewState["License_Number"] = value;
        }

    }
    public bool Is_Search
    {
        get
        {
            if (ViewState["Is_Search"] != null)
            {
                return Convert.ToBoolean(ViewState["Is_Search"]);
            }
            else
            {
                return false;
            }
        }
        set
        {
            ViewState["Is_Search"] = value;
        }
    }

    #endregion

    #region PageEventHandler

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    protected void lnkViewDocument_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        LinkButton btnEdit = (LinkButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGrid();
            this.Individual_Id = ID;
            BindGridDuplicate();
            BindGridNewApplication();
            BindGridRenewals();
            BindGridTemporary();
            BindGridTransferApp();
        }
    }

    #endregion

    #region Methods

    public void BindGrid()
    {
        try
        {
            List<LAPP_individual> lstLAPPindividual = new List<LAPP_individual>();
            if (Is_Search)
            {
                lstLAPPindividual = objLAPP_individualBAL.Get_All_LAPP_individual_WithName();
                if ((!String.IsNullOrEmpty(txtFirstName.Text.Trim()) || !String.IsNullOrEmpty(txtLastName.Text.Trim()) || !String.IsNullOrEmpty(txtLicenseNumber.Text.Trim()) || !String.IsNullOrEmpty(txtSSN.Text.Trim())))
                {

                    string LastName = txtLastName.Text.Trim();
                    string FirstName = txtFirstName.Text.Trim();
                    if (txtLastName.Text.Contains("'"))
                    {
                        LastName = string.Join("", txtLastName.Text.Split('\'').Skip(1).ToArray());
                    }
                    if (txtFirstName.Text.Contains("'"))
                    {
                        LastName = string.Join("", txtFirstName.Text.Split('\'').Skip(1).ToArray());
                    }

                    lstLAPPindividual = objLAPP_individualBAL.Search_LAPP_individual(txtLicenseNumber.Text.Trim(), txtSSN.Text.Trim(), FirstName, LastName, false);
                }
                else
                {
                    // btnClearFilter.Visible = false;
                }
                //if (Is_Search && ddlSearchStatus.SelectedValue != "-1" && lstLAPPindividual != null && lstLAPPindividual.Count > 0)
                //{
                //    btnClearFilter.Visible = true;
                //}
            }
            else
            {
                lstLAPPindividual = objLAPP_individualBAL.Get_All_LAPP_individual_WithName();
            }
            lstLAPPindividual = lstLAPPindividual.OrderByDescending(x => x.Created_On).ToList();
            gvIndividualMainGrid.DataSource = lstLAPPindividual;
            gvIndividualMainGrid.EditIndex = this.EditIndex;
            gvIndividualMainGrid.DataBind();

            //if (this.EditIndex != -1)
            //{

            //}
            //else
            //{
            //    if (lstLAPPindividual != null && lstLAPPindividual.Count > 0)
            //    {
            //        this.EditIndex = 0;
            //    }
            //}

            if (this.EditIndex >= 0)
            {
                gvIndividualMainGrid.Rows[this.EditIndex].CssClass = "RowInEditMode";
                gvIndividualMainGrid.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "4");
                gvIndividualMainGrid.Rows[this.EditIndex].Cells[1].Visible = false;
                gvIndividualMainGrid.Rows[this.EditIndex].Cells[2].Visible = false;
                gvIndividualMainGrid.Rows[this.EditIndex].Cells[3].Visible = false;

            }

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-Individual.aspx-BindGrid";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

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

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        this.Is_Search = true;
        BindGrid();
    }

    protected void btnSearchCancel_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtLicenseNumber.Text = "";
        txtSSN.Text = "";
        this.EditIndex = -1;
        this.Is_Search = false;
        BindGrid();
    }

    protected void lnkArchive_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        this.Is_Search = false;
        BindGrid();
    }

    protected void btnDocumentClose_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        BindGrid();
    }

    #region Bind Grids

    public void BindGridNewApplication()
    {
        try
        {
            GridView gvNewApplication = gvIndividualMainGrid.Rows[this.EditIndex].FindControl("gvNewApplication") as GridView;

            List<LAPP_file_holder> lstLAPP_file_holder1 = new List<LAPP_file_holder>();
            lstLAPP_file_holder1 = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Type_Id((int)eApplicationType.NewSchoolApplication, this.Individual_Id);
            if (lstLAPP_file_holder1 != null && lstLAPP_file_holder1.Count > 0)
            {
                lstLAPP_file_holder1 = lstLAPP_file_holder1.Where(x => x.File_Type_Id != 0).ToList();
                lstLAPP_file_holder1 = lstLAPP_file_holder1.OrderByDescending(x => x.Created_On).ToList();
            }
            gvNewApplication.DataSource = lstLAPP_file_holder1;
            gvNewApplication.DataBind();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucDocuments.ascx-BindGridNewApplication";

            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    public void BindGridTransferApp()
    {
        try
        {
            GridView gvTransferApplication = gvIndividualMainGrid.Rows[this.EditIndex].FindControl("gvTransferApplication") as GridView;

            List<LAPP_file_holder> lstLAPP_file_holder2 = new List<LAPP_file_holder>();
            lstLAPP_file_holder2 = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Type_Id((int)eApplicationType.TransferApplication, this.Individual_Id);
            if (lstLAPP_file_holder2 != null && lstLAPP_file_holder2.Count > 0)
            {
                lstLAPP_file_holder2 = lstLAPP_file_holder2.Where(x => x.File_Type_Id != 0).ToList();
                lstLAPP_file_holder2 = lstLAPP_file_holder2.OrderByDescending(x => x.Created_On).ToList();

            }
            gvTransferApplication.DataSource = lstLAPP_file_holder2;
            gvTransferApplication.DataBind();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucDocuments.ascx-BindGridTransferApp";

            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    public void BindGridRenewals()
    {
        try
        {
            GridView gvRenewals = gvIndividualMainGrid.Rows[this.EditIndex].FindControl("gvRenewals") as GridView;

            List<LAPP_file_holder> lstLAPP_file_holder3 = new List<LAPP_file_holder>();
            lstLAPP_file_holder3 = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Type_Id((int)eApplicationType.NewSchoolApplication, this.Individual_Id);//RenewalApplication);
            if (lstLAPP_file_holder3 != null && lstLAPP_file_holder3.Count > 0)
            {
                lstLAPP_file_holder3 = lstLAPP_file_holder3.Where(x => x.File_Type_Id != 0).ToList();
                lstLAPP_file_holder3 = lstLAPP_file_holder3.OrderByDescending(x => x.Created_On).ToList();
            }
            gvRenewals.DataSource = lstLAPP_file_holder3;
            gvRenewals.DataBind();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucDocuments.ascx-BindGridRenewals";

            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    public void BindGridTemporary()
    {
        try
        {
            GridView gvTemporaryApplication = gvIndividualMainGrid.Rows[this.EditIndex].FindControl("gvTemporaryApplication") as GridView;

            List<LAPP_file_holder> lstLAPP_file_holder4 = new List<LAPP_file_holder>();
            lstLAPP_file_holder4 = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Type_Id((int)eApplicationType.NewSchoolApplication, this.Individual_Id);//TemporaryApplication);
            if (lstLAPP_file_holder4 != null && lstLAPP_file_holder4.Count > 0)
            {
                lstLAPP_file_holder4 = lstLAPP_file_holder4.Where(x => x.File_Type_Id != 0).ToList();
                lstLAPP_file_holder4 = lstLAPP_file_holder4.OrderByDescending(x => x.Created_On).ToList();
            }
            gvTemporaryApplication.DataSource = lstLAPP_file_holder4;
            gvTemporaryApplication.DataBind();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucDocuments.ascx-BindGridTemporary";

            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    public void BindGridDuplicate()
    {
        try
        {
            GridView gvDuplicateLicense = gvIndividualMainGrid.Rows[this.EditIndex].FindControl("gvDuplicateLicense") as GridView;

            List<LAPP_file_holder> lstLAPP_file_holder5 = new List<LAPP_file_holder>();
            lstLAPP_file_holder5 = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Type_Id((int)eApplicationType.NewSchoolApplication, this.Individual_Id);//DuplicateLicenseApplication);
            if (lstLAPP_file_holder5 != null && lstLAPP_file_holder5.Count > 0)
            {
                lstLAPP_file_holder5 = lstLAPP_file_holder5.Where(x => x.File_Type_Id != 0).ToList();
                lstLAPP_file_holder5 = lstLAPP_file_holder5.OrderByDescending(x => x.Created_On).ToList();

            }
            gvDuplicateLicense.DataSource = lstLAPP_file_holder5;
            gvDuplicateLicense.DataBind();
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-ucDocuments.ascx-BindGridDuplicate";

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