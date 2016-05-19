using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System.Drawing;
using LAPP.CORE;
using LAPP.CONFIG;


 
    public partial class ConfirmationPage : System.Web.UI.Page
    {
        #region Class Properties
        public int Payment_ID
        {
            get
            {
                if (ViewState["Payment_ID"] != null)
                {
                    return Convert.ToInt32(ViewState["Payment_ID"]);
                }
                else
                {
                    return 0;
                }

            }
            set
            {
                ViewState["Payment_ID"] = value;
            }

        }
        public int Application_Type_ID
        {
            get
            {
                if (ViewState["Application_Type_ID"] != null)
                {
                    return Convert.ToInt32(ViewState["Application_Type_ID"]);
                }
                else
                {
                    return 0;
                }

            }
            set
            {
                ViewState["Application_Type_ID"] = value;
            }

        }
        public string Application_Number
        {
            get
            {
                if (ViewState["Application_Number"] != null)
                {
                    return (ViewState["Application_Number"]).ToString();
                }
                else
                {
                    return "";
                }

            }
            set
            {
                ViewState["Application_Number"] = value;
            }

        }
        public string Application_Name
        {
            get
            {
                if (ViewState["Application_Name"] != null)
                {
                    return (ViewState["Application_Name"]).ToString();
                }
                else
                {
                    return "";
                }

            }
            set
            {
                ViewState["Application_Name"] = value;
            }

        }
        #endregion

        #region Class Members
        LAPP_exception_log objExLog = new LAPP_exception_log();
        LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
        LAPP_audit_info objAuditInfo = new LAPP_audit_info();
        LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //try
                // {
                //    if (Session["objLapp_Payment"] != null && HttpContext.Current.Session["PaymentObject"] != null)
                //    {
                //        PaymentObject objPayment = (PaymentObject)HttpContext.Current.Session["PaymentObject"];
                //        Lapp_payment objLapp_Payment = (Lapp_payment)Session["objLapp_Payment"];
                //        if (objLapp_Payment != null && objPayment != null)
                //        {
                //            if (Session["message"] != null)
                //            {
                //                MessageBox.Show(this.Page, Session["message"].ToString(), 2);
                //            }

                //            //if (objPayment != null)
                //            //{


                //            hplPrintAppllication.NavigateUrl = "~/UI/DownloadApplication.aspx?Id=" + Encryption.Base64Encrypt("ApplicationNo=" + objLapp_Payment.Application_Number + "&Application_Type_ID=" + objLapp_Payment.Application_Type_ID);

                //            hplPrintReceipt.NavigateUrl = "~/UI/DownloadPrintReceipt.aspx?Id=" + Encryption.Base64Encrypt("id=" + objLapp_Payment.Payment_ID);

                //            string ApplicationName = Lapp_Configuration.Get_ApplicationNameByTypeId(objLapp_Payment.Application_Type_ID);

                //            hplPrintAppllication.Text = "Print " + ApplicationName;
                //            ltrTransuction.Text = "Your payment for " + ApplicationName + " has been processed successfully. Please contact California Massage Therapy Council for any questions.<br />";

                //            if (GNF.AppInTestMode())
                //            {
                //                ltrTransuction.Text = "TEST TRANSACTION:-  Your payment for application has been processed successfully.  Please contact California Massage Therapy Council for any questions.<br />";
                //            }
                //            this.Application_Type_ID = objLapp_Payment.Application_Type_ID;
                //            //}
                //            ltrOrderNo.Text = objLapp_Payment.Invoice_Number;
                //            ltrReferenceNumber.Text = objLapp_Payment.Gateway_Reference_Number;

                //            this.Application_Number = objLapp_Payment.Application_Number;
                //            this.Application_Name = ApplicationName;
                //            this.Payment_ID = objLapp_Payment.Payment_ID;
                //            ltrTransactionDate.Text = objLapp_Payment.Transaction_Date.ToShortDateString();// objResponse.PostDate;
                //            ltrTransactionTime.Text = objLapp_Payment.Transaction_Date.ToShortTimeString();// objResponse.PostDate;
                //            ltrAmount.Text = String.Format("{0:C}", objPayment.Application_Fee);
                //            ltrTransactionfee.Text = string.Format("{0:C}", 0);
                //            ltrChargedFromCard.Text = string.Format("{0:C}", objPayment.TotalFee);
                //            ltrApllicationNumber.Text = objLapp_Payment.Application_Number;
                //            ltrApllicationName.Text = Application_Name;


                //            List<lapp_payment_detail> lstPaymentDetail = new List<lapp_payment_detail>();
                //            lapp_payment_detail_detailBAL objPaymentDetailBAL = new lapp_payment_detail_detailBAL();
                //            lstPaymentDetail = objPaymentDetailBAL.Get_lapp_payment_detail_by_Invoice_Number(objPayment.InvoiceNumber);
                //            if (lstPaymentDetail != null && lstPaymentDetail.Count > 0)
                //            {
                //                ltrFeeDetail.Text = FeesDetail.Get_Paid_Fees_Detail_String(lstPaymentDetail);
                //            }
                //            else
                //            {
                //                ltrFeeDetail.Text = "";

                //            }




                //            //ltrMessage.Text = "<br /><br />Your application has been submitted successfully.<br />";
                //            //if (Session["InfoMessage"] != null)
                //            //{
                //            //    ltrEmailResult.Text = Session["InfoMessage"].ToString();
                //            //}
                //            //else
                //            //{
                //            //    ltrEmailResult.Text = "A copy of payment receipt has been sent to your email.";

                //            //}

                //            //Session.Clear();
                //        }
                //    }
                //    else
                //    {
                //        Response.Redirect("../UI/ErrorPage.aspx", false);
                //        //Session["ErrorMessage"] = "Invalid Transcation";
                //        //Response.Redirect("~/UI/ErrorPage.aspx?ErrorType=InvalidTranscation", false);
                //    }
                //}
                //catch (Exception ex)
                //{
                //    objExLog = Fetchlog();
                //    objExLog.Logger = "ConfirmationPage.aspx.cs Postback";
                //    objExLog.Thread = ex.StackTrace.ToString();
                //    objExLog.Message = ex.Message;
                //    objExLog.Exception = ex.ToString();
                //    objExLog.Context = ex.Source;
                //    objexLogBal.Save_LAPP_exception_log(objExLog);
                //    objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                //    MessageBox.Show(this.Page, ex.Message, 2);
                //}

            }

        }

        protected void btnBackToHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UI//Login.aspx", false);
        }

        protected void btnPrintApplication_Click(object sender, EventArgs e)
        {
            try
            {
                if (!String.IsNullOrEmpty(this.Application_Number))
                {
                    if (this.Application_Type_ID == (int)eApplicationType.ApplicationRequest)
                    {

                        
                    }
                    else if (this.Application_Type_ID == (int)eApplicationType.NewSchoolApplication)
                    {


                        

                    }
                    else if (this.Application_Type_ID == (int)eApplicationType.TransferApplication)
                    {


                         

                    }
                }
                else
                {
                    Response.Redirect("../UI/ErrorPage.aspx", false);
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Logger = "ConfirmationPage.aspx.cs btnPrintApplication_Click";
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }

        protected void btnBackToHome_Click1(object sender, EventArgs e)
        {
            //Response.Redirect("~/Default.aspx", false);
        }

        protected void btnPrintReceipt_Click(object sender, EventArgs e)
        {
            try
            {
                if (!String.IsNullOrEmpty(this.Application_Number))
                {
                    
                }
                else
                {
                    Response.Redirect("../UI/ErrorPage.aspx", false);
                }
            }
            catch (Exception ex)
            {
                objExLog = Fetchlog();
                objExLog.Logger = "ConfirmationPage.aspx.cs btnPrintReceipt_Click";
                objExLog.Thread = ex.StackTrace.ToString();
                objExLog.Message = ex.Message;
                objExLog.Exception = ex.ToString();
                objExLog.Context = ex.Source;
                objexLogBal.Save_LAPP_exception_log(objExLog);
                objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
                MessageBox.Show(this.Page, ex.Message, 2);
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            //Response.Redirect("../UI/LogIn.aspx", false);
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
    }
 