using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LAPP.ENTITY.Enumerations;
using LAPP.BAL;
using LAPP.ENTITY;
using System.Security.Cryptography;
using LAPP.CORE;
using System.IO;
using System.Configuration;
using System.Net;
using Newtonsoft.Json;
/// <summary>
/// Summary description for GNF
/// </summary>
public class GNF
{
    public GNF()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static List<sQueryString> DecryptUrl(string url)
    {
        string DecryptString = Encryption.Base64Decrypt(url);
        string[] arrMsgs = DecryptString.Split('&');
        List<sQueryString> lstQuery = new List<sQueryString>();
        int i = 0;
        foreach (string str in arrMsgs)
        {
            sQueryString objQuery = new sQueryString();
            string[] arrStr;

            arrStr = arrMsgs[i].Split('=');

            objQuery.QueryString = arrStr[0].ToString().Trim();
            objQuery.QueryValue = arrStr[1].ToString().Trim();
            i++;
            lstQuery.Add(objQuery);
        }
        return lstQuery;

    }
    public static string EncryptUrl(List<sQueryString> lstQuery, string url)
    {
        string str = "";
        int i = 0;
        foreach (sQueryString objQuery in lstQuery)
        {
            str += objQuery.QueryString + "=";
            str += objQuery.QueryValue;
            if (i == lstQuery.Count - 1)
            {

            }
            else
            {
                str += "&";
            }
            i++;

        }
        str = Encryption.Base64Encrypt(str);
        return url + "?" + str;
    }
    public static bool AppInTestMode()
    {
        string fileName = HttpContext.Current.Server.MapPath("~/App_Data/AppConfiguration.txt");
        string[] Lines = System.IO.File.ReadAllLines(fileName);
        if (Lines.Length > 0)
        {
            string[] TestModeKeyValuePair = Lines[0].Split(':');
            bool TestMode = Convert.ToBoolean(TestModeKeyValuePair[1]);
            if (TestMode)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            return false;
        }
    }
    public static string Get_Company_Id()
    {
        LAPP_serialsBAL objSerialBal = new LAPP_serialsBAL();
        int Id = objSerialBal.Get_By_Company_Id();
        return Id.ToString();//
        //string Company_Id = String.Format("{0:D6}", Id);
        //return Company_Id + ".000";
    }
    
    public static void LogSentEmail(string text)
    {
        try
        {
            text = text + "," + DateTime.Now.ToString();
            string FileName = HttpContext.Current.Server.MapPath("~/App_Data/SentEmailLog.txt");
            File.AppendAllText(FileName, string.Format("{0}{1}", text, Environment.NewLine));
        }
        catch (Exception ex)
        {

        }
    }

    public static void LogFailedEmail(string text)
    {
        try
        {
            text = text + "," + DateTime.Now.ToString();
            string FileName = HttpContext.Current.Server.MapPath("~/App_Data/LogFailedEmail.txt");
            File.AppendAllText(FileName, string.Format("{0}{1}", text, Environment.NewLine));
        }
        catch (Exception ex)
        {

        }
    }


    public static string ServiceKey
    {
        get
        {
            return "SK09288820183AIasu88asdhausd8892373729923jasd81@34e$";
        }
    }
    public static string GetPrefixURLApplication()
    {
        return ConfigurationManager.AppSettings["prefixurlApplication"];
    }

    public static string GetPrefixURLApplicationBackOffice()
    {
        return ConfigurationManager.AppSettings["prefixurlApplicationBackOffice"];
    }

    public class APIAddressValidation
    {
        //string apiRequest = "https://api.smartystreets.com/street-address?auth-id=1afa9bd1-f37a-4f37-bf0e-5162e2a8af55&auth-token=INq4O2hubQUmcCLqosSD&addressee=undefined&street=1%20Santa%20Claus&street2=&city=North%20Pole&state=AK&zipcode=&candidates=1";

        public static components ValidateAddress(string street1, string street2, string city, string state, string zip)
        {

            try
            {
                components objAddress = null;

                string apiRequest = "https://api.smartystreets.com/street-address?auth-id=1afa9bd1-f37a-4f37-bf0e-5162e2a8af55&auth-token=INq4O2hubQUmcCLqosSD&addressee=undefined&street=" + street1 + "&street2=" + street2 + "&city=" + city + "&state=" + state + "&zipcode=" + zip + "&candidates=1";

                // create an HttpWebRequest object to communicate with address API
                HttpWebRequest objRequest = (HttpWebRequest)WebRequest.Create(apiRequest);
                objRequest.Method = "GET";
                //objRequest.ContentLength = post_string.Length;
                //objRequest.ContentType = "application/x-www-form-urlencoded";

                // post data is sent as a stream
                //StreamWriter myWriter = null;
                //myWriter = new StreamWriter(objRequest.GetRequestStream());
                //myWriter.Write(post_string);
                //myWriter.Close();

                // returned values are returned as a stream, then read into a string
                String post_response;
                HttpWebResponse objResponse = (HttpWebResponse)objRequest.GetResponse();
                using (StreamReader responseStream = new StreamReader(objResponse.GetResponseStream()))
                {
                    post_response = responseStream.ReadToEnd();
                    responseStream.Close();

                    List<AddressVerification> objAddressResponselst = JsonConvert.DeserializeObject<List<AddressVerification>>(post_response);

                    if (objAddressResponselst != null && objAddressResponselst.Count > 0)
                    {
                        AddressVerification objAddressVerification = objAddressResponselst.FirstOrDefault();

                        if (objAddressVerification != null)
                        {
                            if (objAddressVerification.analysis != null)
                            {
                                if (objAddressVerification.analysis.active.ToUpper() == "Y")
                                {
                                    objAddress = objAddressVerification.components;
                                    objAddress.street2 = objAddressVerification.delivery_line_2;
                                }
                            }
                        }


                    }


                    // JsonConvert.DeserializeObject
                }

                return objAddress;

            }
            catch (Exception ex)
            {
                return null;
            }

        }

    }
}