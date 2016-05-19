using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.ENTITY;
using LAPP.BAL;
using System.Web.UI.HtmlControls;
using LAPP.ENTITY.Enumerations;
using System.Threading;
using LAPP.CONFIG;

public partial class LAPP_UI_Backoffice_SchoolWorkflow_SchoolApplication : System.Web.UI.Page
{
    Thread thName;
    Thread thAddress;
    Thread thApplication;
    Thread thLicense;
    Thread thNotes;
    Thread thTask;
    Thread thDocuments;
    Thread thBoardPacket;

    protected override void OnPreRender(EventArgs e)
    {
        if (thName != null)
        { thName.Join(); }

        if (thAddress != null)
        { thAddress.Join(); }

        if (thAddress != null)
        { thAddress.Join(); }

        if (thApplication != null)
        { thApplication.Join(); }

        if (thLicense != null)
        { thLicense.Join(); }

        if (thNotes != null)
        { thNotes.Join(); }

        if (thTask != null)
        { thTask.Join(); }

        if (thDocuments != null)
        { thDocuments.Join(); }

        if (thBoardPacket != null)
        { thBoardPacket.Join(); }


        base.OnPreRender(e);
    }

    #region Class Members

    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();

    LAPP_individual objLAPP_individual = new LAPP_individual();
    LAPP_individualBAL objLAPP_individualBAL = new LAPP_individualBAL();
    LAPP_application_statusBAL objLAPP_application_statusBAL = new LAPP_application_statusBAL();

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
        Page.Form.Attributes.Add("enctype", "multipart/form-data");
        if (!IsPostBack)
        {
            if (this.Individual_Id > 0)
            {
                btnClearFilter.Visible = false;
            }
            //MessageBox.RunJsInUpdatePanel(this.Page, "javascript:showDivSlide('.userHide');hideDivSlide('.searchBbutton');");
            BindGrid();
            if (this.EditIndex == 0)
            {
                InitiateFirstRowClick();
            }
            BindDDLStatus();
            Tabs();
            ucIndividual1.BindDDLStatus();
            fillstatusddl();

            ButtonTabs();
            BindGridApprovalAgency();
            BindGridMassageProgrameName();
            BindGridRelatedSchool();
            
            
            BindGridAdminInfo20();
            
            BindGridSchoolInfoPrevious();
            BindGridSatelliteLocation();

        }
        ucIndividual1.UCClick += new EventHandler(btnBindGrid);
        ucIndividual1.UCClick2 += new EventHandler(Cancel);

    }

    private void fillstatusddl()
    {
        objLAPP_individual = objLAPP_individualBAL.Get_All_LAPP_individual_Get_BY_ID(this.Individual_Id);
        if (objLAPP_individual != null && this.Individual_Id > 0)
        {
            ddlAppStatus.SelectedValue = objLAPP_individual.Status_ID.ToString();
            statusbar.Style["background-color"] = "#" + objLAPP_individual.Color_Code;
        }
    }

    private void InitiateFirstRowClick()
    {
        ImageButton imgbtnEdit = gvIndividualMainGrid.Rows[this.EditIndex].FindControl("imgbtnEdit") as ImageButton;
        this.Individual_Id = Convert.ToInt32(imgbtnEdit.CommandArgument);
        BindGrid();
        OnLoad_Method();
        hidIndividualid.Value = Individual_Id.ToString();

        //MessageBox.RunJsInUpdatePanel(this.Page, "LoadMemberTabs();");
        fillAddressPhone();
        ucIndividual1.Individual_Id = this.Individual_Id;

        if (Lapp_Configuration.IsApplicationUnderDevelopment())
        {

            ucName.Individual_Id = this.Individual_Id;
            ucName.BindGrid();


            ucAddress.Individual_Id = this.Individual_Id;
            ucAddress.OnPageLoad();


            ucApplication.Individual_Id = this.Individual_Id;
            ucApplication.BindGridApplicationDetail();



            //ucLicenseMain.Individual_Id = this.Individual_Id;
            //ucLicenseMain.Load();


            ucNotes.Individual_Id = this.Individual_Id;
            ucNotes.BindGrid();


            //ucTask.Individual_Id = this.Individual_Id;
            //ucTask.BindGridTask();


            ucDocuments.Individual_Id = this.Individual_Id;
            ucDocuments.OnPageLoadDocument();


        }
        else
        {


            // initiate Name Tab
            ThreadStart tstartNameTab = new ThreadStart(LoadNameTab);
            thName = new Thread(tstartNameTab);
            thName.IsBackground = true;
            thName.Start();
            ucName.Individual_Id = this.Individual_Id;
            ucName.BindGrid();

            // initiate Address Tab
            ThreadStart tstartAddressTab = new ThreadStart(LoadAddressTab);
            thAddress = new Thread(tstartAddressTab);
            thAddress.IsBackground = true;
            thAddress.Start();
            ucAddress.Individual_Id = this.Individual_Id;
            ucAddress.OnPageLoad();

            // initiate Applicationn Tab
            ThreadStart tstartApplicationTab = new ThreadStart(LoadApplicationTab);
            thApplication = new Thread(tstartApplicationTab);
            thApplication.IsBackground = true;
            thApplication.Start();
            ucApplication.Individual_Id = this.Individual_Id;
            ucApplication.BindGridApplicationDetail();


            // initiate License Tab
            ThreadStart tstartLicenseTab = new ThreadStart(LoadLicenseTab);
            thLicense = new Thread(LoadLicenseTab);
            thLicense.IsBackground = true;
            thLicense.Start();
            //ucLicenseMain.Individual_Id = this.Individual_Id;
            //ucLicenseMain.Load();

            // initiate Notes Tab
            ThreadStart tstartNotesTab = new ThreadStart(LoadNotesTab);
            thNotes = new Thread(tstartNotesTab);
            thNotes.IsBackground = true;
            thNotes.Start();
            ucNotes.Individual_Id = this.Individual_Id;
            ucNotes.BindGrid();

            // initiate Task Tab
            ThreadStart tstartTaskTab = new ThreadStart(LoadTaskTab);
            thTask = new Thread(tstartTaskTab);
            thTask.IsBackground = true;
            thTask.Start();
            //ucTask.Individual_Id = this.Individual_Id;
            //ucTask.BindGridTask();

            // initiate Documents Tab
            ThreadStart tstartDocumentsTab = new ThreadStart(LoadDocumentsTab);
            thDocuments = new Thread(tstartDocumentsTab);
            thDocuments.IsBackground = true;
            thDocuments.Start();
            ucDocuments.Individual_Id = this.Individual_Id;
            ucDocuments.OnPageLoadDocument();

            // initiate Documents Tab
            ThreadStart tstartBoardPacketTab = new ThreadStart(LoadBoardPacketTab);
            thBoardPacket = new Thread(tstartBoardPacketTab);
            thBoardPacket.IsBackground = true;
            thBoardPacket.Start();
        }

    }

    #region Thread Methods
    private void LoadNameTab()
    {
        ucName.Individual_Id = this.Individual_Id;
        ucName.BindDDLStatus();
        ucName.BindGrid();
    }


    private void LoadAddressTab()
    {
        ucAddress.Individual_Id = this.Individual_Id;
        ucAddress.BindDDLStatus();
        ucAddress.BindGridAddress();
    }

    private void LoadApplicationTab()
    {
        ucApplication.Individual_Id = this.Individual_Id;
        ucApplication.BindGridApplicationDetail();

    }

    private void LoadLicenseTab()
    {
        // ucLicenseMain.Individual_Id = this.Individual_Id;
    }

    private void LoadNotesTab()
    {
        ucNotes.Individual_Id = this.Individual_Id;
        ucNotes.BindGrid();
    }

    private void LoadTaskTab()
    {
        //ucTask.Individual_Id = this.Individual_Id;
        //ucTask.BindDDLStatus();
        //ucTask.BindGridTask();

    }

    private void LoadDocumentsTab()
    {
        ucDocuments.Individual_Id = this.Individual_Id;
        //ucDocuments.BindDDLStatus();
        ucDocuments.OnPageLoadDocument();
    }

    private void LoadBoardPacketTab()
    {

    }
    #endregion

    protected void imgbtnEdit_Click(object sender, EventArgs e)
    {
        try
        {
            ImageButton btnEdit = (ImageButton)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
                this.Individual_Id = ID;
                this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                BindGrid();
                OnLoad_Method();
                hidIndividualid.Value = Individual_Id.ToString();
                //MessageBox.RunJsInUpdatePanel(this.Page, "LoadMemberTabs();");
                fillAddressPhone();
                ucIndividual1.Individual_Id = this.Individual_Id;


                if (Lapp_Configuration.IsApplicationUnderDevelopment())
                {

                    ucName.Individual_Id = this.Individual_Id;
                    ucName.BindGrid();


                    ucAddress.Individual_Id = this.Individual_Id;
                    ucAddress.OnPageLoad();


                    ucApplication.Individual_Id = this.Individual_Id;
                    ucApplication.BindGridApplicationDetail();



                    //ucLicenseMain.Individual_Id = this.Individual_Id;
                    //ucLicenseMain.Load();


                    ucNotes.Individual_Id = this.Individual_Id;
                    ucNotes.BindGrid();


                    //ucTask.Individual_Id = this.Individual_Id;
                    //ucTask.BindGridTask();


                    ucDocuments.Individual_Id = this.Individual_Id;
                    ucDocuments.OnPageLoadDocument();


                }
                else
                {


                    // initiate Name Tab
                    ThreadStart tstartNameTab = new ThreadStart(LoadNameTab);
                    thName = new Thread(tstartNameTab);
                    thName.IsBackground = true;
                    thName.Start();
                    ucName.Individual_Id = this.Individual_Id;
                    ucName.BindGrid();

                    // initiate Address Tab
                    ThreadStart tstartAddressTab = new ThreadStart(LoadAddressTab);
                    thAddress = new Thread(tstartAddressTab);
                    thAddress.IsBackground = true;
                    thAddress.Start();
                    ucAddress.Individual_Id = this.Individual_Id;
                    ucAddress.OnPageLoad();

                    // initiate Applicationn Tab
                    ThreadStart tstartApplicationTab = new ThreadStart(LoadApplicationTab);
                    thApplication = new Thread(tstartApplicationTab);
                    thApplication.IsBackground = true;
                    thApplication.Start();
                    ucApplication.Individual_Id = this.Individual_Id;
                    ucApplication.BindGridApplicationDetail();


                    // initiate License Tab
                    ThreadStart tstartLicenseTab = new ThreadStart(LoadLicenseTab);
                    thLicense = new Thread(LoadLicenseTab);
                    thLicense.IsBackground = true;
                    thLicense.Start();
                    //ucLicenseMain.Individual_Id = this.Individual_Id;
                    //ucLicenseMain.Load();

                    // initiate Notes Tab
                    ThreadStart tstartNotesTab = new ThreadStart(LoadNotesTab);
                    thNotes = new Thread(tstartNotesTab);
                    thNotes.IsBackground = true;
                    thNotes.Start();
                    ucNotes.Individual_Id = this.Individual_Id;
                    ucNotes.BindGrid();

                    // initiate Task Tab
                    ThreadStart tstartTaskTab = new ThreadStart(LoadTaskTab);
                    thTask = new Thread(tstartTaskTab);
                    thTask.IsBackground = true;
                    thTask.Start();
                    //ucTask.Individual_Id = this.Individual_Id;
                    //ucTask.BindGridTask();

                    // initiate Documents Tab
                    ThreadStart tstartDocumentsTab = new ThreadStart(LoadDocumentsTab);
                    thDocuments = new Thread(tstartDocumentsTab);
                    thDocuments.IsBackground = true;
                    thDocuments.Start();
                    ucDocuments.Individual_Id = this.Individual_Id;
                    ucDocuments.OnPageLoadDocument();

                    // initiate Documents Tab
                    ThreadStart tstartBoardPacketTab = new ThreadStart(LoadBoardPacketTab);
                    thBoardPacket = new Thread(tstartBoardPacketTab);
                    thBoardPacket.IsBackground = true;
                    thBoardPacket.Start();
                }
                TabContainer1.ActiveTabIndex = 0;
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-Individual.aspx-imgbtnEdit_Click";

            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    protected void imgbtnStatus_Click(object sender, EventArgs e)
    {
        try
        {
            ImageButton btnEdit = (ImageButton)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-Individual.aspx-imgbtnStatus_Click";

            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    #endregion

    #region Public_Methods

    public void BindDDLStatus()
    {
        List<LAPP_application_status> lstLAPP_application_status = new List<LAPP_application_status>();
        lstLAPP_application_status = objLAPP_application_statusBAL.LAPP_application_status_get_by_Status_Type_Id((int)eTabStatusType.Individual);
        if (lstLAPP_application_status != null && lstLAPP_application_status.Count > 0)
        {
            //ddlStatus.DataSource = lstLAPP_application_status;
            //ddlStatus.DataTextField = "Name";
            //ddlStatus.DataValueField = "status_id";
            //ddlStatus.DataBind();
            ddlAppStatus.DataSource = lstLAPP_application_status;
            ddlAppStatus.DataTextField = "Name";
            ddlAppStatus.DataValueField = "status_id";
            ddlAppStatus.DataBind();
        }
        //ddlStatus.Items.Insert(0, new ListItem("Select", "-1"));
        ddlAppStatus.Items.Insert(0, new ListItem("Select", "-1"));
    }

    protected void Cancel(object sender, EventArgs e)
    {
        try
        {

            this.Individual_Id = 0;
            ucIndividual1.BindDDLStatus();
            ucIndividual1.Individual_Id = 0;
            ucIndividual1.ClearControl();
            if (this.EditIndex >= -1)
            {
                gvIndividualMainGrid.Rows[this.EditIndex].CssClass = "";

            }
            Tabs();
        }
        catch (Exception ex)
        {

        }

    }
    protected void btnBindGrid(object sender, EventArgs e)
    {
        //this.Individual_Id = ucIndividual1.Individual_Id;
        OnLoad_Method();
        // this.EditIndex = 0;
        BindGrid();
    }
    public void OnLoad_Method()
    {
        ucIndividual1.Individual_Id = this.Individual_Id;
        ucIndividual1.PageOnLoad();
        Tabs();
    }
    public void Tabs()
    {
        if (this.Individual_Id > 0)
        {
            tbpnlPersonalInfo.Enabled = true;
            tbpnlName.Enabled = true;
            tbpnlEducation.Enabled = true;
            tbpnlAddress.Enabled = true;
            tbpnlApplication.Enabled = true;
            tbpnlCertificate.Enabled = true;
            tbpnlNotes.Enabled = true;
            //tbpnlTask.Enabled = true;
            tbpnlDocument.Enabled = true;
            tbpnlInvestigativeDoc.Enabled = true;
            tbpnlAdvRoster.Enabled = true;
            tbpnlGeneralInfo.Enabled = true;
            tbpnlFinancial.Enabled = true;
            tbpnlViewList.Enabled = true;
            //tbpnlRecertification.Enabled = true;
            tbpnlCityReports.Enabled = true;
            tbpnlPSD.Enabled = true;
            tbpnlDOJ.Enabled = true;
            tbpnlCorrespondence.Enabled = true;
            tbpnlLog.Enabled = true;
            tbpnlDeficiency.Enabled = true;
            //tbpnlAKA.Enabled = true;
            tbpnlImport.Enabled = true;
            tbpnlVerification.Enabled = true;
            tbpnlAuthorization.Enabled = true;
        }
        else
        {
            tbpnlGeneralInfo.Enabled = true;
            tbpnlPersonalInfo.Enabled = false;
            tbpnlName.Enabled = false;
            tbpnlEducation.Enabled = false;
            tbpnlAddress.Enabled = false;
            tbpnlApplication.Enabled = false;
            tbpnlCertificate.Enabled = false;
            tbpnlNotes.Enabled = false;
            //tbpnlTask.Enabled = false;
            tbpnlDocument.Enabled = false;
            tbpnlInvestigativeDoc.Enabled = false;
            tbpnlAdvRoster.Enabled = false;
            tbpnlFinancial.Enabled = false;
            tbpnlViewList.Enabled = false;
            //tbpnlRecertification.Enabled = false;
            tbpnlCityReports.Enabled = false;
            tbpnlPSD.Enabled = false;
            tbpnlDOJ.Enabled = false;
            tbpnlCorrespondence.Enabled = false;
            tbpnlLog.Enabled = false;
            tbpnlDeficiency.Enabled = false;
            //tbpnlAKA.Enabled = false;
            tbpnlImport.Enabled = false;
            tbpnlVerification.Enabled = false;
            tbpnlAuthorization.Enabled = false;
        }
    }
    public void Fill_All_Control()
    {
        Tabs();
    }
    private void Reset_All_Tabs()
    {
        this.Individual_Id = 0;

        OnLoad_Method();
    }
    public void BindGrid()
    {
        try
        {
            List<LAPP_individual> lstLAPPindividual = new List<LAPP_individual>();
            if (Is_Search)
            {
                //if ((!String.IsNullOrEmpty(txtLicenseNumberSearch.Text.Trim()) || !String.IsNullOrEmpty(txtFirstNameSearch.Text.Trim()) || !String.IsNullOrEmpty(txtSSNSaerch.Text.Trim()) || !String.IsNullOrEmpty(txtlastNameSaerch.Text.Trim()) || ddlSearchStatus.SelectedValue != "-1"))
                //{
                //    btnClearFilter.Visible = true;
                //    string LastName = txtlastNameSaerch.Text.Trim();
                //    string FirstName = txtFirstNameSearch.Text.Trim();
                //    int statusid = Convert.ToInt32(ddlSearchStatus.SelectedValue);
                //    if (txtlastNameSaerch.Text.Contains("'"))
                //    {
                //        LastName = string.Join("", txtlastNameSaerch.Text.Split('\'').Skip(1).ToArray());
                //    }
                //    if (txtFirstNameSearch.Text.Contains("'"))
                //    {
                //        LastName = string.Join("", txtFirstNameSearch.Text.Split('\'').Skip(1).ToArray());
                //    }
                //    lstLAPPindividual = objLAPP_individualBAL.Search_LAPP_individual(txtLicenseNumberSearch.Text.Trim(), txtSSNSaerch.Text.Trim(), FirstName, LastName, statusid, false);
                //}
                //else
                //{
                //    btnClearFilter.Visible = false;
                //}
                //if (Is_Search && ddlSearchStatus.SelectedValue != "-1" && lstLAPPindividual != null && lstLAPPindividual.Count > 0)
                //{
                //    btnClearFilter.Visible = true;
                //}
            }
            else
            {
                lstLAPPindividual = objLAPP_individualBAL.Get_All_LAPP_individual_WithName();
                btnClearFilter.Visible = false;
            }
            lstLAPPindividual = lstLAPPindividual.OrderByDescending(x => x.Created_On).ToList();
            gvIndividualMainGrid.DataSource = lstLAPPindividual;
            gvIndividualMainGrid.EditIndex = this.EditIndex;
            gvIndividualMainGrid.DataBind();



            if (this.EditIndex != -1)
            {
                gvIndividualMainGrid.Rows[this.EditIndex].CssClass = "selected";
            }
            else
            {
                if (lstLAPPindividual != null && lstLAPPindividual.Count > 0)
                {
                    this.EditIndex = 0;
                }
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
    #endregion


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

    protected void btnNewMember_Click(object sender, EventArgs e)
    {

        this.Individual_Id = 0;
        ucIndividual1.BindDDLStatus();
        ucIndividual1.Individual_Id = 0;
        ucIndividual1.ClearControl();
        if (this.EditIndex >= -1)
        {
            gvIndividualMainGrid.Rows[this.EditIndex].CssClass = "";

        }
        Tabs();
    }

    protected void btnActiveTab_Click(object sender, EventArgs e)
    {
        this.Individual_Id = Convert.ToInt32(Session["individualid"]); Session.Remove("individualid");
        Tabs();
        BindGrid();
    }

    protected void btnClearFilter_Click(object sender, EventArgs e)
    {
        //txtLicenseNumberSearch.Text = string.Empty;
        //txtlastNameSaerch.Text = string.Empty;
        //txtFirstNameSearch.Text = string.Empty;
        //txtSSNSaerch.Text = "";
        //ddlSearchStatus.SelectedValue = null;
        this.Is_Search = false;
        this.EditIndex = -1;
        this.Individual_Id = 0;
        BindGrid();
        ucIndividual1.Individual_Id = 0;
        ucIndividual1.ClearControl();
        Tabs();
        btnClearFilter.Visible = false;
        if (this.EditIndex != -1)
        {
            gvIndividualMainGrid.Rows[this.EditIndex].CssClass = "";

        }
    }
    //public void BindDDLStatus()
    //{
    //    List<LAPP_application_status> lstLAPP_application_status = new List<LAPP_application_status>();
    //    lstLAPP_application_status = objLAPP_application_statusBAL.LAPP_application_status_get_by_Status_Type_Id((int)eTabStatusType.Individual);
    //    if (lstLAPP_application_status != null && lstLAPP_application_status.Count > 0)
    //    {
    //        ddlSearchStatus.DataSource = lstLAPP_application_status;
    //        ddlSearchStatus.DataTextField = "Name";
    //        ddlSearchStatus.DataValueField = "status_id";
    //        ddlSearchStatus.DataBind();
    //    }
    //    ddlSearchStatus.Items.Insert(0, new ListItem("Select", "-1"));
    //}
    protected void lnkArchive_Click(object sender, EventArgs e)
    {
        if (this.Individual_Id > 0)
        {
            objLAPP_individual = new LAPP_individual();

            objLAPP_individual.Individual_Id = this.Individual_Id;
            string msg = "";
            if (lnkArchive.Text.ToLower() == "archive")
            {
                objLAPP_individual.Is_Archive = true;
                msg = "Archived Successfully";
                objLAPP_individualBAL.Archive_LAPP_individual_by_Individual_Id(objLAPP_individual);

                this.EditIndex = -1;
                BindGrid();
                MessageBox.Show(this.Page, msg);
            }
            else
            {
                objLAPP_individual.Is_Archive = false;
                msg = "Unarchived Successfully";
                objLAPP_individualBAL.Archive_LAPP_individual_by_Individual_Id(objLAPP_individual);
                lnkArchive.Text = "Archive";
                MessageBox.Show(this.Page, msg);
            }

        }

    }

    protected void lnkDelete_Click(object sender, EventArgs e)
    {
        if (this.Individual_Id > 0)
        {
            string msg = "";
            if (lnkDelete.Text.ToLower() == "delete")
            {
                objLAPP_individualBAL.Delete_LAPP_individual_By_Individual_Id(this.Individual_Id);
                msg = "Deleted Successfully";
                this.EditIndex = -1;
                this.Individual_Id = 0;
                BindGrid();
                MessageBox.Show(this.Page, msg);

            }

            else
            {
                objLAPP_individualBAL.UnDelete_LAPP_individual_By_Individual_Id(this.Individual_Id);
                msg = "Undeleted Successfully";
                lnkDelete.Text = "Delete";
                MessageBox.Show(this.Page, msg);
            }
        }
        ucIndividual1.BindDDLStatus();
        ucIndividual1.Individual_Id = 0;
        ucIndividual1.ClearControl();
        Tabs();
    }

    public void fillAddressPhone()
    {
        lapp_individual_address objadd = new lapp_individual_address();
        lapp_individual_addressBAL objaddBal = new lapp_individual_addressBAL();
        objadd = objaddBal.Get_by_lapp_individual_address_by_individual_Id(this.Individual_Id);
        if (objadd != null)
        {
            ltraddress.Text = objadd.Street;
            ltrPhone.Text = objadd.Phone;
        }
        LAPP_individual objLAPPindividual = new LAPP_individual();
        objLAPPindividual = objLAPP_individualBAL.Get_All_LAPP_individual_Get_BY_ID(this.Individual_Id);
        if (objLAPPindividual != null)
        {
            ltrIndividual1.Text = objLAPPindividual.First_Name + " " + objLAPPindividual.Last_Name;
        }
    }

    //protected void btnAdvanceSearch_Click(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        if (divAdvanceSearch.Visible == true && btnAdvanceSearch.Text == "Basic Search")
    //        {
    //            divBasicSearch.Visible = true;
    //            divAdvanceSearch.Visible = false;
    //            btnAdvanceSearch.Text = "Advance Search";
    //        }
    //        else
    //        {
    //            divBasicSearch.Visible = false;
    //            divAdvanceSearch.Visible = true;
    //            btnAdvanceSearch.Text = "Basic Search";
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        objExLog = Fetchlog();
    //        objExLog.Thread = "Error Occured-Individual.aspx-btnAdvanceSearch_Click";
    //        objExLog.Message = ex.Message;
    //        objExLog.Exception = ex.ToString();
    //        objExLog.Context = ex.Source;
    //        objexLogBal.Save_LAPP_exception_log(objExLog);
    //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
    //        MessageBox.Show(this.Page, ex.Message, 2);
    //    }
    //}
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        try
        {
            this.EditIndex = -1;
            this.Individual_Id = 0;
            this.Is_Search = true;
            ucIndividual1.Individual_Id = 0;
            ucIndividual1.ClearControl();
            BindGrid();
            Tabs();
            pnlMainPanel.Visible = true;
            btnClearFilter.Visible = true;
            btnClearFilter_Click(sender, e);
            pnlSearch.Visible = false;
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-Individual.aspx-btnSearch_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    protected void imgbtnSearch_Click(object sender, EventArgs e)
    {
        try
        {
            pnlSearch.Visible = true;
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-Individual.aspx-btnSearch_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    protected void btnSearchCancel_Click(object sender, EventArgs e)
    {
        //txtLicenseNumberSearch.Text = string.Empty;
        //txtlastNameSaerch.Text = string.Empty;
        //txtFirstNameSearch.Text = string.Empty;
        //txtSSNSaerch.Text = "";
        //ddlSearchStatus.SelectedValue = null;
        this.Is_Search = false;
        this.EditIndex = -1;
        this.Individual_Id = 0;
        OnLoad_Method();
        BindGrid();
        btnClearFilter.Visible = false;
        pnlMainPanel.Visible = false;
    }

    protected void imgbtnOpenDetail_Click(object sender, EventArgs e)
    {
        if (pnlIndividuaDetail.Visible)
        {
            imgbtnOpenDetail.ImageUrl = "~/App_Themes/Theme1/Expandables/plus.png";
            imgbtnOpenDetail.ToolTip = "Show";
            pnlIndividuaDetail.Visible = false;
        }
        else
        {
            imgbtnOpenDetail.ImageUrl = "~/App_Themes/Theme1/Expandables/minus.png";
            imgbtnOpenDetail.ToolTip = "Hide";
            pnlIndividuaDetail.Visible = true;
        }
    }


    #region Tab to Button Change

    #region Methods

    public void ButtonTabs()
    {
        if (this.Individual_Id > 0)
        {

            btnGeneral.Enabled = true;
            btnPersonal.Enabled = true;
            btnAddress.Enabled = true;
            btnFinancial.Enabled = true;
            btnName.Enabled = true;
            btnEducation.Enabled = true;
            btnEmployment.Enabled = true;
            btnApplicationData.Enabled = true;
            btnCertificate.Enabled = true;
            //btnPSD.Enabled = true;
            //btnDOJFBI.Enabled = true;
            //btnDeficiency.Enabled = true;

            //btnNotes.Enabled = true;
            //btnLog.Enabled = true;
            //btnCorrespondence.Enabled = true;
            //btnMiscDocument.Enabled = true;
            //btnInvestigativeDoc.Enabled = true;
            //btnVerification.Enabled = true;
            //btnAuthorization.Enabled = true;
            //btnViewLists.Enabled = true;
            //btnCityReportsSearches.Enabled = true;
            //btnImport.Enabled = true;
        }
        else
        {

            btnGeneral.Enabled = true;
            btnPersonal.Enabled = false;
            btnAddress.Enabled = false;
            btnFinancial.Enabled = false;
            btnName.Enabled = false;
            btnEducation.Enabled = false;
            btnEmployment.Enabled = false;
            btnApplicationData.Enabled = false;
            btnCertificate.Enabled = false;
            //btnPSD.Enabled = false;
            //btnDOJFBI.Enabled = false;
            //btnDeficiency.Enabled = false;

            //btnNotes.Enabled = false;
            //btnLog.Enabled = false;
            //btnCorrespondence.Enabled = false;
            //btnMiscDocument.Enabled = false;
            //btnInvestigativeDoc.Enabled = false;
            //btnVerification.Enabled = false;
            //btnAuthorization.Enabled = false;
            //btnViewLists.Enabled = false;
            //btnCityReportsSearches.Enabled = false;
            //btnImport.Enabled = false;
        }
    }

    public void ShowPanelonButtonClick(string pnlValue)
    {

        pnlPersonalInfo.Visible = false;
        pnlName.Visible = false;
        pnlEducation.Visible = false;
        pnlAddress.Visible = false;
        pnlApplication.Visible = false;
        pnlCertificate.Visible = false;
        pnlNotes.Visible = false;
        //pnlTask.Visible = false;
        pnlDocument.Visible = false;
        pnlInvestigativeDoc.Visible = false;
        pnlAdvRoster.Visible = false;
        pnlGeneralInfo.Visible = false;
        pnlFinancial.Visible = false;
        pnlViewList.Visible = false;
        //pnlRecertification.Visible = false;
        pnlCityReports.Visible = false;
        pnlPSD.Visible = false;
        pnlDOJ.Visible = false;
        pnlCorrespondence.Visible = false;
        pnlLog.Visible = false;
        pnlDeficiency.Visible = false;
        //pnlAKA.Visible = false;
        pnlImport.Visible = false;
        pnlVerification.Visible = false;
        pnlAuthorization.Visible = false;

        if (pnlValue == "Per")
            pnlPersonalInfo.Visible = true;
        else if (pnlValue == "Name")
            pnlName.Visible = true;
        else if (pnlValue == "Edu")
            pnlEducation.Visible = true;
        else if (pnlValue == "Add")
            pnlAddress.Visible = true;
        else if (pnlValue == "App")
            pnlApplication.Visible = true;
        else if (pnlValue == "Cert")
            pnlCertificate.Visible = true;
        else if (pnlValue == "Note")
            pnlNotes.Visible = true;
        else if (pnlValue == "Doc")
            pnlDocument.Visible = true;
        else if (pnlValue == "Inves")
            pnlInvestigativeDoc.Visible = true;
        else if (pnlValue == "Adv")
            pnlAdvRoster.Visible = true;
        else if (pnlValue == "Gen")
            pnlGeneralInfo.Visible = true;
        else if (pnlValue == "Fina")
            pnlFinancial.Visible = true;
        else if (pnlValue == "View")
            pnlViewList.Visible = true;
        else if (pnlValue == "City")
            pnlCityReports.Visible = true;
        else if (pnlValue == "PSD")
            pnlPSD.Visible = true;
        else if (pnlValue == "DOJ")
            pnlDOJ.Visible = true;
        else if (pnlValue == "Corr")
            pnlCorrespondence.Visible = true;
        else if (pnlValue == "Log")
            pnlLog.Visible = true;
        else if (pnlValue == "Defi")
            pnlDeficiency.Visible = true;
        else if (pnlValue == "Imp")
            pnlImport.Visible = true;
        else if (pnlValue == "Veri")
            pnlVerification.Visible = true;
        else if (pnlValue == "Auth")
            pnlAuthorization.Visible = true;


    }

    public void MakeActiveBtn(Button btn)
    {
        btnGeneral.CssClass = "tabBtn";
        btnPersonal.CssClass = "tabBtn";
        btnAddress.CssClass = "tabBtn";
        btnFinancial.CssClass = "tabBtn";
        btnName.CssClass = "tabBtn";
        btnEducation.CssClass = "tabBtn";
        btnEmployment.CssClass = "tabBtn";
        btnApplicationData.CssClass = "tabBtn";
        btnCertificate.CssClass = "tabBtn";
        //btnPSD.CssClass = "tabBtn";
        //btnDOJFBI.CssClass = "tabBtn";
        //btnDeficiency.CssClass = "tabBtn";
        //btnNotes.CssClass = "tabBtn";
        //btnLog.CssClass = "tabBtn";
        //btnCorrespondence.CssClass = "tabBtn";
        //btnMiscDocument.CssClass = "tabBtn";
        //btnInvestigativeDoc.CssClass = "tabBtn";
        //btnVerification.CssClass = "tabBtn";
        //btnAuthorization.CssClass = "tabBtn";
        //btnViewLists.CssClass = "tabBtn";
        //btnCityReportsSearches.CssClass = "tabBtn";
        //btnImport.CssClass = "tabBtn";

        btn.CssClass = "tab_activeBtn";
    }


    #endregion

    #region Events

    protected void btnGeneral_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Gen");
        MakeActiveBtn(btnGeneral);
    }
    protected void btnPersonal_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Per");
        MakeActiveBtn(btnPersonal);
    }
    protected void btnAddress_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Add");
        MakeActiveBtn(btnAddress);
    }
    protected void btnFinancial_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Fina");
        MakeActiveBtn(btnFinancial);
    }
    protected void btnName_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Name");
        MakeActiveBtn(btnName);
    }
    protected void btnEducation_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Edu");
        MakeActiveBtn(btnEducation);
    }
    protected void btnEmployment_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Adv");
        MakeActiveBtn(btnEmployment);
    }
    protected void btnApplicationData_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("App");
        MakeActiveBtn(btnApplicationData);
    }
    protected void btnCertificate_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Cert");
        MakeActiveBtn(btnCertificate);
    }
    //protected void btnPSD_Click(object sender, EventArgs e)
    //{
    //    ShowPanelonButtonClick("PSD");
    //    MakeActiveBtn(btnPSD);
    //}
    //protected void btnDOJFBI_Click(object sender, EventArgs e)
    //{
    //    ShowPanelonButtonClick("DOJ");
    //    MakeActiveBtn(btnDOJFBI);
    //}
    //protected void btnDeficiency_Click(object sender, EventArgs e)
    //{
    //    ShowPanelonButtonClick("Defi");
    //    MakeActiveBtn(btnDeficiency);
    //}
    //protected void btnNotes_Click(object sender, EventArgs e)
    //{
    //    ShowPanelonButtonClick("Note");
    //    MakeActiveBtn(btnNotes);
    //}
    //protected void btnLog_Click(object sender, EventArgs e)
    //{
    //    ShowPanelonButtonClick("Log");
    //    MakeActiveBtn(btnLog);
    //}
    //protected void btnCorrespondence_Click(object sender, EventArgs e)
    //{
    //    ShowPanelonButtonClick("Corr");
    //    MakeActiveBtn(btnCorrespondence);
    //}
    //protected void btnMiscDocument_Click(object sender, EventArgs e)
    //{
    //    ShowPanelonButtonClick("Doc");
    //    MakeActiveBtn(btnMiscDocument);
    //}
    //protected void btnInvestigativeDoc_Click(object sender, EventArgs e)
    //{
    //    ShowPanelonButtonClick("Inves");
    //    MakeActiveBtn(btnInvestigativeDoc);
    //}
    //protected void btnVerification_Click(object sender, EventArgs e)
    //{
    //    ShowPanelonButtonClick("Veri");
    //    MakeActiveBtn(btnVerification);
    //}
    //protected void btnAuthorization_Click(object sender, EventArgs e)
    //{
    //    ShowPanelonButtonClick("Auth");
    //    MakeActiveBtn(btnAuthorization);
    //}
    //protected void btnViewLists_Click(object sender, EventArgs e)
    //{
    //    ShowPanelonButtonClick("View");
    //    MakeActiveBtn(btnViewLists);
    //}
    //protected void btnCityReportsSearches_Click(object sender, EventArgs e)
    //{
    //    ShowPanelonButtonClick("City");
    //    MakeActiveBtn(btnCityReportsSearches);
    //}
    //protected void btnImport_Click(object sender, EventArgs e)
    //{
    //    ShowPanelonButtonClick("Imp");
    //    MakeActiveBtn(btnImport);
    //}
    #endregion

    #endregion




    

    #region School Eligibility

    #region Approval Agency

    protected void btnApprovalAgencyAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnApprovalAgency.Visible = false;
        divAddApprovalAgency.Visible = true;
        this.EditIndexLicensureInformation = -1;
        BindGridApprovalAgency();
    }
    protected void btnApprovalAgencyAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnApprovalAgency.Visible = true;
        divAddApprovalAgency.Visible = false;
    }
    protected void lnkApprovalAgencyAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnApprovalAgency.Visible = true;
        divAddApprovalAgency.Visible = false;
    }

    public void BindGridApprovalAgency()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvApprovalAgency.EditIndex = this.EditIndexLicensureInformation;
        gvApprovalAgency.DataSource = ArryListName;
        gvApprovalAgency.DataBind();

        if (this.EditIndexLicensureInformation >= 0)
        {
            gvApprovalAgency.Rows[this.EditIndexLicensureInformation].CssClass = "RowInEditMode";
            gvApprovalAgency.Rows[this.EditIndexLicensureInformation].Cells[0].Attributes.Add("colspan", "6");
            gvApprovalAgency.Rows[this.EditIndexLicensureInformation].Cells[1].Visible = false;
            gvApprovalAgency.Rows[this.EditIndexLicensureInformation].Cells[2].Visible = false;
            gvApprovalAgency.Rows[this.EditIndexLicensureInformation].Cells[3].Visible = false;

        }
    }

    protected void gvApprovalAgency_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolCode = e.Row.FindControl("lblSchoolCode") as Label;
            Label lblExpirationDate = e.Row.FindControl("lblExpirationDate") as Label;
            Label lblApprovalAgencyName = e.Row.FindControl("lblApprovalAgencyName") as Label;

            if (lblSchoolCode != null && lblExpirationDate != null && lblApprovalAgencyName != null)
            {
                if (ROWLic == 0)
                {

                    lblSchoolCode.Text = "SCH001";
                    lblApprovalAgencyName.Text = "Agency 1";
                    lblExpirationDate.Text = "02/04/2016";
                }
                else if (ROWLic == 1)
                {
                    lblSchoolCode.Text = "SCH011";
                    lblApprovalAgencyName.Text = "Agency 3";
                    lblExpirationDate.Text = "10/11/2016";
                }
            }

            ROWLic++;

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
    protected void lnkApprovalAgencyEdit_Click(object sender, EventArgs e)
    {
        divAddApprovalAgency.Visible = false;
        divAddbtnApprovalAgency.Visible = true;
        this.EditIndexLicensureInformation = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexLicensureInformation = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridApprovalAgency();
            FillControlApprovalAgency(gvApprovalAgency, this.EditIndexLicensureInformation);
        }
    }
    protected void lnkApprovalAgencyDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlApprovalAgency(GridView gv, int EditInd)
    {
        try
        {


            TextBox txtSchoolCodeEdit = gv.Rows[this.EditIndexLicensureInformation].FindControl("txtSchoolCodeEdit") as TextBox;
            TextBox txtExpirationDateEdit = gv.Rows[this.EditIndexLicensureInformation].FindControl("txtExpirationDateEdit") as TextBox;
            DropDownList ddlAddApprovalAgencyEdit = gv.Rows[this.EditIndexLicensureInformation].FindControl("ddlAddApprovalAgencyEdit") as DropDownList;

            txtSchoolCodeEdit.Text = "SCH001";
            ddlAddApprovalAgencyEdit.SelectedValue = "A1";
            txtExpirationDateEdit.Text = "02/04/2016";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnApprovalAgencyUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexLicensureInformation = -1;
        BindGridApprovalAgency();
    }
    protected void lnkApprovalAgencyCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexLicensureInformation = -1;
        BindGridApprovalAgency();
    }

    #endregion


    #region Massage Programs

    public int EditIndexMassageProgram
    {
        get
        {
            if (ViewState["EditIndexMassageProgram"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexMassageProgram"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexMassageProgram"] = value;
        }
    }
    protected void btnMassageProgAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnMassageProgramName.Visible = false;
        divAddMassageProgramName.Visible = true;
        this.EditIndexMassageProgram = -1;
        BindGridMassageProgrameName();

    }

    protected void btnMassageprogramAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnMassageProgramName.Visible = true;
        divAddMassageProgramName.Visible = false;
    }

    protected void lnkMassageprogramAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnMassageProgramName.Visible = true;
        divAddMassageProgramName.Visible = false;
    }

    public void BindGridMassageProgrameName()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvMassageProgram.EditIndex = this.EditIndexMassageProgram;
        gvMassageProgram.DataSource = ArryListName;
        gvMassageProgram.DataBind();

        if (this.EditIndexMassageProgram >= 0)
        {
            gvMassageProgram.Rows[this.EditIndexMassageProgram].CssClass = "RowInEditMode";
            gvMassageProgram.Rows[this.EditIndexMassageProgram].Cells[0].Attributes.Add("colspan", "6");
            gvMassageProgram.Rows[this.EditIndexMassageProgram].Cells[1].Visible = false;
            gvMassageProgram.Rows[this.EditIndexMassageProgram].Cells[2].Visible = false;
            //gvMassageProgram.Rows[this.EditIndexMassageProgram].Cells[3].Visible = false;

        }
    }

    int ROWLic = 0;
    protected void gvMassageProgram_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblProgrameName = e.Row.FindControl("lblProgrameName") as Label;
            Label lblProgramHours = e.Row.FindControl("lblProgramHours") as Label;

            if (lblProgrameName != null && lblProgramHours != null)
            {
                if (ROWLic == 0)
                {

                    lblProgrameName.Text = "Program Name1";
                    lblProgramHours.Text = "Program Hours1";
                }
                else if (ROWLic == 1)
                {
                    lblProgrameName.Text = "Program Name2";
                    lblProgramHours.Text = "Program Hours2";
                }
            }

            ROWLic++;

        }
    }

    protected void lnkMassageprogramEdit_Click(object sender, EventArgs e)
    {
        divAddMassageProgramName.Visible = false;
        divAddbtnMassageProgramName.Visible = true;
        this.EditIndexMassageProgram = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexMassageProgram = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridMassageProgrameName();
            FillControlMassagePrograme(gvMassageProgram, this.EditIndexMassageProgram);
        }
    }

    protected void lnkMassageProgramDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlMassagePrograme(GridView gv, int EditInd)
    {
        try
        {


            TextBox txtMassageProgNameEdit = gv.Rows[this.EditIndexMassageProgram].FindControl("txtMassageProgNameEdit") as TextBox;
            TextBox txtProgramHoursEdit = gv.Rows[this.EditIndexMassageProgram].FindControl("txtProgramHoursEdit") as TextBox;

            txtMassageProgNameEdit.Text = "Program Name1 ";
            txtProgramHoursEdit.Text = "20";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnMassageProgameUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexMassageProgram = -1;
        BindGridMassageProgrameName();
    }
    protected void lnkMassageProgCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexMassageProgram = -1;
        BindGridMassageProgrameName();
    }

    #endregion

    protected void btnChildSupp_Click(object sender, EventArgs e)
    {
        //btnSection3_Click(sender, e);
    }

    protected void lnkCancelCSD_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region About the School - Related School

    public int EditIndexRelatedSchool
    {
        get
        {
            if (ViewState["EditIndexRelatedSchool"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexRelatedSchool"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexRelatedSchool"] = value;
        }
    }

    protected void btnAddNewRelatedSchools_Click(object sender, EventArgs e)
    {
        divBtnAddNewRelatedSchools.Visible = false;
        divAddNewRelatedSchools.Visible = true;
        this.EditIndexRelatedSchool = -1;
        BindGridRelatedSchool();
    }
    protected void btnSaveRelatedSchool_Click(object sender, EventArgs e)
    {
        divBtnAddNewRelatedSchools.Visible = true;
        divAddNewRelatedSchools.Visible = false;
    }
    protected void lnkCancelRelatedSchool_Click(object sender, EventArgs e)
    {
        divBtnAddNewRelatedSchools.Visible = true;
        divAddNewRelatedSchools.Visible = false;
    }

    int ROWRS = 0;
    protected void gvRelatedSchool_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblBusinessName1 = e.Row.FindControl("lblBusinessName1") as Label;
            Label lblBusinessPhone1 = e.Row.FindControl("lblBusinessPhone1") as Label;
            Label lblSacramento = e.Row.FindControl("lblSacramento") as Label;
            Label lblState1 = e.Row.FindControl("lblState1") as Label;
            Label lblZip1 = e.Row.FindControl("lblZip1") as Label;

            if (lblBusinessName1 != null && lblBusinessPhone1 != null && lblSacramento != null && lblState1 != null && lblZip1 != null)
            {
                if (ROWRS == 0)
                {

                    lblBusinessName1.Text = "Max Health Center";
                    lblBusinessPhone1.Text = "(530) 542-0604";
                    lblSacramento.Text = "EMERYVILLE";
                    lblState1.Text = "CA";
                    lblZip1.Text = "96151";
                }
                else if (ROWRS == 1)
                {
                    lblBusinessName1.Text = "Intu Corporation";
                    lblBusinessPhone1.Text = "(775) 742-3752";
                    lblSacramento.Text = "TEMPLE CITY";
                    lblState1.Text = "CA";
                    lblZip1.Text = "89450";
                }
            }

            ROWRS++;

        }
    }

    public void BindGridRelatedSchool()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvRelatedSchool.EditIndex = this.EditIndexRelatedSchool;
        gvRelatedSchool.DataSource = ArryListName;
        gvRelatedSchool.DataBind();

        if (this.EditIndexRelatedSchool >= 0)
        {
            gvRelatedSchool.Rows[this.EditIndexRelatedSchool].CssClass = "RowInEditMode";
            gvRelatedSchool.Rows[this.EditIndexRelatedSchool].Cells[0].Attributes.Add("colspan", "6");
            gvRelatedSchool.Rows[this.EditIndexRelatedSchool].Cells[1].Visible = false;
            gvRelatedSchool.Rows[this.EditIndexRelatedSchool].Cells[2].Visible = false;
            gvRelatedSchool.Rows[this.EditIndexRelatedSchool].Cells[3].Visible = false;
            gvRelatedSchool.Rows[this.EditIndexRelatedSchool].Cells[4].Visible = false;
            gvRelatedSchool.Rows[this.EditIndexRelatedSchool].Cells[5].Visible = false;

        }
    }

    public void FillControlRelatedSchool(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexRelatedSchool].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexRelatedSchool].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexRelatedSchool].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexRelatedSchool].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexRelatedSchool].FindControl("txtRelatedSchoolZipEdit") as TextBox;

            txtRelatedSchoolBusinessNameEdit.Text = "Max Health Center";
            txtRelatedSchoolBusinessPhoneEdit.Text = "(530) 542-0604";
            ddlRelatedSchoolStateEdit.SelectedValue = "CA";
            txtRelatedSchoolZipEdit.Text = "96151";
            txtRelatedSchoolCityEdit.Text = "EMERYVILLE";

        }

        catch (Exception ex)
        {

        }
    }

    protected void btnRelatedSchoolUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexRelatedSchool = -1;
        BindGridRelatedSchool();
    }

    protected void lnkRelatedSchoolCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexRelatedSchool = -1;
        BindGridRelatedSchool();
    }

    protected void lnkRelatedSchoolEdit_Click(object sender, EventArgs e)
    {
        divBtnAddNewRelatedSchools.Visible = true;
        divAddNewRelatedSchools.Visible = false;
        this.EditIndexRelatedSchool = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexRelatedSchool = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridRelatedSchool();
            FillControlRelatedSchool(gvRelatedSchool, this.EditIndexRelatedSchool);
        }
    }

    protected void lnkRelatedSchoolDelete_Click(object sender, EventArgs e)
    {

    }

    protected void btnLicensureInformationSave_Click(object sender, EventArgs e)
    {
        //divAddbuttonLicensureInformation.Visible = true;
        divAddPanelLicensureInformation.Visible = false;
    }

    protected void lnkLicensureInformationCancel_Click(object sender, EventArgs e)
    {
        //divAddbuttonLicensureInformation.Visible = true;
        divAddPanelLicensureInformation.Visible = false;
    }

    public void BindGridLicensureInformation()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvLicenseInfo.EditIndex = this.EditIndexLicensureInformation;
        gvLicenseInfo.DataSource = ArryListName;
        gvLicenseInfo.DataBind();

        if (this.EditIndexLicensureInformation >= 0)
        {
            gvLicenseInfo.Rows[this.EditIndexLicensureInformation].CssClass = "RowInEditMode";
            gvLicenseInfo.Rows[this.EditIndexLicensureInformation].Cells[0].Attributes.Add("colspan", "6");
            gvLicenseInfo.Rows[this.EditIndexLicensureInformation].Cells[1].Visible = false;
            gvLicenseInfo.Rows[this.EditIndexLicensureInformation].Cells[2].Visible = false;
            gvLicenseInfo.Rows[this.EditIndexLicensureInformation].Cells[3].Visible = false;
            gvLicenseInfo.Rows[this.EditIndexLicensureInformation].Cells[4].Visible = false;
            gvLicenseInfo.Rows[this.EditIndexLicensureInformation].Cells[5].Visible = false;

        }
    }

    protected void lnkLicensureInformationCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexLicensureInformation = -1;
        BindGridLicensureInformation();
    }

    protected void lnkLicensureInformationEdit_Click(object sender, EventArgs e)
    {
        divAddPanelLicensureInformation.Visible = false;
        //divAddbuttonLicensureInformation.Visible = true;
        this.EditIndexLicensureInformation = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexLicensureInformation = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridLicensureInformation();
            //FillControlLicensureInformation(gvLicenseInfo, this.EditIndexLicensureInformation);
        }
    }

    protected void lnkLicensureInformationDelete_Click(object sender, EventArgs e)
    {

    }

    protected void btnLicensureInformationUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexLicensureInformation = -1;
        BindGridLicensureInformation();
    }


    protected void gvLicenseInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblCertificationNo = e.Row.FindControl("lblCertificationNo") as Label;
            Label lblDateofIssue = e.Row.FindControl("lblDateofIssue") as Label;
            Label lblLiState = e.Row.FindControl("lblLiState") as Label;
            Label lblCountry = e.Row.FindControl("lblCountry") as Label;
            Label lblStatus = e.Row.FindControl("lblStatus") as Label;
            if (lblCertificationNo != null && lblDateofIssue != null && lblLiState != null && lblCountry != null && lblStatus != null)
            {
                if (ROWLic == 0)
                {

                    lblCertificationNo.Text = "CAMTC.001";
                    lblDateofIssue.Text = "02/04/2014";
                    lblLiState.Text = "CA";
                    lblCountry.Text = "USA";
                    lblStatus.Text = "Active";
                }
                else if (ROWLic == 1)
                {
                    lblCertificationNo.Text = "CAMTC.011";
                    lblDateofIssue.Text = "10/11/2013";
                    lblLiState.Text = "CA";
                    lblCountry.Text = "USA";
                    lblStatus.Text = "Inactive";
                }
            }

            ROWLic++;

        }
    }

    protected void btnLicNextInfo_Click(object sender, EventArgs e)
    {
        //btnSection4_Click(sender, e);
    }
    #endregion

    

    #region Transcript
    protected void btnNextTransChkList_Click(object sender, EventArgs e)
    {
        //btnEnrollAgreeCheck_Click(sender, e);
    }

    protected void btnSaveNextPayment_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx?q=1", false);
    }
    #endregion

    #region Enrollment Agreement

    protected void btnNextEnrollChkList_Click(object sender, EventArgs e)
    {
        // btnCourCataCheck_Click(sender, e);
    }

    #endregion

    #region Program Hour Requoerment
    #region Program Hour Requirement Worksheet

    #region InnerGrid

    public int EditIndexPHRW1
    {
        get
        {
            if (ViewState["EditIndexPHRW1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexPHRW1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexPHRW1"] = value;
        }
    }

    protected void btnCourseReqAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnCourseReq.Visible = false;
        divAddCourseReq.Visible = true;
        this.EditIndexPHRW1 = -1;
        BindGridPHRW1();
    }
    protected void btnCourseReqAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnCourseReq.Visible = true;
        divAddCourseReq.Visible = false;
    }
    protected void lnkCourseReqAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnCourseReq.Visible = true;
        divAddCourseReq.Visible = false;
    }

    int ROWPHRW1 = 0;
    protected void gvCourseL2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWPHRW1 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWPHRW1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWPHRW1++;

        }
    }

    public void BindGridPHRW1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvCourseL2.EditIndex = this.EditIndexPHRW1;
        gvCourseL2.DataSource = ArryListName;
        gvCourseL2.DataBind();

        if (this.EditIndexPHRW1 >= 0)
        {
            gvCourseL2.Rows[this.EditIndexPHRW1].CssClass = "RowInEditMode";
            gvCourseL2.Rows[this.EditIndexPHRW1].Cells[0].Attributes.Add("colspan", "6");
            gvCourseL2.Rows[this.EditIndexPHRW1].Cells[1].Visible = false;
            gvCourseL2.Rows[this.EditIndexPHRW1].Cells[2].Visible = false;
            gvCourseL2.Rows[this.EditIndexPHRW1].Cells[3].Visible = false;
            //gvCourseL2.Rows[this.EditIndexPHRW1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdminInfo2].Cells[5].Visible = false;

        }
    }

    public void FillControlPHRWInnerGrid(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtCourseTitleL2Edit = gv.Rows[this.EditIndexPHRW1].FindControl("txtCourseTitleL2Edit") as TextBox;
            TextBox txtCourseHoursL2Edit = gv.Rows[this.EditIndexPHRW1].FindControl("txtCourseHoursL2Edit") as TextBox;

            txtCourseTitleL2Edit.Text = "Title 1";
            txtCourseHoursL2Edit.Text = "20";

        }

        catch (Exception ex)
        {

        }
    }

    protected void btnCourseL2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexPHRW1 = -1;
        BindGridPHRW1();
    }

    protected void lnkCourseL2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexPHRW1 = -1;
        BindGridPHRW1();
    }

    protected void lnkCourseTitleHourEdit_Click(object sender, EventArgs e)
    {
        divAddbtnCourseReq.Visible = true;
        divAddCourseReq.Visible = false;
        this.EditIndexPHRW1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexPHRW1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridPHRW1();
            //FillControlPHRWInnerGrid(gvAdminInfo2, this.EditIndexPHRW1);
        }
    }

    protected void lnkCourseTitleHourDelete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region OuterGrid

    public int EditIndexAdminInfo20
    {
        get
        {
            if (ViewState["EditIndexAdminInfo20"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdminInfo20"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdminInfo20"] = value;
        }
    }

    int ROWAI20 = 0;
    protected void gvProgHrWrkSheet_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblProgHrWrkSheetCourse = e.Row.FindControl("lblProgHrWrkSheetCourse") as Label;
            Label lblProgHrWrkSheetCourseHr = e.Row.FindControl("lblProgHrWrkSheetCourseHr") as Label;

            if (lblProgHrWrkSheetCourse != null && lblProgHrWrkSheetCourseHr != null)
            {
                if (ROWAI20 == 0)
                {
                    lblProgHrWrkSheetCourse.Text = "Anatomy & Physiology";
                    lblProgHrWrkSheetCourseHr.Text = "64";
                }
                else if (ROWAI20 == 1)
                {
                    lblProgHrWrkSheetCourse.Text = "Contraindications";
                    lblProgHrWrkSheetCourseHr.Text = "13";
                }
                else if (ROWAI20 == 2)
                {
                    lblProgHrWrkSheetCourse.Text = "Health & Hygiene";
                    lblProgHrWrkSheetCourseHr.Text = "5";
                }
                else if (ROWAI20 == 3)
                {
                    lblProgHrWrkSheetCourse.Text = "Business & Ethics";
                    lblProgHrWrkSheetCourseHr.Text = "18";
                }
            }

            ROWAI20++;

        }
    }

    public void BindGridAdminInfo20()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");

        gvProgHrWrkSheet.EditIndex = this.EditIndexAdminInfo20;
        gvProgHrWrkSheet.DataSource = ArryListName;
        gvProgHrWrkSheet.DataBind();

        if (this.EditIndexAdminInfo20 >= 0)
        {
            gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].CssClass = "RowInEditMode";
            gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].Cells[0].Attributes.Add("colspan", "6");
            gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].Cells[1].Visible = false;
            gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].Cells[2].Visible = false;
            //gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].Cells[3].Visible = false;
            //gvAdminInfo2.Rows[this.EditIndexAdminInfo2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdminInfo2].Cells[5].Visible = false;

        }
    }

    public void FillControlAdminInfo20(GridView gv, int EditInd)
    {
        try
        {
            //TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            //DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            //TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            //TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            //TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

            txtRelatedSchoolBusinessNameEdit.Text = "Max Health Center";
            txtRelatedSchoolBusinessPhoneEdit.Text = "(530) 542-0604";
            ddlRelatedSchoolStateEdit.SelectedValue = "CA";
            txtRelatedSchoolZipEdit.Text = "96151";
            txtRelatedSchoolCityEdit.Text = "EMERYVILLE";

        }

        catch (Exception ex)
        {

        }
    }

    //protected void btnAdminInfo2Update_Click(object sender, EventArgs e)
    //{
    //    this.EditIndexAdminInfo20 = -1;
    //    BindGridAdminInfo20();
    //}

    //protected void lnkAdminInfo2CancelUpdate_Click(object sender, EventArgs e)
    //{
    //    this.EditIndexAdminInfo20 = -1;
    //    BindGridAdminInfo20();
    //}

    protected void lnkCoursesRequirementsOpen_Click(object sender, EventArgs e)
    {
        this.EditIndexAdminInfo20 = -1;

        LinkButton imgbtnRelatedSchoolEdit = (LinkButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdminInfo20 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdminInfo20();
            BindGridPHRW1();
            FillControlAdminInfo20(gvProgHrWrkSheet, this.EditIndexAdminInfo20);
        }
    }


    #endregion

    #endregion

    protected void btnNextProHo_Click(object sender, EventArgs e)
    {
        //btnSchFacList_Click(sender, e);
    }

    #endregion

    

    


    #region introduction
    protected void lnkQues1_Click(object sender, EventArgs e)
    {
        rblQuestionEdit1.Enabled = true;
        Response.Write("<script>window.open('https://www.camtc.org/','_blank');</script>");
    }

    protected void rblQuestionEdit1_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblQuestionEdit1.SelectedValue == "0") //|| (rblQuestionEdit2.SelectedValue == "0"))
        {
            btnApplicationStatus.Enabled = false;
        }
        else
        {
            btnApplicationStatus.Enabled = true;
        }
    }


    protected void btnApplicationStatus_Click(object sender, EventArgs e)
    {
        //btnMassageTherapistApplication_Click(sender, e);
    }

    #region APPLICATION INSTRUCTIONS Tab

    protected void lnkApplicationStatusCancel_Click(object sender, EventArgs e)
    {
    }
    //protected void btnApplicationStatus_Click(object sender, EventArgs e)
    //{
    //    btnMassageTherapistApplication_Click(sender, e);
    //}
    #endregion

    #endregion

    #region School Information

    #region Previous Address

    int ROWPrevAdd = 0;

    public int EditIndexSchoolInfoPrevious
    {
        get
        {
            if (ViewState["EditIndexSchoolInfoPrevious"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexSchoolInfoPrevious"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexSchoolInfoPrevious"] = value;
        }
    }
    protected void btnSchoolInfoPreviousAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnSchoolInfoPrevious.Visible = false;
        divAddSchoolInfoPrevious.Visible = true;
        this.EditIndexSchoolInfoPrevious = -1;
        BindGridSchoolInfoPrevious();
    }
    protected void btnSchoolInfoPreviousAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnSchoolInfoPrevious.Visible = true;
        divAddSchoolInfoPrevious.Visible = false;
    }
    protected void lnkSchoolInfoPreviousAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnSchoolInfoPrevious.Visible = true;
        divAddSchoolInfoPrevious.Visible = false;
    }

    public void BindGridSchoolInfoPrevious()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvSchoolInfoPrevious.EditIndex = this.EditIndexSchoolInfoPrevious;
        gvSchoolInfoPrevious.DataSource = ArryListName;
        gvSchoolInfoPrevious.DataBind();

        if (this.EditIndexSchoolInfoPrevious >= 0)
        {
            gvSchoolInfoPrevious.Rows[this.EditIndexSchoolInfoPrevious].CssClass = "RowInEditMode";
            gvSchoolInfoPrevious.Rows[this.EditIndexSchoolInfoPrevious].Cells[0].Attributes.Add("colspan", "7");
            gvSchoolInfoPrevious.Rows[this.EditIndexSchoolInfoPrevious].Cells[1].Visible = false;
            gvSchoolInfoPrevious.Rows[this.EditIndexSchoolInfoPrevious].Cells[2].Visible = false;
            gvSchoolInfoPrevious.Rows[this.EditIndexSchoolInfoPrevious].Cells[3].Visible = false;
            gvSchoolInfoPrevious.Rows[this.EditIndexSchoolInfoPrevious].Cells[4].Visible = false;


        }
    }


    protected void gvSchoolInfoPrevious_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblOwnerInfo = e.Row.FindControl("lblInfoPStreet") as Label;
            Label lblownerInfLastName = e.Row.FindControl("lblInfoPcity") as Label;
            Label lblownerInfFirstName = e.Row.FindControl("lblInfoPState") as Label;
            Label lblownerPer = e.Row.FindControl("lblInfoPZip") as Label;
            //Label lblownerInfoCity = e.Row.FindControl("lblownerInfoCity") as Label;
            //Label lblownerInfState = e.Row.FindControl("lblownerInfState") as Label;

            if (lblOwnerInfo != null && lblownerInfLastName != null && lblownerInfFirstName != null && lblownerPer != null)
            {
                if (ROWPrevAdd == 0)
                {

                    lblOwnerInfo.Text = "123 Test Street";
                    lblownerInfLastName.Text = "Sacramento";
                    lblownerInfFirstName.Text = "California";
                    lblownerPer.Text = "94203";
                    // lblownerInfoCity.Text = "Sacramento";
                    //lblownerInfState.Text = "California";
                }
                else if (ROWPrevAdd == 1)
                {
                    lblOwnerInfo.Text = "456 Test Street";
                    lblownerInfLastName.Text = "Sacramento";
                    lblownerInfFirstName.Text = "California";
                    lblownerPer.Text = "94203";
                    // lblownerInfoCity.Text = "Sacramento";
                    // lblownerInfState.Text = "California";
                }
            }

            ROWPrevAdd++;

        }
    }

    protected void lnkSchoolInfoPreviousEdit_Click(object sender, EventArgs e)
    {
        //divAddOwnerInfo.Visible = false;
        //divAddbtnOwnerInfo.Visible = true;
        this.EditIndexSchoolInfoPrevious = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexSchoolInfoPrevious = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
           // BindGridOwnerInfo();
           // FillControlSchoolInfoMailing(gvOwnerInfo, this.EditIndexSchoolInfoPrevious);
        }
    }


    protected void lnkSchoolInfoPreviousDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlSchoolInfoMailing(GridView gv, int EditInd)
    {
        try
        {


            //TextBox txtSchoolCodeEdit = gv.Rows[this.EditIndexOwnerInfo].FindControl("txtSchoolCodeEdit") as TextBox;
            //TextBox txtExpirationDateEdit = gv.Rows[this.EditIndexOwnerInfo].FindControl("txtExpirationDateEdit") as TextBox;
            //DropDownList ddlAddApprovalAgencyEdit = gv.Rows[this.EditIndexOwnerInfo].FindControl("ddlAddApprovalAgencyEdit") as DropDownList;

            //txtSchoolCodeEdit.Text = "SCH001";
            //ddlAddApprovalAgencyEdit.SelectedValue = "A1";
            //txtExpirationDateEdit.Text = "02/04/2016";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnSchoolInfoPreviousUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexSchoolInfoPrevious = -1;
        BindGridSchoolInfoPrevious();
    }
    protected void lnkSchoolInfoPreviousCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexSchoolInfoPrevious = -1;
        BindGridSchoolInfoPrevious();
    }
    #endregion


    #region Satellite Location Address

    int ROWLocAddress = 0;
    public int EditIndexSchoolInfoSatelliteLoc
    {
        get
        {
            if (ViewState["EditIndexSchoolInfoSatelliteLoc"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexSchoolInfoSatelliteLoc"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexSchoolInfoSatelliteLoc"] = value;
        }
    }

    protected void btnSatelliteLocationAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnSatelliteLocation.Visible = false;
        divAddSatelliteLocation.Visible = true;
        this.EditIndexSchoolInfoSatelliteLoc = -1;
        BindGridSatelliteLocation();
    }

    protected void btnSatelliteLocationAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnSatelliteLocation.Visible = true;
        divAddSatelliteLocation.Visible = false;
    }
    protected void lnkSatelliteLocationAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnSatelliteLocation.Visible = true;
        divAddSatelliteLocation.Visible = false;
    }

    public void BindGridSatelliteLocation()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvSatelliteLocation.EditIndex = this.EditIndexSchoolInfoSatelliteLoc;
        gvSatelliteLocation.DataSource = ArryListName;
        gvSatelliteLocation.DataBind();

        if (this.EditIndexSchoolInfoSatelliteLoc >= 0)
        {
            gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].CssClass = "RowInEditMode";
            gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[0].Attributes.Add("colspan", "7");
            gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[1].Visible = false;
            gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[2].Visible = false;
            gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[3].Visible = false;
            gvSatelliteLocation.Rows[this.EditIndexSchoolInfoSatelliteLoc].Cells[4].Visible = false;


        }
    }


    protected void gvSatelliteLocation_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblOwnerInfo = e.Row.FindControl("lblInfoPStreet") as Label;
            Label lblownerInfLastName = e.Row.FindControl("lblInfoPcity") as Label;
            Label lblownerInfFirstName = e.Row.FindControl("lblInfoPState") as Label;
            Label lblownerPer = e.Row.FindControl("lblInfoPZip") as Label;
            //Label lblownerInfoCity = e.Row.FindControl("lblownerInfoCity") as Label;
            //Label lblownerInfState = e.Row.FindControl("lblownerInfState") as Label;

            if (lblOwnerInfo != null && lblownerInfLastName != null && lblownerInfFirstName != null && lblownerPer != null)
            {
                if (ROWLocAddress == 0)
                {

                    lblOwnerInfo.Text = "123 Test Street";
                    lblownerInfLastName.Text = "Sacramento";
                    lblownerInfFirstName.Text = "California";
                    lblownerPer.Text = "94203";
                    //lblownerInfoCity.Text = "Sacramento";
                    // lblownerInfState.Text = "California";
                }
                else if (ROWLocAddress == 1)
                {
                    lblOwnerInfo.Text = "456 Test Street";
                    lblownerInfLastName.Text = "Sacramento";
                    lblownerInfFirstName.Text = "California";
                    lblownerPer.Text = "94203";
                    // lblownerInfoCity.Text = "Sacramento";
                    //lblownerInfState.Text = "California";
                }
            }

            ROWLocAddress++;

        }
    }

    protected void lnkSatelliteLocationEdit_Click(object sender, EventArgs e)
    {
       // divAddOwnerInfo.Visible = false;
       // divAddbtnOwnerInfo.Visible = true;
        this.EditIndexSchoolInfoSatelliteLoc = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexSchoolInfoSatelliteLoc = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
           // BindGridOwnerInfo();
           // FillControlSchoolInfoSatelliteLoc(gvOwnerInfo, this.EditIndexSchoolInfoSatelliteLoc);
        }
    }


    protected void lnkSatelliteLocationDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlSchoolInfoSatelliteLoc(GridView gv, int EditInd)
    {
        try
        {


            //TextBox txtSchoolCodeEdit = gv.Rows[this.EditIndexOwnerInfo].FindControl("txtSchoolCodeEdit") as TextBox;
            //TextBox txtExpirationDateEdit = gv.Rows[this.EditIndexOwnerInfo].FindControl("txtExpirationDateEdit") as TextBox;
            //DropDownList ddlAddApprovalAgencyEdit = gv.Rows[this.EditIndexOwnerInfo].FindControl("ddlAddApprovalAgencyEdit") as DropDownList;

            //txtSchoolCodeEdit.Text = "SCH001";
            //ddlAddApprovalAgencyEdit.SelectedValue = "A1";
            //txtExpirationDateEdit.Text = "02/04/2016";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnSatelliteLocationUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexSchoolInfoSatelliteLoc = -1;
        BindGridSatelliteLocation();
    }
    protected void lnkSatelliteLocationCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexSchoolInfoSatelliteLoc = -1;
        BindGridSatelliteLocation();
    }


    #endregion

    protected void btnVerifySchoolAddressYes_Click(object sender, EventArgs e)
    {
        divVerifySchoolAddressBtn.Visible = true;
        divVerifySchoolAddressPnl.Visible = false;
    }
    protected void btnVerifySchoolAddressNo_Click(object sender, EventArgs e)
    {
        divVerifySchoolAddressBtn.Visible = true;
        divVerifySchoolAddressPnl.Visible = false;
        TextBox3.Text = lblVSchoolStreet1.Text;
        txtschool_Add.Text = lblVSchoolStreet2.Text;
        txtCityResEdit.Text = lblVSchoolCity.Text;
        ddlStateResEdit.SelectedValue = lblVSchoolState.Text;
        txtZipResEdit.Text = lblVSchoolZip.Text;
    }

    #region Previous Address
    public void fillverifyPreviousaddress()
    {
        TextBox3.Text = AddressHelper.GetFormatedPOBOx(TextBox3.Text);///////////////
        txtschool_Add.Text = AddressHelper.GetFormatedPOBOx(txtschool_Add.Text);

        lblUPreviousStreet1.Text = TextBox3.Text;//////////////
        lblUPreviousStreet2.Text = txtschool_Add.Text;
        lblUPreviousCity.Text = txtCityResEdit.Text;
        lblUPreviousState.Text = ddlStateResEdit.SelectedItem.Text;
        lblUPreviousZip.Text = txtZipResEdit.Text;
        components objComponenets = GNF.APIAddressValidation.ValidateAddress(TextBox3.Text, txtschool_Add.Text, txtCityResEdit.Text, ddlStateResEdit.SelectedItem.Text, txtZipResEdit.Text);/////////////////
        if (objComponenets != null)
        {
            lblVPreviousStreet1.Text = objComponenets.street1;
            lblVPreviousStreet2.Text = objComponenets.street2;
            lblVPreviousCity.Text = objComponenets.city_name;
            lblVPreviousState.Text = objComponenets.state_abbreviation;
            lblVPreviousZip.Text = objComponenets.zipcode;
            btnVerifyPreviousAddressNo.Enabled = true;
            divNotVerifiedAdd.Visible = true;
            lblUnverifiedAdd.Text = "";
        }
        else
        {
            btnVerifyPreviousAddressNo.Enabled = false;
            divNotVerifiedAdd.Visible = false;
            lblUnverifiedAdd.Text = "This is not a verified address.";
        }
    }
    protected void btnVerifyPreviousAddress_Click(object sender, EventArgs e)
    {
        divVerifyPreviousAddressBtn.Visible = false;
        divVerifyPreviousAddressPnl.Visible = true;
        lblVPreviousStreet1.Text = "";
        lblVPreviousStreet2.Text = "";
        lblVPreviousCity.Text = "";
        lblVPreviousState.Text = "";
        lblVPreviousZip.Text = "";
        fillverifyPreviousaddress();
    }
    protected void btnVerifyPreviousAddressYes_Click(object sender, EventArgs e)
    {
        divVerifyPreviousAddressBtn.Visible = true;
        divVerifyPreviousAddressPnl.Visible = false;
    }
    protected void btnVerifyPreviousAddressNo_Click(object sender, EventArgs e)
    {
        divVerifyPreviousAddressBtn.Visible = true;
        divVerifyPreviousAddressPnl.Visible = false;
        TextBox3.Text = lblVPreviousStreet1.Text;////////////////
        txtschool_Add.Text = lblVPreviousStreet2.Text;
        txtCityResEdit.Text = lblVPreviousCity.Text;
        ddlStateResEdit.SelectedValue = lblVPreviousState.Text;
        txtZipResEdit.Text = lblVPreviousZip.Text;
    }
    #endregion

    #region Mailing Address - Working



    public void fillverifySchoolMailingaddress()
    {
        TextBox3.Text = AddressHelper.GetFormatedPOBOx(TextBox3.Text);///////////////
        txtschool_Add.Text = AddressHelper.GetFormatedPOBOx(txtschool_Add.Text);

        lblUSchoolMailingStreet1.Text = TextBox3.Text;//////////////
        lblUSchoolMailingStreet2.Text = txtschool_Add.Text;
        lblUSchoolMailingCity.Text = txtCityResEdit.Text;
        lblUSchoolMailingState.Text = ddlStateResEdit.SelectedItem.Text;
        lblUSchoolMailingZip.Text = txtZipResEdit.Text;
        components objComponenets = GNF.APIAddressValidation.ValidateAddress(TextBox3.Text, txtschool_Add.Text, txtCityResEdit.Text, ddlStateResEdit.SelectedItem.Text, txtZipResEdit.Text);/////////////////
        if (objComponenets != null)
        {
            lblVSchoolMailingStreet1.Text = objComponenets.street1;
            lblVSchoolMailingStreet2.Text = objComponenets.street2;
            lblVSchoolMailingCity.Text = objComponenets.city_name;
            lblVSchoolMailingState.Text = objComponenets.state_abbreviation;
            lblVSchoolMailingZip.Text = objComponenets.zipcode;
            btnVerifySchoolMailingAddressNo.Enabled = true;
            divNotVerifiedAdd.Visible = true;
            lblUnverifiedAdd.Text = "";
        }
        else
        {
            btnVerifySchoolMailingAddressNo.Enabled = false;
            divNotVerifiedAdd.Visible = false;
            lblUnverifiedAdd.Text = "This is not a verified address.";
        }
    }
    protected void btnVerifySchoolMailingAddress_Click(object sender, EventArgs e)
    {
        divVerifySchoolMailingAddressBtn.Visible = false;
        divVerifySchoolMailingAddressPnl.Visible = true;
        lblVSchoolMailingStreet1.Text = "";
        lblVSchoolMailingStreet2.Text = "";
        lblVSchoolMailingCity.Text = "";
        lblVSchoolMailingState.Text = "";
        lblVSchoolMailingZip.Text = "";
        fillverifySchoolMailingaddress();
    }
    protected void btnVerifySchoolMailingAddressYes_Click(object sender, EventArgs e)
    {
        divVerifySchoolMailingAddressBtn.Visible = true;
        divVerifySchoolMailingAddressPnl.Visible = false;
    }
    protected void btnVerifySchoolMailingAddressNo_Click(object sender, EventArgs e)
    {
        divVerifySchoolMailingAddressBtn.Visible = true;
        divVerifySchoolMailingAddressPnl.Visible = false;
        TextBox3.Text = lblVSchoolMailingStreet1.Text;////////////////
        txtschool_Add.Text = lblVSchoolMailingStreet2.Text;
        txtCityResEdit.Text = lblVSchoolMailingCity.Text;
        ddlStateResEdit.SelectedValue = lblVSchoolMailingState.Text;
        txtZipResEdit.Text = lblVSchoolMailingZip.Text;
    }


    #endregion

    #region Satellite Address

    public void fillverifySatelliteLocationaddress()
    {
        TextBox3.Text = AddressHelper.GetFormatedPOBOx(TextBox3.Text);///////////////
        txtschool_Add.Text = AddressHelper.GetFormatedPOBOx(txtschool_Add.Text);

        lblUSatelliteLocationStreet1.Text = TextBox3.Text;//////////////
        lblUSatelliteLocationStreet2.Text = txtschool_Add.Text;
        lblUSatelliteLocationCity.Text = txtCityResEdit.Text;
        lblUSatelliteLocationState.Text = ddlStateResEdit.SelectedItem.Text;
        lblUSatelliteLocationZip.Text = txtZipResEdit.Text;
        components objComponenets = GNF.APIAddressValidation.ValidateAddress(TextBox3.Text, txtschool_Add.Text, txtCityResEdit.Text, ddlStateResEdit.SelectedItem.Text, txtZipResEdit.Text);/////////////////
        if (objComponenets != null)
        {
            lblVSatelliteLocationStreet1.Text = objComponenets.street1;
            lblVSatelliteLocationStreet2.Text = objComponenets.street2;
            lblVSatelliteLocationCity.Text = objComponenets.city_name;
            lblVSatelliteLocationState.Text = objComponenets.state_abbreviation;
            lblVSatelliteLocationZip.Text = objComponenets.zipcode;
            btnVerifySatelliteLocationAddressNo.Enabled = true;
            divNotVerifiedAdd.Visible = true;
            lblUnverifiedAdd.Text = "";
        }
        else
        {
            btnVerifySatelliteLocationAddressNo.Enabled = false;
            divNotVerifiedAdd.Visible = false;
            lblUnverifiedAdd.Text = "This is not a verified address.";
        }
    }
    protected void btnVerifySatelliteLocationAddress_Click(object sender, EventArgs e)
    {
        divVerifySatelliteLocationAddressBtn.Visible = false;
        divVerifySatelliteLocationAddressPnl.Visible = true;
        lblVSatelliteLocationStreet1.Text = "";
        lblVSatelliteLocationStreet2.Text = "";
        lblVSatelliteLocationCity.Text = "";
        lblVSatelliteLocationState.Text = "";
        lblVSatelliteLocationZip.Text = "";
        fillverifySatelliteLocationaddress();
    }
    protected void btnVerifySatelliteLocationAddressYes_Click(object sender, EventArgs e)
    {
        divVerifySatelliteLocationAddressBtn.Visible = true;
        divVerifySatelliteLocationAddressPnl.Visible = false;
    }
    protected void btnVerifySatelliteLocationAddressNo_Click(object sender, EventArgs e)
    {
        divVerifySatelliteLocationAddressBtn.Visible = true;
        divVerifySatelliteLocationAddressPnl.Visible = false;
        TextBox3.Text = lblVSatelliteLocationStreet1.Text;////////////////
        txtschool_Add.Text = lblVSatelliteLocationStreet2.Text;
        txtCityResEdit.Text = lblVSatelliteLocationCity.Text;
        ddlStateResEdit.SelectedValue = lblVSatelliteLocationState.Text;
        txtZipResEdit.Text = lblVSatelliteLocationZip.Text;
    }

    #endregion

    protected void btnSavePersonalInfo_Click(object sender, EventArgs e)
    {
        string strErr;
        strErr = "";

        if (txtFirstNameEdit.Text == "")
        {
            strErr = "Please enter school name.";
        }


        if (txtschoolwebsite.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter school website.";
            else
            {
                strErr = strErr + "<br />" + "Please enter school website.";
            }
        }

        if (txtschool_Add.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter school address.";
            else
            {
                strErr = strErr + "<br />" + "Please enter school address.";
            }
        }

        if (txtCityResEdit.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter city of school.";
            else
            {
                strErr = strErr + "<br />" + "Please enter city of school.";
            }
        }


        if (ddlStateResEdit.SelectedValue == "-1")
        {
            if (strErr == "")
                strErr = "Please enter school state.";
            else
            {
                strErr = strErr + "<br />" + "Please enter school state.";
            }
        }

        if (txtZipResEdit.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter zip code of school.";
            else
            {
                strErr = strErr + "<br />" + "Please enter zip code of school.";
            }
        }

        if (txtMailingAdd.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter mailing address.";
            else
            {
                strErr = strErr + "<br />" + "Please enter mailing address.";
            }
        }

        if (txtMailingCity.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter mailing city.";
            else
            {
                strErr = strErr + "<br />" + "Please enter mailing city.";
            }
        }

        if (ddlMailingState.SelectedValue == "-1")
        {
            if (strErr == "")
                strErr = "Please select mailing state.";
            else
            {
                strErr = strErr + "<br />" + "Please select mailing state.";
            }
        }

        if (txtMailngZip.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter mailing zip code.";
            else
            {
                strErr = strErr + "<br />" + "Please enter mailing zip code.";
            }
        }



        if (txtSatelliteLoc.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter satellite location address.";
            else
            {
                strErr = strErr + "<br />" + "Please enter satellite location address.";
            }
        }

        if (txtSatelliteCity.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter satellite location city.";
            else
            {
                strErr = strErr + "<br />" + "Please enter satellite location city.";
            }
        }

        if (ddlSatelliteState.SelectedValue == "-1")
        {
            if (strErr == "")
                strErr = "Please select satellite location state.";
            else
            {
                strErr = strErr + "<br />" + "Please select satellite location state.";
            }
        }

        if (txtSatelliteZip.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter satellite location zip.";
            else
            {
                strErr = strErr + "<br />" + "Please enter satellite location zip.";
            }
        }

        if (txtPreviousAdd.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter previous address.";
            else
            {
                strErr = strErr + "<br />" + "Please enter previous address.";
            }
        }

        if (txtPreviousCity.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter previous city.";
            else
            {
                strErr = strErr + "<br />" + "Please enter previous city.";
            }
        }

        if (ddlPreviousAddState.SelectedValue == "-1")
        {
            if (strErr == "")
                strErr = "Please select previous address.";
            else
            {
                strErr = strErr + "<br />" + "Please select previous address.";
            }
        }

        if (txtPreviousAddzip.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter previous zip.";
            else
            {
                strErr = strErr + "<br />" + "Please enter previous zip.";
            }
        }

        if (txtDirectorEmail.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter Director/Administrator email.";
            else
            {
                strErr = strErr + "<br />" + "Please enter Director/Administrator email.";
            }
        }

        if (txtDirectorTel.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter Director/Administrator telephone number.";
            else
            {
                strErr = strErr + "<br />" + "Please enter Director/Administrator telephone number.";
            }
        }

        if (txtApplicationEmail.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter contact email .";
            else
            {
                strErr = strErr + "<br />" + "Please enter contact email.";
            }
        }

        if (txtApplicationNum.Text == "")
        {
            if (strErr == "")
                strErr = "Please enter contact number .";
            else
            {
                strErr = strErr + "<br />" + "Please enter contact number.";
            }
        }

        if (txtschool_Add.Text == "")
        {


            divEMail.Focus();
            divEMail.Visible = true;

        }



        //if ( strErr=="")
        //btnSection2_Click(sender, e);
        //else
        //{
        //    lblErrorPnl1.Text = strErr;
        //    divEMail.Focus();
        //    divEMail.Visible = true;
        //}
    }

    protected void lnkCancelPD_Click(object sender, EventArgs e)
    {
        //this.EditIndex = -1;
        //BindGrid();
    }


    #endregion


    protected void btnNextCourseChkList_Click(object sender, EventArgs e)
    {
        
    }




    #region Background Check

    public int EditIndexBackgroundCheck
    {
        get
        {
            if (ViewState["EditIndexBackgroundCheck"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexBackgroundCheck"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexBackgroundCheck"] = value;
        }
    }
    protected void btnBackgroundCheckAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnBackgroundCheck.Visible = false;
        divAddBackgroundCheck.Visible = true;
        this.EditIndexBackgroundCheck = -1;
        BindGridBackgroundCheck();

    }

    protected void btnBackgroundCheckAddNewSave_Click(object sender, EventArgs e)
    {

        string strErrAddStaff;
        strErrAddStaff = "";

        if (txtBackCheckLastName.Text == "")
        {
            strErrAddStaff = "Please enter Last Name.";
        }


        if (txtBackCheckFirstName.Text == "")
        {
            if (strErrAddStaff == "")
                strErrAddStaff = "Please enter First Name.";
            else
            {
                strErrAddStaff = strErrAddStaff + "<br />" + "Please enter First Name.";
            }
        }



        if (CheckBoxList3.SelectedItem == null)
        {
            if (strErrAddStaff == "")
                strErrAddStaff = "Please check any one from Title/ Position.";
            else
            {
                strErrAddStaff = strErrAddStaff + "<br />" + "Please check any one from Title/ Position.";
            }
        }



        if (txtaddstaffEmail.Text == "")
        {
            if (strErrAddStaff == "")
                strErrAddStaff = "Please enter Email.";
            else
            {
                strErrAddStaff = strErrAddStaff + "<br />" + "Please enter Email.";
            }
        }


        if (rblBackgroundChekReq.SelectedItem == null)
        {
            if (strErrAddStaff == "")
                strErrAddStaff = "Please check Yes or No of Background Check.";
            else
            {
                strErrAddStaff = strErrAddStaff + "<br />" + "Please check Yes or No of Background Check.";
            }
        }





        if (strErrAddStaff == "")
        {
            divAddbtnBackgroundCheck.Visible = true;
            divAddBackgroundCheck.Visible = false;
        }

        else
        {
            lblErrAddStaff.Text = strErrAddStaff;
            dvErrAddStaff.Focus();
            dvErrAddStaff.Visible = true;
        }


    }

    protected void lnkBackgroundCheckAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnBackgroundCheck.Visible = true;
        divAddBackgroundCheck.Visible = false;
    }

    public void BindGridBackgroundCheck()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvMassageProgram.EditIndex = this.EditIndexBackgroundCheck;
        gvMassageProgram.DataSource = ArryListName;
        gvMassageProgram.DataBind();

        if (this.EditIndexBackgroundCheck >= 0)
        {
            gvMassageProgram.Rows[this.EditIndexBackgroundCheck].CssClass = "RowInEditMode";
            gvMassageProgram.Rows[this.EditIndexBackgroundCheck].Cells[0].Attributes.Add("colspan", "6");
            gvMassageProgram.Rows[this.EditIndexBackgroundCheck].Cells[1].Visible = false;
            gvMassageProgram.Rows[this.EditIndexBackgroundCheck].Cells[2].Visible = false;
            //gvMassageProgram.Rows[this.EditIndexMassageProgram].Cells[3].Visible = false;

        }
    }

    protected void gvBackgroundCheck_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblBackgroundCheckLastName = e.Row.FindControl("lblBackgroundCheckLastName") as Label;
            Label lblBackgroundCheckFirstName = e.Row.FindControl("lblBackgroundCheckFirstName") as Label;
            Label lblBackgroundCheckPosition = e.Row.FindControl("lblBackgroundCheckPosition") as Label;
            Label lblBackgroundCheckRequerd = e.Row.FindControl("lblBackgroundCheckRequerd") as Label;
            Label lblBackgroundCheckReason = e.Row.FindControl("lblBackgroundCheckReason") as Label;


            if (lblBackgroundCheckLastName != null && lblBackgroundCheckReason != null && lblBackgroundCheckPosition != null && lblBackgroundCheckRequerd != null && lblBackgroundCheckFirstName != null)
            {
                if (ROWLic == 0)
                {

                    lblBackgroundCheckLastName.Text = "Program Name1";
                    lblBackgroundCheckFirstName.Text = "Program Hours1";
                    lblBackgroundCheckPosition.Text = "Program Hours1";
                    lblBackgroundCheckRequerd.Text = "Program Hours1";
                    lblBackgroundCheckReason.Text = "Program Hours1";

                }
                else if (ROWLic == 1)
                {
                    lblBackgroundCheckLastName.Text = "Program Name2";
                    lblBackgroundCheckFirstName.Text = "Program Hours2";
                    lblBackgroundCheckPosition.Text = "Program Hours2";
                    lblBackgroundCheckRequerd.Text = "Program Hours2";
                    lblBackgroundCheckReason.Text = "Program Hours2";
                }
            }

            ROWLic++;

        }
    }

    protected void lnkBackgroundCheckEdit_Click(object sender, EventArgs e)
    {
        divAddBackgroundCheck.Visible = false;
        divAddbtnBackgroundCheck.Visible = true;
        this.EditIndexBackgroundCheck = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexBackgroundCheck = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridBackgroundCheck();
            FillControlBackgroundCheck(gvMassageProgram, this.EditIndexBackgroundCheck);
        }
    }

    protected void lnkBackgroundChecDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlBackgroundCheck(GridView gv, int EditInd)
    {
        try
        {


            TextBox txtBackCheckLastNameEdit = gv.Rows[this.EditIndexBackgroundCheck].FindControl("txtBackCheckLastNameEdit") as TextBox;
            TextBox txtBackCheckFirstNameEdit = gv.Rows[this.EditIndexBackgroundCheck].FindControl("txtBackCheckFirstNameEdit") as TextBox;
            TextBox txtBackCheckTitleEdit = gv.Rows[this.EditIndexBackgroundCheck].FindControl("txtBackCheckTitleEdit") as TextBox;
            RadioButtonList rblBackgroundChekReqEdit = gv.Rows[this.EditIndexBackgroundCheck].FindControl("rblBackgroundChekReqEdit") as RadioButtonList;
            TextBox txtchkCAMTCEdit = gv.Rows[this.EditIndexBackgroundCheck].FindControl("txtchkCAMTCEdit") as TextBox;

            txtBackCheckLastNameEdit.Text = "Last Name ";
            txtBackCheckFirstNameEdit.Text = "First Name";
            txtBackCheckTitleEdit.Text = "Title";
            rblBackgroundChekReqEdit.Text = "Yes";
            txtchkCAMTCEdit.Text = "CAMTC";



        }

        catch (Exception ex)
        {

        }
    }

    protected void btnBackgroundCheckUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexBackgroundCheck = -1;
        BindGridBackgroundCheck();
    }
    protected void lnkBackgroundCheckCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexBackgroundCheck = -1;
        BindGridBackgroundCheck();
    }


    protected void btnStaffPay_Click(object sender, EventArgs e)
    {
        if (payment_stafftab.Visible == true)
            payment_stafftab.Visible = false;
        else
            payment_stafftab.Visible = true;
    }

    protected void ddlStaffPaymentMethod_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddlStaffPaymentMethod.SelectedItem.Text == "Check")
        {
            trstaffchck1.Visible = true;
            trstaffchck2.Visible = true;
            trstaffmonyorder.Visible = false;

            //pnlMoneyOrder.Visible = false;
            //pnlCheck.Visible = true;
            //btnSaveNextPayment.Visible = false;
        }
        else if (ddlStaffPaymentMethod.SelectedItem.Text == "Money Order")
        {
            trstaffchck1.Visible = false;
            trstaffchck2.Visible = false;
            trstaffmonyorder.Visible = true;
            //pnlMoneyOrder.Visible = true;
            //pnlCheck.Visible = false;
            //btnSaveNextPayment.Visible = false;
        }
        else if (ddlStaffPaymentMethod.SelectedItem.Text == "Credit / Debit Card")
        {
            trstaffchck1.Visible = false;
            trstaffchck2.Visible = false;
            trstaffmonyorder.Visible = false;
            //pnlMoneyOrder.Visible = false;
            //pnlCheck.Visible = false;
            //btnSaveNextPayment.Visible = true;
        }
        else
        {
            trstaffchck1.Visible = false;
            trstaffchck2.Visible = false;
            trstaffmonyorder.Visible = false;
            //pnlMoneyOrder.Visible = false;
            //pnlCheck.Visible = false;
            //btnSaveNextPayment.Visible = false;
        }
    }


    protected void btnStaffShowDetails_Click(object sender, EventArgs e)
    {
        if (btnStaffShowDetails.Visible == true)
            btnStaffShowDetails.Visible = false;
        else
            btnStaffShowDetails.Visible = true;

        if (btnStaffHideDetials.Visible == false)
            btnStaffHideDetials.Visible = true;
        else
            btnStaffHideDetials.Visible = true;

        if (showstaffdetils1.Visible == true)
            showstaffdetils1.Visible = false;
        else
            showstaffdetils1.Visible = true;

        if (Staffshowdetils2.Visible == true)
            Staffshowdetils2.Visible = false;
        else
            Staffshowdetils2.Visible = true;
    }
    protected void btnHideDetials_Click(object sender, EventArgs e)
    {
        //if (btnHideDetials.Visible == true)
        //    btnHideDetials.Visible = false;
        //else
        //    btnHideDetials.Visible = true;

        //if (btnShowDetails.Visible == false)
        //    btnShowDetails.Visible = true;
        //else
        //    btnShowDetails.Visible = true;

        //if (showdetils1.Visible == true)
        //    showdetils1.Visible = false;
        //else
        //    showdetils1.Visible = true;

        //if (showdetils2.Visible == true)
        //    showdetils2.Visible = false;
        //else
        //    showdetils2.Visible = true;
    }

    protected void btnStaffHideDetials_Click(object sender, EventArgs e)
    {
        if (btnStaffHideDetials.Visible == true)
            btnStaffHideDetials.Visible = false;
        else
            btnStaffHideDetials.Visible = true;

        if (btnStaffShowDetails.Visible == false)
            btnStaffShowDetails.Visible = true;
        else
            btnStaffShowDetails.Visible = true;

        if (showstaffdetils1.Visible == true)
            showstaffdetils1.Visible = false;
        else
            showstaffdetils1.Visible = true;

        if (Staffshowdetils2.Visible == true)
            Staffshowdetils2.Visible = false;
        else
            Staffshowdetils2.Visible = true;
    }

    #region Staff
    protected void rblTalentWise_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblTalentWise.SelectedItem.Text == "Yes")
        {
            btnTalentWise.Enabled = true;
        }
        else
        {
            btnTalentWise.Enabled = false;
        }
    }
    #endregion

    protected void btnNextBackList_Click(object sender, EventArgs e)
    {
        //btnTransCheck_Click(sender, e);
    }

    #endregion




}