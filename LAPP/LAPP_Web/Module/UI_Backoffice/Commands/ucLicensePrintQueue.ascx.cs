using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.ENTITY;
using LAPP.BAL;

    public partial class ucLicensePrintQueue : System.Web.UI.UserControl
    {
        #region Class Members

        LAPP_exception_log objExLog = new LAPP_exception_log();
        LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
        LAPP_audit_info objAuditInfo = new LAPP_audit_info();
        LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
        lapp_license_print_queue_holder objPrintQueue = new lapp_license_print_queue_holder();
        lapp_license_print_queue_holderBAL objPrintBal = new lapp_license_print_queue_holderBAL();

        #endregion

        #region Class Property

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
        public int Queue_Id
        {
            get
            {
                if (ViewState["Queue_Id"] != null)
                {
                    return Convert.ToInt32(ViewState["Queue_Id"]);
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                ViewState["Queue_Id"] = value;
            }
        }
        public List<string> lstPrintQueue
        {
            get
            {
                if (Session["lstPrintQueue"] != null)
                {
                    return (List<string>)(Session["lstPrintQueue"]);
                }
                else
                {
                    return null;
                }

            }
            set
            {
                Session["lstPrintQueue"] = value;
            }
        }

        #endregion

        #region Page Event Handler

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvPrintQueue.AllowPaging = true;
                Session.Remove("lstPrintQueue");
                BindGrid();
            }
        }




        //protected void btnPrint_Click(object sender, EventArgs e)
        //{

        //    lapp_license_print_queue_holder objPrint = new lapp_license_print_queue_holder();
        //    lapp_license_print_queue_holderBAL objPrintBal = new lapp_license_print_queue_holderBAL();
        //    List<string> PrintQueue = new List<string>();
        //    for (int i = 0; i < gvPrintQueue.Rows.Count; i++)
        //    {
        //        CheckBox chkSelect = (CheckBox)
        //           gvPrintQueue.Rows[i].Cells[0].FindControl("chkSelect");
        //        HiddenField hfID = (HiddenField)
        //           gvPrintQueue.Rows[i].Cells[0].FindControl("hfID");

        //        HiddenField hfID2 = (HiddenField)
        //         gvPrintQueue.Rows[i].Cells[0].FindControl("hfID2");

        //        this.Queue_Id = Convert.ToInt32(hfID.Value);
        //        int Permit_Holder_Id = Convert.ToInt32(hfID2.Value);
        //        if (chkSelect != null)
        //        {
        //            if (chkSelect.Checked)
        //            {
        //                objPrint = objPrintBal.Get_lapp_license_print_queue_holder_BY_ID(Queue_Id);
        //                if (objPrint != null)
        //                {
        //                    objPrint.Is_Printed = true;
        //                    objPrint.Printed_On = DateTime.Now.ToString();
        //                    int recoID = objPrintBal.Update_lapp_license_print_queue_holder(objPrint, objPrint.Queue_Id);
        //                    PrintQueue.Add(Permit_Holder_Id.ToString());
        //                    MessageBox.Show(this.Page, "Selected Queue Print Successfull.");
        //                }
        //            }
        //        }
        //    }
        //    if (PrintQueue != null && PrintQueue.Count > 0)
        //    {
        //        this.lstPrintQueue = PrintQueue;
        //        Session["Is_Main"] = false; Session["IS_Back"] = false;
        //        Response.Redirect("~/Reports/Label_8371.aspx", false);
        //    }

        //    BindGrid();
        //}

        //protected void btnBackLabelPrint_Click(object sender, EventArgs e)
        //{
        //    Session["IS_Main"] = false;

        //}

        protected void btnSearchCancel_Click(object sender, EventArgs e)
        {
            this.Is_Search = false;
            BindGrid();
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                this.Is_Search = true;
                gvPrintQueue.AllowPaging = true; BindGrid();

            }
            catch (Exception ex)
            {
            }

        }
        protected void lnkShowall_Click(object sender, EventArgs e)
        {
            this.Is_Search = false;

            txtlastNameSaerch.Text = "";
            txtLicenseNumberSearch.Text = "";
            txtFirstNameSearch.Text = "";
          
            gvPrintQueue.AllowPaging = false; BindGrid();


        }

        #endregion

        #region Public Methods

        public void BindGrid()
        {
            try
            {
                lapp_license_print_queue_holderBAL objPermitBAL = new lapp_license_print_queue_holderBAL();
                List<lapp_license_print_queue_holder> lstPermitHolder = new List<lapp_license_print_queue_holder>();
                if (Is_Search)
                {
                    lstPermitHolder = objPermitBAL.Search_lapp_license_print_queue_holder_BY_Name_License_Application(txtFirstNameSearch.Text, txtlastNameSaerch.Text, txtLicenseNumberSearch.Text, txtLicenseNumberSearch.Text);

                    Is_Search = false;
                }
                else
                {
                    lstPermitHolder = objPermitBAL.Get_All_lapp_license_print_queue_holder(false);
                }

                ltrTotalRecord.Text = lstPermitHolder.Count.ToString();
                gvPrintQueue.DataSource = lstPermitHolder;
                gvPrintQueue.DataBind();

            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Thread = "Error Occured-ucPrintQueue.ascx-Bindgrid";
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
            objExLog.Thread = "error occured";
            objExLog.Date = DateTime.Now;
            objExLog.Level = "Low";
            objExLog.Logger = "errorLogger";
            return objExLog;
        }
        #region Shorting
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
        public string GridViewSortExpression
        {
            get
            {
                if (ViewState["sortExpression"] == null)
                    ViewState["sortExpression"] = "CreatedOn";
                return ViewState["sortExpression"].ToString();
            }
            set
            {
                ViewState["sortExpression"] = value;
            }
        }

        #endregion

        protected void gvGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (GridViewShortDirection == SortDirection.Ascending)
            {
                GridViewShortDirection = SortDirection.Descending;
            }
            else
            {
                GridViewShortDirection = SortDirection.Ascending;
            }
            gvPrintQueue.PageIndex = e.NewPageIndex;
            this.BindGrid();

        }
        #endregion
    }
