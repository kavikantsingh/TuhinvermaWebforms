using System;
using System.Collections.Generic;
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


public partial class LAPP_UI_Backoffice_PSD_IndividualInfo : System.Web.UI.Page
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

            //ucName.Individual_Id = this.Individual_Id;
            //ucName.BindGrid();


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
            //ucName.Individual_Id = this.Individual_Id;
            //ucName.BindGrid();

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
        //ucName.Individual_Id = this.Individual_Id;
        //ucName.BindDDLStatus();
        //ucName.BindGrid();
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

                    //ucName.Individual_Id = this.Individual_Id;
                    //ucName.BindGrid();


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
                    //ucName.Individual_Id = this.Individual_Id;
                    //ucName.BindGrid();

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
            //tbpnlName.Enabled = true;
            tbpnlEducation.Enabled = true;
            tbpnlAddress.Enabled = true;
            tbpnlApplication.Enabled = true;
            //tbpnlCertificate.Enabled = true;
            tbpnlNotes.Enabled = true;
            //tbpnlTask.Enabled = true;
            tbpnlDocument.Enabled = true;
            tbpnlDOJ.Enabled = true;
            tbpnlCorr.Enabled = true;
            tbpnlAdvRoster.Enabled = true;
            tbpnlGeneralInfo.Enabled = true;
            //tbpnlFinancial.Enabled = true;
            //tbpnlViewList.Enabled = true;
            //tbpnlRecertification.Enabled = true;
            //tbpnlCityReports.Enabled = true;
            //tbpnlPSD.Enabled = true;
            //tbpnlDeficiency.Enabled = true;
            //tbpnlAKA.Enabled = true;
            //tbpnlImport.Enabled = true;
            //tbpnlVerification.Enabled = true;
            //tbpnlAuthorization.Enabled = true;
        }
        else
        {
            tbpnlGeneralInfo.Enabled = true;
            tbpnlPersonalInfo.Enabled = false;
            //tbpnlName.Enabled = false;
            tbpnlEducation.Enabled = false;
            tbpnlAddress.Enabled = false;
            tbpnlDOJ.Enabled = false;
            tbpnlCorr.Enabled = false;
            tbpnlApplication.Enabled = false;
            //tbpnlCertificate.Enabled = false;
            tbpnlNotes.Enabled = false;
            //tbpnlTask.Enabled = false;
            tbpnlDocument.Enabled = false;
            tbpnlAdvRoster.Enabled = false;
            //tbpnlFinancial.Enabled = false;
            //tbpnlViewList.Enabled = false;
            //tbpnlRecertification.Enabled = false;
            //tbpnlCityReports.Enabled = false;
            //tbpnlPSD.Enabled = false;
            //tbpnlDeficiency.Enabled = false;
            //tbpnlAKA.Enabled = false;
            //tbpnlImport.Enabled = false;
            //tbpnlVerification.Enabled = false;
            //tbpnlAuthorization.Enabled = false;
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

    protected void btnAdvanceSearch_Click(object sender, EventArgs e)
    {
        try
        {
            if (divAdvanceSearch.Visible == true && btnAdvanceSearch.Text == "Basic Search")
            {
                divBasicSearch.Visible = true;
                divAdvanceSearch.Visible = false;
                btnAdvanceSearch.Text = "Advance Search";
            }
            else
            {
                divBasicSearch.Visible = false;
                divAdvanceSearch.Visible = true;
                btnAdvanceSearch.Text = "Basic Search";
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Thread = "Error Occured-Individual.aspx-btnAdvanceSearch_Click";
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
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

            btnGeneralInfo.Enabled = true;
            btnPersonalInfo.Enabled = true;
            btnAddress.Enabled = true;
            btnEducation.Enabled = true;
            btnEmploymentInfo.Enabled = true;
            btnApplicationData.Enabled = true;
            btnNotes.Enabled = true;
            btnInvestigativeNotes.Enabled = true;
            btnInvestigation.Enabled = true;
            btnDOJFBI.Enabled = true;
            btnCorrespondence.Enabled = true;
            btnComplaint.Enabled = true;
            btnDoSubinOpposition.Enabled = true;
        
        }
        else
        {

            btnGeneralInfo.Enabled = true;
            btnPersonalInfo.Enabled = false;
            btnAddress.Enabled = false;
            btnEducation.Enabled = false;
            btnEmploymentInfo.Enabled = false;
            btnApplicationData.Enabled = false;
            btnNotes.Enabled = false;
            btnInvestigativeNotes.Enabled = false;
            btnInvestigation.Enabled = false;
            btnDOJFBI.Enabled = false;
            btnCorrespondence.Enabled = false;
            btnComplaint.Enabled = false;
            btnDoSubinOpposition.Enabled = false;

        }
    }

    public void ShowPanelonButtonClick(string pnlValue)
    {

        pnlGeneralInfo.Visible = false;
        pnlPersonalInfo.Visible = false;
        pnlAddress.Visible = false;
        pnlEducation.Visible = false;
        pnlAdvRoster.Visible = false;
        pnlApplication.Visible = false;
        pnlNotes.Visible = false;
        pnlInvestigativeNotes.Visible = false;
        pnlDocument.Visible = false;
        pnlPSDMeetingNotes.Visible = false;
        pnlDOJ.Visible = false;
        pnlCorrespondence.Visible = false;
        pnlInvestigativeDocs.Visible = false;
        pnlComplaint.Visible = false;
        pnlDoSubinOpposition.Visible = false;

        if (pnlValue == "Per")
            pnlPersonalInfo.Visible = true;
        else if (pnlValue == "Gen")
            pnlGeneralInfo.Visible = true;
        else if (pnlValue == "Add")
            pnlAddress.Visible = true;
        else if (pnlValue == "Edu")
            pnlEducation.Visible = true;
        else if (pnlValue == "Adv")
            pnlAdvRoster.Visible = true;
        else if (pnlValue == "App")
            pnlApplication.Visible = true;
        else if (pnlValue == "Note")
            pnlNotes.Visible = true;
        else if (pnlValue == "Inves")
            pnlInvestigativeNotes.Visible = true;
        else if (pnlValue == "Doc")
            pnlDocument.Visible = true;
        else if (pnlValue == "PMNote")
            pnlPSDMeetingNotes.Visible = true;
        else if (pnlValue == "DOJ")
            pnlDOJ.Visible = true;
        else if (pnlValue == "Corr")
            pnlCorrespondence.Visible = true;
        else if (pnlValue == "InvestDocs")
            pnlInvestigativeDocs.Visible = true;
        else if (pnlValue == "Comp")
            pnlComplaint.Visible = true;
        else if (pnlValue == "DoSubOpp")
            pnlDoSubinOpposition.Visible = true;
        
    }

    public void MakeActiveBtn(Button btn)
    {
        btnGeneralInfo.CssClass = "tabBtn";
        btnPersonalInfo.CssClass = "tabBtn";
        btnAddress.CssClass = "tabBtn";
        btnEducation.CssClass = "tabBtn";
        btnEmploymentInfo.CssClass = "tabBtn";
        btnApplicationData.CssClass = "tabBtn";
        btnNotes.CssClass = "tabBtn";
        btnInvestigativeNotes.CssClass = "tabBtn";
        btnInvestigation.CssClass = "tabBtn";
        btnDOJFBI.CssClass = "tabBtn";
        btnCorrespondence.CssClass = "tabBtn";
        btnDoSubinOpposition.CssClass = "tabBtn";
        btnInvestigativeNotes.CssClass = "tabBtn";
        btnMiscDocs.CssClass = "tabBtn";
        btnComplaint.CssClass = "tabBtn";
        btnPSDMNotes.CssClass = "tabBtn";
        btn.CssClass = "tab_activeBtn";
    }


    #endregion

    #region Events

    protected void btnGeneralInfo_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Gen");
        MakeActiveBtn(btnGeneralInfo);
    }
    protected void btnPersonalInfo_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Per");
        MakeActiveBtn(btnPersonalInfo);
    }
    protected void btnAddress_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Add");
        MakeActiveBtn(btnAddress);
    }
    protected void btnEducation_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Edu");
        MakeActiveBtn(btnEducation);
    }
    protected void btnEmploymentInfo_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Adv");
        MakeActiveBtn(btnEmploymentInfo);
    }
    protected void btnApplicationData_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("App");
        MakeActiveBtn(btnApplicationData);
    }
    
    protected void btnNotes_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Note");
        MakeActiveBtn(btnNotes);
    }
    protected void btnInvestigativeNotes_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Inves");
        MakeActiveBtn(btnInvestigativeNotes);
    }
    protected void btnInvestigation_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("InvestDocs");
        MakeActiveBtn(btnInvestigation);
    }
    protected void btnComplaint_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Comp");
        MakeActiveBtn(btnComplaint);
    }
    protected void btnDOJFBI_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("DOJ");
        MakeActiveBtn(btnDOJFBI);
    }
    protected void btnCorrespondence_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Corr");
        MakeActiveBtn(btnCorrespondence);
    }

    protected void btnMiscDocs_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("Doc");
        MakeActiveBtn(btnMiscDocs);
    }

    protected void btnDoSubinOpposition_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("DoSubOpp");
        MakeActiveBtn(btnDoSubinOpposition);
    }
       
    #endregion

    #endregion

    protected void btnPSDMNotes_Click(object sender, EventArgs e)
    {
        ShowPanelonButtonClick("PMNote");
        MakeActiveBtn(btnPSDMNotes);
    }
}