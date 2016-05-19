using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
namespace LAPP.CONFIG
{
    public class Lapp_Configuration
    {
        public static LAPP_configuration AuthMaxFailedLogins()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(1);
        }

        public static LAPP_configuration AuthPasswordExpiresDays()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(2);
        }

        public static LAPP_configuration AuthPasswordLengthMax()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(3);
        }

        public static LAPP_configuration AuthPasswordLengthMin()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(4);
        }

        public static LAPP_configuration AuthPasswordMixedCaseRequired()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(5);
        }

        public static LAPP_configuration AuthPasswordNumberRequired()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(6);
        }

        public static LAPP_configuration AuthPasswordSymbolRequired()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(7);
        }

        public static LAPP_configuration EmailFrom()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(8);
        }

        public static LAPP_configuration SmtpEnableSsl()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(9);
        }

        public static LAPP_configuration SmtpPassword()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(10);
        }

        public static LAPP_configuration SmtpPort()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(11);
        }

        public static LAPP_configuration SmtpServer()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(12);
        }

        public static LAPP_configuration SmtpUsername()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(13);
        }

        public static LAPP_configuration BackupEmailFrom()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(14);
        }

        public static LAPP_configuration BackupSmtpEnableSsl()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(15);
        }

        public static LAPP_configuration BackupSmtpPassword()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(16);
        }

        public static LAPP_configuration BackupSmtpPort()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(17);
        }

        public static LAPP_configuration BackupSmtpServer()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(18);
        }

        public static LAPP_configuration BackupSmtpUsername()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(19);
        }

        public static LAPP_configuration EmailCopy()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(20);
        }

        public static LAPP_configuration EmailBlindCopy()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(21);
        }

        public static LAPP_configuration UseEmailFromBasedonModule()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(22);
        }

        public static LAPP_configuration AdmissionRegNoSeq()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(23);
        }

        public static LAPP_configuration ResetAdmRegNoSeqByYear()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(24);
        }

        public static LAPP_configuration AdmissionRegNoRandom()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(25);
        }

        public static LAPP_configuration SameRegNoApplicantandStudent()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(26);
        }

        public static LAPP_configuration AllowInitialPwdEntryByApplicant()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(27);
        }

        public static LAPP_configuration OnlineAppReqiestEmail()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(28);
        }

        public static LAPP_configuration UploadFileDirectoryPath()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(29);
        }

        public static bool IsApplicationUnderDevelopment()
        {
            try
            {
                LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
                return Convert.ToBoolean(objBAL.Get_LAPP_configuration_BY_ID(30).Value);
            }
            catch (Exception ex)
            {
                return true;
            }
        }

        public static bool IsAuthorizeDotNetInProduction()
        {
            try
            {
                LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
                return Convert.ToBoolean(objBAL.Get_LAPP_configuration_BY_ID(50).Value);
            }
            catch (Exception ex)
            {
                return true;
            }
        }

        public static bool UseDefaultCredentials()
        {
            try
            {
                LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
                return Convert.ToBoolean(objBAL.Get_LAPP_configuration_BY_ID(31).Value);
            }
            catch (Exception ex)
            {
                return false;
            }
        }


        public static string Get_LogoUrl()
        {
            try
            {
                LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
                return Convert.ToString(objBAL.Get_LAPP_configuration_BY_ID(32).Value);
            }
            catch (Exception ex)
            {
                return "";
            }
        }
        public static LAPP_configuration GetIdCardSignature()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(43);
        }
        public static LAPP_configuration GetCertificateSignature()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(44);
        }
        public static LAPP_configuration LetterSignatoryName()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(33);
        }

        public static LAPP_configuration LetterSignatoryDesignation()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(34);
        }

        public static LAPP_configuration LetterSignatoryAgency()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(35);
        }

        public static LAPP_configuration AuthorizeDotNetAPILoginID()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(36);
        }

        public static LAPP_configuration AuthorizeDotNetTransactionKey()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(37);
        }

        public static LAPP_configuration VOLSignatoryName()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(38);
        }

        public static LAPP_configuration VOLSignatoryDesignation()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return objBAL.Get_LAPP_configuration_BY_ID(39);
        }

        public static int MinimumReferences()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return Convert.ToInt32(objBAL.Get_LAPP_configuration_BY_ID(40).Value);
        }

        public static int MaximumReference()
        {
            LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
            return Convert.ToInt32(objBAL.Get_LAPP_configuration_BY_ID(41).Value);
        }

        public static bool IsValidApplicantAge(DateTime dt, int eApp)
        {
            if ((int)eApplicantAge.Age216Months18Plus == eApp)
            {
                return ApplicantIs18Plus(dt);
            }
            else if ((int)eApplicantAge.Age210Months17nHalfPlus == eApp)
            {
                return ApplicantIs17HalfPlus(dt);
            }
            else
            {
                return false;
            }

        }

        public static bool ApplicantIs18Plus(DateTime dt)
        {
            int age = GetAge(dt);
            if (age < 216)
            {
                return false;
            }
            else
            {
                return true;
            }
            //return true;

        }

        public static bool ApplicantIs17HalfPlus(DateTime dt)
        {
            int age = GetAge(dt);
            if (age < 210)
            {
                return false;
            }
            else
            {
                return true;
            }

        }
        public static int GetAge(DateTime dt)
        {
            DateTime today = DateTime.Now;
            int years = 0;
            int days = 0;
            int months = 0;
            int[] age = new int[3];
            while (dt.Year != today.Year || dt.Month != today.Month || dt.Day != today.Day)
            {
                if (dt.AddYears(1).CompareTo(today) <= 0)
                {
                    years++;
                    dt = dt.AddYears(1);
                }
                else
                {
                    if (dt.AddMonths(1).CompareTo(today) <= 0)
                    {
                        months++;
                        dt = dt.AddMonths(1);
                    }
                    else
                    {
                        if (dt.AddDays(1).CompareTo(today) <= 0)
                        {
                            days++;
                            dt = dt.AddDays(1);
                        }
                        else
                        {
                            dt = today;
                        }
                    }

                }
            }
            age[0] = years;
            age[1] = months;
            age[2] = days;
            return (years * 12) + months;
        }

       
        
        public static string Get_ApplicationNameByTypeId(int TypeId)
        {
            Lapp_application_fee objAppFee = new Lapp_application_fee();
            Lapp_application_feeBAL objAppFeeBAL = new Lapp_application_feeBAL();
            objAppFee = objAppFeeBAL.Get_Lapp_application_fee_Get_by_Application_ID(TypeId);
            if (objAppFee != null)
            {
                return objAppFee.Name;
            }
            return "";

        }
        public static int Get_RoleTypeByRoleId(int RoleId)
        {
            LAPP_role objRole = new LAPP_role();
            LAPP_role_BAL objRoleBAL = new LAPP_role_BAL();
            objRole = objRoleBAL.Get_LAPP_role_BY_ID(RoleId);
            if (objRole != null)
            {
                return objRole.Role_Type_ID;
            }
            return 0;

        }

        public static bool IsAllDocumentsAreUploaded(string Application_Number)
        {
            LAPP_file_holderBAL objLAPP_file_holderBAL = new LAPP_file_holderBAL();
            List<LAPP_file_holder> lstLAPP_file_holder = new List<LAPP_file_holder>();
            lstLAPP_file_holder = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Number(Application_Number);
            bool HaveAllDocuments = false;
            bool HavScoreReport = false;
            bool HavTranscript = false;
            bool HavCertificationOfCompletion = false;
            if (lstLAPP_file_holder != null && lstLAPP_file_holder.Count > 0)
            {
                foreach (LAPP_file_holder obj in lstLAPP_file_holder)
                {
                    if (obj.File_Type_Id == 5)
                    {
                        HavScoreReport = true;
                    }
                    if (obj.File_Type_Id == 7)
                    {
                        HavCertificationOfCompletion = true;
                    }
                    if (obj.File_Type_Id == 4)
                    {
                        HavTranscript = true;
                    }
                }
            }
            if (HavTranscript & HavScoreReport & HavCertificationOfCompletion)
            {
                HaveAllDocuments = true;
            }

            return HaveAllDocuments;
        }
        public static bool IsAllDocumentsAreUploadedAndVerified(string Application_Number)
        {
            LAPP_file_holderBAL objLAPP_file_holderBAL = new LAPP_file_holderBAL();
            List<LAPP_file_holder> lstLAPP_file_holder = new List<LAPP_file_holder>();
            lstLAPP_file_holder = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Number(Application_Number);
            bool HaveAllDocuments = false;
            bool HavScoreReport = false;
            bool HavTranscript = false;
            bool HavCertificationOfCompletion = false;
            if (lstLAPP_file_holder != null && lstLAPP_file_holder.Count > 0)
            {
                foreach (LAPP_file_holder obj in lstLAPP_file_holder)
                {
                    if (obj.File_Type_Id == 5 && obj.Is_Verified)
                    {
                        HavScoreReport = true;
                    }
                    if (obj.File_Type_Id == 7 && obj.Is_Verified)
                    {
                        HavCertificationOfCompletion = true;
                    }
                    if (obj.File_Type_Id == 4 && obj.Is_Verified)
                    {
                        HavTranscript = true;
                    }
                }
            }
            if (HavTranscript & HavScoreReport & HavCertificationOfCompletion)
            {
                HaveAllDocuments = true;
            }

            return HaveAllDocuments;
        }

        public static bool IsScoreReportAreUploadedAndVerified(string Application_Number)
        {
            LAPP_file_holderBAL objLAPP_file_holderBAL = new LAPP_file_holderBAL();
            List<LAPP_file_holder> lstLAPP_file_holder = new List<LAPP_file_holder>();
            lstLAPP_file_holder = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Number(Application_Number);
            bool HaveAllDocuments = false;
            bool HavScoreReport = false;
            lstLAPP_file_holder = lstLAPP_file_holder.Where(x => x.File_Type_Id == 5).ToList();
            if (lstLAPP_file_holder != null && lstLAPP_file_holder.Count > 0)
            {
                foreach (LAPP_file_holder obj in lstLAPP_file_holder)
                {
                    if (obj.File_Type_Id == 5 && obj.Is_Verified)
                    {
                        HavScoreReport = true;
                    }
                }
            }
            if (HavScoreReport)
            {
                HaveAllDocuments = true;
            }

            return HaveAllDocuments;
        }

        public static bool IsTranscriptAreUploadedAndVerified(string Application_Number)
        {
            LAPP_file_holderBAL objLAPP_file_holderBAL = new LAPP_file_holderBAL();
            List<LAPP_file_holder> lstLAPP_file_holder = new List<LAPP_file_holder>();
            lstLAPP_file_holder = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Number(Application_Number);
            bool HaveAllDocuments = false;
            bool HavScoreReport = false;
            lstLAPP_file_holder = lstLAPP_file_holder.Where(x => x.File_Type_Id == 4).ToList();

            if (lstLAPP_file_holder != null && lstLAPP_file_holder.Count > 0)
            {
                foreach (LAPP_file_holder obj in lstLAPP_file_holder)
                {
                    if (obj.File_Type_Id == 4 && obj.Is_Verified)
                    {
                        HavScoreReport = true;
                    }
                }
            }
            if (HavScoreReport)
            {
                HaveAllDocuments = true;
            }

            return HaveAllDocuments;
        }

    
        public static bool IsProfileImageUploaded(string Application_Number)
        {
            try
            {
                LAPP_file_holderBAL objLAPP_file_holderBAL = new LAPP_file_holderBAL();
                LAPP_file_holder lstLAPP_file_holder = new LAPP_file_holder();
                lstLAPP_file_holder = objLAPP_file_holderBAL.Get_LAPP_file_holder_Get_BY_ApplicantNumber_DocType(Application_Number, 16);
                bool HaveProfile = false;
                if (lstLAPP_file_holder != null)
                {
                    HaveProfile = true;
                }
                return HaveProfile;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public static string CreateRandomPassword(int passwordLength)
        {
            string allowedChars = "abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ0123456789!@$?";
            char[] chars = new char[passwordLength];
            Random rd = new Random();

            for (int i = 0; i < passwordLength; i++)
            {
                chars[i] = allowedChars[rd.Next(0, allowedChars.Length)];
            }

            return new string(chars);
        }
        public static string GetLicensePrefix = "NVMT.";

        public static int RequiredCEH()
        {
            return 12;
        }

        public static int MaxCEH()
        {
            return 36;
        }

        public static decimal AmountMaxLateFee()
        {
            try
            {
                LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
                return Convert.ToDecimal(objBAL.Get_LAPP_configuration_BY_ID(42).Value);
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        public static bool IsPublicSiteUp()
        {
            try
            {
                LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
                return Convert.ToBoolean(objBAL.Get_LAPP_configuration_BY_ID(45).Value);
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public static bool IsBackofficeSiteUP()
        {
            try
            {
                LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
                return Convert.ToBoolean(objBAL.Get_LAPP_configuration_BY_ID(46).Value);
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public static bool IsCertificateOfCompleteionUplaoded(string Application_Number)
        {
            LAPP_file_holderBAL objLAPP_file_holderBAL = new LAPP_file_holderBAL();
            List<LAPP_file_holder> lstLAPP_file_holder = new List<LAPP_file_holder>();
            lstLAPP_file_holder = objLAPP_file_holderBAL.Get_All_LAPP_file_holder_By_Application_Number(Application_Number);
            bool HaveAllDocuments = false;
            bool HavScoreReport = false;
            lstLAPP_file_holder = lstLAPP_file_holder.Where(x => x.File_Type_Id == 7).ToList();

            if (lstLAPP_file_holder != null && lstLAPP_file_holder.Count > 0)
            {
                foreach (LAPP_file_holder obj in lstLAPP_file_holder)
                {
                    if (obj.File_Type_Id == 7)
                    {
                        HavScoreReport = true;
                    }
                }
            }
            if (HavScoreReport)
            {
                HaveAllDocuments = true;
            }

            return HaveAllDocuments;
        }

        public static bool ShowDuplicateLicenseLink()
        {
            try
            {
                LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
                return Convert.ToBoolean(objBAL.Get_LAPP_configuration_BY_ID(47).Value);
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        public static bool ShowVerificationOfLicensureLink()
        {
            try
            {
                LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
                return Convert.ToBoolean(objBAL.Get_LAPP_configuration_BY_ID(48).Value);
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public static bool ShowTemporaryLicenseLink()
        {
            try
            {
                LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
                return Convert.ToBoolean(objBAL.Get_LAPP_configuration_BY_ID(49).Value);
            }
            catch (Exception ex)
            {
                return false;
            }
        }


        public static string GetAuthorizeNetPostUrl()
        {
            if (!Lapp_Configuration.IsAuthorizeDotNetInProduction())
            {
                return "https://test.authorize.net/gateway/transact.dll";
            }
            else
            {
                return "https://secure.authorize.net/gateway/transact.dll";
            }
        }

        public static string GetIdCardSignatureGreen()
        {
            return UploadFileDirectoryPath().Value + "\\Signature\\Id-Card_Signature-green.png";
        }

        public static bool EditLateRenewalFee()
        {
            try
            {
                LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
                return Convert.ToBoolean(objBAL.Get_LAPP_configuration_BY_ID(51).Value);
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public static bool EditLicenseRenewalFee()
        {
            try
            {
                LAPP_configurationBAL objBAL = new LAPP_configurationBAL();
                return Convert.ToBoolean(objBAL.Get_LAPP_configuration_BY_ID(52).Value);
            }
            catch (Exception ex)
            {
                return false;
            }
        }

    }
}
