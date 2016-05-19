using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.IO;
using LAPP.ENTITY;
using LAPP.BAL;
using LAPP.ENTITY.Enumerations;
using LAPP.CORE;
using LAPP.CONFIG;

namespace NVBMT_WebProject.Modules.IndiVidual
{
    public partial class ucIndividual : System.Web.UI.UserControl
    {
        public event EventHandler UCClick;
        public event EventHandler UCClick2;
        #region ClassProperties

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
        public int Name_id
        {
            get
            {
                if (ViewState["Name_id"] != null)
                {
                    return Convert.ToInt32(ViewState["Name_id"]);
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                ViewState["Name_id"] = value;
            }
        }
        #endregion

        #region Class Members


        LAPP_exception_log objExLog = new LAPP_exception_log();
        LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();

        lapp_individual_application_lk objlapp_individual_application_lk = new lapp_individual_application_lk();
        lapp_individual_application_lkBAL objlapp_individual_application_lkBAL = new lapp_individual_application_lkBAL();

        LAPP_audit_info objAuditInfo = new LAPP_audit_info();
        LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
        LAPP_individual objLAPP_individual = new LAPP_individual();

        lapp_applicant_individual_login_info objLAPP_Individual_Login_Info = new lapp_applicant_individual_login_info();
        lapp_applicant_individual_login_infoBAL objLAPP_Individual_Login_InfoBAL = new lapp_applicant_individual_login_infoBAL();

        LAPP_individualBAL objLAPP_individualBAL = new LAPP_individualBAL();
        LAPP_application_statusBAL objLAPP_application_statusBAL = new LAPP_application_statusBAL();
        LAPP_individual_names objindividual_names = new LAPP_individual_names();
        LAPP_individual_namesBAL objLAPP_individual_namesBAL = new LAPP_individual_namesBAL();

        #endregion

        #region PageEventHandler

        protected void Page_Load(object sender, EventArgs e)
        {
            ltrIndividual.Text = "";
            Page.Form.Attributes.Add("enctype", "multipart/form-data");
            if (!IsPostBack)
            {
                ltrIndividual.Text = "";
            } //imgProfile.ImageUrl = this.UploadedImageUrl;

            //if (BrowserInfo.IsBrowserTypeChrome() || BrowserInfo.IsBrowserTypeFireFox())
            //{
            //    frmProfileUpload.Visible = false;
            //    pnlProfileUpload.Visible = true;
            //}
            //else
            //{
            //    frmProfileUpload.Visible = true;
            //    pnlProfileUpload.Visible = false;
            //}
        }

        //protected void btnShowHistory_Click(object sender, EventArgs e)
        //{
        //    btnShowHistory.Enabled = false;
        //    lnkNext.Enabled = true;
        //    lnkPrev.Enabled = true;
        //    btnShowCurrent.Enabled = true;
        //}

        //protected void btnShowCurrent_Click(object sender, EventArgs e)
        //{
        //    btnShowHistory.Enabled = true;
        //    lnkNext.Enabled = false;
        //    lnkPrev.Enabled = false;
        //    btnShowCurrent.Enabled = false;
        //}
        protected void btnPhotoUpload_Click(object sender, EventArgs e)
        {
            //if (fpImageUpload.HasFile)
            //{
            //    Session["Image"] = fpImageUpload.PostedFile;
            //    Stream fs = fpImageUpload.PostedFile.InputStream;
            //    BinaryReader br = new BinaryReader(fs);
            //    byte[] bytes = br.ReadBytes((Int32)fs.Length);
            //    string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            //    IndvidualimgProfile.ImageUrl = "data:image/png;base64," + base64String;
            //    this.UploadedImageUrl = "data:image/png;base64," + base64String;
            //}
        }
        protected void btnIndividualSave_Click(object sender, EventArgs e)
        {
            string Validation = Validate_ControlsSave();
            if (Validation == "")
            {
                if (this.Individual_Id == 0)
                {
                    objLAPP_Individual_Login_Info = objLAPP_Individual_Login_InfoBAL.Get_lapp_applicant_individual_login_info_Email(txtWebUserName.Text.Trim());
                    if (objLAPP_Individual_Login_Info != null && txtWebUserName.Text != string.Empty)
                    {
                        ltrIndividual.Text = MessageBox.BuildValidationMessage("User Name already exist.", 2);
                        return;
                    }
                }
                Save();
                //ClearControl();
                if (UCClick != null) UCClick(this, e);


            }
            else
            {
                //MessageBox.Show(this.Page, Validation, 2);
                ltrIndividual.Text = MessageBox.BuildValidationMessage(Validation, 2);
                return;
            }
        }
        protected void lnkIndividualCancel_Click(object sender, EventArgs e)
        {

            if (UCClick2 != null) UCClick2(this, e);
        }

        #endregion

        #region Private_Methods

        private LAPP_individual_names FetchValueFromNameControl()
        {
            try
            {
                objindividual_names = objLAPP_individual_namesBAL.Get_by_LAPP_individual_names_by_Indiviual_Id(this.Individual_Id);
                if (objindividual_names != null)
                {

                    objindividual_names.First_Name = txtFirstName.Text.Trim();
                    objindividual_names.Last_Name = txtLastName.Text.Trim();
                    objindividual_names.Middle_Name = txtMiddleName.Text.Trim();
                    objindividual_names.Modified_On = DateTime.Now;
                    objindividual_names.Modified_By = UIHelper.UserIDBySession().ToString();
                    this.Name_id = objindividual_names.Name_id;

                }
                else
                {
                    objindividual_names = new LAPP_individual_names();
                    objindividual_names.First_Name = txtFirstName.Text.Trim();
                    objindividual_names.Last_Name = txtLastName.Text.Trim();
                    objindividual_names.Middle_Name = txtMiddleName.Text.Trim();
                    objindividual_names.Suffix = "";
                    objindividual_names.Maiden_Name = "";

                    objindividual_names.Status_ID = 1;
                    objindividual_names.Status = "Current";
                    objindividual_names.Date_Of_Beginning = "";
                    objindividual_names.Date_Of_Ending = "";
                    objindividual_names.Comments = "";
                    objindividual_names.Is_Active = true;
                    objindividual_names.Is_Deleted = false;
                    objindividual_names.Created_On = DateTime.Now;
                    objindividual_names.Created_By = UIHelper.UserIDBySession().ToString();
                    objindividual_names.Modified_On = DateTime.Now;
                    objindividual_names.Modified_By = "";

                }

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
            return objindividual_names;
        }
        private LAPP_individual FetchValueFromControl()
        {
            try
            {

                objLAPP_individual = new LAPP_individual();
                objLAPP_individual = objLAPP_individualBAL.Get_All_LAPP_individual_Get_BY_ID(this.Individual_Id);
                if (objLAPP_individual != null && this.Individual_Id > 0)
                {
                    objLAPP_individual.SSN = txtSsn.Text.Trim();
                    objLAPP_individual.Status_ID = Convert.ToInt32(ddlStatus.SelectedValue);
                    objLAPP_individual.Status = ddlStatus.SelectedItem.Text.Trim();
                    objLAPP_individual.Last_Updated = DateTime.Now.ToShortDateString();
                    objLAPP_individual.Dob = txtDOB.Text.Trim();
                    //objLAPP_individual.Gender = ddlGender.SelectedValue;

                    objLAPP_individual.PlaceOfBirth = txtPlaceOfBirth.Text.Trim();
                    objLAPP_individual.Email = "";
                    //objLAPP_individual.Comments = txtComments.Text;
                    objLAPP_individual.Modified_On = DateTime.Now;
                    objLAPP_individual.Modified_By = UIHelper.UserIDBySession().ToString();
                    //objLAPP_individual.Is_Mark_As_Bad_Address = chkBadAddress.Checked;
                }
                else
                {
                    objLAPP_individual = new LAPP_individual();
                    objLAPP_individual.SSN = txtSsn.Text.Trim();
                    objLAPP_individual.Status_ID = Convert.ToInt32(ddlStatus.SelectedValue);
                    objLAPP_individual.Status = ddlStatus.SelectedItem.Text.Trim();
                    objLAPP_individual.License_Number = this.License_Number;
                    objLAPP_individual.Issued_On = DateTime.Now.ToShortDateString();
                    objLAPP_individual.Last_Updated = DateTime.Now.ToShortDateString();
                    objLAPP_individual.Expired_On = DateTime.Now.AddYears(1).ToShortDateString();
                    objLAPP_individual.Dob = txtDOB.Text.Trim();
                    //objLAPP_individual.Gender = ddlGender.SelectedValue;
                    objLAPP_individual.PlaceOfBirth = txtPlaceOfBirth.Text.Trim();
                    objLAPP_individual.Email = "";
                    // objLAPP_individual.Comments = txtComments.Text;
                    objLAPP_individual.Is_Active = true;
                    objLAPP_individual.Is_Deleted = false;
                    objLAPP_individual.Is_Archive = false;
                    objLAPP_individual.Created_On = DateTime.Now;
                    objLAPP_individual.Created_By = UIHelper.UserIDBySession().ToString();
                    objLAPP_individual.Modified_On = DateTime.Now;
                    objLAPP_individual.Modified_By = UIHelper.UserIDBySession().ToString();
                    //objLAPP_individual.Is_Mark_As_Bad_Address = chkBadAddress.Checked;
                }
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
            return objLAPP_individual;

        }
        private void Updatelapp_applicant_individual_login_infoANDlapp_individual_application_lk()
        {
            try
            {

                objlapp_individual_application_lk = new lapp_individual_application_lk();
                objLAPP_Individual_Login_Info = new lapp_applicant_individual_login_info();

                objlapp_individual_application_lk = objlapp_individual_application_lkBAL.Get_lapp_individual_application_lk_By_Individual_Id(this.Individual_Id);
                if (objlapp_individual_application_lk != null)
                {

                    objLAPP_Individual_Login_Info = objLAPP_Individual_Login_InfoBAL.Get_lapp_applicant_individual_login_info_By_Applicant_ID(objlapp_individual_application_lk.Applicant_ID);
                    if (objLAPP_Individual_Login_Info != null)
                    {
                        objLAPP_Individual_Login_Info.Applicant_Email = txtWebUserName.Text.Trim();
                        objLAPP_Individual_Login_Info.Applicant_Password = txtWebPassword.Text.Trim();
                        objLAPP_Individual_Login_Info.DTS = DateTime.Now;
                        objLAPP_Individual_Login_Info.Modified_By = UIHelper.UserIDBySession().ToString();
                        objLAPP_Individual_Login_Info.Modified_On = DateTime.Now;
                        objLAPP_Individual_Login_InfoBAL.Update_lapp_applicant_individual_login_info(objLAPP_Individual_Login_Info);
                    }

                    else
                    {
                        objLAPP_Individual_Login_Info = new lapp_applicant_individual_login_info();
                        objLAPP_Individual_Login_Info.Applicant_Email = txtWebUserName.Text.Trim();
                        objLAPP_Individual_Login_Info.Applicant_Password = txtWebPassword.Text.Trim();
                        objLAPP_Individual_Login_Info.Application_Number = "";
                        objLAPP_Individual_Login_Info.Application_Type = "";
                        objLAPP_Individual_Login_Info.Application_Type_ID = 0;
                        objLAPP_Individual_Login_Info.Created_By = UIHelper.UserIDBySession().ToString();
                        objLAPP_Individual_Login_Info.Created_On = DateTime.Now;
                        objLAPP_Individual_Login_Info.DTS = DateTime.Now;
                        objLAPP_Individual_Login_Info.Is_Active = true;
                        objLAPP_Individual_Login_Info.Is_Deleted = false;
                        objLAPP_Individual_Login_Info.Member_Type = eIndividualType.Member.ToString();
                        objLAPP_Individual_Login_Info.Member_Type_ID = (int)eIndividualType.Member;
                        objLAPP_Individual_Login_Info.Modified_By = UIHelper.UserIDBySession().ToString();
                        objLAPP_Individual_Login_Info.Modified_On = DateTime.Now;
                        objLAPP_Individual_Login_Info.Is_Temp_Password = true;
                        int ID = objLAPP_Individual_Login_InfoBAL.Save_lapp_applicant_individual_login_info(objLAPP_Individual_Login_Info);

                        SaveIndividualApplication_lk(ID);

                    }
                }

                else
                {

                    objLAPP_Individual_Login_Info = new lapp_applicant_individual_login_info();

                    objLAPP_Individual_Login_Info.Applicant_Email = txtWebUserName.Text.Trim();
                    objLAPP_Individual_Login_Info.Applicant_Password = txtWebPassword.Text.Trim();
                    objLAPP_Individual_Login_Info.Application_Number = "";
                    objLAPP_Individual_Login_Info.Application_Type = "";
                    objLAPP_Individual_Login_Info.Application_Type_ID = 0;
                    objLAPP_Individual_Login_Info.Created_By = UIHelper.UserIDBySession().ToString();
                    objLAPP_Individual_Login_Info.Created_On = DateTime.Now;
                    objLAPP_Individual_Login_Info.DTS = DateTime.Now;
                    objLAPP_Individual_Login_Info.Is_Active = true;
                    objLAPP_Individual_Login_Info.Is_Deleted = false;
                    objLAPP_Individual_Login_Info.Member_Type = eIndividualType.Member.ToString();
                    objLAPP_Individual_Login_Info.Member_Type_ID = (int)eIndividualType.Member;
                    objLAPP_Individual_Login_Info.Modified_By = UIHelper.UserIDBySession().ToString();
                    objLAPP_Individual_Login_Info.Modified_On = DateTime.Now;
                    objLAPP_Individual_Login_Info.Is_Temp_Password = true;

                    int ID = objLAPP_Individual_Login_InfoBAL.Save_lapp_applicant_individual_login_info(objLAPP_Individual_Login_Info);
                    SaveIndividualApplication_lk(ID);

                }
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
        public void SaveIndividualApplication_lk(int Applicant_ID)
        {

            objlapp_individual_application_lk = new lapp_individual_application_lk();
            objlapp_individual_application_lk.Application_Number = "";//apph.GetApplication_Number_BySession();
            objlapp_individual_application_lk.Application_Type = "";
            objlapp_individual_application_lk.ApplicationType_ID = 0;
            objlapp_individual_application_lk.Approved = false;
            objlapp_individual_application_lk.Approved_On = "";
            objlapp_individual_application_lk.Deficient = false;
            objlapp_individual_application_lk.Deficient_On = "";
            objlapp_individual_application_lk.Denied = false;
            objlapp_individual_application_lk.Denied_On = "";
            objlapp_individual_application_lk.DTS = DateTime.Now;
            objlapp_individual_application_lk.Verified = false;
            objlapp_individual_application_lk.Verified_On = "";
            objlapp_individual_application_lk.Submitted_On = DateTime.Now;
            objlapp_individual_application_lk.Individual_Id = this.Individual_Id;
            objlapp_individual_application_lk.Applicant_ID = Applicant_ID;

            objlapp_individual_application_lkBAL.Save_lapp_individual_application_lk(objlapp_individual_application_lk);

        }
        private string Validate_ControlsSave()
        {
            string validateMsg = "";
            string vmsg = "";
            ltrIndividual.Text = "";
            try
            {
                validateMsg += ValidationHelper.IsOnlyAlphabet(txtFirstName.Text, "<li>Please enter last name</li>");
                validateMsg += ValidationHelper.IsOnlyAlphabet(txtLastName.Text, "<li>Please enter first name</li>");
                validateMsg += ValidationHelper.IsRequired(txtSsn.Text, "<li>Please enter SSN</li>");
                validateMsg += ValidationHelper.IsRequiredDDL(ddlStatus.Text, "<li>Please select status</li>");
                validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtDOB.Text, "<li>Please enter valid date</li>");
                //validateMsg += ValidationHelper.IsRequiredDDL(ddlGender.Text, "<li>Please select gender option</li>");

                if (String.IsNullOrEmpty(validateMsg))
                {
                    DateTime dt;
                    DateTime.TryParse(txtDOB.Text, out dt);
                    if (!Lapp_Configuration.IsValidApplicantAge(dt, (int)eApplicantAge.Age216Months18Plus))
                    {
                        //validateMsg += "<li>" + ErrorMessageGenral.ApplicantAgeValidationShouldbe18Plus + "</li>";
                    }
                    if (!String.IsNullOrEmpty(validateMsg))
                    {

                        vmsg = validateMsg;
                        ltrIndividual.Text = MessageBox.BuildValidationMessage(vmsg, 2);
                        txtDOB.Focus();
                    }
                }


                if (!String.IsNullOrEmpty(validateMsg))
                {
                    vmsg = validateMsg;
                    ltrIndividual.Text = MessageBox.BuildValidationMessage(vmsg, 2);
                }
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
            return vmsg;
        }

        #endregion

        #region Public_Methods

        public void BindDDLStatus()
        {
            List<LAPP_application_status> lstLAPP_application_status = new List<LAPP_application_status>();
            lstLAPP_application_status = objLAPP_application_statusBAL.LAPP_application_status_get_by_Status_Type_Id((int)eTabStatusType.Individual);
            if (lstLAPP_application_status != null && lstLAPP_application_status.Count > 0)
            {
                ddlStatus.DataSource = lstLAPP_application_status;
                ddlStatus.DataTextField = "Name";
                ddlStatus.DataValueField = "status_id";
                ddlStatus.DataBind();
                //ddlAppStatus.DataSource = lstLAPP_application_status;
                //ddlAppStatus.DataTextField = "Name";
                //ddlAppStatus.DataValueField = "status_id";
                //ddlAppStatus.DataBind();
            }
            ddlStatus.Items.Insert(0, new ListItem("Select", "-1"));
            //ddlAppStatus.Items.Insert(0, new ListItem("Select", "-1"));
        }
        public void BindDDLStatusEdit(DropDownList ddlStatusEdit)
        {
            List<LAPP_application_status> lstLAPP_application_status = new List<LAPP_application_status>();
            lstLAPP_application_status = objLAPP_application_statusBAL.LAPP_application_status_get_by_Status_Type_Id((int)eTabStatusType.Individual);
            if (lstLAPP_application_status != null && lstLAPP_application_status.Count > 0)
            {
                ddlStatusEdit.DataSource = lstLAPP_application_status;
                ddlStatusEdit.DataTextField = "Name";
                ddlStatusEdit.DataValueField = "status_id";
                ddlStatusEdit.DataBind();
            }
            ddlStatus.Items.Insert(0, new ListItem("Select", "-1"));
        }
        public void Save()
        {
            try
            {
                objLAPP_individual = FetchValueFromControl();
                objindividual_names = FetchValueFromNameControl();
                if (objLAPP_individual != null && objLAPP_Individual_Login_Info != null && this.Individual_Id > 0)
                {
                    objLAPP_individualBAL.Update_LAPP_individual(objLAPP_individual, this.Individual_Id);

                    if (this.Name_id > 0)
                    {
                        objindividual_names.Individual_Id = this.Individual_Id;
                        int nameid = objLAPP_individual_namesBAL.Update_LAPP_individual_names(objindividual_names, objindividual_names.Name_id);
                    }

                    Updatelapp_applicant_individual_login_infoANDlapp_individual_application_lk();

                    ltrIndividual.Text = MessageBox.BuildValidationMessage("Updated Successfully", 1);
                }
                else
                {
                    int INDID = objLAPP_individualBAL.SaveLAPP_individual(objLAPP_individual);
                    this.Individual_Id = INDID;
                    Session["IndividualId"] = this.Individual_Id;

                    objindividual_names.Individual_Id = this.Individual_Id;
                    int nameid = objLAPP_individual_namesBAL.Save_LAPP_individual_names(objindividual_names);

                    Updatelapp_applicant_individual_login_infoANDlapp_individual_application_lk();

                    txtFirstName.Enabled = false;
                    txtLastName.Enabled = false;
                    txtMiddleName.Enabled = false;
                    txtWebUserName.Enabled = false;
                    ltrIndividual.Text = MessageBox.BuildValidationMessage("Saved Successfully", 1);
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = "Error Occured-ucAddress.ascx-FetchValueFromControleEdit";

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
            txtSsn.Text = string.Empty;
            ddlStatus.SelectedValue = "-1";
            //ddlGender.SelectedValue = "-1";
            txtWebUserName.Text = string.Empty;
            txtWebPassword.Text = string.Empty;
            txtDOB.Text = string.Empty;
            txtPlaceOfBirth.Text = string.Empty;
            //txtComments.Text = string.Empty;
            txtCreated.Text = string.Empty;
            txtCreatedBy.Text = string.Empty;
            txtModified.Text = string.Empty;
            txtModifiedBy.Text = string.Empty;
            txtMiddleName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtFirstName.Text = string.Empty;
            //chkBadAddress.Checked = false;
            txtFirstName.Enabled = true;
            txtLastName.Enabled = true;
            txtMiddleName.Enabled = true;
            //ddlAppStatus.SelectedValue = "-1";

            this.EditIndex = -1;
            //IndvidualimgProfile.ImageUrl = "~/ViewImage.aspx?qindi=1";
        }

        public void FillControl()
        {
            try
            {
                txtWebPassword.Text = "";
                txtWebUserName.Text = "";

                objLAPP_individual = objLAPP_individualBAL.Get_All_LAPP_individual_Get_BY_ID(this.Individual_Id);
                if (objLAPP_individual != null && this.Individual_Id > 0)
                {
                    txtSsn.Text = objLAPP_individual.SSN;
                    ddlStatus.SelectedValue = objLAPP_individual.Status_ID.ToString();
                    //ddlAppStatus.SelectedValue = objLAPP_individual.Status_ID.ToString();
                    txtDOB.Text = objLAPP_individual.Dob;
                    //ddlGender.SelectedValue = objLAPP_individual.Gender;
                    txtPlaceOfBirth.Text = objLAPP_individual.PlaceOfBirth;
                    //txtComments.Text = objLAPP_individual.Comments;
                    txtCreated.Text = objLAPP_individual.Created_On.ToShortDateString();
                    txtModified.Text = objLAPP_individual.Modified_On.ToShortDateString();
                    txtFirstName.Text = objLAPP_individual.First_Name;
                    txtLastName.Text = objLAPP_individual.Last_Name;
                    txtMiddleName.Text = objLAPP_individual.Middle_Name;
                    //chkBadAddress.Checked = objLAPP_individual.Is_Mark_As_Bad_Address;
                    //statusbar.Style["background-color"] = "#" + objLAPP_individual.Color_Code;

                    objlapp_individual_application_lk = objlapp_individual_application_lkBAL.Get_lapp_individual_application_lk_By_Individual_Id(this.Individual_Id);
                    if (objlapp_individual_application_lk != null)
                    {
                        objLAPP_Individual_Login_Info = objLAPP_Individual_Login_InfoBAL.Get_lapp_applicant_individual_login_info_By_Applicant_ID(objlapp_individual_application_lk.Applicant_ID);
                        if (objLAPP_Individual_Login_Info != null)
                        {
                            txtWebPassword.Text = objLAPP_Individual_Login_Info.Applicant_Password;
                            txtWebPassword.TextMode = TextBoxMode.SingleLine;
                            txtWebUserName.Text = objLAPP_Individual_Login_Info.Applicant_Email;
                            txtWebPassword.Enabled = false;
                            txtWebUserName.Enabled = false;
                        }
                    }


                    LAPP_user_membershipBAL objUMemberShipBAL = new LAPP_user_membershipBAL();
                    LAPP_user_membership objMember = new LAPP_user_membership();
                    LAPP_user_membership objUserMemberShip = objUMemberShipBAL.Get_User_Membership_By_User_Id_Qry(Convert.ToInt32(objLAPP_individual.Created_By));
                    if (objUserMemberShip != null)
                    {
                        txtCreatedBy.Text = objUserMemberShip.first_name + " " + objUserMemberShip.last_name;
                    }

                    objUserMemberShip = new LAPP_user_membership();
                    objUserMemberShip = objUMemberShipBAL.Get_User_Membership_By_User_Id_Qry(Convert.ToInt32(objLAPP_individual.Modified_By));
                    if (objUserMemberShip != null)
                    {
                        txtModifiedBy.Text = objUserMemberShip.first_name + " " + objUserMemberShip.last_name;
                    }

                    //hidIndividualId.Value = this.Individual_Id.ToString();
                    //frmProfileUpload.Attributes.Add("src", "../Modules/Individual/ImageUpload.aspx?IndividualId=" + this.Individual_Id + "&DocumentType=0&DocumentTypeName=Profile");
                    //string Profile_Image_Url = "~/ViewImage.aspx?qindi=" + Encryption.Base64Encrypt(this.Individual_Id.ToString());
                    //IndvidualimgProfile.ImageUrl = VirtualPathUtility.ToAbsolute(Profile_Image_Url);
                    //hidPermanentUrl.Value = VirtualPathUtility.ToAbsolute(Profile_Image_Url);
                }
                else
                {
                    //IndvidualimgProfile.ImageUrl = "~/ViewImage.aspx?qindi=1";
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = "Error Occured-ucAddress.ascx-FetchValueFromControleEdit";

                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }

        public void PageOnLoad()
        {
            BindDDLStatus();
            FillControl();
            objindividual_names = objLAPP_individual_namesBAL.Get_by_LAPP_individual_names_by_Indiviual_Id(this.Individual_Id);

            if (objindividual_names != null && objindividual_names.Name_id > 0)
            {
                txtFirstName.Enabled = false;
                txtLastName.Enabled = false;
                txtMiddleName.Enabled = false;
            }
            else
            {
                txtFirstName.Enabled = true;
                txtLastName.Enabled = true;
                txtMiddleName.Enabled = true;
            }
        }

        #endregion

        #region Exception
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

        #region Custom Field
        protected void btnAddField_Click(object sender, EventArgs e)
        {
            sDynamicFields objDynamicField = new sDynamicFields();
            List<sDynamicFields> lsDynamicField = new List<sDynamicFields>();
            if (Session["lsDynamicField"] != null)
            {
                lsDynamicField = (List<sDynamicFields>)Session["lsDynamicField"];
            }
            string Label = txtLabel.Text.Trim();
            int InputType = Convert.ToInt32(ddlInputType.SelectedValue);

            if (InputType == (int)eInputType.Textbox)
            {
                objDynamicField = new sDynamicFields();
                objDynamicField.Label = Label;
                objDynamicField.CustomField = "<input type='text' placeholder='" + Label + "' id='txt" + Label + "' />";
            }
            else if (InputType == (int)eInputType.Checkbox)
            {
                objDynamicField = new sDynamicFields();
                objDynamicField.Label = Label;
                objDynamicField.CustomField = "<input type='checkbox'  id='chk" + Label + "' />";
            }
            else if (InputType == (int)eInputType.Dropdown)
            {
                objDynamicField = new sDynamicFields();
                objDynamicField.Label = Label;
                objDynamicField.CustomField = "<select  id='ddl" + Label + "' ><option>select</option></select>";
            }
            else if (InputType == (int)eInputType.RadioButton)
            {
                objDynamicField = new sDynamicFields();
                objDynamicField.Label = Label;
                objDynamicField.CustomField = "<input type='radio'  id='rbl" + Label + "'/>";
            }
            else if (InputType == (int)eInputType.Textarea)
            {
                objDynamicField = new sDynamicFields();
                objDynamicField.Label = Label;
                objDynamicField.CustomField = "<textarea   id='txt" + Label + "' ></textarea>";
            }
            lsDynamicField.Add(objDynamicField);
            Session["lsDynamicField"] = lsDynamicField;
            rptCustomField.DataSource = lsDynamicField;
            rptCustomField.DataBind();
        }
        #endregion

        protected void btnOpenCustomField_Click(object sender, EventArgs e)
        {
            pnlField.Visible = true;
            trCustomFieldButton.Visible = false;
        }
        protected void btnCancelField_Click(object sender, EventArgs e)
        {
            pnlField.Visible = false;
            trCustomFieldButton.Visible = true;
        }




        #region Name
        public event EventHandler UCClickName;
        public event EventHandler UCClick21;

        #region PageEventHandler

        //protected void btnShowHistory_Click(object sender, EventArgs e)
        //{
        //    btnShowHistory.Enabled = false;
        //    lnkNext.Enabled = true;
        //    lnkPrev.Enabled = true;
        //    btnShowCurrent.Enabled = true;
        //}

        //protected void btnShowCurrent_Click(object sender, EventArgs e)
        //{
        //    btnShowHistory.Enabled = true;
        //    lnkNext.Enabled = false;
        //    lnkPrev.Enabled = false;
        //    btnShowCurrent.Enabled = false;
        //}


        protected void lnkCancel_Click1(object sender, EventArgs e)
        {
            ////DivbtnHistory.Visible = true;
            ltrName.Text = "";
            pnlAddNew.Visible = false;
            pnlAddNewButton.Visible = true;
            ClearControl();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            string Validation = Validate_ControlsSave();
            if (Validation == "")
            {
                Save();
                BindGrid();
                ClearControl();
                if (UCClickName != null) UCClickName(this, e);

            }
            else
            {
                MessageBox.Show(this.Page, Validation, 2);
                return;
            }
            ////DivbtnHistory.Visible = true;
            pnlAddNew.Visible = false;
            pnlAddNewButton.Visible = true;
        }

        protected void btnSaveName_Click(object sender, EventArgs e)
        {
            pnlAddNew.Visible = false;
            pnlAddNewButton.Visible = true;
        }

        protected void lnkCancel_Click(object sender, EventArgs e)
        {
            ltrName.Text = "";
            pnlAddNew.Visible = false;
            pnlAddNewButton.Visible = true;
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            ////DivbtnHistory.Visible = false;
            ltrName.Text = "";
            pnlAddNew.Visible = true;
            pnlAddNewButton.Visible = false;
            this.EditIndex = -1;
            BindGrid();
        }

        protected void lnkCancelUpdate_Click(object sender, EventArgs e)
        {
            //DivbtnHistory.Visible = true;
            ltrName.Text = "";
            this.EditIndex = -1;
            BindGrid();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            try
            {
                if (this.Name_id > 0)
                {
                    string Validation = Validate_ControlsEdit();
                    if (Validation == "")
                    {
                        objindividual_names = FetchValueFromControlEdit();
                        if (objindividual_names != null)
                        {
                            objLAPP_individual_namesBAL.Update_LAPP_individual_names(objindividual_names, this.Name_id);
                            ltrName.Text = MessageBox.BuildValidationMessage("Updated Successfully", 1);
                            this.EditIndex = -1;
                            this.Name_id = 0;
                            BindGrid();
                            if (UCClickName != null) UCClickName(this, e);
                        }
                    }
                    else
                    {
                        MessageBox.Show(this.Page, Validation, 2);
                        return;
                    }
                }
                //DivbtnHistory.Visible = true;
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

        protected void imgbtnEdit_Click(object sender, EventArgs e)
        {
            //DivbtnHistory.Visible = false;
            pnlAddNew.Visible = false;
            pnlAddNewButton.Visible = true;
            this.EditIndex = -1;

            ImageButton btnEdit = (ImageButton)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
                this.Name_id = ID;
                this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                BindGrid();

                DropDownList ddlStatusEdit = gvName.Rows[this.EditIndex].FindControl("ddlStatusEdit") as DropDownList;
                if (ddlStatusEdit != null)
                {
                    BindDDLStatusEdit(ddlStatusEdit);
                }
                //this. = ID;
                FillControl(gvName, this.EditIndex);
            }
        }

        protected void imgBtnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                ImageButton BtnDelete = (ImageButton)sender;
                if (BtnDelete != null)
                {
                    int ID = Convert.ToInt32(BtnDelete.CommandArgument);
                    this.Name_id = ID;
                    objindividual_names = objLAPP_individual_namesBAL.Get_LAPP_individual_names_Get_BY_ID(this.Name_id);
                    if (objindividual_names != null)
                    {
                        objindividual_names.Is_Deleted = true;
                        objLAPP_individual_namesBAL.Update_LAPP_individual_names(objindividual_names, objindividual_names.Name_id);
                        ltrName.Text = MessageBox.BuildValidationMessage("Deleted Successfully", 1);
                    }
                }
                BindGrid();
            }
            catch (Exception ex)
            {

            }
        }

        #endregion

        #region ClassProperties

        //public int EditIndex
        //{
        //    get
        //    {
        //        if (ViewState["EditIndex"] != null)
        //        {
        //            return Convert.ToInt32(ViewState["EditIndex"]);

        //        }
        //        else
        //        {
        //            return -1;
        //        }
        //    }
        //    set
        //    {
        //        ViewState["EditIndex"] = value;
        //    }
        //}

        //public int Name_id
        //{
        //    get
        //    {
        //        if (ViewState["Name_id"] != null)
        //        {
        //            return Convert.ToInt32(ViewState["Name_id"]);
        //        }
        //        else
        //        {
        //            return 0;
        //        }
        //    }
        //    set
        //    {
        //        ViewState["Name_id"] = value;
        //    }
        //}

        //public int Individual_Id
        //{
        //    get
        //    {
        //        if (ViewState["Individual_Id"] != null)
        //        {
        //            return Convert.ToInt32(ViewState["Individual_Id"]);
        //        }
        //        else
        //        {
        //            return 0;
        //        }
        //    }
        //    set
        //    {
        //        ViewState["Individual_Id"] = value;
        //    }

        //}

        #endregion

        #region ClassMembers

        //LAPP_exception_log objExLog = new LAPP_exception_log();
        //LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
        //LAPP_audit_info objAuditInfo = new LAPP_audit_info();
        //LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
        //LAPP_individual_names objindividual_names = new LAPP_individual_names();
        //LAPP_individual_namesBAL objLAPP_individual_namesBAL = new LAPP_individual_namesBAL();
        //LAPP_application_statusBAL objLAPP_application_statusBAL = new LAPP_application_statusBAL();

        #endregion

        #region Public_Methods

        public void BindGrid()
        {
            objindividual_names = new LAPP_individual_names();
            List<LAPP_individual_names> lstLAPP_individual_names = new List<LAPP_individual_names>();
            lstLAPP_individual_names = objLAPP_individual_namesBAL.Get_LAPP_individual_names_Get_BY_Indiviual_Id(this.Individual_Id);
            if (lstLAPP_individual_names != null && lstLAPP_individual_names.Count > 0)
            {
                lstLAPP_individual_names = lstLAPP_individual_names.OrderByDescending(x => x.Created_On).ToList();
                gvName.DataSource = lstLAPP_individual_names;

                gvName.EditIndex = this.EditIndex;
                gvName.DataBind();

                if (this.EditIndex >= 0)
                {
                    gvName.Rows[this.EditIndex].CssClass = "RowInEditMode";
                    gvName.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "4");
                    gvName.Rows[this.EditIndex].Cells[1].Visible = false;
                    // gvName.Rows[this.EditIndex].Cells[2].Visible = false;
                    //gvName.Rows[this.EditIndex].Cells[3].Visible = false;
                    //gvName.Rows[this.EditIndex].Cells[4].Visible = false;

                }
            }
        }
        public void FillControl(GridView gv, int EditInd)
        {
            try
            {
                TextBox txtCommentsEdit = gv.Rows[this.EditIndex].FindControl("txtCommentsEdit") as TextBox;
                DropDownList ddlStatusEdit = gv.Rows[this.EditIndex].FindControl("ddlStatusEdit") as DropDownList;
                TextBox txtDateOfBeganEdit = gv.Rows[this.EditIndex].FindControl("txtDateOfBeganEdit") as TextBox;
                TextBox txtDateOfEndedEdit = gv.Rows[this.EditIndex].FindControl("txtDateOfEndedEdit") as TextBox;
                TextBox txtPreviousNameEdit = gv.Rows[this.EditIndex].FindControl("txtPreviousNameEdit") as TextBox;
                TextBox txtSuffixEdit = gv.Rows[this.EditIndex].FindControl("txtSuffixEdit") as TextBox;
                TextBox txtMiddleNameEdit = gv.Rows[this.EditIndex].FindControl("txtMiddleNameEdit") as TextBox;
                TextBox txtFirstNameEdit = gv.Rows[this.EditIndex].FindControl("txtFirstNameEdit") as TextBox;
                TextBox txtLastNameEdit = gv.Rows[this.EditIndex].FindControl("txtLastNameEdit") as TextBox;
                TextBox txtCreatedEdit = gv.Rows[this.EditIndex].FindControl("txtCreatedEdit") as TextBox;
                TextBox txtCreatedByEdit = gv.Rows[this.EditIndex].FindControl("txtCreatedByEdit") as TextBox;
                TextBox txtModifiedEdit = gv.Rows[this.EditIndex].FindControl("txtModifiedEdit") as TextBox;
                TextBox txtModifiedByEdit = gv.Rows[this.EditIndex].FindControl("txtModifiedByEdit") as TextBox;
                objindividual_names = objLAPP_individual_namesBAL.Get_LAPP_individual_names_Get_BY_ID(this.Name_id);
                if (objindividual_names != null)
                {
                    txtLastNameEdit.Text = objindividual_names.Last_Name;
                    txtFirstNameEdit.Text = objindividual_names.First_Name;
                    txtMiddleNameEdit.Text = objindividual_names.Middle_Name;
                    txtPreviousNameEdit.Text = objindividual_names.Maiden_Name;
                    txtSuffixEdit.Text = objindividual_names.Suffix;
                    ddlStatusEdit.SelectedValue = objindividual_names.Status_ID.ToString();
                    txtDateOfBeganEdit.Text = objindividual_names.Date_Of_Beginning;
                    txtDateOfEndedEdit.Text = objindividual_names.Date_Of_Ending;
                    txtCommentsEdit.Text = objindividual_names.Comments;
                    txtCreatedEdit.Text = objindividual_names.Created_On.ToShortDateString();
                    txtCreatedByEdit.Text = objindividual_names.Created_by_Name;
                    txtModifiedEdit.Text = objindividual_names.Modified_On.ToShortDateString();
                    txtModifiedByEdit.Text = objindividual_names.Modified_by_Name;

                    txtCreatedEdit.Enabled = false;
                    txtCreatedByEdit.Enabled = false;
                    txtModifiedEdit.Enabled = false;
                    txtModifiedByEdit.Enabled = false;
                }


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
        //public LAPP_exception_log Fetchlog()
        //{
        //    objExLog.User_Id = UIHelper.UserIDBySession();
        //    objExLog.Url = string.Empty;
        //    objExLog.Reference_Type_Id = string.Empty;
        //    objExLog.Reference_Id = 1;
        //    //objExLog.Thread = ErrorMessage.ErrorOccured();
        //    objExLog.Date = DateTime.Now;
        //    objExLog.Level = "Low";
        //    objExLog.Logger = "errorLogger";
        //    return objExLog;
        //}

        //public void Save()
        //{
        //    try
        //    {
        //        objindividual_names = FetchValueFromControl();
        //        if (objindividual_names != null && this.Name_id > 0)
        //        {
        //            objLAPP_individual_namesBAL.Update_LAPP_individual_names(objindividual_names, this.Name_id);
        //            ltrName.Text = MessageBox.BuildValidationMessage("Updated Successfully", 1);
        //        }
        //        else
        //        {
        //            objLAPP_individual_namesBAL.Save_LAPP_individual_names(objindividual_names);
        //            ltrName.Text = MessageBox.BuildValidationMessage("Saved Successfully", 1);
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        objExLog = Fetchlog();
        //        objExLog.Thread = ex.StackTrace.ToString();

        //        objExLog.Message = ex.Message;
        //        objExLog.Exception = ex.ToString();
        //        objExLog.Context = ex.Source;
        //        objexLogBal.Save_LAPP_exception_log(objExLog);
        //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
        //        MessageBox.Show(this.Page, ex.Message, 2);
        //    }

        //}

        //public void BindDDLStatus()
        //{
        //    List<LAPP_application_status> lstLAPP_application_status = new List<LAPP_application_status>();
        //    lstLAPP_application_status = objLAPP_application_statusBAL.LAPP_application_status_get_by_Status_Type_Id((int)eTabStatusType.Names);
        //    if (lstLAPP_application_status != null && lstLAPP_application_status.Count > 0)
        //    {
        //        ddlStatus.DataSource = lstLAPP_application_status;
        //        ddlStatus.DataTextField = "Name";
        //        ddlStatus.DataValueField = "status_id";
        //        ddlStatus.DataBind();
        //    }
        //    ddlStatus.Items.Insert(0, new ListItem("Select", "-1"));
        //}

        //public void BindDDLStatusEdit(DropDownList ddlStatusEdit)
        //{
        //    List<LAPP_application_status> lstLAPP_application_status = new List<LAPP_application_status>();
        //    lstLAPP_application_status = objLAPP_application_statusBAL.LAPP_application_status_get_by_Status_Type_Id((int)eTabStatusType.Names);
        //    if (lstLAPP_application_status != null && lstLAPP_application_status.Count > 0)
        //    {
        //        ddlStatusEdit.DataSource = lstLAPP_application_status;
        //        ddlStatusEdit.DataTextField = "Name";
        //        ddlStatusEdit.DataValueField = "status_id";
        //        ddlStatusEdit.DataBind();
        //    }
        //    //ddlStatusEdit.Items.Insert(0, new ListItem("Select", "-1"));
        //}
        //public void ClearControl()
        //{
        //    txtFirstName.Text = string.Empty;
        //    txtLastName.Text = string.Empty;
        //    txtMiddleName.Text = string.Empty;
        //    txtPreviousName.Text = string.Empty;
        //    txtSuffix.Text = string.Empty;
        //    ddlStatus.SelectedValue = "-1";
        //    txtDateOfBegan.Text = string.Empty;
        //    txtDateOfEnded.Text = string.Empty;
        //    txtComments.Text = string.Empty;
        //}
        public void OnPageLoad()
        {
            BindDDLStatus();
            BindGrid();

        }
        #endregion

        #region Private_Methods

        //private LAPP_individual_names FetchValueFromControl()
        //{
        //    try
        //    {
        //        objindividual_names = new LAPP_individual_names();
        //        objindividual_names.First_Name = txtFirstName.Text.Trim();
        //        objindividual_names.Last_Name = txtLastName.Text.Trim();
        //        objindividual_names.Middle_Name = txtMiddleName.Text.Trim();
        //        objindividual_names.Suffix = txtSuffix.Text.Trim();
        //        objindividual_names.Maiden_Name = txtPreviousName.Text;
        //        objindividual_names.Individual_Id = this.Individual_Id;
        //        objindividual_names.Status_ID = Convert.ToInt32(ddlStatus.SelectedValue);
        //        objindividual_names.Status = ddlStatus.SelectedItem.Text;
        //        objindividual_names.Date_Of_Beginning = txtDateOfBegan.Text.Trim();
        //        objindividual_names.Date_Of_Ending = txtDateOfEnded.Text.Trim();
        //        objindividual_names.Comments = txtComments.Text.Trim();
        //        objindividual_names.Is_Active = true;
        //        objindividual_names.Is_Deleted = false;
        //        objindividual_names.Created_On = DateTime.Now;
        //        objindividual_names.Created_By = UIHelper.UserIDBySession().ToString();
        //        objindividual_names.Modified_On = DateTime.Now;
        //        objindividual_names.Modified_By = "";


        //    }
        //    catch (Exception ex)
        //    {
        //        objExLog = Fetchlog();
        //        objExLog.Thread = ex.StackTrace.ToString();

        //        objExLog.Message = ex.Message;
        //        objExLog.Exception = ex.ToString();
        //        objExLog.Context = ex.Source;
        //        objexLogBal.Save_LAPP_exception_log(objExLog);
        //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
        //        MessageBox.Show(this.Page, ex.Message, 2);
        //    }
        //    return objindividual_names;
        //}
        private LAPP_individual_names FetchValueFromControlEdit()
        {

            try
            {
                TextBox txtLastNameEdit = gvName.Rows[this.EditIndex].FindControl("txtLastNameEdit") as TextBox;
                TextBox txtFirstNameEdit = gvName.Rows[this.EditIndex].FindControl("txtFirstNameEdit") as TextBox;
                TextBox txtMiddleNameEdit = gvName.Rows[this.EditIndex].FindControl("txtMiddleNameEdit") as TextBox;
                TextBox txtSuffixEdit = gvName.Rows[this.EditIndex].FindControl("txtSuffixEdit") as TextBox;
                TextBox txtPreviousNameEdit = gvName.Rows[this.EditIndex].FindControl("txtPreviousNameEdit") as TextBox;
                DropDownList ddlStatusEdit = gvName.Rows[this.EditIndex].FindControl("ddlStatusEdit") as DropDownList;
                TextBox txtDateOfBeganEdit = gvName.Rows[this.EditIndex].FindControl("txtDateOfBeganEdit") as TextBox;
                TextBox txtDateOfEndedEdit = gvName.Rows[this.EditIndex].FindControl("txtDateOfEndedEdit") as TextBox;
                TextBox txtCommentsEdit = gvName.Rows[this.EditIndex].FindControl("txtCommentsEdit") as TextBox;

                TextBox txtCreatedEdit = gvName.Rows[this.EditIndex].FindControl("txtCreatedEdit") as TextBox;
                TextBox txtCreatedByEdit = gvName.Rows[this.EditIndex].FindControl("txtCreatedByEdit") as TextBox;
                TextBox txtModifiedEdit = gvName.Rows[this.EditIndex].FindControl("txtModifiedEdit") as TextBox;
                TextBox txtModifiedByEdit = gvName.Rows[this.EditIndex].FindControl("txtModifiedByEdit") as TextBox;

                objindividual_names = objLAPP_individual_namesBAL.Get_LAPP_individual_names_Get_BY_ID(this.Name_id);
                if (objindividual_names != null)
                {
                    objindividual_names = new LAPP_individual_names();
                    objindividual_names.First_Name = txtFirstNameEdit.Text.Trim();
                    objindividual_names.Last_Name = txtLastNameEdit.Text.Trim();
                    objindividual_names.Middle_Name = txtMiddleNameEdit.Text.Trim();
                    objindividual_names.Suffix = txtSuffixEdit.Text.Trim();
                    objindividual_names.Maiden_Name = txtPreviousNameEdit.Text;
                    objindividual_names.Individual_Id = this.Individual_Id;
                    objindividual_names.Status_ID = Convert.ToInt32(ddlStatusEdit.SelectedValue);
                    objindividual_names.Status = ddlStatusEdit.SelectedItem.Text;
                    objindividual_names.Date_Of_Beginning = txtDateOfBeganEdit.Text.Trim();
                    objindividual_names.Date_Of_Ending = txtDateOfEndedEdit.Text.Trim();
                    objindividual_names.Comments = txtCommentsEdit.Text.Trim();
                    objindividual_names.Modified_On = DateTime.Now;
                    objindividual_names.Modified_By = UIHelper.UserIDBySession().ToString();
                    objindividual_names.Created_By = UIHelper.UserIDBySession().ToString();
                    objindividual_names.Created_On = DateTime.Now;

                    txtCreatedEdit.Enabled = false;
                    txtCreatedByEdit.Enabled = false;
                    txtModifiedByEdit.Enabled = false;
                    txtModifiedEdit.Enabled = false;

                }
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
            return objindividual_names;
        }
        //private string Validate_ControlsSave()
        //{
        //    string validateMsg = "";
        //    string vmsg = "";
        //    ltrName.Text = "";
        //    try
        //    {
        //        validateMsg += ValidationHelper.IsOnlyAlphabet(txtLastName.Text, "<li>Please enter last name</li>");
        //        validateMsg += ValidationHelper.IsOnlyAlphabet(txtFirstName.Text, "<li>Please enter first name</li>");
        //        validateMsg += ValidationHelper.IsRequiredDDL(ddlStatus.Text, "<li>Please select status</li>");
        //        validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtDateOfBegan.Text, "<li>Please enter valid date of beginning</li>");
        //        validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtDateOfEnded.Text, "<li>Please Enter valid date of ending</li>");


        //        if (!String.IsNullOrEmpty(validateMsg))
        //        {
        //            vmsg = validateMsg;
        //            ltrName.Text = MessageBox.BuildValidationMessage(vmsg, 2);

        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        objExLog = Fetchlog();
        //        objExLog.Thread = ex.StackTrace.ToString();
        //        objExLog.Message = ex.Message;
        //        objExLog.Exception = ex.ToString();
        //        objExLog.Context = ex.Source;
        //        objexLogBal.Save_LAPP_exception_log(objExLog);
        //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
        //        MessageBox.Show(this.Page, ex.Message, 2);

        //    }
        //    return vmsg;
        //}
        private string Validate_ControlsEdit()
        {
            string validateMsg = "";
            string vmsg = "";
            ltrName.Text = "";
            try
            {
                TextBox txtLastNameEdit = gvName.Rows[this.EditIndex].FindControl("txtLastNameEdit") as TextBox;
                TextBox txtFirstNameEdit = gvName.Rows[this.EditIndex].FindControl("txtFirstNameEdit") as TextBox;
                DropDownList ddlStatusEdit = gvName.Rows[this.EditIndex].FindControl("ddlStatusEdit") as DropDownList;
                TextBox txtDateOfBeganEdit = gvName.Rows[this.EditIndex].FindControl("txtDateOfBeganEdit") as TextBox;
                TextBox txtDateOfEndedEdit = gvName.Rows[this.EditIndex].FindControl("txtDateOfEndedEdit") as TextBox;

                validateMsg += ValidationHelper.IsOnlyAlphabet(txtLastNameEdit.Text, "<li>Please enter last name</li>");
                validateMsg += ValidationHelper.IsOnlyAlphabet(txtFirstNameEdit.Text, "<li>Please enter first name</li>");
                // validateMsg += ValidationHelper.IsRequiredDDL(ddlStatus.SelectedValue, "<li>Please Select Status</li>");
                validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtDateOfBeganEdit.Text, "<li>Please enter valid date of beginning</li>");
                validateMsg += ValidationHelper.IsValidDateMMDDYYYY(txtDateOfEndedEdit.Text, "<li>Please enter valid date of ending</li>");


                if (!String.IsNullOrEmpty(validateMsg))
                {
                    vmsg = validateMsg;
                    ltrName.Text = MessageBox.BuildValidationMessage(vmsg, 2);

                }
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
            return vmsg;
        }

        #endregion

        #endregion 
    }
}