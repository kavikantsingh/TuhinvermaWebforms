<%@ WebHandler Language="C#" Class="IndividualSearch" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LAPP.ENTITY;
using System.Web.Script.Serialization;

public class IndividualSearch : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        List<LAAP_Individual_Search> objlst = new List<LAAP_Individual_Search>();
        objlst.Add(new LAAP_Individual_Search { Certification_Number = "0040", First_Name = "Don", Last_Name = "Bill" });
        objlst.Add(new LAAP_Individual_Search { Certification_Number = "0039", First_Name = "Lisa", Last_Name = "Cooper" });
        objlst.Add(new LAAP_Individual_Search { Certification_Number = "026", First_Name = "NANCY", Last_Name = "BLACHLY" });
        objlst.Add(new LAAP_Individual_Search { Certification_Number = "0226", First_Name = "LINDA", Last_Name = "ARGIRIS" });

        context.Response.ContentType = "text/json";
        // context.Response.Write("Hello World");


        string str = new JavaScriptSerializer().Serialize(objlst);
        context.Response.Write("{\"SearchResult\":" + str + "}");


    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}