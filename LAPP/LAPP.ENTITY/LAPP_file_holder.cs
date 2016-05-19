using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using LAPP.CORE;

namespace LAPP.ENTITY
{
    public class LAPP_file_holder : BaseEntity
    {
        public int File_Id { get; set; }
        public int Individual_Id { get; set; }
        public string Application_Number { get; set; }
        public int Applicant_ID { get; set; }
        public string File_Type { get; set; }
        public int File_Type_Id { get; set; }
        public string File_Name { get; set; }
        public string File_Path { get; set; }
        public string File_Url { get; set; }
        public bool Is_Reviewed { get; set; }
        public bool Is_Verified { get; set; }
        public bool Applicant { get; set; }
        public bool Office { get; set; }
        public bool Is_Active { get; set; }
        public bool Is_Deleted { get; set; }
        public DateTime Created_On { get; set; }
        public string Created_By { get; set; }
        public DateTime Modified_On { get; set; }
        public string Modified_By { get; set; }
        public bool Enable_Delete
        {
            get
            {

                if (!Is_Verified)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }

        }
        public string Isvarified
        {
            get
            {
                if (Is_Verified == true)
                {
                    return "../App_Themes/Theme1/images/check_icon.png";
                }
                else
                {
                    return "../App_Themes/Theme1/images/button_cross.png";
                }
            }
        }

        public string ENcriptedFileID
        {
            get
            {
                if (File_Id > 0)
                {
                    return "~/download.aspx?q=" + Encryption.Base64Encrypt(File_Id.ToString());
                }
                else
                {
                    return "";
                }
            }
        }

    }
}
