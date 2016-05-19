using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

 
    public partial class ucQueryReport : System.Web.UI.UserControl
    {
        //#region class Members

        //LAPP_member_info objmemberinfo = new nvboe_member_info();
        //nvboe_member_info_BAL objmemberinfoBal = new nvboe_member_info_BAL();
        //nvboe_exception_log objExLog = new nvboe_exception_log();
        //nvboe_exception_log_BAL objexLogBal = new nvboe_exception_log_BAL();
        //nvboe_code objCode = new nvboe_code();
        //nvboe_codeBAL ObjCodeBAL = new nvboe_codeBAL();
        //nvboe_state_code objStateCd = new nvboe_state_code();
        //nvboe_state_codeBAL objstateCdBAL = new nvboe_state_codeBAL();
        //nvboe_member_info_hist objMemberInfoHist = new nvboe_member_info_hist();
        //nvboe_audit_info objAuditInfo = new nvboe_audit_info();
        //nvboe_audit_info_BAL objAuditBal = new nvboe_audit_info_BAL();
        //nvboe_member_info_histBAL objMemberInfoHistBAL = new nvboe_member_info_histBAL();


        //#endregion

        //#region Class Property
        //public List<nvboe_code> lstCode
        //{
        //    get
        //    {
        //        if (Session["lstCode"] != null)
        //        {
        //            return (List<nvboe_code>)Session["lstCode"];
        //        }
        //        else
        //        {
        //            return null;
        //        }
        //    }
        //    set
        //    {
        //        Session["lstCode"] = value;
        //    }
        //}

        //public int Member_Info_Id
        //{
        //    get
        //    {
        //        if (ViewState["Member_Info_Id"] != null)
        //        {
        //            return Convert.ToInt32(ViewState["Member_Info_Id"]);
        //        }
        //        else
        //        {
        //            return -1;
        //        }
        //    }
        //    set
        //    {
        //        ViewState["Member_Info_Id"] = value;
        //    }
        //}
        //public int Discpline_ID
        //{
        //    get
        //    {
        //        if (ViewState["Discipline_Id"] != null)
        //        {
        //            return Convert.ToInt32(ViewState["Discipline_Id"].ToString());
        //        }
        //        else
        //        {
        //            return 0;
        //        }
        //    }
        //    set
        //    {
        //        ViewState["Discipline_Id"] = value;
        //    }
        //}
        //#endregion

        #region Page Event Handler
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindListBoxStatecd();
                BindListBoxDiscipline();
            }
        }

        #endregion


        #region Private Methods

        private void BindListBoxStatecd()
        {
            //try
            //{
            //    List<nvboe_state_code> lstStateCd = new List<nvboe_state_code>();
            //    lstStateCd = objstateCdBAL.Get_All_nvboe_state_code();
            //    if (lstStateCd != null)
            //    {
            //        lstboxstatescode.DataSource = lstStateCd;
            //        lstboxstatescode.DataTextField = "state_name";
            //        lstboxstatescode.DataValueField = "state_code";
            //        lstboxstatescode.DataBind();
            //    }
            //}
            //catch (Exception ex)
            //{
            //    objExLog = Fetchlog();
            //    objExLog.Thread = "Error Occured-ucQueryScreen.ascx-BindListBoxStatecd";
            //    objExLog.Message = ex.Message;
            //    objExLog.Exception = ex.ToString();
            //    objExLog.Context = ex.Source;
            //    objexLogBal.Save_nvboe_exception_log(objExLog);
            //    objAuditBal.Save_nvboe_audit_info_save(BrowserInfo.GetobjAuditInfo());
            //    MessageBox.Show(this.Page, ex.Message, 2);
            //}
        }

        private void BindListBoxDiscipline()
        {
            //try
            //{
            //    lstdiscript.Items.Clear();
            //    List<nvboe_code> lstCode = new List<nvboe_code>();
            //    if (Session["lstCode"] == null)
            //    {
            //        lstCode = ObjCodeBAL.Get_All_nvboe_code_by_code_type_cd().ToList();
            //        Session["lstCode"] = lstCode;
            //    }
            //    else
            //    {
            //        lstCode = (List<nvboe_code>)Session["lstCode"];
            //    }
            //    if (lstCode != null)
            //    {
            //        lstdiscript.DataSource = lstCode;
            //        lstdiscript.DataValueField = "Code_id";
            //        lstdiscript.DataTextField = "Code_Name";
            //        lstdiscript.DataBind();
            //    }
            //}
            //catch (Exception ex)
            //{
            //    objExLog = Fetchlog();
            //    objExLog.Thread = "Error Occured-ucQueryScreen.ascx-BindListBoxDiscipline";
            //    objExLog.Message = ex.Message;
            //    objExLog.Exception = ex.ToString();
            //    objExLog.Context = ex.Source;
            //    objexLogBal.Save_nvboe_exception_log(objExLog);
            //    objAuditBal.Save_nvboe_audit_info_save(BrowserInfo.GetobjAuditInfo());
            //    MessageBox.Show(this.Page, ex.Message, 2);
            //}
        }


        private void BindListBoxStateCdInclude()
        {
            //try
            //{
            //    List<nvboe_state_code> lstStateCd = new List<nvboe_state_code>();
            //    lstStateCd = objstateCdBAL.Get_All_nvboe_state_code();
            //    if (lstStateCd != null)
            //    {
            //        lststatedinclude.DataSource = lstStateCd;
            //        lststatedinclude.DataTextField = "state_name";
            //        lststatedinclude.DataValueField = "state_code";
            //        lststatedinclude.DataBind();
            //    }
            //}
            //catch (Exception ex)
            //{
            //    objExLog = Fetchlog();
            //    objExLog.Thread = "Error Occured-ucQueryScreen.ascx-BindListBoxStateCdInclude";
            //    objExLog.Message = ex.Message;
            //    objExLog.Exception = ex.ToString();
            //    objExLog.Context = ex.Source;
            //    objexLogBal.Save_nvboe_exception_log(objExLog);
            //    objAuditBal.Save_nvboe_audit_info_save(BrowserInfo.GetobjAuditInfo());
            //    MessageBox.Show(this.Page, ex.Message, 2);
            //}
        }

        private void BindListBoxDisciplineInclude()
        {
            //try
            //{
            //    lstdiscript.Items.Clear();
            //    List<nvboe_code> lstCode = new List<nvboe_code>();
            //    if (Session["lstCode"] == null)
            //    {
            //        Session["lstCode"] = lstCode;
            //    }
            //    else
            //    {
            //        lstCode = (List<nvboe_code>)Session["lstCode"];
            //    }
            //    if (lstCode != null)
            //    {
            //        lstinclude.DataSource = lstCode;
            //        lstinclude.DataValueField = "Code_Name";
            //        lstinclude.DataTextField = "Code_Id";
            //        lstinclude.DataBind();
            //    }

            //}
            //catch (Exception ex)
            //{
            //    objExLog = Fetchlog();
            //    objExLog.Thread = "Error Occured-ucQueryScreen.ascx-BindListBoxDisciplineInclude";
            //    objExLog.Message = ex.Message;
            //    objExLog.Exception = ex.ToString();
            //    objExLog.Context = ex.Source;
            //    objexLogBal.Save_nvboe_exception_log(objExLog);
            //    objAuditBal.Save_nvboe_audit_info_save(BrowserInfo.GetobjAuditInfo());
            //    MessageBox.Show(this.Page, ex.Message, 2);
            //}
        }

        #endregion


        #region Public Methods

        //public nvboe_exception_log Fetchlog()
        //{
        //    objExLog.User_Id = UIHelper.UserIDBySession();
        //    objExLog.Url = string.Empty;
        //    objExLog.Reference_Type_Id = string.Empty;
        //    objExLog.Reference_Id = 1;
        //    objExLog.Thread = "error occured";
        //    objExLog.Date = DateTime.Now;
        //    objExLog.Level = "Low";
        //    objExLog.Logger = "errorLogger";
        //    return objExLog;
        //}

        #endregion
        protected void btnmoveright_Click(object sender, EventArgs e)
        {
            //if (lstdiscript.SelectedItem != null)
            //{
            //    List<nvboe_code> lstCode = new List<nvboe_code>();


            //    foreach (ListItem Code in lstdiscript.Items)
            //    {
            //        if (Code.Selected && !lstinclude.Items.Contains(Code))
            //        {
            //            lstinclude.Items.Add(Code);

            //        }
            //    } //lstCode = (List<nvboe_code>)lstinclude.DataSource;
            //}
            //else
            //{
            //    MessageBox.Show(this.Page, "Please select atleast one row.");
            //}
        }
        protected void btnmoveleft_Click(object sender, EventArgs e)
        {
            //if (lstinclude.SelectedItem != null)
            //{
            //    List<nvboe_code> lstCode = new List<nvboe_code>();
            //    List<ListItem> lst = new List<ListItem>();

            //    foreach (ListItem Code in lstinclude.Items)
            //    {
            //        if (!Code.Selected)
            //        {
            //            lst.Add(Code);

            //        }
            //    }

            //    lstinclude.DataSource = lst;
            //    lstinclude.DataValueField = "value";
            //    lstinclude.DataTextField = "text";
            //    lstinclude.DataBind();
            //    lstCode = (List<nvboe_code>)lstinclude.DataSource;
            //}
            //else
            //{
            //    MessageBox.Show(this.Page, "Please select atleast one row.");
            //}
        }
        protected void btnmoveforwleft_Click(object sender, EventArgs e)
        {
            lstinclude.Items.Clear();
        }
        protected void btnstatecodemoveriht_Click(object sender, EventArgs e)
        {
            //if (lstboxstatescode.SelectedItem != null)
            //{
            //    List<nvboe_code> lstCode = new List<nvboe_code>();


            //    foreach (ListItem Code in lstboxstatescode.Items)
            //    {
            //        if (Code.Selected && !lststatedinclude.Items.Contains(Code))
            //        {
            //            lststatedinclude.Items.Add(Code);

            //        }
            //    } //lstCode = (List<nvboe_code>)lstinclude.DataSource;
            //}
            //else
            //{
            //    MessageBox.Show(this.Page, "Please select atleast one row.");
            //}
        }
        protected void btnstatecodemovrleft_Click(object sender, EventArgs e)
        {
            //if (lststatedinclude.SelectedItem != null)
            //{
            //    List<nvboe_code> lstCode = new List<nvboe_code>();


            //    List<ListItem> lst = new List<ListItem>();

            //    foreach (ListItem Code in lstinclude.Items)
            //    {
            //        if (!Code.Selected)
            //        {
            //            lst.Add(Code);

            //        }
            //    }

            //    lststatedinclude.DataSource = lst;
            //    lststatedinclude.DataTextField = "text";
            //    lststatedinclude.DataValueField = "value";
            //    lststatedinclude.DataBind();
            //}
            //else
            //{
            //    MessageBox.Show(this.Page, "Please select atleast one row.");
            //}
        }
        protected void btnstatecodemoveforwdleft_Click(object sender, EventArgs e)
        {
            lststatedinclude.Items.Clear();
        }

        protected void lnkCount_Click(object sender, EventArgs e)
        {
           // MessageBox.Show(this.Page, "<b>RESULT :</b><br />&nbsp;&nbsp;&nbsp; &nbsp;Number of matched records by current query Member --> <b>" + GenrateScriptCount().ToString() + "</b><br />&nbsp;&nbsp;&nbsp; &nbsp;Number of matched records by current query Firm --> <b>" + GenrateScriptCompanyCount().ToString() + "</b>");
            //    }
            //  MessageBox.Show(this.Page, "<b>RESULT :</b><br />&nbsp;&nbsp;&nbsp; &nbsp;Number of matched records by current query --> <b>" + GenrateScriptCount().ToString() + "</b>");
        }

        //private string GenrateScript()
        //{
        //    //string str = "";
        //    //str += " SELECT * FROM nvboe_member_info nmi ";

        //    //str += " WHERE nmi.is_deleted =0 ";

        //    //if (chkregistration.Checked && chkapplicant.Checked)
        //    //{

        //    //}
        //    //else
        //    //{
        //    //    // applicants search
        //    //    if (chkapplicant.Checked)
        //    //    {
        //    //        str += " AND  nmi.Member_Info_Id IN (SELECT nmal.Member_Info_ID FROM nvboe_member_applicant_lk nmal)";
        //    //    }
        //    //    // Registratnt Search
        //    //    if (chkregistration.Checked)
        //    //    {
        //    //        str += " AND  nmi.Member_Info_Id NOT IN (SELECT nmal.Member_Info_ID FROM nvboe_member_applicant_lk nmal)";
        //    //    }
        //    //}
        //    //if (!chkIncludeEI.Checked && lstinclude.Items.Count == 0)
        //    //{
        //    //    // Include EI/LSI, remove below line
        //    //    str += "  AND  nmi.Member_Info_Id Not  IN (SELECT nd.Member_Info_Id FROM nvboe_discipline nd  WHERE nd.Discipline_Name IN ('EI', 'LSI')AND nd.Is_Deleted=0)";
        //    //}
        //    //if (chkMarkedRecords.Checked)
        //    //{
        //    //    // Marked records
        //    //    str += " AND   nmi.Mark_Record =1";
        //    //}
        //    //if (chkDiscplineInclude.Checked && lstinclude.Items.Count > 0)
        //    //{
        //    //    // search discipline
        //    //    str += " AND nmi.Member_Info_Id  IN (SELECT nd.Member_Info_Id FROM nvboe_discipline nd  WHERE nd.Discipline_Name IN ( ";
        //    //    int count = 0;
        //    //    foreach (ListItem lst in lstinclude.Items)
        //    //    {
        //    //        str += "'" + lst.Text + "'";
        //    //        if (count < lstinclude.Items.Count - 1)
        //    //        {
        //    //            str += ",";
        //    //        }
        //    //        count++;
        //    //    }

        //    //    str += " )AND nd.Is_Deleted=0) ";
        //    //}
        //    //if (chkIncludeStateCode.Checked && lststatedinclude.Items.Count > 0)
        //    //{
        //    //    // search Statecode
        //    //    str += "  AND nmi.Member_Info_State  IN ( ";
        //    //    int count = 0;
        //    //    foreach (ListItem lst in lststatedinclude.Items)
        //    //    {
        //    //        str += "'" + lst.Value + "'";
        //    //        if (count < lststatedinclude.Items.Count - 1)
        //    //        {
        //    //            str += ",";
        //    //        }
        //    //        count++;
        //    //    }

        //    //    str += " ) ";
        //    //}
        //    //if (!string.IsNullOrEmpty(txtcitybegin.Text) || !string.IsNullOrEmpty(txtcityending.Text))
        //    //{
        //    //    // Search city
        //    //    str += " AND  nmi.Member_Info_City LIKE '" + txtcitybegin.Text + "%" + txtcityending.Text + "' ";
        //    //}
        //    //if (!string.IsNullOrEmpty(txtcountrybegin.Text) || !string.IsNullOrEmpty(txtcountryendin.Text))
        //    //{
        //    //    // Search Country
        //    //    str += " AND   nmi.Member_Info_Country LIKE '" + txtcountrybegin.Text + "%" + txtcountryendin.Text + "'";
        //    //}

        //    //if (!string.IsNullOrEmpty(txtlastactdatebegin.Text) || !string.IsNullOrEmpty(txtlastactdateend.Text))
        //    //{
        //    //    // Search Member_Info_Last_Activity
        //    //    str += "AND nmi.Member_Info_Last_Activity >= str_to_date('" + txtlastactdatebegin.Text + "','%m/%d/%Y%Y') and  nmi.Member_Info_Last_Activity <= str_to_date('" + txtlastactdateend.Text + "','%m/%d/%Y%Y')  ";
        //    //}
        //    //if (!string.IsNullOrEmpty(txtlastnamebegin.Text) || !string.IsNullOrEmpty(txtlastnameend.Text))
        //    //{
        //    //    // Search Member_Info_Last_Name
        //    //    str += " AND   nmi.Member_Info_Last_Name LIKE '" + txtlastnamebegin.Text + "%" + txtlastnameend.Text + "'";

        //    //}
        //    //if (!string.IsNullOrEmpty(txtregnumberbeg.Text.Trim()) && !string.IsNullOrEmpty(txtregnumberend.Text.Trim()) && txtregnumberbeg.Text.Trim().Length < 6 && txtregnumberend.Text.Trim().Length < 6)
        //    //{
        //    //    // Search Member_Registration_Number
        //    //    str += "AND  nmi.Member_Registration_Number LIKE '" + txtregnumberbeg.Text.Trim() + "%" + txtregnumberend.Text.Trim() + "'  ";
        //    //}
        //    //if (txtregnumberbeg.Text.Trim().Length == 6 && txtregnumberend.Text.Trim().Length == 6)
        //    //{
        //    //    str += "  AND  CAST(nmi.Member_Registration_Number AS UNSIGNED)   between  CAST( '" + txtregnumberbeg.Text.Trim() + "' AS UNSIGNED)  and   CAST( '" + txtregnumberend.Text.Trim() + "' AS UNSIGNED) ";
        //    //}
        //    //else if (txtregnumberbeg.Text.Trim().Length > 0)
        //    //{
        //    //    str += "  AND  CAST(nmi.Member_Registration_Number AS UNSIGNED)   >  CAST( '" + txtregnumberbeg.Text.Trim() + "' AS UNSIGNED) ";

        //    //}
        //    //else if (txtregnumberend.Text.Trim().Length > 0)
        //    //{
        //    //    str += "  AND  CAST(nmi.Member_Registration_Number AS UNSIGNED)   <  CAST( '" + txtregnumberbeg.Text.Trim() + "' AS UNSIGNED)   ";

        //    //}
        //    //if (!string.IsNullOrEmpty(txtzipbegin.Text) || !string.IsNullOrEmpty(txtzipend.Text))
        //    //{
        //    //    // Search Member_Info_Zip
        //    //    str += "AND  nmi.Member_Info_Zip LIKE '" + txtzipbegin.Text + "%" + txtzipend.Text + "'  ";
        //    //}


        //    //if (!string.IsNullOrEmpty(txtapplicadatebeg.Text) || !string.IsNullOrEmpty(txtapplicatdateend.Text))
        //    //{
        //    //    // Search application_received
        //    //    str += " AND  nmi.Member_Info_Id IN (SELECT nmip.Member_Info_Id FROM nvboe_member_info_progress nmip WHERE   str_to_date(nmip.application_received,'%m/%d/%Y%Y') >= str_to_date('" + txtapplicadatebeg.Text + "','%m/%d/%Y%Y') and  str_to_date(nmip.application_received,'%m/%d/%Y%Y') <= str_to_date('" + txtapplicatdateend.Text + "','%m/%d/%Y%Y')   ) ";
        //    //}
        //    //if (!string.IsNullOrEmpty(txtapprovdatebegin.Text) || !string.IsNullOrEmpty(txtapprovdateend.Text))
        //    //{
        //    //    // Search registration_approved
        //    //    str += " AND   nmi.Member_Info_Id IN (SELECT nmip.Member_Info_Id FROM nvboe_member_info_progress nmip WHERE str_to_date(nmip.registration_approved,'%m/%d/%Y%Y') >= str_to_date('" + txtapprovdatebegin.Text + "','%m/%d/%Y%Y') and  str_to_date(nmip.registration_approved,'%m/%d/%Y%Y') <= str_to_date('" + txtapprovdateend.Text + "','%m/%d/%Y%Y') ) ";
        //    //}
        //    //if (!string.IsNullOrEmpty(txtboarddatebegin.Text) || !string.IsNullOrEmpty(txtboarddateend.Text))
        //    //{
        //    //    // Search board_meeting_date
        //    //    str += " AND   nmi.Member_Info_Id IN (SELECT nmip.Member_Info_Id FROM nvboe_member_info_progress nmip WHERE str_to_date(nmip.board_meeting_date,'%m/%d/%Y%Y') >= str_to_date('" + txtboarddatebegin.Text + "','%m/%d/%Y%Y') and  str_to_date(nmip.board_meeting_date,'%m/%d/%Y%Y') <= str_to_date('" + txtboarddateend.Text + "','%m/%d/%Y%Y') ) ";
        //    //}
        //    //if (!string.IsNullOrEmpty(txteamdatebegin.Text) || !string.IsNullOrEmpty(txtexamdateend.Text))
        //    //{
        //    //    // Search application_received
        //    //    str += " AND    nmi.Member_Info_Id IN (SELECT nmip.Member_Info_Id FROM nvboe_member_info_progress nmip WHERE str_to_date(nmip.examination_taken,'%m/%d/%Y%Y') >= str_to_date('" + txteamdatebegin.Text + "','%m/%d/%Y%Y') and   str_to_date(nmip.examination_taken,'%m/%d/%Y%Y') <= str_to_date('" + txtexamdateend.Text + "','%m/%d/%Y%Y') )";
        //    //}

        //    //if (!string.IsNullOrEmpty(txtcompidbegin.Text) || !string.IsNullOrEmpty(txtcompending.Text))
        //    //{
        //    //    // search company id
        //    //    str += "and  nmi.Member_Info_Id IN (SELECT nmiafbl.Member_Info_ID FROM nvboe_firm_info_business nfib INNER JOIN nvboe_member_info_and_firm_business_lk nmiafbl ON nfib.Firm_Info_Business_Id = nmiafbl.Firm_Info_Business_ID WHERE nfib.Company_Id LIKE  '" + txtcompidbegin.Text + "%" + txtcompending.Text + "' ) ";

        //    //}
        //    //if (!string.IsNullOrEmpty(txtcompnamebegin.Text) || !string.IsNullOrEmpty(txtcompnameend.Text))
        //    //{
        //    //    // search company Name
        //    //    str += "and  nmi.Member_Info_Id IN (SELECT nmiafbl.Member_Info_ID FROM nvboe_firm_info_business nfib INNER JOIN nvboe_member_info_and_firm_business_lk nmiafbl ON nfib.Firm_Info_Business_Id = nmiafbl.Firm_Info_Business_ID WHERE nfib.Firm_Info_Business_Comapny_Name LIKE '" + txtcompnamebegin.Text + "%" + txtcompnameend.Text + "' ) ";
        //    //}
        //    //str = str.Trim();
        //    //str = str.TrimEnd('D').TrimEnd('N').TrimEnd('A');
        //    //if (rbtnsex.SelectedValue != "A")
        //    //{

        //    //    if (rbtnsex.SelectedValue != "M")
        //    //    {
        //    //        str += " AND nmi.Member_Info_Gender = 'M' ";
        //    //    }
        //    //    else if (rbtnsex.SelectedValue != "F")
        //    //    {
        //    //        str += " AND nmi.Member_Info_Gender = 'F' ";
        //    //    }
        //    //}
        //    //// order by 4 option
        //    //if (ddlreportorder.SelectedValue == "2")
        //    //{
        //    //    str += "  ORDER by nmi.Member_Registration_Number ASC ";
        //    //}
        //    //if (ddlreportorder.SelectedValue == "3")
        //    //{
        //    //    str += "  ORDER by  nmi.Member_Info_State ASC ";
        //    //}
        //    //if (ddlreportorder.SelectedValue == "1")
        //    //{
        //    //    str += "  ORDER by nmi.Member_Info_Last_Name ASC ";
        //    //}
        //    //if (ddlreportorder.SelectedValue == "4")
        //    //{
        //    //    str += "  ORDER by nmi.Member_Info_Zip ASC ";
        //    //}


        //    //return str;

        //}

        //private int GenrateScriptCount()
        //{
        //    try
        //    {
        //        //if (txtLName.Text.Contains("'"))
        //        //{
        //        //    LastName = string.Join("", txtLName.Text.Split('\'').Skip(1).ToArray());
        //        //}
        //        //if (txtFName.Text.Contains("'"))
        //        //{
        //        //    LastName = string.Join("", txtFName.Text.Split('\'').Skip(1).ToArray());
        //        //}
        //        string str = "";
        //        str += " SELECT count(*) FROM nvboe_member_info nmi ";

        //        str += " WHERE nmi.is_deleted =0 ";

        //        if (chkregistration.Checked && chkapplicant.Checked)
        //        {

        //        }
        //        else
        //        {
        //            // applicants search
        //            if (chkapplicant.Checked)
        //            {
        //                str += " AND  nmi.Member_Info_Id IN (SELECT nmal.Member_Info_ID FROM nvboe_member_applicant_lk nmal)";
        //            }
        //            // Registratnt Search
        //            if (chkregistration.Checked)
        //            {
        //                str += " AND  nmi.Member_Info_Id NOT IN (SELECT nmal.Member_Info_ID FROM nvboe_member_applicant_lk nmal)";
        //            }
        //        }
        //        if (!chkIncludeEI.Checked)
        //        {
        //            // Include EI/LSI, remove below line
        //            str += "  AND  nmi.Member_Info_Id Not  IN (SELECT nd.Member_Info_Id FROM nvboe_discipline nd  WHERE nd.Discipline_Name IN ('EI', 'LSI')AND nd.Is_Deleted=0)";
        //        }
        //        if (chkMarkedRecords.Checked)
        //        {
        //            // Marked records
        //            str += " AND   nmi.Mark_Record =1";
        //        }
        //        if (chkDiscplineInclude.Checked && lstinclude.Items.Count > 0)
        //        {
        //            // search discipline
        //            str += " AND nmi.Member_Info_Id  IN (SELECT nd.Member_Info_Id FROM nvboe_discipline nd  WHERE nd.Discipline_Name IN ( ";
        //            int count = 0;
        //            foreach (ListItem lst in lstinclude.Items)
        //            {
        //                str += "'" + lst.Text + "'";
        //                if (count < lstinclude.Items.Count - 1)
        //                {
        //                    str += ",";
        //                }
        //                count++;
        //            }

        //            str += " )AND nd.Is_Deleted=0) ";
        //        }
        //        if (chkIncludeStateCode.Checked && lststatedinclude.Items.Count > 0)
        //        {
        //            // search Statecode
        //            str += "  AND nmi.Member_Info_State  IN ( ";
        //            int count = 0;
        //            foreach (ListItem lst in lststatedinclude.Items)
        //            {
        //                str += "'" + lst.Value + "'";
        //                if (count < lststatedinclude.Items.Count - 1)
        //                {
        //                    str += ",";
        //                }
        //                count++;
        //            }

        //            str += " ) ";
        //        }
        //        if (!string.IsNullOrEmpty(txtcitybegin.Text) || !string.IsNullOrEmpty(txtcityending.Text))
        //        {
        //            // Search city
        //            str += " AND  nmi.Member_Info_City LIKE '" + txtcitybegin.Text + "%" + txtcityending.Text + "' ";
        //        }
        //        if (!string.IsNullOrEmpty(txtcountrybegin.Text) || !string.IsNullOrEmpty(txtcountryendin.Text))
        //        {
        //            // Search Country
        //            str += " AND   nmi.Member_Info_Country LIKE '" + txtcountrybegin.Text + "%" + txtcountryendin.Text + "'";
        //        }

        //        if (!string.IsNullOrEmpty(txtlastactdatebegin.Text) || !string.IsNullOrEmpty(txtlastactdateend.Text))
        //        {
        //            // Search Member_Info_Last_Activity
        //            str += "AND nmi.Member_Info_Last_Activity >= str_to_date('" + txtlastactdatebegin.Text + "','%m/%d/%Y%Y') and  nmi.Member_Info_Last_Activity <= str_to_date('" + txtlastactdateend.Text + "','%m/%d/%Y%Y')  ";
        //        }
        //        if (!string.IsNullOrEmpty(txtlastnamebegin.Text) || !string.IsNullOrEmpty(txtlastnameend.Text))
        //        {
        //            // Search Member_Info_Last_Name
        //            str += " AND   nmi.Member_Info_Last_Name LIKE '" + txtlastnamebegin.Text + "%" + txtlastnameend.Text + "'";

        //        }
        //        if (!string.IsNullOrEmpty(txtregnumberbeg.Text.Trim()) && !string.IsNullOrEmpty(txtregnumberend.Text.Trim()) && txtregnumberbeg.Text.Trim().Length < 6 && txtregnumberend.Text.Trim().Length < 6)
        //        {
        //            // Search Member_Registration_Number
        //            str += "AND  nmi.Member_Registration_Number LIKE '" + txtregnumberbeg.Text.Trim() + "%" + txtregnumberend.Text.Trim() + "'  ";
        //        }
        //        if (txtregnumberbeg.Text.Trim().Length == 6 && txtregnumberend.Text.Trim().Length == 6)
        //        {
        //            str += "  AND  CAST(nmi.Member_Registration_Number AS UNSIGNED)   between  CAST( '" + txtregnumberbeg.Text.Trim() + "' AS UNSIGNED)  and   CAST( '" + txtregnumberend.Text.Trim() + "' AS UNSIGNED) ";
        //        }
        //        else if (txtregnumberbeg.Text.Trim().Length > 0)
        //        {
        //            str += "  AND  CAST(nmi.Member_Registration_Number AS UNSIGNED)   >  CAST( '" + txtregnumberbeg.Text.Trim() + "' AS UNSIGNED) ";

        //        }
        //        else if (txtregnumberend.Text.Trim().Length > 0)
        //        {
        //            str += "  AND  CAST(nmi.Member_Registration_Number AS UNSIGNED)   <  CAST( '" + txtregnumberbeg.Text.Trim() + "' AS UNSIGNED)   ";

        //        }
        //        if (!string.IsNullOrEmpty(txtzipbegin.Text) || !string.IsNullOrEmpty(txtzipend.Text))
        //        {
        //            // Search Member_Info_Zip
        //            str += "AND  nmi.Member_Info_Zip LIKE '" + txtzipbegin.Text + "%" + txtzipend.Text + "'  ";
        //        }


        //        if (!string.IsNullOrEmpty(txtapplicadatebeg.Text) || !string.IsNullOrEmpty(txtapplicatdateend.Text))
        //        {
        //            // Search application_received
        //            str += " AND  nmi.Member_Info_Id IN (SELECT nmip.Member_Info_Id FROM nvboe_member_info_progress nmip WHERE   str_to_date(nmip.application_received,'%m/%d/%Y%Y') >= str_to_date('" + txtapplicadatebeg.Text + "','%m/%d/%Y%Y') and  str_to_date(nmip.application_received,'%m/%d/%Y%Y') <= str_to_date('" + txtapplicatdateend.Text + "','%m/%d/%Y%Y')   ) ";
        //        }
        //        if (!string.IsNullOrEmpty(txtapprovdatebegin.Text) || !string.IsNullOrEmpty(txtapprovdateend.Text))
        //        {
        //            // Search registration_approved
        //            str += " AND   nmi.Member_Info_Id IN (SELECT nmip.Member_Info_Id FROM nvboe_member_info_progress nmip WHERE str_to_date(nmip.registration_approved,'%m/%d/%Y%Y') >= str_to_date('" + txtapprovdatebegin.Text + "','%m/%d/%Y%Y') and  str_to_date(nmip.registration_approved,'%m/%d/%Y%Y') <= str_to_date('" + txtapprovdateend.Text + "','%m/%d/%Y%Y') ) ";
        //        }
        //        if (!string.IsNullOrEmpty(txtboarddatebegin.Text) || !string.IsNullOrEmpty(txtboarddateend.Text))
        //        {
        //            // Search board_meeting_date
        //            str += " AND   nmi.Member_Info_Id IN (SELECT nmip.Member_Info_Id FROM nvboe_member_info_progress nmip WHERE str_to_date(nmip.board_meeting_date,'%m/%d/%Y%Y') >= str_to_date('" + txtboarddatebegin.Text + "','%m/%d/%Y%Y') and  str_to_date(nmip.board_meeting_date,'%m/%d/%Y%Y') <= str_to_date('" + txtboarddateend.Text + "','%m/%d/%Y%Y') ) ";
        //        }
        //        if (!string.IsNullOrEmpty(txteamdatebegin.Text) || !string.IsNullOrEmpty(txtexamdateend.Text))
        //        {
        //            // Search application_received
        //            str += " AND    nmi.Member_Info_Id IN (SELECT nmip.Member_Info_Id FROM nvboe_member_info_progress nmip WHERE str_to_date(nmip.examination_taken,'%m/%d/%Y%Y') >= str_to_date('" + txteamdatebegin.Text + "','%m/%d/%Y%Y') and   str_to_date(nmip.examination_taken,'%m/%d/%Y%Y') <= str_to_date('" + txtexamdateend.Text + "','%m/%d/%Y%Y') )";
        //        }



        //        if (!string.IsNullOrEmpty(txtcompidbegin.Text) || !string.IsNullOrEmpty(txtcompending.Text))
        //        {
        //            // search company id
        //            str += "and  nmi.Member_Info_Id IN (SELECT nmiafbl.Member_Info_ID FROM nvboe_firm_info_business nfib INNER JOIN nvboe_member_info_and_firm_business_lk nmiafbl ON nfib.Firm_Info_Business_Id = nmiafbl.Firm_Info_Business_ID WHERE nfib.Company_Id LIKE  '" + txtcompidbegin.Text + "%" + txtcompending.Text + "' ) ";

        //        }
        //        if (!string.IsNullOrEmpty(txtcompnamebegin.Text) || !string.IsNullOrEmpty(txtcompnameend.Text))
        //        {
        //            // search company Name
        //            str += "and  nmi.Member_Info_Id IN (SELECT nmiafbl.Member_Info_ID FROM nvboe_firm_info_business nfib INNER JOIN nvboe_member_info_and_firm_business_lk nmiafbl ON nfib.Firm_Info_Business_Id = nmiafbl.Firm_Info_Business_ID WHERE nfib.Firm_Info_Business_Comapny_Name LIKE '" + txtcompnamebegin.Text + "%" + txtcompnameend.Text + "' ) ";
        //        }
        //        str = str.Trim();
        //        str = str.TrimEnd('D').TrimEnd('N').TrimEnd('A');
        //        if (rbtnsex.SelectedValue != "A")
        //        {

        //            if (rbtnsex.SelectedValue != "M")
        //            {
        //                str += " AND nmi.Member_Info_Gender = 'M' ";
        //            }
        //            else if (rbtnsex.SelectedValue != "F")
        //            {
        //                str += " AND nmi.Member_Info_Gender = 'F' ";
        //            }
        //        }
        //        // order by 4 option
        //        if (ddlreportorder.SelectedValue == "2")
        //        {
        //            str += "  ORDER by nmi.Member_Registration_Number ASC ";
        //        }
        //        if (ddlreportorder.SelectedValue == "3")
        //        {
        //            str += "  ORDER by  nmi.Member_Info_State ASC ";
        //        }
        //        if (ddlreportorder.SelectedValue == "1")
        //        {
        //            str += "  ORDER by nmi.Member_Info_Last_Name ASC ";
        //        }
        //        if (ddlreportorder.SelectedValue == "4")
        //        {
        //            str += "  ORDER by nmi.Member_Info_Zip ASC ";
        //        }

        //        // / nmi.Member_Info_State ASC
        //        // / nmi.Member_Info_Last_Name ASC
        //        // /  nmi.Member_Info_Zip ASC

        //        nvboe_QueryBAL objBAL = new nvboe_QueryBAL();
        //        DataSet ds = objBAL.ExcuteQuery(str);
        //        try
        //        {
        //            if (ds != null && ds.Tables[0] != null)
        //            {
        //                return Convert.ToInt32(ds.Tables[0].Rows[0][0]);
        //            }
        //            else
        //            {
        //                return 0;
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //            return 0;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        return 0;
        //    }
        //}
        protected void lnkClear_Click(object sender, EventArgs e)
        {
            //chkapplicant.Checked = false;
            //chkIncludeEI.Checked = false;
            //chkMarkedRecords.Checked = false;
            ddlreportorder.SelectedValue = "1";
            lstinclude.Items.Clear();
            lststatedinclude.Items.Clear();
            lstdiscript.DataSource = null;
            lstboxstatescode.DataSource = null;
            txtcitybegin.Text = "";
            txtcityending.Text = "";
            txtcompidbegin.Text = "";
            txtcompending.Text = "";
            txtcompnamebegin.Text = "";
            txtcompnameend.Text = "";
            txtcountrybegin.Text = "";
            txtcountryendin.Text = "";
            txtlastactdatebegin.Text = "";
            txtlastactdateend.Text = "";
            txtlastnamebegin.Text = "";
            txtlastnameend.Text = "";
            txtregnumberbeg.Text = "";
            txtregnumberend.Text = "";
            txtzipbegin.Text = "";
            txtzipend.Text = "";
            txtapplicadatebeg.Text = "";
            txtapplicatdateend.Text = "";
            txtapprovdatebegin.Text = "";
            txtboarddatebegin.Text = "";
            txtboarddateend.Text = "";
            txteamdatebegin.Text = "";
            txtexamdateend.Text = "";
            rbtnsex.SelectedValue = "A";
            gvQueryscreen.DataSource = null;
            txtapprovdateend.Text = "";
            //this.Member_Info_Id = 0;
        }
        protected void lnkReturn_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/UI/ReportMembers.aspx", false);
        }
        protected void btnViewReport_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    string query = GenrateScript();
            //    nvboe_member_info_BAL objMember = new nvboe_member_info_BAL();
            //    List<nvboe_member_info> lstMemberInfo = new List<nvboe_member_info>();
            //    lstMemberInfo = objMember.Search_nvboe_member_info_by_query(query);
            //    gvQueryscreen.DataSource = lstMemberInfo;
            //    gvQueryscreen.DataBind();
            //}
            //catch (Exception ex)
            //{
            //}
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    nvboe_member_info_BAL objMember = new nvboe_member_info_BAL();
            //    List<nvboe_member_info> lstMemberInfo = new List<nvboe_member_info>();
            //    nvboe_firm_info_businessBAL objFirmBAL = new nvboe_firm_info_businessBAL();
            //    List<nvboe_firm_info_business> lstFirmInfo = new List<nvboe_firm_info_business>();
            //    string query = GenrateScript();
            //    string queryCompany = GenrateScriptCompany();

            //    lstMemberInfo = objMember.Search_nvboe_member_info_by_query(query);

            //    lstFirmInfo = objFirmBAL.Search_Firm_Info_by_Query(queryCompany);

            //    Session["lstMemberInfo"] = lstMemberInfo;
            //    Session["lstFirmInfo"] = lstFirmInfo;
            //    Response.Redirect("~/UI/ReportMembers.aspx", false);
            //}
            //catch (Exception ex)
            //{
            //}
        }

        //private string GenrateScriptCompany()
        //{
        //    string str = "";
        //    str += " SELECT * FROM nvboe_firm_info_business nmi ";

        //    str += " WHERE  nmi.is_deleted =0 ";

        //    if (chkregistration.Checked && chkapplicant.Checked)
        //    {

        //    }

        //    if (chkIncludeStateCode.Checked && lststatedinclude.Items.Count > 0)
        //    {
        //         search Statecode
        //        str += " AND  nmi.Firm_Info_Business_State  IN ( ";
        //        int count = 0;
        //        foreach (ListItem lst in lststatedinclude.Items)
        //        {
        //            str += "'" + lst.Value + "'";
        //            if (count < lststatedinclude.Items.Count - 1)
        //            {
        //                str += ",";
        //            }
        //            count++;
        //        }

        //        str += " ) ";
        //    }
        //    if (!string.IsNullOrEmpty(txtcitybegin.Text) || !string.IsNullOrEmpty(txtcityending.Text))
        //    {
        //         Search city
        //        str += " AND  nmi.Firm_Info_Business_City LIKE '" + txtcitybegin.Text + "%" + txtcityending.Text + "'  ";
        //    }
        //    if (!string.IsNullOrEmpty(txtcountrybegin.Text) || !string.IsNullOrEmpty(txtcountryendin.Text))
        //    {
        //         Search Country
        //        str += "  AND  nmi.Firm_Info_Business_Country LIKE '" + txtcountrybegin.Text + "%" + txtcountryendin.Text + "'";
        //    }
        //    if (!string.IsNullOrEmpty(txtlastactdatebegin.Text) || !string.IsNullOrEmpty(txtlastactdateend.Text))
        //    {
        //         Search Member_Info_Last_Activity
        //        str += "AND nmi.Last_Activity >= str_to_date('" + txtlastactdatebegin.Text + "','%m/%d/%Y%Y') and  nmi.Last_Activity <= str_to_date('" + txtlastactdateend.Text + "','%m/%d/%Y%Y')  ";
        //    }
        //    if (!string.IsNullOrEmpty(txtlastactdatebegin.Text) || !string.IsNullOrEmpty(txtlastactdateend.Text))
        //    {
        //        // Search Member_Info_Last_Activity
        //        str += "  AND  nmi.Last_Activity BETWEEN (NOW() AND NOW() ) ";
        //    }

        //    if (!string.IsNullOrEmpty(txtzipbegin.Text) || !string.IsNullOrEmpty(txtzipend.Text))
        //    {
        //         Search Member_Info_Zip
        //        str += " AND  nmi.Firm_Info_Business_Zip LIKE '" + txtzipbegin.Text + "%" + txtzipend.Text + "' ";
        //    }




        //    if (!string.IsNullOrEmpty(txtcompidbegin.Text) || !string.IsNullOrEmpty(txtcompending.Text))
        //    {
        //         search company id
        //        str += " and  nmi.Company_Id LIKE  '" + txtcompidbegin.Text + "%" + txtcompending.Text + "'  ";

        //    }
        //    if (!string.IsNullOrEmpty(txtcompnamebegin.Text) || !string.IsNullOrEmpty(txtcompnameend.Text))
        //    {
        //         search company Name
        //        str += " and nmi.Firm_Info_Business_Comapny_Name LIKE '" + txtcompnamebegin.Text + "%" + txtcompnameend.Text + "'  ";
        //    }
        //    str = str.Trim();
        //    str = str.TrimEnd('D').TrimEnd('N').TrimEnd('A');

        //    if (ddlreportorder.SelectedValue == "3")
        //    {
        //        str += "  ORDER by  nmi.Firm_Info_Business_State ASC ";
        //    }
        //    else
        //    {
        //        str += "  ORDER by  nmi.Firm_Info_Business_Comapny_Name ASC ";
        //    }


        //    return str;
        //}
        //private int GenrateScriptCompanyCount()
        //{
        //    string str = "";
        //    str += " SELECT Count(*) FROM nvboe_firm_info_business nmi ";

        //    str += " WHERE  nmi.is_deleted =0 ";

        //    if (chkregistration.Checked && chkapplicant.Checked)
        //    {

        //    }

        //    if (chkIncludeStateCode.Checked && lststatedinclude.Items.Count > 0)
        //    {
        //         search Statecode
        //        str += " AND  nmi.Firm_Info_Business_State  IN ( ";
        //        int count = 0;
        //        foreach (ListItem lst in lststatedinclude.Items)
        //        {
        //            str += "'" + lst.Value + "'";
        //            if (count < lststatedinclude.Items.Count - 1)
        //            {
        //                str += ",";
        //            }
        //            count++;
        //        }

        //        str += " ) ";
        //    }
        //    if (!string.IsNullOrEmpty(txtcitybegin.Text) || !string.IsNullOrEmpty(txtcityending.Text))
        //    {
        //         Search city
        //        str += " AND  nmi.Firm_Info_Business_City LIKE '" + txtcitybegin.Text + "%" + txtcityending.Text + "'  ";
        //    }
        //    if (!string.IsNullOrEmpty(txtcountrybegin.Text) || !string.IsNullOrEmpty(txtcountryendin.Text))
        //    {
        //         Search Country
        //        str += "  AND  nmi.Firm_Info_Business_Country LIKE '" + txtcountrybegin.Text + "%" + txtcountryendin.Text + "'";
        //    }
        //    if (!string.IsNullOrEmpty(txtlastactdatebegin.Text) || !string.IsNullOrEmpty(txtlastactdateend.Text))
        //    {
        //         Search Member_Info_Last_Activity
        //        str += "AND nmi.Last_Activity >= str_to_date('" + txtlastactdatebegin.Text + "','%m/%d/%Y%Y') and  nmi.Last_Activity <= str_to_date('" + txtlastactdateend.Text + "','%m/%d/%Y%Y')  ";
        //    }

        //    if (!string.IsNullOrEmpty(txtzipbegin.Text) || !string.IsNullOrEmpty(txtzipend.Text))
        //    {
        //         Search Member_Info_Zip
        //        str += " AND  nmi.Firm_Info_Business_Zip LIKE '" + txtzipbegin.Text + "%" + txtzipend.Text + "' ";
        //    }




        //    if (!string.IsNullOrEmpty(txtcompidbegin.Text) || !string.IsNullOrEmpty(txtcompending.Text))
        //    {
        //         search company id
        //        str += " and  nmi.Company_Id LIKE  '" + txtcompidbegin.Text + "%" + txtcompending.Text + "'  ";

        //    }
        //    if (!string.IsNullOrEmpty(txtcompnamebegin.Text) || !string.IsNullOrEmpty(txtcompnameend.Text))
        //    {
        //         search company Name
        //        str += " and nmi.Firm_Info_Business_Comapny_Name LIKE '" + txtcompnamebegin.Text + "%" + txtcompnameend.Text + "'  ";
        //    }
        //    str = str.Trim();
        //    str = str.TrimEnd('D').TrimEnd('N').TrimEnd('A');

        //    if (ddlreportorder.SelectedValue == "3")
        //    {
        //        str += "  ORDER by  nmi.Firm_Info_Business_State ASC ";
        //    }
        //    else
        //    {
        //        str += "  ORDER by  nmi.Firm_Info_Business_Comapny_Name ASC ";
        //    }


        //    nvboe_QueryBAL objBAL = new nvboe_QueryBAL();
        //    DataSet ds = objBAL.ExcuteQuery(str);
        //    try
        //    {
        //        if (ds != null && ds.Tables[0] != null)
        //        {
        //            return Convert.ToInt32(ds.Tables[0].Rows[0][0]);
        //        }
        //        else
        //        {
        //            return 0;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        return 0;
        //    }
        //}

        protected void Page_Init(object sender, EventArgs e)
        {

        }

        protected void btnBulkEmail_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    nvboe_member_info_BAL objMember = new nvboe_member_info_BAL();
            //    List<nvboe_member_info> lstMemberInfo = new List<nvboe_member_info>();
            //    nvboe_firm_info_businessBAL objFirmBAL = new nvboe_firm_info_businessBAL();
            //    List<nvboe_firm_info_business> lstFirmInfo = new List<nvboe_firm_info_business>();
            //    string query = GenrateScript();
            //    string queryCompany = GenrateScriptCompany();

            //    lstMemberInfo = objMember.Search_nvboe_member_info_by_query(query);

            //    lstFirmInfo = objFirmBAL.Search_Firm_Info_by_Query(queryCompany);

            //    Session["lstMemberInfo"] = lstMemberInfo;
            //    Session["lstFirmInfo"] = lstFirmInfo;

            //    Response.Redirect("BulkEmail.aspx", false);
            //}
            //catch (Exception ex)
            //{
            //}
        }
    }
 