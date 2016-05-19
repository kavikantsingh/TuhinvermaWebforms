using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Net;
using System.IO;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using LAPP.BAL;

using LAPP.CORE;

using System.Drawing;
using System.Net.Mail;
using LAPP.CONFIG;
using System.Text.RegularExpressions;
using Newtonsoft.Json;


public partial class ucPayment : System.Web.UI.UserControl
{
    string URL = "http://localhost:1500/UI/NewApplication.aspx";

    #region class Members

    lapp_individual_application_lk objlapp_individual_application_lk = new lapp_individual_application_lk();
    lapp_individual_application_lkBAL objlapp_individual_application_lkBAL = new lapp_individual_application_lkBAL();
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();

    lapp_applicant_individual_login_info objlapp_applicant_individual_login_info = new lapp_applicant_individual_login_info();
    lapp_applicant_individual_login_infoBAL objlapp_applicant_individual_login_infoBAL = new lapp_applicant_individual_login_infoBAL();


    #endregion

    #region Class Properties
    public int Application_ID
    {
        get
        {
            if (ViewState["Application_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Application_ID"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Application_ID"] = value;
        }
    }
    public int Applicant_ID
    {
        get
        {
            if (ViewState["Applicant_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Applicant_ID"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Applicant_ID"] = value;
        }
    }
    public string Description
    {
        get
        {
            if (ViewState["Description"] != null)
            {
                return ViewState["Description"].ToString();

            }
            else
            {
                return string.Empty;
            }
        }
        set
        {
            ViewState["Description"] = value;
        }
    }
    public int Transaction_Id
    {
        get
        {
            if (ViewState["Transaction_Id"] != null)
            {
                return Convert.ToInt32(ViewState["Transaction_Id"]);

            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Transaction_Id"] = value;
        }
    }
    public string Token
    {
        get
        {
            if (ViewState["Token"] != null)
            {
                return ViewState["Token"].ToString();

            }
            else
            {
                return string.Empty;
            }
        }
        set
        {
            ViewState["Token"] = value;
        }
    }
    public string Transaction_Time
    {
        get
        {
            if (ViewState["Transaction_Time"] != null)
            {
                return ViewState["Transaction_Time"].ToString();

            }
            else
            {
                return "0:00";
            }
        }
        set
        {
            ViewState["Transaction_Time"] = value;
        }
    }
    public int Firm_Info_Business_Id
    {
        get
        {
            if (ViewState["Firm_Info_Business_Id"] != null)
            {
                return Convert.ToInt32(ViewState["Firm_Info_Business_Id"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Firm_Info_Business_Id"] = value;
        }
    }
    public int Renewal_Detail_Id
    {
        get
        {
            if (ViewState["Renewal_Detail_Id"] != null)
            {
                return Convert.ToInt32(ViewState["Renewal_Detail_Id"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Renewal_Detail_Id"] = value;
        }
    }
    public int AccountType
    {
        get
        {
            if (ViewState["AccountType"] != null)
            {
                return Convert.ToInt32(ViewState["AccountType"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["AccountType"] = value;
        }
    }
    public string Company_Id
    {
        get
        {
            if (ViewState["Company_Id"] != null)
            {
                return Convert.ToString(ViewState["Company_Id"]);
            }
            else
            {
                return "";
            }
        }
        set
        {
            ViewState["Company_Id"] = value;
        }
    }
    public string License_Number
    {
        get
        {
            if (ViewState["License_Number"] != null)
            {
                return Convert.ToString(ViewState["License_Number"]);
            }
            else
            {
                return "Demo123456";
            }
        }
        set
        {
            ViewState["License_Number"] = value;
        }
    }
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
    public string Application_Number_ForNewApplicatipn
    {
        get
        {
            if (ViewState["Application_Number_ForNewApplicatipn"] != null)
            {
                return (ViewState["Application_Number_ForNewApplicatipn"]).ToString();
            }
            else
            {
                return "";
            }

        }
        set
        {
            ViewState["Application_Number_ForNewApplicatipn"] = value;
        }

    }
    //new code changes ~~ Akshay
    public int Requested_Application_Type_ID
    {
        get
        {
            if (ViewState["Requested_Application_Type_ID"] != null)
            {
                return Convert.ToInt32(ViewState["Requested_Application_Type_ID"]);
            }
            else
            {
                return (int)eApplicationType.ApplicationRequest;
            }
        }
        set
        {
            ViewState["Requested_Application_Type_ID"] = value;
        }
    }
    public int Application_Type_ID
    {
        get
        {
            if (Session["Application_Type_ID"] != null)
            {
                return Convert.ToInt32(Session["Application_Type_ID"]);
            }
            else
            {
                return (int)eApplicationType.ApplicationRequest;
            }
        }
        set
        {
            Session["Application_Type_ID"] = value;
        }
    }
    public string Application_Number
    {
        get
        {
            if (Session["Application_Number"] != null)
            {
                return (Session["Application_Number"]).ToString();
            }
            else
            {
                return "";
            }

        }
        set
        {
            Session["Application_Number"] = value;
        }

    }
    public double ApplicationFee
    {
        get
        {
            if (Session["ApplicationFee"] != null)
            {
                return Convert.ToDouble(Session["ApplicationFee"]);
            }
            else
            {
                return 0;
            }

        }
        set
        {
            Session["ApplicationFee"] = value;
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
    public double LateFee
    {
        get
        {
            if (Session["LateFee"] != null)
            {
                return Convert.ToDouble(Session["LateFee"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            Session["LateFee"] = value;
        }
    }
    public double ConvenienceFee
    {
        get
        {
            if (Session["ConvenienceFee"] != null)
            {
                return Convert.ToDouble(Session["ConvenienceFee"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            Session["ConvenienceFee"] = value;
        }
    }
    public double TotalAmount
    {
        get
        {
            if (Session["TotalAmount"] != null)
            {
                return Convert.ToDouble(Session["TotalAmount"].ToString());
            }
            else
            {
                return 0;
            }

        }
        set
        {
            Session["TotalAmount"] = value;
        }
    }
    public string Reference_Number
    {
        get
        {
            if (Session["Reference_Number"] != null)
            {
                return Convert.ToString(Session["Reference_Number"]);
            }
            else
            {
                return "";
            }
        }
        set
        {
            Session["Reference_Number"] = value;
        }
    }
    #endregion

    #region Page Event Handler


    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            ltrMsg.Text = "";
            ltrErrorResponse.Text = "";

            if (!IsPostBack)
            {
                if (Session["Token"] != null)
                {
                    this.Token = Session["Token"].ToString(); Session.Remove("Token");
                }
                else if (this.Token != "")
                {

                }
                else
                {
                    // Session["Message"] = ErrorMsgAppRequest.SessionExpired();
                    //Response.Redirect("ErrorPage.aspx", false);
                }

                BindDropdownStatePayment(ddlState);
                //if (Request.QueryString["q"] != null)
                //{
                List<sQueryString> lstQueryStr = GNF.DecryptUrl(Request.QueryString["q"].ToString());
                if (lstQueryStr != null && lstQueryStr.Count > 0)
                {
                    string ApplicationNumber = lstQueryStr.Find(x => x.QueryString == "ApplicationNo").QueryValue;
                    this.Application_Type_ID = Convert.ToInt32(lstQueryStr.Find(x => x.QueryString == "ApplicationType").QueryValue);

                    this.Application_Number = ApplicationNumber;



                    FillButtonDetail();
                    FillPayment();

                    //SaveVisiterRecord();
                }

                int Year = DateTime.Now.Year - 1;
                ddlExpirationYears.Items.Insert(0, new ListItem("Year", "-1"));
                ddlExpirationYears.SelectedValue = "-1";
                for (int i = 1; i <= 20; i++)
                {
                    ddlExpirationYears.Items.Insert(i, new ListItem((Year + i).ToString(), (Year + i).ToString().GetLast(2)));
                }
                //if (this.TotalAmount <= 0)
                //{
                //    Response.Redirect("../UI/ErrorPage.aspx", false);
                //}
                //}
                //else
                //{
                //    Response.Redirect("../UI/ErrorPage.aspx", false);
                //}
            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "ucPayment.ascx.cs Page_Load";
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }

    private void FillButtonDetail()
    {
        try
        {

        }
        catch (Exception ex)
        {

        }
    }

    private void FillPayment()
    {

    }

    private void RecordTransactionDetail()
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            ltrMsg.Text = "";

            string prefixValidateMsg = "<div id=\"message_error\" class=\"message_error_epay\"> <span></span><p>There is a problem with your request.</p><ul>";
            string validateMsg = "";
            validateMsg += ValidationHelper.IsValidCreditCardNumber(x_card_num.Text, "<li>Please enter a valid card number(numeric value only).</li>");
            validateMsg += ValidationHelper.IsValidInt(x_cvv_num.Text, "<li>Please enter a CVV number.</li>");
            validateMsg += ValidationHelper.IsRequiredDDL(ddlExpirationMonths.Text, "<li>Please select Card expiration month.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsRequiredDDL(ddlExpirationMonths.Text, "Please select Card expiriation month") + "</li>" : "";
            validateMsg += ValidationHelper.IsRequiredDDL(ddlExpirationYears.Text, "<li>Please select Card expiration year.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsRequiredDDL(ddlExpirationYears.Text, "Please select Card expiriation year") + "</li>" : "";
            validateMsg += ValidationHelper.IsRequired(x_first_name.Text, "<li>Please enter First name.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsRequired(x_first_name.Text, "Please enter First name") + "</li>" : "";
            validateMsg += ValidationHelper.IsRequired(x_last_name.Text, "<li>Please enter Last name.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsRequired(x_last_name.Text, "Please enter Last name") + "</li>" : "";
            validateMsg += ValidationHelper.IsRequired(x_address.Text, "<li>Please enter street.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsRequired(x_address.Text, "Please enter street") + "</li>" : "";
            validateMsg += ValidationHelper.IsRequired(x_city.Text, "<li>Please enter City.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsRequired(x_city.Text, "Please enter City") + "</li>" : "";
            validateMsg += ValidationHelper.IsRequiredDDL(ddlState.Text, "<li>Please select State.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsRequiredDDL(ddlState.Text, "Please select State") + "</li>" : "";
            //validateMsg += ValidationHelper.IsRequired(x_zip.Text, "Zip") != string.Empty ? "<li>" + ValidationHelper.IsRequired(x_zip.Text, "Zip") + "</li>" : "";
            validateMsg += ValidationHelper.IsValidUSZIP(x_zip.Text, "<li>Please enter valid Zip.</li>");// != string.Empty ? "<li>" + ValidationHelper.IsValidUSZIP(x_zip.Text, "Please eneter valid Zip") + "</li>" : "";

            string postfixValidateMsg = "</ul>";

            if (!String.IsNullOrEmpty(validateMsg))
            {
                string vmsg = prefixValidateMsg + validateMsg + postfixValidateMsg;
                //MessageBox.Show(this.Page, vmsg);
                string str = ""; // "<div id=\"message_error\" class=\"message_error_epay\"> <span></span><h6>There was a problem with your request</h6><p>";
                str += vmsg;
                str += "</div>";
                ltrMsg.Text = MessageBox.BuildValidationMessage(vmsg, 2);
                return;
            }
            Response.Redirect("ConfirmationPage.aspx", false); 
            //Response.Redirect("~/LAPP_UI_School/UI/ConfirmationPage.aspx", false);
            //Lapp_transaction objTransaction = new Lapp_transaction();
            //Lapp_transaction_detail objTransactionDetail = new Lapp_transaction_detail();
            //Lapp_transaction_detailBAL objTransactionDetailBAL = new Lapp_transaction_detailBAL();
            //Lapp_transactionBAL objTransactionBAL = new Lapp_transactionBAL();

            //objTransaction.Application_Number = this.Application_Number;
            //objTransaction.Application_Type = ((eApplicationType)this.Application_Type_ID).ToString();
            //objTransaction.Application_Type_ID = this.Application_Type_ID;
            //objTransaction.Created_By = UIHelper.UserIDBySession().ToString();
            //objTransaction.Created_On = DateTime.Now;
            //objTransaction.DTS = DateTime.Now;
            //objTransaction.Gateway_Reference_Number = "";
            //objTransaction.Individual_ID = 0;
            //objTransaction.Is_Active = true;
            //objTransaction.Is_Deleted = false;
            //objTransaction.Modified_By = UIHelper.UserIDBySession().ToString();
            //objTransaction.Modified_On = DateTime.Now;
            //objTransaction.Transaction_Device_Type = "0";
            //objTransaction.Transaction_Ref_Number = this.Reference_Number;
            //objTransaction.Transaction_Status = ePaymentStatus.Pending.ToString();
            //objTransaction.Transaction_Start_DateTime = DateTime.Now;
            //this.Transaction_Id = objTransactionBAL.Save_Lapp_transaction(objTransaction);
            //objTransaction.Transaction_ID = this.Transaction_Id;
            //if (this.Transaction_Id > 0)
            //{
            //    string ResponseString = "";
            //    objTransactionDetail = FetchTransactionDetail();
            //    objTransactionDetail.Transaction_Method = rblAuthorizeNet.Checked ? (int)ePaymentMethod.AuthorizeNet : (int)ePaymentMethod.Paypal;
            //    objTransactionDetail.Late_Fee = Convert.ToDecimal(this.LateFee);
            //    objTransactionDetail.Transaction_Fee = Convert.ToDecimal(this.ConvenienceFee);
            //    objTransactionDetail.Total_Amount = Convert.ToDecimal(this.TotalAmount);
            //    objTransactionDetail.Transaction_Reference_Number = this.Reference_Number;
            //    objTransactionDetail.Application_Number = this.Application_Number;

            //    objTransactionDetail.Transaction_Detail_Id = objTransactionDetailBAL.Save_Lapp_transaction_detail(objTransactionDetail);
            //    try
            //    {
            //        //string obj = JsonConvert.SerializeObject(lstOrder);
            //        //GNF.LogTransaction(obj);

            //        // Authoroze dot net ebsoft sandbox detail 
            //        string loginID = "8248RhgTp";
            //        string transactionKey = "3J995q3wd7Mrk3TT";

            //        // By default, this sample code is designed to post to our test server for
            //        // developer accounts: https://test.authorize.net/gateway/transact.dll
            //        //String post_url = "https://test.authorize.net/gateway/transact.dll";

            //        // for real accounts (even in test mode), please make sure that you are
            //        // posting to: https://secure.authorize.net/gateway/transact.dll
            //        String post_url = "https://test.authorize.net/gateway/transact.dll";
            //        //String post_url = "https://secure.authorize.net/gateway/transact.dll";


            //        Dictionary<string, string> post_values = new Dictionary<string, string>();
            //        //the API Login ID and Transaction Key must be replaced with valid values

            //        post_values.Add("x_login", loginID);
            //        post_values.Add("x_tran_key", transactionKey);
            //        post_values.Add("x_delim_data", "TRUE");
            //        post_values.Add("x_delim_char", "|");
            //        post_values.Add("x_relay_response", "FALSE");

            //        post_values.Add("x_test_request", "FALSE");
            //        //if ()
            //        //{
            //        //    post_values.Add("x_test_request", "TRUE");
            //        //}
            //        //else
            //        //{
            //        //    post_values.Add("x_test_request", "FALSE");
            //        //}

            //        post_values.Add("x_type", "AUTH_CAPTURE");
            //        post_values.Add("x_method", "CC");

            //        post_values.Add("x_card_num", x_card_num.Text);
            //        post_values.Add("x_exp_date", ddlExpirationMonths.SelectedValue + ddlExpirationYears.SelectedValue);
            //        //post_values.Add("x_exp_date", ddlExpirationMonths.SelectedItem.Text/ddlExpirationYears.SelectedItem.Text);
            //        post_values.Add("x_amount", this.TotalAmount.ToString()); //this.TotalAmount.ToString()
            //        post_values.Add("x_description", this.Description);
            //        post_values.Add("x_invoice_num", this.Reference_Number);

            //        // Billing Address

            //        post_values.Add("x_first_name", x_first_name.Text.Trim());
            //        post_values.Add("x_last_name", x_last_name.Text.Trim());
            //        //post_values.Add("x_company", x_company.Text.Trim());
            //        post_values.Add("x_address", x_address.Text.Trim());
            //        post_values.Add("x_city", x_city.Text.Trim());
            //        post_values.Add("x_state", ddlState.SelectedItem.Text);
            //        post_values.Add("x_zip", x_zip.Text.Trim());
            //        post_values.Add("x_country", ddlCountry.SelectedValue); // x_country.Text.Trim());

            //        // post_values.Add("x_email", x_email.Text.Trim());
            //        // post_values.Add("x_phone", x_phone.Text.Trim());
            //        //  post_values.Add("x_fax", x_fax.Text.Trim());

            //        //Shipping Address

            //        //post_values.Add("x_ship_to_first_name", x_ship_to_first_name.Text.Trim());
            //        //post_values.Add("x_ship_to_last_name", x_ship_to_last_name.Text.Trim());
            //        //post_values.Add("x_ship_to_company", x_ship_to_company.Text.Trim());
            //        //post_values.Add("x_ship_to_address", x_ship_to_address.Text.Trim());
            //        //post_values.Add("x_ship_to_city", x_ship_to_city.Text.Trim());
            //        //post_values.Add("x_ship_to_state", x_ship_to_state.Text.Trim());
            //        //post_values.Add("x_ship_to_zip", x_ship_to_zip.Text.Trim());
            //        //post_values.Add("x_ship_to_country", x_ship_to_country.Text.Trim());

            //        // Additional fields can be added here as outlined in the AIM integration
            //        // guide at: http://developer.authorize.net

            //        // This section takes the input fields and converts them to the proper format
            //        // for an http post.  For example: "x_login=username&x_tran_key=a1B2c3D4"
            //        String post_string = "";

            //        foreach (KeyValuePair<string, string> post_value in post_values)
            //        {
            //            post_string += post_value.Key + "=" + HttpUtility.UrlEncode(post_value.Value) + "&";
            //        }
            //        post_string = post_string.TrimEnd('&');

            //        // The following section provides an example of how to add line item details to
            //        // the post string.  Because line items may consist of multiple values with the
            //        // same key/name, they cannot be simply added into the above array.
            //        //
            //        // This section is commented out by default.
            //        /*
            //        string[] line_items = {
            //            "item1<|>golf balls<|><|>2<|>18.95<|>Y",
            //            "item2<|>golf bag<|>Wilson golf carry bag, red<|>1<|>39.99<|>Y",
            //            "item3<|>book<|>Golf for Dummies<|>1<|>21.99<|>Y"};

            //        foreach( string value in line_items )
            //        {
            //            post_string += "&x_line_item=" + HttpUtility.UrlEncode(value);
            //        }
            //        */


            //        // create an HttpWebRequest object to communicate with Authorize.net
            //        HttpWebRequest objRequest = (HttpWebRequest)WebRequest.Create(post_url);
            //        objRequest.Method = "POST";
            //        objRequest.ContentLength = post_string.Length;
            //        objRequest.ContentType = "application/x-www-form-urlencoded";

            //        // post data is sent as a stream
            //        StreamWriter myWriter = null;
            //        myWriter = new StreamWriter(objRequest.GetRequestStream());
            //        myWriter.Write(post_string);
            //        myWriter.Close();

            //        // returned values are returned as a stream, then read into a string
            //        String post_response;
            //        HttpWebResponse objResponse = (HttpWebResponse)objRequest.GetResponse();
            //        using (StreamReader responseStream = new StreamReader(objResponse.GetResponseStream()))
            //        {
            //            post_response = responseStream.ReadToEnd();
            //            responseStream.Close();
            //        }

            //        // the response string is broken into an array
            //        // The split character specified here must match the delimiting character specified above
            //        Array response_array = post_response.Split('|');


            //        Authorize_Net_Response objAuthResponse = FetchAuthorize_Net_Response(response_array);

            //        ResponseString = JsonConvert.SerializeObject(objAuthResponse);

            //        if (objAuthResponse != null && objAuthResponse.Response_Code.ToLower() == "1")
            //        {
            //            //Record detail
            //            objTransaction.Gateway_Reference_Number = objAuthResponse.Transaction_ID;
            //            objTransaction.Transaction_Status = ePaymentStatus.Paid.ToString();
            //            objTransaction.Transaction_End_DateTime = DateTime.Now;

            //            objTransactionBAL.Update_Lapp_transaction(objTransaction);

            //            objTransactionDetail.Transaction_Status = (int)eTransactionStatus.Completed;
            //            objTransactionDetail.Is_Completed = true;
            //            objTransactionDetail.Is_Active = true;
            //            objTransactionDetail.Gateway_Reference_Number = objAuthResponse.Authorization_Code;

            //            objTransactionDetail.Authorization = ResponseString;
            //            objTransactionDetail.Authorization_Date = DateTime.Now.ToString();
            //            objTransactionDetail.Authorization_Message = objAuthResponse.Response_Reason_Text;
            //            objTransactionDetail.Authorization_Status = objAuthResponse.Response_Code;
            //            objTransactionDetail.Authorization_Code = objAuthResponse.Authorization_Code;
            //            objTransactionDetail.Response_SubCode = objAuthResponse.Response_Subcode;
            //            objTransactionDetailBAL.Update_Lapp_transaction_detail(objTransactionDetail);

            //            Save_Payment(objAuthResponse.Transaction_ID, objAuthResponse.Response_Code, "Authorized");
            //        }
            //        else if (objAuthResponse != null)
            //        {
            //            //Record detail
            //            objTransaction.Gateway_Reference_Number = objAuthResponse.Transaction_ID;
            //            objTransaction.Transaction_Status = ePaymentStatus.Paid.ToString();
            //            objTransactionBAL.Update_Lapp_transaction(objTransaction);

            //            objTransactionDetail.Transaction_Status = (int)eTransactionStatus.Completed;
            //            objTransactionDetail.Is_Completed = true;
            //            objTransactionDetail.Gateway_Reference_Number = objAuthResponse.Authorization_Code;

            //            objTransactionDetail.Authorization = ResponseString;
            //            objTransactionDetail.Authorization_Date = DateTime.Now.ToString();
            //            objTransactionDetail.Authorization_Message = objAuthResponse.Response_Reason_Text;
            //            objTransactionDetail.Authorization_Status = objAuthResponse.Response_Code;
            //            objTransactionDetail.Authorization_Code = objAuthResponse.Authorization_Code;
            //            objTransactionDetail.Response_SubCode = objAuthResponse.Response_Subcode;
            //            objTransactionDetailBAL.Update_Lapp_transaction_detail(objTransactionDetail);

            //            ltrMsg.Text = MessageBox.BuildValidationMessage(objAuthResponse.Response_Reason_Text, 2);//Its seems to be an error in you current your request. If your card is charged then please contact to Board Office.
            //        }
            //        else
            //        {
            //            //Record detail
            //            objTransaction.Gateway_Reference_Number = "";
            //            objTransaction.Transaction_Status = ePaymentStatus.Failed.ToString();
            //            objTransactionBAL.Update_Lapp_transaction(objTransaction);

            //            objTransactionDetail.Transaction_Status = (int)eTransactionStatus.Completed;
            //            objTransactionDetail.Is_Completed = true;
            //            objTransactionDetail.Authorization = "Failed";

            //            objTransactionDetail.Authorization_Message = "Failed";
            //            objTransactionDetail.Authorization_Status = "";
            //            objTransactionDetail.Gateway_Reference_Number = "Failed";
            //            objTransactionDetailBAL.Update_Lapp_transaction_detail(objTransactionDetail);


            //            Session["Message"] = ErrorMessageGenral.ProblemWithPaymentRequest;
            //            Response.Redirect("ErrorPage.aspx", false);
            //        }
            //    }
            //    catch (Exception ex)
            //    {
            //        //Record detail
            //        objTransaction.Gateway_Reference_Number = "";
            //        objTransaction.Transaction_Status = ePaymentStatus.Failed.ToString();
            //        objTransactionBAL.Update_Lapp_transaction(objTransaction);

            //        objTransactionDetail.Transaction_Status = (int)eTransactionStatus.Completed;
            //        objTransactionDetail.Is_Completed = true;
            //        objTransactionDetail.Authorization = ResponseString;

            //        objTransactionDetail.Authorization_Message = ex.Message;
            //        objTransactionDetail.Authorization_Status = "";
            //        objTransactionDetail.Gateway_Reference_Number = "Failed";
            //        objTransactionDetailBAL.Update_Lapp_transaction_detail(objTransactionDetail);

            //        objExLog = Fetchlog();
            //        objExLog.Level = "HIGH";
            //        objExLog.Logger = "ucPayment.ascx.cs btnSubmit_Click";
            //        objExLog.Thread = ex.StackTrace.ToString();
            //        objExLog.Message = this.Reference_Number + "--" + ResponseString;
            //        objExLog.Exception = ex.ToString();
            //        objExLog.Context = ex.Source;
            //        objexLogBal.Save_LAPP_exception_log(objExLog);
            //        objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            //    }
            //}
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Level = "HIGH";
            objExLog.Logger = "ucPayment.ascx.cs btnSubmit_Click";
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
            //Response.Redirect("../UI/ErrorPage.aspx", false);
        }
    }
    protected void btnCancelOrder_Click(object sender, EventArgs e)
    {
        //SessionManager.RemoveSessionObject("objImpids");
        //SessionManager.RemoveSessionObject("objsCarrierInfo");


        Response.Redirect("~/Default.aspx", false);

    }

    protected void lnkBackToForm_Click(object sender, EventArgs e)
    {
        try
        {
            if (Request.QueryString["q"] != null)
            {
                string q = Request.QueryString["q"].ToString();
                if (q == "1")
                {
                    Response.Redirect("~/LAPP_UI_School/UI/SchoolApplication.aspx", false);
                }
                else
                {
                    Response.Redirect("ReCertificationApplication.aspx", false);
                }
            }

        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "ucPayment.ascx.cs lnkBackToForm_Click";
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }



    }
    protected void chkCopyBill_CheckedChanged(object sender, EventArgs e)
    {
        //if (chkCopyBill.Checked)
        //{
        //    x_ship_to_first_name.Text = x_first_name.Text.Trim();
        //    x_ship_to_last_name.Text = x_last_name.Text.Trim();
        //    x_ship_to_country.Text = x_country.Text.Trim();
        //    x_ship_to_company.Text = x_company.Text.Trim();
        //    x_ship_to_address.Text = x_address.Text.Trim();
        //    x_ship_to_city.Text = x_city.Text.Trim();
        //    x_ship_to_state.Text = x_state.Text.Trim();
        //    x_ship_to_zip.Text = x_zip.Text.Trim();
        //}
        //else
        //{
        //    x_ship_to_first_name.Text = "";
        //    x_ship_to_last_name.Text = "";
        //    x_ship_to_country.Text = "";
        //    x_ship_to_address.Text = "";
        //    x_ship_to_city.Text = "";
        //    x_ship_to_state.Text = "";
        //    x_ship_to_zip.Text = "";
        //    x_ship_to_company.Text = "";
        //}
    }
    //private void ClearControl()
    //{

    //    //x_ship_to_first_name.Text = "";
    //    //x_ship_to_last_name.Text = "";
    //    //x_ship_to_country.Text = "";
    //    //x_ship_to_company.Text = "";
    //    //x_ship_to_address.Text = "";
    //    //x_ship_to_city.Text = "";
    //    //x_ship_to_state.Text = "";
    //    //x_ship_to_zip.Text = "";

    //    //x_ship_to_first_name.Text = "";
    //    //x_ship_to_last_name.Text = "";
    //    //x_ship_to_country.Text = "";
    //    //x_ship_to_address.Text = "";
    //    //x_ship_to_city.Text = "";
    //    //x_ship_to_state.Text = "";
    //    //x_ship_to_zip.Text = "";
    //    //x_ship_to_company.Text = "";


    //}

    protected void chkCopyCarrierInfo_CheckedChanged(object sender, EventArgs e)
    {

        CheckBox chkCopyCarrierInfo = (CheckBox)sender;

    }

    #endregion


    #region Public Methods

    private void BindDropdownStatePayment(DropDownList ddl)
    {
        try
        {
            ddl.Items.Clear();
            LAPP_state_codeBAL objStateBal = new LAPP_state_codeBAL();
            List<LAPP_state_code> lstStateCd = new List<LAPP_state_code>();
            if (Session["lstStateCd"] == null)
            {
                lstStateCd = objStateBal.Get_All_LAPP_state_code();
                Session["lstStateCd"] = lstStateCd;
            }
            else
            {
                lstStateCd = (List<LAPP_state_code>)Session["lstStateCd"];
            }
            if (lstStateCd != null)
            {
                ddl.DataSource = lstStateCd;
                ddl.DataTextField = "state_name";
                ddl.DataValueField = "state_code";
                ddl.DataBind();
            }
            ddl.Items.Insert(0, new ListItem("Select", "-1"));
            ddl.SelectedValue = "-1";
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "ucPayment.ascx.cs BindDropdownStatePayment";
            objExLog.Thread = ex.StackTrace.ToString();
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




    public void SaveIndividualApplication_lk()
    {
        objlapp_individual_application_lk = new lapp_individual_application_lk();
        try
        {
            objlapp_individual_application_lk = objlapp_individual_application_lkBAL.Get_lapp_individual_application_lk_get_byApplicationNumberApplicantIDANDApplicationTypeID(this.Application_Number, this.Applicant_ID, (int)eApplicationType.ApplicationRequest);
            if (objlapp_individual_application_lk != null)
            {
                objlapp_individual_application_lk.Application_Number = this.Application_Number;//apph.GetApplication_Number_BySession();
                objlapp_individual_application_lk.Application_Type = eApplicationType.ApplicationRequest.ToString();
                objlapp_individual_application_lk.ApplicationType_ID = (int)eApplicationType.ApplicationRequest;
                objlapp_individual_application_lk.Individual_Id = this.Individual_Id;
                objlapp_individual_application_lk.DTS = DateTime.Now;
                objlapp_individual_application_lk.Submitted_On = DateTime.Now;
                objlapp_individual_application_lkBAL.Update_lapp_individual_application_lk(objlapp_individual_application_lk);
            }
            else
            {
                objlapp_individual_application_lk = new lapp_individual_application_lk();
                objlapp_individual_application_lk.Application_Number = this.Application_Number;//apph.GetApplication_Number_BySession();
                objlapp_individual_application_lk.Application_Type = eApplicationType.ApplicationRequest.ToString();
                objlapp_individual_application_lk.ApplicationType_ID = (int)eApplicationType.ApplicationRequest;
                objlapp_individual_application_lk.Approved = false;
                objlapp_individual_application_lk.Approved_On = "";
                objlapp_individual_application_lk.Deficient = false;
                objlapp_individual_application_lk.Deficient_On = "";
                objlapp_individual_application_lk.Denied = false;
                objlapp_individual_application_lk.Denied_On = "";
                objlapp_individual_application_lk.DTS = DateTime.Now;
                objlapp_individual_application_lk.Submitted_On = DateTime.Now;
                objlapp_individual_application_lk.Verified = false;
                objlapp_individual_application_lk.Verified_On = "";
                objlapp_individual_application_lk.Individual_Id = this.Individual_Id;
                objlapp_individual_application_lk.Applicant_ID = this.Applicant_ID;
                objlapp_individual_application_lkBAL.Save_lapp_individual_application_lk(objlapp_individual_application_lk);

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "ucPayment.ascx.cs SaveIndividualApplication_lk";
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }
    public void SaveIndividualApplication_lk_ForNewApplication()
    {
        objlapp_individual_application_lk = new lapp_individual_application_lk();
        try
        {
            objlapp_individual_application_lk = objlapp_individual_application_lkBAL.Get_lapp_individual_application_lk_get_byApplicationNumberApplicantIDANDApplicationTypeID(this.Application_Number_ForNewApplicatipn, this.Applicant_ID, (int)eApplicationType.NewSchoolApplication);
            if (objlapp_individual_application_lk != null)
            {
                objlapp_individual_application_lk.Application_Number = this.Application_Number_ForNewApplicatipn;//apph.GetApplication_Number_BySession();
                objlapp_individual_application_lk.Application_Type = eApplicationType.NewSchoolApplication.ToString();
                objlapp_individual_application_lk.ApplicationType_ID = (int)eApplicationType.NewSchoolApplication;
                objlapp_individual_application_lk.Individual_Id = this.Individual_Id;
                objlapp_individual_application_lk.Submitted_On = DateTime.Now;
                objlapp_individual_application_lk.DTS = DateTime.Now;
                objlapp_individual_application_lkBAL.Update_lapp_individual_application_lk(objlapp_individual_application_lk);
            }
            else
            {
                objlapp_individual_application_lk = new lapp_individual_application_lk();

                objlapp_individual_application_lk.Application_Number = this.Application_Number_ForNewApplicatipn;//apph.GetApplication_Number_BySession();
                objlapp_individual_application_lk.Application_Type = eApplicationType.NewSchoolApplication.ToString();
                objlapp_individual_application_lk.ApplicationType_ID = (int)eApplicationType.NewSchoolApplication;
                objlapp_individual_application_lk.Approved = false;
                objlapp_individual_application_lk.Approved_On = "";
                objlapp_individual_application_lk.Deficient = false;
                objlapp_individual_application_lk.Deficient_On = "";
                objlapp_individual_application_lk.Denied = false;
                objlapp_individual_application_lk.Denied_On = "";
                objlapp_individual_application_lk.DTS = DateTime.Now;
                objlapp_individual_application_lk.Submitted_On = DateTime.Now;
                objlapp_individual_application_lk.Verified = false;
                objlapp_individual_application_lk.Verified_On = "";
                objlapp_individual_application_lk.Individual_Id = this.Individual_Id;
                objlapp_individual_application_lk.Applicant_ID = this.Applicant_ID;
                objlapp_individual_application_lkBAL.Save_lapp_individual_application_lk(objlapp_individual_application_lk);

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "ucPayment.ascx.cs SaveIndividualApplication_lk_ForNewApplication";
            objExLog.Thread = ex.StackTrace.ToString();
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
        x_address.Text = "";
        x_city.Text = "";
        x_first_name.Text = "";
        x_last_name.Text = "";
        x_city.Text = "";
        x_zip.Text = "";
        ddlState.SelectedValue = "-1";
        ddlCountry.SelectedValue = "-1";
    }

    #region Transfer Application Personal Tab Info

    private void SaveIndividualApplication_lk_ForTransferApplication()
    {
        objlapp_individual_application_lk = new lapp_individual_application_lk();
        try
        {
            objlapp_individual_application_lk = objlapp_individual_application_lkBAL.Get_lapp_individual_application_lk_get_byApplicationNumberApplicantIDANDApplicationTypeID(this.Application_Number_ForNewApplicatipn, this.Applicant_ID, (int)eApplicationType.TransferApplication);
            if (objlapp_individual_application_lk != null)
            {
                objlapp_individual_application_lk.Application_Number = this.Application_Number_ForNewApplicatipn;//apph.GetApplication_Number_BySession();
                objlapp_individual_application_lk.Application_Type = eApplicationType.TransferApplication.ToString();
                objlapp_individual_application_lk.ApplicationType_ID = (int)eApplicationType.TransferApplication;
                objlapp_individual_application_lk.Individual_Id = this.Individual_Id;
                objlapp_individual_application_lk.Submitted_On = DateTime.Now;
                objlapp_individual_application_lk.DTS = DateTime.Now;
                objlapp_individual_application_lkBAL.Update_lapp_individual_application_lk(objlapp_individual_application_lk);
            }
            else
            {
                objlapp_individual_application_lk = new lapp_individual_application_lk();

                objlapp_individual_application_lk.Application_Number = this.Application_Number_ForNewApplicatipn;//apph.GetApplication_Number_BySession();
                objlapp_individual_application_lk.Application_Type = eApplicationType.TransferApplication.ToString();
                objlapp_individual_application_lk.ApplicationType_ID = (int)eApplicationType.TransferApplication;
                objlapp_individual_application_lk.Approved = false;
                objlapp_individual_application_lk.Approved_On = "";
                objlapp_individual_application_lk.Deficient = false;
                objlapp_individual_application_lk.Deficient_On = "";
                objlapp_individual_application_lk.Denied = false;
                objlapp_individual_application_lk.Denied_On = "";
                objlapp_individual_application_lk.DTS = DateTime.Now;
                objlapp_individual_application_lk.Submitted_On = DateTime.Now;
                objlapp_individual_application_lk.Verified = false;
                objlapp_individual_application_lk.Verified_On = "";
                objlapp_individual_application_lk.Individual_Id = this.Individual_Id;
                objlapp_individual_application_lk.Applicant_ID = this.Applicant_ID;
                objlapp_individual_application_lkBAL.Save_lapp_individual_application_lk(objlapp_individual_application_lk);

            }
        }
        catch (Exception ex)
        {
            objExLog = Fetchlog();
            objExLog.Logger = "ucPayment.ascx.cs SaveIndividualApplication_lk_ForTransferApplication";
            objExLog.Thread = ex.StackTrace.ToString();
            objExLog.Message = ex.Message;
            objExLog.Exception = ex.ToString();
            objExLog.Context = ex.Source;
            objexLogBal.Save_LAPP_exception_log(objExLog);
            objAuditBal.Save_LAPP_audit_info_save(BrowserInfo.GetobjAuditInfo());
            MessageBox.Show(this.Page, ex.Message, 2);
        }
    }


    #endregion


    #endregion

    protected void btnVerifiy_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx", false);
    }


    protected void chkCopyAddress_CheckedChanged(object sender, EventArgs e)
    {
        ltrMsg.Text = "";
        if (chkCopyAddress.Checked)
        {

        }
        else
        {
            ClearControl();
        }
    }

    protected void x_card_num_TextChanged(object sender, EventArgs e)
    {
        Regex re = new Regex(@"^3[47][0-9]{13}$", RegexOptions.IgnoreCase);
        if (re.IsMatch(x_card_num.Text))
        {
            x_cvv_num.MaxLength = 4;
        }
        else
        {
            x_cvv_num.MaxLength = 3;
        }
        x_cvv_num.Focus();
    }
}

public static class StringExtension
{
    public static string GetLast(this string source, int tail_length)
    {
        if (tail_length >= source.Length)
            return source;
        return source.Substring(source.Length - tail_length);
    }
}


