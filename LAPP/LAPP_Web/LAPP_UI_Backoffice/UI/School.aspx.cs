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



public partial class Establisment : System.Web.UI.Page
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
            BindGridSatelliteLocation();
            BindGridSchoolInfoPrevious();
            BindGridApprovalAgency();
            BindGridMassageProgrameName();
            BindGridRelatedSchool();
            BindGridAdminInfo1();
            BindGridAdminInfo2();
            BindGridAdminInfo20();
            BindGridInstInstrQualSectionA1();
            BindGridInstrSchQualSectionA1();
            BindGridInstSchQualSectionB1();
            BindGridInstSchQualSectionB2();
            BindGridInstSchQualSectionB3();
            BindGridInstSchQualSectionB4();
            BindGridSubjectTaughInstr();
            BindGridCollegeWrkExp1();
            BindGridCollegeWrkExp2();
            BindGridCollegeWrkExp3();
            BindGridCollegeWrkExp4();
            btnSearch_Click(sender, e);

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
            ltrIndividual1.Text = "Test Massage School";//objLAPPindividual.First_Name + " " + objLAPPindividual.Last_Name;
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
            btnStaff.Enabled = true;

            //btnFinancial.Enabled = true;
            //btnName.Enabled = true;
            //btnEducation.Enabled = true;

            btnEmployment.Enabled = true;
            btnApplicationData.Enabled = true;
            btnCertificate.Enabled = true;
            btnPSD.Enabled = true;
            btnComplaint.Enabled = true;
            btnDOJFBI.Enabled = true;
            btnDeficiency.Enabled = true;
            btnFinance.Enabled = true;
            btnNotes.Enabled = true;
            btnInvestigateNotes.Enabled = true;
            //btnLog.Enabled = true;
            //btnCorrespondence.Enabled = true;
            btnMiscDocument.Enabled = true;
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
            btnStaff.Enabled = false;

            //btnFinancial.Enabled = false;
            //btnName.Enabled = false;
            //btnEducation.Enabled = false;

            btnEmployment.Enabled = false;
            btnApplicationData.Enabled = false;
            btnCertificate.Enabled = false;
            btnPSD.Enabled = false;
            btnComplaint.Enabled = false;
            btnDOJFBI.Enabled = false;
            btnDeficiency.Enabled = false;
            btnFinance.Enabled = false;
            btnNotes.Enabled = false;
            //btnLog.Enabled = false;
            //btnCorrespondence.Enabled = false;
            btnMiscDocument.Enabled = false;
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
        pnlstaff.Visible = false;
        pnlApplication.Visible = false;
        pnlCertificate.Visible = false;
        pnlNotes.Visible = false;
        pnlInvestiveNotes.Visible = false;
        //pnlTask.Visible = false;
        pnlDocument.Visible = false;
        pnlInvestigativeDoc.Visible = false;
        pnlAdvRoster.Visible = false;
        pnlGeneralInfo.Visible = false;
        pnlFinancial.Visible = false;
        pnlFinance.Visible = false;
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
        else if (pnlValue == "Staff")
            pnlstaff.Visible = true;
        else if (pnlValue == "App")
            pnlApplication.Visible = true;
        else if (pnlValue == "Cert")
            pnlCertificate.Visible = true;
        else if (pnlValue == "ESDSclInfoComp")
            pnlESDSclInfoComplaint.Visible = true;
        else if (pnlValue == "InvesNotes")
            pnlInvestiveNotes.Visible = true;
        else if (pnlValue == "Note")
            pnlNotes.Visible = true;
        else if (pnlValue == "Finance")
            pnlFinance.Visible = true;
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
        btnStaff.CssClass = "tabBtn";

        //btnFinancial.CssClass = "tabBtn";
        //btnName.CssClass = "tabBtn";
        //btnEducation.CssClass = "tabBtn";

        btnEmployment.CssClass = "tabBtn";
        btnApplicationData.CssClass = "tabBtn";
        btnCertificate.CssClass = "tabBtn";
        btnPSD.CssClass = "tabBtn";
        btnComplaint.CssClass = "tabBtn";
        btnDOJFBI.CssClass = "tabBtn";
        btnDeficiency.CssClass = "tabBtn";
        btnNotes.CssClass = "tabBtn";
        btnFinance.CssClass = "tabBtn";
        btnInvestigateNotes.CssClass = "tabBtn";

        //btnLog.CssClass = "tabBtn";
        //btnCorrespondence.CssClass = "tabBtn";
        btnMiscDocument.CssClass = "tabBtn";
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

    protected void btnStaff_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Staff");
        MakeActiveBtn(btnStaff);
    }
    protected void btnFinancial_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Fina");
        //MakeActiveBtn(btnFinancial);
    }
    protected void btnName_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Name");
        //MakeActiveBtn(btnName);
    }
    protected void btnEducation_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Edu");
        //MakeActiveBtn(btnEducation);
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
    protected void btnPSD_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("PSD");
        MakeActiveBtn(btnPSD);
    }
    protected void btnComplaint_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("ESDSclInfoComp");
        MakeActiveBtn(btnComplaint);
    }
    protected void btnDOJFBI_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("DOJ");
        MakeActiveBtn(btnDOJFBI);
    }
    protected void btnDeficiency_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Defi");
        MakeActiveBtn(btnDeficiency);
    }
    protected void btnNotes_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Note");
        MakeActiveBtn(btnNotes);
    }

    protected void btnInvestigateNotes_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("InvesNotes");
        MakeActiveBtn(btnInvestigateNotes);
    }
    protected void btnFinance_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Finance");
        MakeActiveBtn(btnFinance);
    }


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
    protected void btnMiscDocument_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Doc");
        MakeActiveBtn(btnMiscDocument);
    }
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




    #region School Info

    #region School Address

    public void fillverifyschooladdress()
    {
        TextBox3.Text = AddressHelper.GetFormatedPOBOx(TextBox3.Text);
        txtschool_Add.Text = AddressHelper.GetFormatedPOBOx(txtschool_Add.Text);

        lblUSchoolStreet1.Text = TextBox3.Text;
        lblUSchoolStreet2.Text = txtschool_Add.Text;
        lblUSchoolCity.Text = txtCityResEdit.Text;
        lblUSchoolState.Text = ddlStateResEdit.SelectedItem.Text;
        lblUSchoolZip.Text = txtZipResEdit.Text;
        components objComponenets = GNF.APIAddressValidation.ValidateAddress(TextBox3.Text, txtschool_Add.Text, txtCityResEdit.Text, ddlStateResEdit.SelectedItem.Text, txtZipResEdit.Text);
        if (objComponenets != null)
        {
            lblVSchoolStreet1.Text = objComponenets.street1;
            lblVSchoolStreet2.Text = objComponenets.street2;
            lblVSchoolCity.Text = objComponenets.city_name;
            lblVSchoolState.Text = objComponenets.state_abbreviation;
            lblVSchoolZip.Text = objComponenets.zipcode;
            btnVerifySchoolAddressNo.Enabled = true;
            divNotVerifiedAdd.Visible = true;
            lblUnverifiedAdd.Text = "";
        }
        else
        {
            btnVerifySchoolAddressNo.Enabled = false;
            divNotVerifiedAdd.Visible = false;
            lblUnverifiedAdd.Text = "This is not a verified address.";
        }
    }
    protected void btnVerifySchoolAddress_Click(object sender, EventArgs e)
    {
        divVerifySchoolAddressBtn.Visible = false;
        divVerifySchoolAddressPnl.Visible = true;
        lblVSchoolStreet1.Text = "";
        lblVSchoolStreet2.Text = "";
        lblVSchoolCity.Text = "";
        lblVSchoolState.Text = "";
        lblVSchoolZip.Text = "";
        fillverifyschooladdress();
    }
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

    #endregion


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
            //BindGridOwnerInfo();
            //FillControlSchoolInfoMailing(gvOwnerInfo, this.EditIndexSchoolInfoPrevious);
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
        //divAddOwnerInfo.Visible = false;
        //divAddbtnOwnerInfo.Visible = true;
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

    protected void ddlAppAgencSup_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlAppAgencSup.SelectedItem.Text == "Other (specify)")
        {
            trSclElgOtherDocumentType.Visible = true;
        }
        else
        {
            trSclElgOtherDocumentType.Visible = false;
        }

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

    int ROWMPORLic = 0;
    protected void gvMassageProgram_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label lblMassageProgrameName = e.Row.FindControl("lblMassageProgrameName") as Label;
            Label lblProgramHours = e.Row.FindControl("lblProgramHours") as Label;
            Image IBCAMTCAPP = e.Row.FindControl("IBCAMTCAPP") as Image;
            Label lblProgAppStartDate = e.Row.FindControl("lblProgAppStartDate") as Label;
            Label lblProgAppStartend = e.Row.FindControl("lblProgAppStartend") as Label;

            if (lblMassageProgrameName != null && lblProgramHours != null && IBCAMTCAPP != null && lblProgAppStartDate != null && lblProgAppStartend != null)
            {
                if (ROWMPORLic == 0)
                {

                    lblMassageProgrameName.Text = "Program Name1";
                    lblProgramHours.Text = "120";
                    IBCAMTCAPP.ImageUrl = "~/App_Themes/Theme1/images/StatusYes.png";
                    lblProgAppStartDate.Text = "01/01/2015";
                    lblProgAppStartend.Text = "02/03/2016";
                }
                else if (ROWMPORLic == 1)
                {
                    lblMassageProgrameName.Text = "Program Name2";
                    lblProgramHours.Text = "160";
                    IBCAMTCAPP.ImageUrl = "~/App_Themes/Theme1/images/StatusNo.png";
                    lblProgAppStartDate.Text = "6/30/2016";
                    lblProgAppStartend.Text = "10/03/2016";
                }
            }

            ROWMPORLic++;

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

    protected void ddlOwnAboutBusinessDoc_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlOwnAboutBusinessDoc.SelectedItem.Text == "Other (specify)")
        {
            trAbouttheSchl1.Visible = true;
        }
        else
        {
            trAbouttheSchl1.Visible = false;
        }
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

    int ROWLic = 0;
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

    #region Administrator Information

    #region AdminInfo1

    public int EditIndexAdminInfo1
    {
        get
        {
            if (ViewState["EditIndexAdminInfo1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdminInfo1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdminInfo1"] = value;
        }
    }

    protected void btnAdminInfo1AddNew_Click(object sender, EventArgs e)
    {
        divBtnAddAdminInfo1.Visible = false;
        divAddAdminInfo1.Visible = true;
        this.EditIndexAdminInfo1 = -1;
        BindGridAdminInfo1();
    }
    protected void btnAdminInfo1AddNewSave_Click(object sender, EventArgs e)
    {
        divBtnAddAdminInfo1.Visible = true;
        divAddAdminInfo1.Visible = false;
    }
    protected void lnkAdminInfo1AddNewCancel_Click(object sender, EventArgs e)
    {
        divBtnAddAdminInfo1.Visible = true;
        divAddAdminInfo1.Visible = false;
    }

    int ROWAI1 = 0;
    protected void gvAdminInfo1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblAdminInfo1SchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblAdminInfo1City") as Label;
            Label lblState = e.Row.FindControl("lblAdminInfo1State") as Label;
            Label lblGradDate = e.Row.FindControl("lblAdminInfo1GradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAI1 == 0)
                {

                    lblSchoolName.Text = "School 1";
                    lblGradDate.Text = "02/04/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";

                }
                else if (ROWAI1 == 1)
                {
                    lblSchoolName.Text = "School 2";
                    lblGradDate.Text = "02/04/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROWAI1++;

        }
    }

    public void BindGridAdminInfo1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvAdminInfo1.EditIndex = this.EditIndexAdminInfo1;
        gvAdminInfo1.DataSource = ArryListName;
        gvAdminInfo1.DataBind();

        if (this.EditIndexAdminInfo1 >= 0)
        {
            gvAdminInfo1.Rows[this.EditIndexAdminInfo1].CssClass = "RowInEditMode";
            gvAdminInfo1.Rows[this.EditIndexAdminInfo1].Cells[0].Attributes.Add("colspan", "6");
            gvAdminInfo1.Rows[this.EditIndexAdminInfo1].Cells[1].Visible = false;
            gvAdminInfo1.Rows[this.EditIndexAdminInfo1].Cells[2].Visible = false;
            gvAdminInfo1.Rows[this.EditIndexAdminInfo1].Cells[3].Visible = false;
            gvAdminInfo1.Rows[this.EditIndexAdminInfo1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdminInfo1].Cells[5].Visible = false;

        }
    }

    public void FillControlAdminInfo1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdminInfo1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdminInfo1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdminInfo1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdminInfo1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdminInfo1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnAdminInfo1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexAdminInfo1 = -1;
        BindGridAdminInfo1();
    }

    protected void lnkAdminInfo1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexAdminInfo1 = -1;
        BindGridAdminInfo1();
    }

    protected void lnkAdminInfo1Edit_Click(object sender, EventArgs e)
    {
        divBtnAddAdminInfo1.Visible = true;
        divAddAdminInfo1.Visible = false;
        this.EditIndexAdminInfo1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdminInfo1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdminInfo1();
            FillControlAdminInfo1(gvAdminInfo1, this.EditIndexAdminInfo1);
        }
    }

    protected void lnkAdminInfo1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region AdminInfo2

    public int EditIndexAdminInfo2
    {
        get
        {
            if (ViewState["EditIndexAdminInfo2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdminInfo2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdminInfo2"] = value;
        }
    }

    protected void btnAdminInfo2AddNew_Click(object sender, EventArgs e)
    {
        divBtnAddAdminInfo2.Visible = false;
        divAddAdminInfo2.Visible = true;
        this.EditIndexAdminInfo2 = -1;
        BindGridAdminInfo2();
    }
    protected void btnAdminInfo2AddNewSave_Click(object sender, EventArgs e)
    {
        divBtnAddAdminInfo2.Visible = true;
        divAddAdminInfo2.Visible = false;
    }
    protected void lnkAdminInfo2AddNewCancel_Click(object sender, EventArgs e)
    {
        divBtnAddAdminInfo2.Visible = true;
        divAddAdminInfo2.Visible = false;
    }

    int ROWAI2 = 0;
    protected void gvAdminInfo2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblAdminInfo2SchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblAdminInfo2City") as Label;
            Label lblState = e.Row.FindControl("lblAdminInfo2State") as Label;
            Label lblGradDate = e.Row.FindControl("lblAdminInfo2GradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAI2 == 0)
                {

                    lblSchoolName.Text = "School 1";
                    lblGradDate.Text = "02/04/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";

                }
                else if (ROWAI2 == 1)
                {
                    lblSchoolName.Text = "School 2";
                    lblGradDate.Text = "02/08/2015";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROWAI2++;

        }
    }

    public void BindGridAdminInfo2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvAdminInfo2.EditIndex = this.EditIndexAdminInfo2;
        gvAdminInfo2.DataSource = ArryListName;
        gvAdminInfo2.DataBind();

        if (this.EditIndexAdminInfo2 >= 0)
        {
            gvAdminInfo2.Rows[this.EditIndexAdminInfo2].CssClass = "RowInEditMode";
            gvAdminInfo2.Rows[this.EditIndexAdminInfo2].Cells[0].Attributes.Add("colspan", "6");
            gvAdminInfo2.Rows[this.EditIndexAdminInfo2].Cells[1].Visible = false;
            gvAdminInfo2.Rows[this.EditIndexAdminInfo2].Cells[2].Visible = false;
            gvAdminInfo2.Rows[this.EditIndexAdminInfo2].Cells[3].Visible = false;
            gvAdminInfo2.Rows[this.EditIndexAdminInfo2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdminInfo2].Cells[5].Visible = false;

        }
    }

    public void FillControlAdminInfo2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnAdminInfo2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexAdminInfo2 = -1;
        BindGridAdminInfo2();
    }

    protected void lnkAdminInfo2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexAdminInfo2 = -1;
        BindGridAdminInfo2();
    }

    protected void lnkAdminInfo2Edit_Click(object sender, EventArgs e)
    {
        divBtnAddAdminInfo2.Visible = true;
        divAddAdminInfo2.Visible = false;
        this.EditIndexAdminInfo2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdminInfo2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdminInfo2();
            FillControlAdminInfo2(gvAdminInfo2, this.EditIndexAdminInfo2);
        }
    }

    protected void lnkAdminInfo2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    protected void chkAffidavit_OnCheckedChanged(object sender, EventArgs e)
    {
        //EnableBtnNext();
    }

    protected void btnPhotoUpload_Click(object sender, EventArgs e)
    {

    }

    protected void btnNextSection7_Click(object sender, EventArgs e)
    {
        //btnAdminExp_Click(sender, e);
    }

    protected void lnkCalcelSection7_Click(object sender, EventArgs e)
    {

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
            FillControlPHRWInnerGrid(gvAdminInfo2, this.EditIndexPHRW1);
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
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexAdminInfo2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    #region Owner(s)
    protected void CheckOwnerDec1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void CheckOwnerDec2_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckOwnerDec3_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckOwnerDec4_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckOwnerDec5_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckOwnerDec7_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckOwnerDec60_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void rblOwnerDec1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerDec1.SelectedItem.Text == "Yes")
        {
            divPStaffOwner1.Visible = true;
        }
        else
        {
            divPStaffOwner1.Visible = false;
        }
    }

    protected void rblOwnerDec2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerDec2.SelectedItem.Text == "Yes")
        {
            divPStaffOwner2.Visible = true;
        }
        else
        {
            divPStaffOwner2.Visible = false;
        }
    }

    #region HistoryQ3
    protected void rblOwnerDec3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerDec3.SelectedItem.Text == "Yes")
        {
            divPStaffOwner3.Visible = true;
        }
        else
        {
            divPStaffOwner3.Visible = false;
        }
    }
    //protected void btnAddHist3_Click(object sender, EventArgs e)
    //{
    //    divgvhist3.Visible = true;
    //}
    #endregion
    #region HistoryQ4
    protected void rblOwnerDec4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerDec4.SelectedItem.Text == "Yes")
        {
            divPStaffOwner4.Visible = true;
        }
        else
        {
            divPStaffOwner4.Visible = false;
        }
    }
    //protected void btnAddHist4_Click(object sender, EventArgs e)
    //{
    //    divgvhist4.Visible = true;
    //}
    #endregion
    #region HistoryQ5
    protected void rblOwnerDec5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerDec5.SelectedItem.Text == "Yes")
        {
            divPStaffOwner5.Visible = true;
        }
        else
        {
            divPStaffOwner5.Visible = false;
        }
    }
    //protected void btnAddHist5_Click(object sender, EventArgs e)
    //{
    //    divgvhist5.Visible = true;
    //}
    #endregion
    #region HistoryQ6
    protected void rblOwnerDec6_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblOwnerDec6.SelectedItem.Text == "Yes")
        {
            // divhist6.Visible = true;
        }
        else
        {
            // divhist6.Visible = false;
        }
    }
    //protected void btnAddHist5_Click(object sender, EventArgs e)
    //{
    //    divgvhist5.Visible = true;
    //}
    #endregion

    #endregion

    #region Staff Info INSTRUCTOR

    #region INSTRUCTOR School Attendance
    public int EditIndexInstInstrQualSectionA1
    {
        get
        {
            if (ViewState["EditIndexInstInstrQualSectionA1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstInstrQualSectionA1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstInstrQualSectionA1"] = value;
        }
    }

    protected void btnInstInstrQualSectionA1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstrPrimaryMassageSchool.Visible = false;
        divAddInstrPrimaryMassageSchool.Visible = true;
        this.EditIndexInstInstrQualSectionA1 = -1;
        BindGridInstInstrQualSectionA1();
    }
    protected void btnInstInstrQualSectionA1AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstrPrimaryMassageSchool.Visible = true;
        divAddInstrPrimaryMassageSchool.Visible = false;
    }
    protected void lnkInstInstrQualSectionA1AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnInstrPrimaryMassageSchool.Visible = true;
        divAddInstrPrimaryMassageSchool.Visible = false;
    }

    int ROWInstQ1 = 0;
    protected void gvInstInstrQualSectionA1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWInstQ1 == 0)
                {

                    lblSchoolName.Text = "School1";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWInstQ1 == 1)
                {
                    lblSchoolName.Text = "School12";
                    lblGradDate.Text = "02/04/2016";
                    lblCity.Text = "Sacramento";
                    lblState.Text = "California";
                }
            }

            ROWInstQ1++;

        }
    }

    public void BindGridInstInstrQualSectionA1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstInstrQualSectionA1.EditIndex = this.EditIndexInstInstrQualSectionA1;
        gvInstInstrQualSectionA1.DataSource = ArryListName;
        gvInstInstrQualSectionA1.DataBind();

        if (this.EditIndexInstInstrQualSectionA1 >= 0)
        {
            gvInstInstrQualSectionA1.Rows[this.EditIndexInstInstrQualSectionA1].CssClass = "RowInEditMode";
            gvInstInstrQualSectionA1.Rows[this.EditIndexInstInstrQualSectionA1].Cells[0].Attributes.Add("colspan", "6");
            gvInstInstrQualSectionA1.Rows[this.EditIndexInstInstrQualSectionA1].Cells[1].Visible = false;
            gvInstInstrQualSectionA1.Rows[this.EditIndexInstInstrQualSectionA1].Cells[2].Visible = false;
            gvInstInstrQualSectionA1.Rows[this.EditIndexInstInstrQualSectionA1].Cells[3].Visible = false;
            gvInstInstrQualSectionA1.Rows[this.EditIndexInstInstrQualSectionA1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstInstrQualSectionA1].Cells[5].Visible = false;

        }
    }

    public void FillControlInstInstrQualSectionA1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstInstrQualSectionA1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstInstrQualSectionA1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstInstrQualSectionA1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstInstrQualSectionA1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstInstrQualSectionA1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstInstrQualSectionA1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstInstrQualSectionA1 = -1;
        BindGridInstInstrQualSectionA1();
    }

    protected void lnkInstInstrQualSectionA1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstInstrQualSectionA1 = -1;
        BindGridInstInstrQualSectionA1();
    }

    protected void lnkInstInstrQualSectionA1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstrPrimaryMassageSchool.Visible = true;
        divAddInstrPrimaryMassageSchool.Visible = false;
        this.EditIndexInstInstrQualSectionA1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstInstrQualSectionA1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstInstrQualSectionA1();
            FillControlInstInstrQualSectionA1(gvInstInstrQualSectionA1, this.EditIndexInstInstrQualSectionA1);
        }
    }

    protected void lnkInstInstrQualSectionA1Delete_Click(object sender, EventArgs e)
    {

    }
    #endregion

    #region INSTRUCTOR School Education


    public int EditIndexInstrSchQualSectionA1
    {
        get
        {
            if (ViewState["EditIndexInstrSchQualSectionA1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstrSchQualSectionA1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstrSchQualSectionA1"] = value;
        }
    }

    protected void btnInstrSchQualSectionA1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstrSchQualMassageSchool.Visible = false;
        dvAddSchoolAtt.Visible = true;
        ltrInstrSchQualSectionA1.Visible = true;
        this.EditIndexInstrSchQualSectionA1 = -1;
        BindGridInstrSchQualSectionA1();
    }
    protected void btnInstrSchQualSectionA1AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstrSchQualMassageSchool.Visible = true;
        ltrInstrSchQualSectionA1.Visible = false;
    }
    protected void lnkInstrSchQualSectionA1AddNewCancel_Click(object sender, EventArgs e)
    {
        dvAddSchoolAtt.Visible = false;
        divAddBtnInstrSchQualMassageSchool.Visible = true;
        ltrInstrSchQualSectionA1.Visible = false;
    }

    int ROWISIIQ2 = 0;
    protected void gvInstrSchQualSectionA1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWISIIQ2 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWISIIQ2 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWISIIQ2++;

        }
    }

    public void BindGridInstrSchQualSectionA1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstrSchQualSectionA1.EditIndex = this.EditIndexInstrSchQualSectionA1;
        gvInstrSchQualSectionA1.DataSource = ArryListName;
        gvInstrSchQualSectionA1.DataBind();

        if (this.EditIndexInstrSchQualSectionA1 >= 0)
        {
            gvInstrSchQualSectionA1.Rows[this.EditIndexInstrSchQualSectionA1].CssClass = "RowInEditMode";
            gvInstrSchQualSectionA1.Rows[this.EditIndexInstrSchQualSectionA1].Cells[0].Attributes.Add("colspan", "6");
            gvInstrSchQualSectionA1.Rows[this.EditIndexInstrSchQualSectionA1].Cells[1].Visible = false;
            gvInstrSchQualSectionA1.Rows[this.EditIndexInstrSchQualSectionA1].Cells[2].Visible = false;
            gvInstrSchQualSectionA1.Rows[this.EditIndexInstrSchQualSectionA1].Cells[3].Visible = false;
            gvInstrSchQualSectionA1.Rows[this.EditIndexInstrSchQualSectionA1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstrSchQualSectionA1].Cells[5].Visible = false;

        }
    }

    public void FillControlInstrSchQualSectionA1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstrSchQualSectionA1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstrSchQualSectionA1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstrSchQualSectionA1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstrSchQualSectionA1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstrSchQualSectionA1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstrSchQualSectionA1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstrSchQualSectionA1 = -1;
        BindGridInstrSchQualSectionA1();
    }

    protected void lnkInstrSchQualSectionA1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstrSchQualSectionA1 = -1;
        BindGridInstrSchQualSectionA1();
    }

    protected void lnkInstrSchQualSectionA1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstrSchQualMassageSchool.Visible = true;
        ltrInstrSchQualSectionA1.Visible = false;
        this.EditIndexInstrSchQualSectionA1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstrSchQualSectionA1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstrSchQualSectionA1();
            FillControlInstrSchQualSectionA1(gvInstrSchQualSectionA1, this.EditIndexInstrSchQualSectionA1);
        }
    }

    protected void lnkInstrSchQualSectionA1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region School Info School(s) where CURRENTLY working

    public int EditIndexInstSchQualSectionB1
    {
        get
        {
            if (ViewState["EditIndexInstSchQualSectionB1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstSchQualSectionB1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstSchQualSectionB1"] = value;
        }
    }

    protected void btnInstSchQualSectionB1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB1.Visible = false;
        divAddInstSchQualSectionB1.Visible = true;
        this.EditIndexInstSchQualSectionB1 = -1;
        BindGridInstSchQualSectionB1();
    }
    protected void btnInstSchQualSectionB1AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB1.Visible = true;
        divAddInstSchQualSectionB1.Visible = false;
    }
    protected void lnkInstSchQualSectionB1AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB1.Visible = true;
        divAddInstSchQualSectionB1.Visible = false;
    }

    int ROWIScoQB1 = 0;
    protected void gvInstSchQualSectionB1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWIScoQB1 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWIScoQB1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWIScoQB1++;

        }
    }

    public void BindGridInstSchQualSectionB1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstSchQualSectionB1.EditIndex = this.EditIndexInstSchQualSectionB1;
        gvInstSchQualSectionB1.DataSource = ArryListName;
        gvInstSchQualSectionB1.DataBind();

        if (this.EditIndexInstSchQualSectionB1 >= 0)
        {
            gvInstSchQualSectionB1.Rows[this.EditIndexInstSchQualSectionB1].CssClass = "RowInEditMode";
            gvInstSchQualSectionB1.Rows[this.EditIndexInstSchQualSectionB1].Cells[0].Attributes.Add("colspan", "6");
            gvInstSchQualSectionB1.Rows[this.EditIndexInstSchQualSectionB1].Cells[1].Visible = false;
            gvInstSchQualSectionB1.Rows[this.EditIndexInstSchQualSectionB1].Cells[2].Visible = false;
            gvInstSchQualSectionB1.Rows[this.EditIndexInstSchQualSectionB1].Cells[3].Visible = false;
            gvInstSchQualSectionB1.Rows[this.EditIndexInstSchQualSectionB1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstSchQualSectionB1].Cells[5].Visible = false;

        }
    }

    public void FillControlInstSchQualSectionB1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstSchQualSectionB1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstSchQualSectionB1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstSchQualSectionB1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstSchQualSectionB1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstSchQualSectionB1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstSchQualSectionB1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB1 = -1;
        BindGridInstSchQualSectionB1();
    }

    protected void lnkInstSchQualSectionB1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB1 = -1;
        BindGridInstSchQualSectionB1();
    }

    protected void lnkInstSchQualSectionB1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB1.Visible = true;
        divAddInstSchQualSectionB1.Visible = false;
        this.EditIndexInstSchQualSectionB1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstSchQualSectionB1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstSchQualSectionB1();
            FillControlInstSchQualSectionB1(gvInstSchQualSectionB1, this.EditIndexInstSchQualSectionB1);
        }
    }

    protected void lnkInstSchQualSectionB1Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Staff Info Other School(s) where PREVIOUSLY

    public int EditIndexInstSchQualSectionB2
    {
        get
        {
            if (ViewState["EditIndexInstSchQualSectionB2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstSchQualSectionB2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstSchQualSectionB2"] = value;
        }
    }

    protected void btnInstSchQualSectionB2AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB2.Visible = false;
        divAddInstSchQualSectionB2.Visible = true;
        this.EditIndexInstSchQualSectionB2 = -1;
        BindGridInstSchQualSectionB2();
    }
    protected void btnInstSchQualSectionB2AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB2.Visible = true;
        divAddInstSchQualSectionB2.Visible = false;
    }
    protected void lnkInstSchQualSectionB2AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB2.Visible = true;
        divAddInstSchQualSectionB2.Visible = false;
    }

    int ROWIScoQB2 = 0;
    protected void gvInstSchQualSectionB2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWIScoQB2 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWIScoQB2 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWIScoQB2++;

        }
    }

    public void BindGridInstSchQualSectionB2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstSchQualSectionB2.EditIndex = this.EditIndexInstSchQualSectionB2;
        gvInstSchQualSectionB2.DataSource = ArryListName;
        gvInstSchQualSectionB2.DataBind();

        if (this.EditIndexInstSchQualSectionB2 >= 0)
        {
            gvInstSchQualSectionB2.Rows[this.EditIndexInstSchQualSectionB2].CssClass = "RowInEditMode";
            gvInstSchQualSectionB2.Rows[this.EditIndexInstSchQualSectionB2].Cells[0].Attributes.Add("colspan", "6");
            gvInstSchQualSectionB2.Rows[this.EditIndexInstSchQualSectionB2].Cells[1].Visible = false;
            gvInstSchQualSectionB2.Rows[this.EditIndexInstSchQualSectionB2].Cells[2].Visible = false;
            gvInstSchQualSectionB2.Rows[this.EditIndexInstSchQualSectionB2].Cells[3].Visible = false;
            gvInstSchQualSectionB2.Rows[this.EditIndexInstSchQualSectionB2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstSchQualSectionB2].Cells[5].Visible = false;

        }
    }

    public void FillControlInstSchQualSectionB2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstSchQualSectionB2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstSchQualSectionB2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstSchQualSectionB2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstSchQualSectionB2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstSchQualSectionB2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstSchQualSectionB2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB2 = -1;
        BindGridInstSchQualSectionB2();
    }

    protected void lnkInstSchQualSectionB2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB2 = -1;
        BindGridInstSchQualSectionB2();
    }

    protected void lnkInstSchQualSectionB2Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB2.Visible = true;
        divAddInstSchQualSectionB2.Visible = false;
        this.EditIndexInstSchQualSectionB2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstSchQualSectionB2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstSchQualSectionB2();
            FillControlInstSchQualSectionB2(gvInstSchQualSectionB2, this.EditIndexInstSchQualSectionB2);
        }
    }

    protected void lnkInstSchQualSectionB2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region School Info Current Massage Employee

    public int EditIndexInstSchQualSectionB3
    {
        get
        {
            if (ViewState["EditIndexInstSchQualSectionB3"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstSchQualSectionB3"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstSchQualSectionB3"] = value;
        }
    }

    protected void btnInstSchQualSectionB3AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB3.Visible = false;
        divAddInstSchQualSectionB3.Visible = true;
        this.EditIndexInstSchQualSectionB3 = -1;
        BindGridInstSchQualSectionB3();
    }
    protected void btnInstSchQualSectionB3AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB3.Visible = true;
        divAddInstSchQualSectionB3.Visible = false;
    }
    protected void lnkInstSchQualSectionB3AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB3.Visible = true;
        divAddInstSchQualSectionB3.Visible = false;
    }

    int ROWScIQB3 = 0;
    protected void gvInstSchQualSectionB3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWScIQB3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWScIQB3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWScIQB3++;

        }
    }

    public void BindGridInstSchQualSectionB3()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstSchQualSectionB3.EditIndex = this.EditIndexInstSchQualSectionB3;
        gvInstSchQualSectionB3.DataSource = ArryListName;
        gvInstSchQualSectionB3.DataBind();

        if (this.EditIndexInstSchQualSectionB3 >= 0)
        {
            gvInstSchQualSectionB3.Rows[this.EditIndexInstSchQualSectionB3].CssClass = "RowInEditMode";
            gvInstSchQualSectionB3.Rows[this.EditIndexInstSchQualSectionB3].Cells[0].Attributes.Add("colspan", "6");
            gvInstSchQualSectionB3.Rows[this.EditIndexInstSchQualSectionB3].Cells[1].Visible = false;
            gvInstSchQualSectionB3.Rows[this.EditIndexInstSchQualSectionB3].Cells[2].Visible = false;
            gvInstSchQualSectionB3.Rows[this.EditIndexInstSchQualSectionB3].Cells[3].Visible = false;
            gvInstSchQualSectionB3.Rows[this.EditIndexInstSchQualSectionB3].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstSchQualSectionB3].Cells[5].Visible = false;

        }
    }

    public void FillControlInstSchQualSectionB3(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstSchQualSectionB3].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstSchQualSectionB3].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstSchQualSectionB3].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstSchQualSectionB3].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstSchQualSectionB3].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstSchQualSectionB3Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB3 = -1;
        BindGridInstSchQualSectionB3();
    }

    protected void lnkInstSchQualSectionB3CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB3 = -1;
        BindGridInstSchQualSectionB3();
    }

    protected void lnkInstSchQualSectionB3Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB3.Visible = true;
        divAddInstSchQualSectionB3.Visible = false;
        this.EditIndexInstSchQualSectionB3 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstSchQualSectionB3 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstSchQualSectionB3();
            FillControlInstSchQualSectionB3(gvInstSchQualSectionB3, this.EditIndexInstSchQualSectionB3);
        }
    }

    protected void lnkInstSchQualSectionB3Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region Staff Info Prev Massage Employee

    public int EditIndexInstSchQualSectionB4
    {
        get
        {
            if (ViewState["EditIndexInstSchQualSectionB4"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexInstSchQualSectionB4"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexInstSchQualSectionB4"] = value;
        }
    }

    protected void btnInstSchQualSectionB4AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB4.Visible = false;
        divAddInstSchQualSectionB4.Visible = true;
        this.EditIndexInstSchQualSectionB4 = -1;
        BindGridInstSchQualSectionB4();
    }
    protected void btnInstSchQualSectionB4AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB4.Visible = true;
        divAddInstSchQualSectionB4.Visible = false;
    }
    protected void lnkInstSchQualSectionB4AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB4.Visible = true;
        divAddInstSchQualSectionB4.Visible = false;
    }

    int ROWScoIQB4 = 0;
    protected void gvInstSchQualSectionB4_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWScoIQB4 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWScoIQB4 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWScoIQB4++;

        }
    }

    public void BindGridInstSchQualSectionB4()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvInstSchQualSectionB4.EditIndex = this.EditIndexInstSchQualSectionB4;
        gvInstSchQualSectionB4.DataSource = ArryListName;
        gvInstSchQualSectionB4.DataBind();

        if (this.EditIndexInstSchQualSectionB4 >= 0)
        {
            gvInstSchQualSectionB4.Rows[this.EditIndexInstSchQualSectionB4].CssClass = "RowInEditMode";
            gvInstSchQualSectionB4.Rows[this.EditIndexInstSchQualSectionB4].Cells[0].Attributes.Add("colspan", "6");
            gvInstSchQualSectionB4.Rows[this.EditIndexInstSchQualSectionB4].Cells[1].Visible = false;
            gvInstSchQualSectionB4.Rows[this.EditIndexInstSchQualSectionB4].Cells[2].Visible = false;
            gvInstSchQualSectionB4.Rows[this.EditIndexInstSchQualSectionB4].Cells[3].Visible = false;
            gvInstSchQualSectionB4.Rows[this.EditIndexInstSchQualSectionB4].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexInstSchQualSectionB4].Cells[5].Visible = false;

        }
    }

    public void FillControlInstSchQualSectionB4(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexInstSchQualSectionB4].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexInstSchQualSectionB4].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexInstSchQualSectionB4].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexInstSchQualSectionB4].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexInstSchQualSectionB4].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnInstSchQualSectionB4Update_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB4 = -1;
        BindGridInstSchQualSectionB4();
    }

    protected void lnkInstSchQualSectionB4CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexInstSchQualSectionB4 = -1;
        BindGridInstSchQualSectionB4();
    }

    protected void lnkInstSchQualSectionB4Edit_Click(object sender, EventArgs e)
    {
        divAddBtnInstSchQualSectionB4.Visible = true;
        divAddInstSchQualSectionB4.Visible = false;
        this.EditIndexInstSchQualSectionB4 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexInstSchQualSectionB4 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridInstSchQualSectionB4();
            FillControlInstSchQualSectionB4(gvInstSchQualSectionB4, this.EditIndexInstSchQualSectionB4);
        }
    }

    protected void lnkInstSchQualSectionB4Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region InStroction Subject Taught

    public int EditIndexSubjectTaughInstr
    {
        get
        {
            if (ViewState["EditIndexSubjectTaughInstr"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexSubjectTaughInstr"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexSubjectTaughInstr"] = value;
        }
    }
    protected void btnSubjectTaughInstrAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnSubjectTaughInstr.Visible = false;
        divAddSubjectTaughInstr.Visible = true;
        this.EditIndexLicensureInformation = -1;
        BindGridSubjectTaughInstr();
    }
    protected void btnSubjectTaughInstrAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnSubjectTaughInstr.Visible = true;
        divAddSubjectTaughInstr.Visible = false;
    }
    protected void lnkSubjectTaugInstrAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnSubjectTaughInstr.Visible = true;
        divAddSubjectTaughInstr.Visible = false;
    }

    public void BindGridSubjectTaughInstr()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvSubjectTaughInstr.EditIndex = this.EditIndexSubjectTaughInstr;
        gvSubjectTaughInstr.DataSource = ArryListName;
        gvSubjectTaughInstr.DataBind();

        if (this.EditIndexLicensureInformation >= 0)
        {
            gvSubjectTaughInstr.Rows[this.EditIndexSubjectTaughInstr].CssClass = "RowInEditMode";
            gvSubjectTaughInstr.Rows[this.EditIndexSubjectTaughInstr].Cells[0].Attributes.Add("colspan", "6");
            gvSubjectTaughInstr.Rows[this.EditIndexSubjectTaughInstr].Cells[1].Visible = false;
            gvSubjectTaughInstr.Rows[this.EditIndexSubjectTaughInstr].Cells[2].Visible = false;

        }
    }

    int ROWSuLic = 0;
    protected void gvSubjectTaughInstr_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSubjectTaughInstrt = e.Row.FindControl("lblSubjectTaughInstrt") as Label;
            Label lblEduforthisSub = e.Row.FindControl("lblEduforthisSub") as Label;

            if (lblSubjectTaughInstrt != null && lblEduforthisSub != null)
            {
                if (ROWSuLic == 0)
                {

                    lblSubjectTaughInstrt.Text = "Subject 1";
                    lblEduforthisSub.Text = "Graduate";
                }
                else if (ROWLic == 1)
                {
                    lblSubjectTaughInstrt.Text = "Subject 1";
                    lblEduforthisSub.Text = "Graduate";
                }
            }

            ROWSuLic++;

        }
    }

    protected void lnkSubjectTaughInstrEdit_Click(object sender, EventArgs e)
    {
        divAddSubjectTaughInstr.Visible = false;
        divAddbtnSubjectTaughInstr.Visible = true;
        this.EditIndexSubjectTaughInstr = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndexSubjectTaughInstr = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGridSubjectTaughInstr();
            FillControlApprovalAgency(gvApprovalAgency, this.EditIndexSubjectTaughInstr);
        }
    }
    protected void lnkSubjectTaughInstrDelete_Click(object sender, EventArgs e)
    {

    }

    public void FillControlSubjectTaughInstr(GridView gv, int EditInd)
    {
        try
        {


            TextBox txtSchoolCodeEdit = gv.Rows[this.EditIndexSubjectTaughInstr].FindControl("txtSchoolCodeEdit") as TextBox;
            TextBox txtExpirationDateEdit = gv.Rows[this.EditIndexSubjectTaughInstr].FindControl("txtExpirationDateEdit") as TextBox;
            DropDownList ddlAddApprovalAgencyEdit = gv.Rows[this.EditIndexSubjectTaughInstr].FindControl("ddlAddApprovalAgencyEdit") as DropDownList;

            txtSchoolCodeEdit.Text = "SCH001";
            ddlAddApprovalAgencyEdit.SelectedValue = "A1";
            txtExpirationDateEdit.Text = "02/04/2016";


        }

        catch (Exception ex)
        {

        }
    }

    protected void btnSubjectTaughInstrUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexSubjectTaughInstr = -1;
        BindGridSubjectTaughInstr();
    }
    protected void lnkSubjectTaughInstrCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexSubjectTaughInstr = -1;
        BindGridSubjectTaughInstr();
    }

    #endregion

    #region History Instructor

    #region HistoryQ1
    protected void rblInstructorHistoryQ1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorHistoryQ1.SelectedItem.Text == "Yes")
        {
            divInstructor1.Visible = true;
        }
        else
        {
            divInstructor1.Visible = false;
        }
    }

    #endregion
    #region HistoryQ2
    protected void rblInstructorHistoryQ2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorHistoryQ2.SelectedItem.Text == "Yes")
        {
            divInstructor2.Visible = true;
        }
        else
        {
            divInstructor2.Visible = false;
        }
    }

    #endregion
    #region HistoryQ3
    protected void rblInstructorHistoryQ3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorHistoryQ3.SelectedItem.Text == "Yes")
        {
            divInstructor3.Visible = true;
        }
        else
        {
            divInstructor3.Visible = false;
        }
    }

    #endregion
    #region HistoryQ4
    protected void rblInstructorHistoryQ4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorHistoryQ4.SelectedItem.Text == "Yes")
        {
            divInstructor4.Visible = true;
        }
        else
        {
            divInstructor4.Visible = false;
        }
    }

    #endregion
    #region HistoryQ5
    protected void rblInstructorHistoryQ5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblInstructorHistoryQ5.SelectedItem.Text == "Yes")
        {
            divInstructor5.Visible = true;
        }
        else
        {
            divInstructor5.Visible = false;
        }
    }

    #endregion


    #endregion


    protected void InstructorDec1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void InstructorDec2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void InstructorDec3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void InstructorDec4_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void InstructorDec5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void InstructorDec6_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void InstructorDec7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void InstructorDec8_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void btnNextInstrDecl_Click(object sender, EventArgs e)
    {
        // btnPayment_Click(sender, e);
    }

    #endregion



    protected void ddlOwnStaffType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlOwnStaffType.SelectedItem.Text == "Other (specify)")
        {
            trstafowner.Visible = true;
        }
        else
        {
            trstafowner.Visible = false;
        }
    }
    protected void ddlOwnAdminStaff_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlOwnAdminStaff.SelectedItem.Text == "Other (specify)")
        {
            trownadmintsf.Visible = true;
        }
        else
        {
            trownadmintsf.Visible = false;
        }
    }


    #region College Work Experience

    public int EditIndexCollegeWrkExp1
    {
        get
        {
            if (ViewState["EditIndexCollegeWrkExp1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexCollegeWrkExp1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexCollegeWrkExp1"] = value;
        }
    }

    protected void btnCollegeWrkExp1AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp1.Visible = false;
        divAddCollegeWrkExp1.Visible = true;
        this.EditIndexCollegeWrkExp1 = -1;
        BindGridCollegeWrkExp1();
    }
    protected void btnCollegeWrkExp1AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp1.Visible = true;
        divAddCollegeWrkExp1.Visible = false;
    }
    protected void lnkCollegeWrkExp1AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp1.Visible = true;
        divAddCollegeWrkExp1.Visible = false;
    }

    int ROWAWEColEx1 = 0;
    protected void gvCollegeWrkExp1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWEColEx1 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWEColEx1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWEColEx1++;

        }
    }

    public void BindGridCollegeWrkExp1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvCollegeWrkExp1.EditIndex = this.EditIndexCollegeWrkExp1;
        gvCollegeWrkExp1.DataSource = ArryListName;
        gvCollegeWrkExp1.DataBind();

        if (this.EditIndexCollegeWrkExp1 >= 0)
        {
            gvCollegeWrkExp1.Rows[this.EditIndexCollegeWrkExp1].CssClass = "RowInEditMode";
            gvCollegeWrkExp1.Rows[this.EditIndexCollegeWrkExp1].Cells[0].Attributes.Add("colspan", "6");
            gvCollegeWrkExp1.Rows[this.EditIndexCollegeWrkExp1].Cells[1].Visible = false;
            gvCollegeWrkExp1.Rows[this.EditIndexCollegeWrkExp1].Cells[2].Visible = false;
            gvCollegeWrkExp1.Rows[this.EditIndexCollegeWrkExp1].Cells[3].Visible = false;
            gvCollegeWrkExp1.Rows[this.EditIndexCollegeWrkExp1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexCollegeWrkExp1].Cells[5].Visible = false;

        }
    }

    public void FillControlCollegeWrkExp1(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexCollegeWrkExp1].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexCollegeWrkExp1].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexCollegeWrkExp1].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexCollegeWrkExp1].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexCollegeWrkExp1].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnCollegeWrkExp1Update_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp1 = -1;
        BindGridCollegeWrkExp1();
    }

    protected void lnkCollegeWrkExp1CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp1 = -1;
        BindGridCollegeWrkExp1();
    }

    protected void lnkCollegeWrkExp1Edit_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp1.Visible = true;
        divAddCollegeWrkExp1.Visible = false;
        this.EditIndexCollegeWrkExp1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexCollegeWrkExp1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridCollegeWrkExp1();
            FillControlCollegeWrkExp1(gvCollegeWrkExp1, this.EditIndexCollegeWrkExp1);
        }
    }

    protected void lnkCollegeWrkExp1Delete_Click(object sender, EventArgs e)
    {

    }





    #endregion

    #region College Work Exp PREVIOUSLY Worked

    public int EditIndexCollegeWrkExp2
    {
        get
        {
            if (ViewState["EditIndexCollegeWrkExp2"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexCollegeWrkExp2"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexCollegeWrkExp2"] = value;
        }
    }

    protected void btnCollegeWrkExp2AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp2.Visible = false;
        divAddCollegeWrkExp2.Visible = true;
        this.EditIndexCollegeWrkExp2 = -1;
        BindGridCollegeWrkExp2();
    }
    protected void btnCollegeWrkExp2AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp2.Visible = true;
        divAddCollegeWrkExp2.Visible = false;
    }
    protected void lnkCollegeWrkExp2AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp2.Visible = true;
        divAddCollegeWrkExp2.Visible = false;
    }

    int ROWAWEX3 = 0;
    protected void gvCollegeWrkExp2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWEX3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWEX3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWEX3++;

        }
    }

    public void BindGridCollegeWrkExp2()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvCollegeWrkExp2.EditIndex = this.EditIndexCollegeWrkExp2;
        gvCollegeWrkExp2.DataSource = ArryListName;
        gvCollegeWrkExp2.DataBind();

        if (this.EditIndexCollegeWrkExp2 >= 0)
        {
            gvCollegeWrkExp2.Rows[this.EditIndexCollegeWrkExp2].CssClass = "RowInEditMode";
            gvCollegeWrkExp2.Rows[this.EditIndexCollegeWrkExp2].Cells[0].Attributes.Add("colspan", "6");
            gvCollegeWrkExp2.Rows[this.EditIndexCollegeWrkExp2].Cells[1].Visible = false;
            gvCollegeWrkExp2.Rows[this.EditIndexCollegeWrkExp2].Cells[2].Visible = false;
            gvCollegeWrkExp2.Rows[this.EditIndexCollegeWrkExp2].Cells[3].Visible = false;
            gvCollegeWrkExp2.Rows[this.EditIndexCollegeWrkExp2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexCollegeWrkExp2].Cells[5].Visible = false;

        }
    }

    public void FillControlCollegeWrkExp2(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexCollegeWrkExp2].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexCollegeWrkExp2].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexCollegeWrkExp2].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexCollegeWrkExp2].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexCollegeWrkExp2].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnCollegeWrkExp2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp2 = -1;
        BindGridCollegeWrkExp2();
    }

    protected void lnkCollegeWrkExp2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp2 = -1;
        BindGridCollegeWrkExp2();
    }

    protected void lnkCollegeWrkExp2Edit_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp2.Visible = true;
        divAddCollegeWrkExp2.Visible = false;
        this.EditIndexCollegeWrkExp2 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexCollegeWrkExp2 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridCollegeWrkExp2();
            FillControlCollegeWrkExp2(gvCollegeWrkExp2, this.EditIndexCollegeWrkExp2);
        }
    }

    protected void lnkCollegeWrkExp2Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion
    #region College Massage Employment

    public int EditIndexCollegeWrkExp3
    {
        get
        {
            if (ViewState["EditIndexCollegeWrkExp3"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexCollegeWrkExp3"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexCollegeWrkExp3"] = value;
        }
    }

    protected void btnCollegeWrkExp3AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp3.Visible = false;
        divAddCollegeWrkExp3.Visible = true;
        this.EditIndexCollegeWrkExp3 = -1;
        BindGridCollegeWrkExp3();
    }
    protected void btnCollegeWrkExp3AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp3.Visible = true;
        divAddCollegeWrkExp3.Visible = false;
    }
    protected void lnkCollegeWrkExp3AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp3.Visible = true;
        divAddCollegeWrkExp3.Visible = false;
    }

    int ROWAWExp3 = 0;
    protected void gvCollegeWrkExp3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWExp3 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWExp3 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWExp3++;

        }
    }

    public void BindGridCollegeWrkExp3()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvCollegeWrkExp3.EditIndex = this.EditIndexCollegeWrkExp3;
        gvCollegeWrkExp3.DataSource = ArryListName;
        gvCollegeWrkExp3.DataBind();

        if (this.EditIndexCollegeWrkExp3 >= 0)
        {
            gvCollegeWrkExp3.Rows[this.EditIndexCollegeWrkExp3].CssClass = "RowInEditMode";
            gvCollegeWrkExp3.Rows[this.EditIndexCollegeWrkExp3].Cells[0].Attributes.Add("colspan", "6");
            gvCollegeWrkExp3.Rows[this.EditIndexCollegeWrkExp3].Cells[1].Visible = false;
            gvCollegeWrkExp3.Rows[this.EditIndexCollegeWrkExp3].Cells[2].Visible = false;
            gvCollegeWrkExp3.Rows[this.EditIndexCollegeWrkExp3].Cells[3].Visible = false;
            gvCollegeWrkExp3.Rows[this.EditIndexCollegeWrkExp3].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexCollegeWrkExp3].Cells[5].Visible = false;

        }
    }

    public void FillControlCollegeWrkExp3(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexCollegeWrkExp3].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexCollegeWrkExp3].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexCollegeWrkExp3].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexCollegeWrkExp3].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexCollegeWrkExp3].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnCollegeWrkExp3Update_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp3 = -1;
        BindGridCollegeWrkExp3();
    }

    protected void lnkCollegeWrkExp3CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp3 = -1;
        BindGridCollegeWrkExp3();
    }

    protected void lnkCollegeWrkExp3Edit_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp3.Visible = true;
        divAddCollegeWrkExp3.Visible = false;
        this.EditIndexCollegeWrkExp3 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexCollegeWrkExp3 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridCollegeWrkExp3();
            FillControlCollegeWrkExp3(gvCollegeWrkExp3, this.EditIndexCollegeWrkExp3);
        }
    }

    protected void lnkCollegeWrkExp3Delete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region College PREVIOUS Massage Employment

    public int EditIndexCollegeWrkExp4
    {
        get
        {
            if (ViewState["EditIndexCollegeWrkExp4"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexCollegeWrkExp4"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexCollegeWrkExp4"] = value;
        }
    }

    protected void btnCollegeWrkExp4AddNew_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp4.Visible = false;
        divAddCollegeWrkExp4.Visible = true;
        this.EditIndexCollegeWrkExp4 = -1;
        BindGridCollegeWrkExp4();
    }
    protected void btnCollegeWrkExp4AddNewSave_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp4.Visible = true;
        divAddCollegeWrkExp4.Visible = false;
    }
    protected void lnkCollegeWrkExp4AddNewCancel_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp4.Visible = true;
        divAddCollegeWrkExp4.Visible = false;
    }

    int ROWAWEx4 = 0;
    protected void gvCollegeWrkExp4_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWAWEx4 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWAWEx4 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWAWEx4++;

        }
    }

    public void BindGridCollegeWrkExp4()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvCollegeWrkExp4.EditIndex = this.EditIndexCollegeWrkExp4;
        gvCollegeWrkExp4.DataSource = ArryListName;
        gvCollegeWrkExp4.DataBind();

        if (this.EditIndexCollegeWrkExp4 >= 0)
        {
            gvCollegeWrkExp4.Rows[this.EditIndexCollegeWrkExp4].CssClass = "RowInEditMode";
            gvCollegeWrkExp4.Rows[this.EditIndexCollegeWrkExp4].Cells[0].Attributes.Add("colspan", "6");
            gvCollegeWrkExp4.Rows[this.EditIndexCollegeWrkExp4].Cells[1].Visible = false;
            gvCollegeWrkExp4.Rows[this.EditIndexCollegeWrkExp4].Cells[2].Visible = false;
            gvCollegeWrkExp4.Rows[this.EditIndexCollegeWrkExp4].Cells[3].Visible = false;
            gvCollegeWrkExp4.Rows[this.EditIndexCollegeWrkExp4].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexCollegeWrkExp4].Cells[5].Visible = false;

        }
    }

    public void FillControlCollegeWrkExp4(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtRelatedSchoolBusinessNameEdit = gv.Rows[this.EditIndexCollegeWrkExp4].FindControl("txtRelatedSchoolBusinessNameEdit") as TextBox;
            DropDownList ddlRelatedSchoolStateEdit = gv.Rows[this.EditIndexCollegeWrkExp4].FindControl("ddlRelatedSchoolStateEdit") as DropDownList;
            TextBox txtRelatedSchoolCityEdit = gv.Rows[this.EditIndexCollegeWrkExp4].FindControl("txtRelatedSchoolCityEdit") as TextBox;
            TextBox txtRelatedSchoolBusinessPhoneEdit = gv.Rows[this.EditIndexCollegeWrkExp4].FindControl("txtRelatedSchoolBusinessPhoneEdit") as TextBox;
            TextBox txtRelatedSchoolZipEdit = gv.Rows[this.EditIndexCollegeWrkExp4].FindControl("txtRelatedSchoolZipEdit") as TextBox;

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

    protected void btnCollegeWrkExp4Update_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp4 = -1;
        BindGridCollegeWrkExp4();
    }

    protected void lnkCollegeWrkExp4CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexCollegeWrkExp4 = -1;
        BindGridCollegeWrkExp4();
    }

    protected void lnkCollegeWrkExp4Edit_Click(object sender, EventArgs e)
    {
        divAddBtnCollegeWrkExp4.Visible = true;
        divAddCollegeWrkExp4.Visible = false;
        this.EditIndexCollegeWrkExp4 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexCollegeWrkExp4 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridCollegeWrkExp4();
            FillControlCollegeWrkExp4(gvCollegeWrkExp4, this.EditIndexCollegeWrkExp4);
        }
    }

    protected void lnkCollegeWrkExp4Delete_Click(object sender, EventArgs e)
    {

    }



    protected void btnSaveAdministratorInformation_Click(object sender, EventArgs e)
    {


    }


    protected void lbCancelAdministratorInformation_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region History  Administrator

    #region HistoryQ1
    protected void rblAdministHistoryQ1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdministHistoryQ1.SelectedItem.Text == "Yes")
        {
            divAdminist1.Visible = true;
        }
        else
        {
            divAdminist1.Visible = false;
        }
    }

    #endregion
    #region HistoryQ2
    protected void rblAdministHistoryQ2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdministHistoryQ2.SelectedItem.Text == "Yes")
        {
            divAdminist2.Visible = true;
        }
        else
        {
            divAdminist2.Visible = false;
        }
    }

    #endregion
    #region HistoryQ3
    protected void rblAdministHistoryQ3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdministHistoryQ3.SelectedItem.Text == "Yes")
        {
            divAdminist3.Visible = true;
        }
        else
        {
            divAdminist3.Visible = false;
        }
    }

    #endregion
    #region HistoryQ4
    protected void rblAdministHistoryQ4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdministHistoryQ4.SelectedItem.Text == "Yes")
        {
            divAdminist4.Visible = true;
        }
        else
        {
            divAdminist4.Visible = false;
        }
    }

    #endregion
    #region HistoryQ5
    protected void rblAdministHistoryQ5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblAdministHistoryQ5.SelectedItem.Text == "Yes")
        {
            divAdminist5.Visible = true;
        }
        else
        {
            divAdminist5.Visible = false;
        }
    }

    #endregion


    #endregion

    protected void ddlOwnInstrctStaff_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlOwnInstrctStaff.SelectedItem.Text == "Other (specify)")
        {
            trOwnInstctStff.Visible = true;
        }
        else
        {
            trOwnInstctStff.Visible = false;
        }
    }

    #region staff for conatct login
    protected void btnStaffPay_Click(object sender, EventArgs e)
    {
        if (payment_stafftab.Visible == true)
            payment_stafftab.Visible = false;

        else
            payment_stafftab.Visible = true;

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


    protected void lnkContactStaffCancel_Click(object sender, EventArgs e)
    {

    }

    #endregion

    protected void btnNextBackList_Click(object sender, EventArgs e)
    {

    }

    protected void btnsaveSclContct_Click(object sender, EventArgs e)
    {

    }

    #region Payment




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


    protected void txtNumberOfAdditinolCerti_TextChanged(object sender, EventArgs e)
    {
        //ltrPaymentError.Text = "";
        //int No = 0;
        //string Validate = ValidationHelper.IsValidInt(txtNumberOfAdditinolCerti.Text, "Please enter valid number of additional certiﬁcates.");

        //if (Validate == "")
        //{
        //    No = Convert.ToInt32(txtNumberOfAdditinolCerti.Text);
        //    FillAdditinolAmount();
        //    FillTotalAmount();
        //}
    }

    public void FillTotalAmount()
    {
        //ltrPaymentError.Text = "";
        //decimal ApplicationFee = 0;
        //decimal AdditionalCertificateAmt = 0;
        //string Validate = ValidationHelper.IsValidInt(txtNumberOfAdditinolCerti.Text, "Please enter valid number of additional certiﬁcates.");
        //if (Validate == "")
        //{
        //    AdditionalCertificateAmt = Convert.ToInt32(txtNumberOfAdditinolCerti.Text);
        //}

        //string Validate2 = ValidationHelper.IsValidInt(txtApplicationFees.Text, "Please enter valid Application Fees.");

        //if (Validate2 == "")
        //{
        //    ApplicationFee = Convert.ToInt32(txtApplicationFees.Text);
        //}

        //ApplicationFee = Convert.ToDecimal(txtApplicationFees.Text);
        //AdditionalCertificateAmt = Convert.ToDecimal(txtAdditionalCertificateAmt.Text);

        //decimal TotalAmount = ApplicationFee + AdditionalCertificateAmt;

        //txtTotalFees.Text = TotalAmount.ToString();

    }

    public void FillAdditinolAmount()
    {
        //int No = 0;

        //ltrPaymentError.Text = "";
        //string Validate = ValidationHelper.IsValidInt(txtNumberOfAdditinolCerti.Text, "Please enter valid number of additional certiﬁcates.");
        //if (Validate == "")
        //{
        //    No = Convert.ToInt32(txtNumberOfAdditinolCerti.Text);
        //}

        //int Amount = 0;
        //if (No > 0)
        //{
        //    Amount = No * 15;
        //}
        //txtAdditionalCertificateAmt.Text = (Amount.ToString());
    }
    public void FillPaymentDetail()
    {
        FillAdditinolAmount();
        FillTotalAmount();
    }

    protected void btnStaffShowDetails_Click(object sender, EventArgs e)
    {
    }

    protected void btnStaffHideDetials_Click(object sender, EventArgs e)
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



        gvBackgroundCheck.EditIndex = this.EditIndexBackgroundCheck;
        gvBackgroundCheck.DataSource = ArryListName;
        gvBackgroundCheck.DataBind();

        if (this.EditIndexBackgroundCheck >= 0)
        {
            gvBackgroundCheck.Rows[this.EditIndexBackgroundCheck].CssClass = "RowInEditMode";
            gvBackgroundCheck.Rows[this.EditIndexBackgroundCheck].Cells[0].Attributes.Add("colspan", "6");
            gvBackgroundCheck.Rows[this.EditIndexBackgroundCheck].Cells[1].Visible = false;
            gvBackgroundCheck.Rows[this.EditIndexBackgroundCheck].Cells[2].Visible = false;
            //gvBackgroundCheck.Rows[this.EditIndexMassageProgram].Cells[3].Visible = false;

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
            FillControlBackgroundCheck(gvBackgroundCheck, this.EditIndexBackgroundCheck);
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

    #endregion

    #endregion
    #endregion


}
