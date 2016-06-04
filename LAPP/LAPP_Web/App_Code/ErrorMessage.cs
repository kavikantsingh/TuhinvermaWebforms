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

    //Field Required    
    public static string Password = "Please enter password";
    public static string DOB = "Please enter D.O.B";
    public static string FirstName = "Please enter first name";
    public static string LastName = "Please enter last name";


    //Format Validation
    public static string EmailFormat = "Please enter email in correct format (joe@email.com)";
    public static string WebsiteFormat = "Please enter website in correct format (www.websitename.com)";
    public static string DateFormat = "Please enter date in correct format (MM/DD/YYYY)";
    public static string FutureDate = "Future date can not be accepted .";

    //School Information
    public static string SchoolName = "Please enter school name";
    public static string SchoolTelephone = "Please enter school telephone";
    public static string SchoolWebsite = "Please enter school website";
    public static string SchoolAddress = "Please enter school address";
    public static string SchoolCity = "Please enter school city";
    public static string SchoolState = "Please enter school state";
    public static string SchoolZip = "Please enter school zip";
    public static string DirectorFirstName = "Please enter director first name";
    public static string DirectorLastName = "Please enter director last name";
    public static string AdministratorEmail = "Please enter administrator email";
    public static string JobTitle = "Please enter administrator job title";
    public static string PrimaryNumber = "Please enter administrator primary number";

}