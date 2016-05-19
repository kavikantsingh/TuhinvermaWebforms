using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LAPP.ENTITY.Enumerations
{
    public enum eUserType
    {
        AdminUser = 1,
        PublicUser,
        Guest,
    }

    public enum eRoleType
    {
        Administrator = 1,
        Assigner,
        Staff,
    }

    public enum edeficiency
    {
        deficient = 1,
        undeficient,
        underRevision
    }
    public enum eApplicationStatus
    {
        Completed = 1,
        Pending,
        InProgress
    }
    public enum eApplicationType
    {
        ApplicationRequest = 1,
        TemporaryApplication,
        NewSchoolApplication,
        TransferApplication,
        RenewalApplication,
        DuplicateLicenseApplication
    }

    public enum eIndividualType
    {
        Member = 1,
        Applicant
    }
    public enum eApplicantAge
    {
        Age210Months17nHalfPlus = 1,
        Age216Months18Plus
    }

    public enum ePaymentMode
    {
        CreditCard = 1,
        ECheck,
        Cash,
        Check,
        MoneyOrder
    }
    public enum eApplication_From
    {
        Online = 1,
        Backoffice
    }

    public enum eDocumentType
    {

    }


    public enum eTemplateType
    {
        sms = 1,
        email,
        alert,
    }
    public enum eSeverity
    {
        High = 1,
        Low
    }

    public enum eStatus
    {
        Open = 1,
        Closed,
        Dismissed,
        Complete,
        Pending,
    }

    public enum eActInitiator
    {
        Order = 1,
        BoardCouncil,
        Director,
        Committee,
        AdvisoryCommittee,
        NON,
        REVOKED,
        RETIRED,
        EXPIRED,
        EXEMPT
    }
    public enum eTabStatusType
    {
        Individual = 1,
        Application,
        Names,
        Address,
        Task,
        Notes,
        Documents

    }

    public enum eMessageType
    {
        Welcome = 1,
        Bulletin
    }
    public enum eCommentType
    {
        Member = 1,
        Firm

    }
 
    public enum eMemberStatus
    {
        ACTIVE = 1,
        SUSPENDED,
        DECEASED,
        INACTIVE,
        WITHDREW,
        NON,
        REVOKED,
        RETIRED,
        EXPIRED,
        EXEMPT
    }

    public enum eComplainStatus
    {
        Open = 1,
        Closed,
        DISCIPLINED,
        Dismissed,
        Complete,
        Pending

    }


    public enum eComplainActInitiator
    {
        Order = 1,
        BoardCouncil,
        Director,
        Committee,
        AdvisoryCommittee
    }

    public enum eBusinessTypeMaster
    {
        Corporation = 1,
        PartnerShip,
        Firm,
        Sole,
        Utlity,
        Government
    }
    public enum ePaymentMethod
    {
        AuthorizeNet = 1,
        Paypal,
        Backoffice

    }
    public enum eTransactionTypeMember
    {
        New = 1,
        Renewal,
        Late,
        ConvenienceFee
    }
    public enum eTransactionTypeFirm
    {
        New = 1,
        Renewal,
        Late,

        ConvenienceFee,
        Exempt
    }
    public enum eRenewalObjectType
    {
        Branch = 1,
        ResponsibleCharge,
        Principals,
        Discipline
    }
    public enum eRenewalActionType
    {
        Add = 1,
        Delete
    }
    public enum eAccoutTy
    {
        Member = 1,
        Firm = 2
    }
    public enum eDisciplineType
    {
        Member = 1,
        Firm
    }
    public enum ePaymentTy
    {
        CreditCard = 1,
        ECheck,
        Cash,
        Check,
        MoneyOrder
    }
    public enum ePaymentStatus
    {
        Paid = 1,
        Unpaid,
        Pending,
        Failed
    }
    public enum eLicenseRenewalStatus
    {
        Pending = 1,
        Completed,
        Hold,
        NewApplicationPending
    }
    public enum eTransactionStatus
    {
        Pending = 1,
        Completed,
        Hold
    }
    public enum eExperianceType
    {
        Engineering = 1,
        NonEngineering = 2
    }
    public enum eAlertType
    {
        Success = 1,
        Error
    }
    public enum eProfessionalServiceType
    {
        Master = 1,
        Other
    }
    public struct sUserInfo
    {
        public int userID { get; set; }
        public string userName { get; set; }
        public eUserType UserType { get; set; }
    }
    public struct sObjSession
    {
        public Guid SessionID { get; set; }

        public int UserID { get; set; }

        public DateTime CreatedOn { get; set; }
    }
    [Serializable]
    public class sUserLoginInfo
    {
        public int UserID { get; set; }
        public string UserName { get; set; }
        public Guid SessionID { get; set; }
        public string EmailID { get; set; }
        public string Password { get; set; }
        public int User_Type { get; set; }
        public int RoleId { get; set; }
    }

    public class sIndividualLoginInfo
    {
        public int Applicant_Id { get; set; }
        public string Email { get; set; }
        public string Last_Name { get; set; }
        public string First_Name { get; set; }
        public string User_Name { get; set; }
        public string Application_Number { get; set; }
        public Guid SessionID { get; set; }
        public string Password { get; set; }
        public string last_login { get; set; }
        public string last_failed { get; set; }

        public int Individual_ID { get; set; }
    }
    public class ServiceResponse
    {
        public int Sucessfull { get; set; }
        public int UnSucessfull { get; set; }
        public bool Status { get; set; }
        public string Message { get; set; }
    }
    public class sObjFee
    {
        public int FeeTypeId { get; set; }
        public double FeeAmount { get; set; }
        public string FeeName { get; set; }
    }

    public class sDisciplineFee
    {
        public decimal Discipline1 { get; set; }
        public decimal Discipline2 { get; set; }
        public decimal Discipline3 { get; set; }
        public decimal LateFee { get; set; }
        public decimal DisciplineTotal
        {
            get
            {
                return Discipline1 + Discipline2 + Discipline3;
            }
        }
        public decimal GrandTotal
        {
            get
            {
                return Discipline1 + Discipline2 + Discipline3 + LateFee;
            }
        }
        public decimal WithdrawFee { get; set; }
        public decimal RetiredFee { get; set; }

        public decimal AdjustedAmount
        {
            get
            {
                return WithdrawFee + RetiredFee;
            }
        }
        public decimal TransactionFee { get; set; }
    }
    #region Custom Field
    public enum eInputType
    {
        Checkbox =1,
        Dropdown,
        RadioButton,
        Textarea,
        Textbox
    }
    public class sDynamicFields
    {
        public string ID { get; set; }
        public string Label { get; set; }
        public string CustomField { get; set; }

    } 
    #endregion
    public class sFirmFee
    {
        public decimal Discipline1 { get; set; }
        public decimal Discipline2 { get; set; }
        public decimal Discipline3 { get; set; }
        public decimal RenewalFee { get; set; }
        public decimal NewFee { get; set; }
        public decimal LateFee { get; set; }
        public decimal ExcemptFee { get; set; }
        public decimal Total
        {
            get
            {
                return RenewalFee + NewFee + ExcemptFee;
            }
        }
        public decimal GrandTotal
        {
            get
            {
                return RenewalFee + NewFee + ExcemptFee + LateFee;
            }
        }
        public decimal TransactionFee { get; set; }
    }
    [Serializable]

    public struct AjaxResponseMsg
    {
        public string Message { get; set; }
        public bool Status { get; set; }
        public string ID { get; set; }
    }
    public struct sQueryString
    {
        public string QueryString { get; set; }
        public string QueryValue { get; set; }
    }

    public class AddressVerification
    {
        public string input_Indes { get; set; }
        public string candidate_index { get; set; }
        public string delivery_line_1 { get; set; }
        public string delivery_line_2 { get; set; }
        public string last_line { get; set; }
        public string delivery_point_barcode { get; set; }

        public components components { get; set; }
        public metadata metadata { get; set; }
        public analysis analysis { get; set; }


    }

    public class components
    {
        public string primary_number { get; set; }
        public string street_name { get; set; }
        public string street_suffix { get; set; }
        public string city_name { get; set; }
        public string state_abbreviation { get; set; }
        public string zipcode { get; set; }
        public string plus4_code { get; set; }
        public string delivery_point { get; set; }
        public string delivery_point_check_digit { get; set; }

        public string street1
        {
            get
            {
                return primary_number + " " + street_name + " " + street_suffix;
            }
        }
        public string street2 { get; set; }
    }

    public class metadata
    {
        public string record_type { get; set; }
        public string zip_type { get; set; }
        public string county_fips { get; set; }
        public string county_name { get; set; }
        public string carrier_route { get; set; }
        public string congressional_district { get; set; }
        public string building_default_indicator { get; set; }
        public string rdi { get; set; }
        public string elot_sequence { get; set; }
        public string elot_sort { get; set; }
        public string latitude { get; set; }
        public string longitude { get; set; }
        public string precision { get; set; }
        public string time_zone { get; set; }
        public string utc_offset { get; set; }
        public string dst { get; set; }
    }

    public class analysis
    {
        public string dpv_match_code { get; set; }
        public string dpv_footnotes { get; set; }
        public string dpv_cmra { get; set; }
        public string dpv_vacant { get; set; }
        public string active { get; set; }
        public string footnotes { get; set; }
    }
}
