using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ErrorMessage
/// </summary>
public class ErrorMessage
{
    public ErrorMessage()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static string ErrorOccured()
    {
        return "An error has occurred. Please try after sometime or contact Nevada State Board of Massage Therapists.";
    }
    public static string ThisDocumentAlreadyUploaded = "This document is already in the list. Please delete file from the list to upload again.";
}