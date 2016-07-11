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
    //Format Validation
    public static string EmailFormat = "Please enter email in correct format (joe@email.com)";
    public static string WebsiteFormat = "Please enter website in correct format (www.websitename.com)";
    public static string DateFormat = "Please enter date in correct format (mm/dd/yyyy)";
    public static string FutureDate = "Future dates are not accepted.";
    public static string PhoneFormat = "Please enter phone in correct format. ((xxx) xxx-xxxx)";
    public static string ZipCodeFormat = "Please enter zip code in correct format. (xxxxx-xxxx or xxxxx)";

    public static string SchoolName = "Please enter the school name.";
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

    public static string ddlAddApprovalAgency = "Please select approval/accrediting agency";
    public static string txtappagenDocNAme = "Please enter document name";
    public static string ddlAppAgencSup = "Please select document type";

    public static string txtAddmessageProgName = "Please enter message program name.";
    public static string txtAddProgrameHours = "Please enter total number of program hours.";

    public static string FirstName = "Please enter first name.";
    public static string LastName = "Please enter last name.";
    public static string Title = "Please enter title.";

    public static string txtGradYear = "Please enter estimated graduates for 2016 calendar year";
    public static string txtGradYear_1 = "Please enter graduates for 2015 calendar year";
    public static string txtGradYear_2 = "Please enter graduates for 2014 calendar year";
    public static string txtGradYear_3 = "Please enter graduates for 2013 calendar year";
    public static string txtGradYear_4 = "Please enter graduates for 2012 calendar year";
    public static string txtGradYear_5 = "Please enter graduates for 2011 calendar year";
    public static string txtGradYear_6 = "Please enter graduates for 2010 calendar year";
    public static string txtGradYear_7 = "Please enter graduates for 2009 calendar year";
    public static string txtDocNameAboutOwnership = "Please enter proof of ownership document name";
    public static string TextBox141 = "Please enter proof of business operations document name";
    public static string txtDocNameClin = "Please enter facility document name";
    public static string txtDocNameAboutAdvertising = "Please enter advertising document name";

    public static string ddlOwnAboutAdvertising = "Please select advertising document type";
    public static string ddlOtherClin = "Please select facility document type";
    public static string ddlOwnAboutBusinessDoc = "Please select proof of business operations document type";
    public static string DropDownList6 = "Please select proof of business operations document type";
    public static string ddlOwnAboutOwnership = "Please select proof of ownership document type";

    public static string TextBox2 = "Please enter related school name ";
    public static string TextBox65 = "Please enter related school primary contact first name";
    public static string TextBox66 = "Please enter related school primary contact last name ";
    public static string TextBox6 = "Please enter related school address";
    public static string txtSchoolCity = "Please enter related school city";
    public static string DropDownList1 = "Please select related school state ";
    public static string TextBox9 = "Please enter related school zip";
    public static string TextBox10 = "Please enter related school phone ";
    public static string TextBox12 = "Please enter related school email";
    public static string txtApproxDateAssociate = "Please enter related school approximate date associated";

    public static string txtcarculam = "Please enter maximum number of clinic hours performed.";
    public static string CurriSupDocName = "Please enter curriculum supporting document name.";
    public static string CurriSupDocType = "Please select curriculum supporting document type.";
    public static string Email = "Please enter email.";
    public static string CheckBoxList3 = "Please check any one from title/ position.";
    public static string rblBackgroundChekReq = "Please check yes or no of background check.";
    public static string NoRegion = "Please enter reason (camtc#).";
    public static string Signature = "Please enter signature.";
    public static string Date = "Please enter date.";
    public static string PayMethod = "Please select payment method.";
    public static string DocumentName = "Please enter document name.";
    public static string TextBox71 = "Please enter addressed corrective action.";
    public static string HomeAddress = "Please enter the address of the home .";
    public static string NameofCity = "Please enter the city name.";
    public static string State = "Please enter the name of the state.";
    public static string ZipCode = "Please enter zip code.";
    public static string DateofBirth = "Please enter date of birth.";
    public static string DateofGraduation = "Please enter date of graduation.";
    public static string ddlOwnStaffType = "Please select document type.";
    public static string DateofEmployment = "Please enter date of employment.";
    public static string SubjectTaught = "Please enter subject taught.";
    public static string TextBox394 = "Please enter education/qualification to teach this subject.";
    public static string SubmitinFormSchoolName = "Please enter name of school for which you are submitting this form.";
    public static string SSN = "Please enter social security number. ";
    public static string CAMTCID = "Please enter CAMTC ID. ";

    public static string Password = "Please enter password.";
    public static string CurrentPassword = "Please enter temporary/current password.";
    public static string NewPassword = "Please enter new password.";
    public static string ConfirmPassword = "Please enter confirm password.";
    
    public static string SiteVisitDate="Please enter site visit date.";
    public static string TypeofSiteVisit="Please select type of site visit.";
    public static string SiteInspector = "Please select site inspector.";
    public static string Comment = "Please enter comment.";

    public static string fluLocalBusiness = "Please upload document for Local Business License.";
    public static string fluOrgChart = "Please upload document for Organizational Chart.";
    public static string fluFloorPlan = "Please upload document for Floor Plan (including approximate square footage).";
    public static string fluExteriorSign = "Please upload document for Photograph(s) of Exterior Signage.";
    public static string fluBuildExterior = "Please upload document for Photograph(s) of Buiding exterior.";
    public static string fluMassageClassroom = "Please upload document for Photograph(s) of Massage Classroom(s).";
    public static string fluMassageClinic = "Please upload document for Photograph(s) of Massage Clinic(s).";

    public static string fluStaffHiring = "Please upload document for Hiring, Training, Evaluating and Discipling Policies.";
    public static string fluStaffFacility = "Please upload document for Facility Meeting Minutes/Agenda/Memos.";
    public static string fluStaffStTeRatio = "Please upload document for Student-Teacher Ratio.";

    public static string fluTrans1 = "Please upload document for Sample Transcripts.";
    public static string fluTrans2 = "Please upload document for Sample transcript of unique security measures.";
    public static string fluTrans3 = "Please upload document for Sample diploma.";
    public static string fluTrans4 = "Please upload document for Sample envelope (Front) from the school.";
    public static string fluTrans5 = "Please upload document for Sample envelope (Back) from the school.";

    //----curriculum error messages----//basu
    public static string fuCurriculum1 = "Please upload document for Massage Program Calendar.";

    public static string fuCurriculum2 = "Please upload document for Syllabi for Massage Course.";
    public static string fuCurriculum3 = "Please upload document for List of Textbooks.";

    public static string fuCurriculum4 = "Please upload document for List of Educational Materials.";
    public static string fuCurriculum5 = "Please upload document for List of Classroom Equipment.";
    public static string fuCurriculum6 = "Please upload document for Curriculum Review Policy.";
    public static string fuCurriculum7 = "Please upload document for Hygiene & Dress Code Policies .";
    public static string fuCurriculum8 = "Please upload document for Document Name.";

    //----course catlog messages----//basu
    public static string fuCourseCatalog1 = "Please upload document for Current Course Catalog.";

    public static string fuCourseCatalog2 = "Please upload document for Massage Program Addendum.";


    //----enroll agreement messages----//basu
    public static string fuEnrollAgree1 = "Please upload document for Bank Enrollment Agreement.";

    public static string fuEnrollAgree2 = "Please upload document for Massage Program Addendum.";

}