<%@ WebHandler Language="C#" Class="Address" %>

using System;
using System.Web;
using System.Linq;
using System.Collections.Generic;
using System.Text;
public class Address : IHttpHandler
{
   
    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        string AddressStreet = context.Request.QueryString["AddressStreet"] != null ? Convert.ToString(context.Request.QueryString["AddressStreet"]) : "-1";

        if (AddressStreet != "")
        {
            try
            {
                
                    
                string str= AddressHelper.GetFormatedPOBOx(AddressStreet);


                //string str = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(objlst);
                context.Response.Write(str);
            }
            catch (Exception ex)
            {


            }
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}