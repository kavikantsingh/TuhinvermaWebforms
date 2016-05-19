using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using LAPP.ENTITY;
using LAPP.BAL;
using LAPP.ENTITY.Enumerations;
using System.IO;

namespace NVBMT_WebProject.Modules.IndiVidual
{
    public partial class ucDucuments : System.Web.UI.UserControl
    {

        #region ClassMembers
        lapp_documents objlapp_documents = new lapp_documents();
        lapp_documentsBAL objlapp_documentsBAL = new lapp_documentsBAL();
        LAPP_file_holder objLAPP_file_holder = new LAPP_file_holder();
        LAPP_file_holderBAL objLAPP_file_holderBAL = new LAPP_file_holderBAL();

        LAPP_application_status objLAPP_application_status = new LAPP_application_status();
        LAPP_application_statusBAL objLAPP_application_statusBAL = new LAPP_application_statusBAL();

        LAPP_exception_log objExLog = new LAPP_exception_log();
        LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
        LAPP_audit_info objAuditInfo = new LAPP_audit_info();
        LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
        #endregion

        #region ClassProperties

        public int Document_Id
        {
            get
            {
                if (ViewState["Document_Id"] != null)
                {
                    return Convert.ToInt32(ViewState["Document_Id"]);
                }
                else
                {
                    return 1;
                }
            }
            set
            {
                ViewState["Document_Id"] = value;
            }
        }
        public int File_Id
        {
            get
            {
                if (ViewState["File_Id"] != null)
                {
                    return Convert.ToInt32(ViewState["File_Id"]);
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                ViewState["File_Id"] = value;
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
        public SortDirection GridViewShortDirection
        {
            get
            {
                if (ViewState["sortDirection"] == null)
                    ViewState["sortDirection"] = SortDirection.Ascending;
                return (SortDirection)ViewState["sortDirection"];
            }
            set
            {
                ViewState["sortDirection"] = value;
            }
        }
        public int EditIndexDocuments
        {
            get
            {
                if (ViewState["EditIndexDocuments"] != null)
                {
                    return Convert.ToInt32(ViewState["EditIndexDocuments"]);

                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["EditIndexDocuments"] = value;
            }
        }

        #endregion

        #region Page Event Handlers

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
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
        protected void gvDocuments_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            if (GridViewShortDirection == SortDirection.Ascending)
            {
                GridViewShortDirection = SortDirection.Descending;
            }
            else
            {
                GridViewShortDirection = SortDirection.Ascending;
            }
            gvDocuments.PageIndex = e.NewPageIndex;
            this.BindGridDocuments();
        }

        protected void btnBindGridCertificateofCompletion_Click(object sender, EventArgs e)
        {
            BindGridDocuments();
        }
        protected void imgBtnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                ImageButton lnkBtn = (ImageButton)sender;
                if (lnkBtn != null)
                {
                    int ID = Convert.ToInt32(lnkBtn.CommandArgument);
                    this.Document_Id = ID;
                    objlapp_documents = objlapp_documentsBAL.Get_lapp_documents_Get_by_Document_Id(ID);
                    if (objlapp_documents != null)
                    {
                        objlapp_documents.Is_Deleted = true;
                        objlapp_documentsBAL.Update_lapp_documents(objlapp_documents, objlapp_documents.Document_Id);
                    }
                }
                BindGridDocuments();
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = "Error Occured-ucDocuments.ascx-imgBtnDelete_Click";

                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }

        #endregion

        #region Private Methods



        #endregion

        #region Public Methods

        public void BindGridDocuments()
        {
            try
            {
                List<LAPP_file_holder> lstLAPP_file_holder = new List<LAPP_file_holder>();
                lstLAPP_file_holder = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Type_Id((int)eApplicationType.NewSchoolApplication, this.Individual_Id);
                if (lstLAPP_file_holder != null && lstLAPP_file_holder.Count > 0)
                {
                    lstLAPP_file_holder = lstLAPP_file_holder.Where(x => x.File_Type_Id != 0).ToList();
                    lstLAPP_file_holder = lstLAPP_file_holder.OrderByDescending(x => x.Created_On).ToList();


                }
                gvDocuments.DataSource = lstLAPP_file_holder;
                gvDocuments.DataBind();
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = "Error Occured-ucDocuments.ascx-BindGridDocuments";

                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }

        public void OnPageLoadDocument()
        {
            BindGridDocuments();
            BindGridNewApplication();
            BindGridTransferApp();
            BindGridRenewals();
            BindGridTemporary();
            BindGridDuplicate();
        }

        public LAPP_exception_log Fetchlog()
        {
            objExLog.User_Id = UIHelper.UserIDBySession();
            objExLog.Url = string.Empty;
            objExLog.Reference_Type_Id = string.Empty;
            objExLog.Reference_Id = 1;
            objExLog.Thread = ErrorMessage.ErrorOccured();
            objExLog.Date = DateTime.Now;
            objExLog.Level = "Low";
            objExLog.Logger = "errorLogger";
            return objExLog;
        }

        #endregion

        #region Bind Grids

        public void BindGridNewApplication()
        {
            try
            {
                List<LAPP_file_holder> lstLAPP_file_holder = new List<LAPP_file_holder>();
                lstLAPP_file_holder = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Type_Id((int)eApplicationType.NewSchoolApplication, this.Individual_Id);
                if (lstLAPP_file_holder != null && lstLAPP_file_holder.Count > 0)
                {
                    lstLAPP_file_holder = lstLAPP_file_holder.Where(x => x.File_Type_Id != 0).ToList();
                    lstLAPP_file_holder = lstLAPP_file_holder.OrderByDescending(x => x.Created_On).ToList();

                }
                gvNewApplication.DataSource = lstLAPP_file_holder;
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
                List<LAPP_file_holder> lstLAPP_file_holder = new List<LAPP_file_holder>();
                lstLAPP_file_holder = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Type_Id((int)eApplicationType.TransferApplication, this.Individual_Id);
                if (lstLAPP_file_holder != null && lstLAPP_file_holder.Count > 0)
                {
                    lstLAPP_file_holder = lstLAPP_file_holder.Where(x => x.File_Type_Id != 0).ToList();
                    lstLAPP_file_holder = lstLAPP_file_holder.OrderByDescending(x => x.Created_On).ToList();


                }
                gvTransferApplication.DataSource = lstLAPP_file_holder;
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
                List<LAPP_file_holder> lstLAPP_file_holder = new List<LAPP_file_holder>();
                lstLAPP_file_holder = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Type_Id((int)eApplicationType.RenewalApplication, this.Individual_Id);//RenewalApplication);
                if (lstLAPP_file_holder != null && lstLAPP_file_holder.Count > 0)
                {
                    lstLAPP_file_holder = lstLAPP_file_holder.Where(x => x.File_Type_Id != 0).ToList();
                    lstLAPP_file_holder = lstLAPP_file_holder.OrderByDescending(x => x.Created_On).ToList();

                }
                gvRenewals.DataSource = lstLAPP_file_holder;
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
                List<LAPP_file_holder> lstLAPP_file_holder = new List<LAPP_file_holder>();
                lstLAPP_file_holder = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Type_Id((int)eApplicationType.TemporaryApplication, this.Individual_Id);//TemporaryApplication);
                if (lstLAPP_file_holder != null && lstLAPP_file_holder.Count > 0)
                {
                    lstLAPP_file_holder = lstLAPP_file_holder.Where(x => x.File_Type_Id != 0).ToList();
                    lstLAPP_file_holder = lstLAPP_file_holder.OrderByDescending(x => x.Created_On).ToList();

                }
                gvTemporaryApplication.DataSource = lstLAPP_file_holder;
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
                List<LAPP_file_holder> lstLAPP_file_holder = new List<LAPP_file_holder>();
                lstLAPP_file_holder = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Type_Id((int)eApplicationType.DuplicateLicenseApplication, this.Individual_Id);//DuplicateLicenseApplication);
                if (lstLAPP_file_holder != null && lstLAPP_file_holder.Count > 0)
                {
                    lstLAPP_file_holder = lstLAPP_file_holder.Where(x => x.File_Type_Id != 0).ToList();
                    lstLAPP_file_holder = lstLAPP_file_holder.OrderByDescending(x => x.Created_On).ToList();

                }
                gvDuplicateLicense.DataSource = lstLAPP_file_holder;
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
}