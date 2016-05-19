using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.CORE;

namespace NVBMT_WebProject.Modules.IndiVidual
{
    public partial class ucGeneralInfo : System.Web.UI.UserControl
    {
        public event EventHandler UCClick2;

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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (BrowserInfo.IsBrowserTypeChrome() || BrowserInfo.IsBrowserTypeFireFox())
            {
                frmProfileUpload.Visible = false;
                pnlProfileUpload.Visible = true;
            }
            else
            {
                frmProfileUpload.Visible = true;
                pnlProfileUpload.Visible = false;
            }
            hidIndividualId.Value = this.Individual_Id.ToString();
            frmProfileUpload.Attributes.Add("src", "../Modules/Individual/ImageUpload.aspx?IndividualId=" + this.Individual_Id + "&DocumentType=0&DocumentTypeName=Profile");
            string Profile_Image_Url = "~/ViewImage.aspx?qindi=" + Encryption.Base64Encrypt(this.Individual_Id.ToString());
            hidPermanentUrl.Value = VirtualPathUtility.ToAbsolute(Profile_Image_Url);
        }
        protected void btnAddNewProcess_Click(object sender, EventArgs e)
        {
            divbtnAddNew.Visible = false;
            divpnlAddNew.Visible = true;
            trEditmodeProcess.Visible = false;
            trGridProcess.Visible = true;
        }
        protected void btnProcessSave_Click(object sender, EventArgs e)
        {
            divbtnAddNew.Visible = true;
            divpnlAddNew.Visible = false;
            trEditmodeProcess.Visible = false;
            trGridProcess.Visible = true;
        }
        protected void imgbtnEditProcess_Click(object sender, EventArgs e)
        {
            divbtnAddNew.Visible = true;
            divpnlAddNew.Visible = false;
            trEditmodeProcess.Visible = true;
            trGridProcess.Visible = false;
        }
        protected void btnProcessUpdate_Click(object sender, EventArgs e)
        {
            divbtnAddNew.Visible = true;
            divpnlAddNew.Visible = false;
            trEditmodeProcess.Visible = false;
            trGridProcess.Visible = true;
        }
        protected void btnPhotoUpload_Click(object sender, EventArgs e)
        {

        }
        protected void btnShowHistory_Click(object sender, EventArgs e)
        {
            btnShowHistory.Enabled = false;
            lnkNext.Enabled = true;
            lnkPrev.Enabled = true;
            btnShowCurrent.Enabled = true;
        }
        protected void btnShowCurrent_Click(object sender, EventArgs e)
        {
            btnShowHistory.Enabled = true;
            lnkNext.Enabled = false;
            lnkPrev.Enabled = false;
            btnShowCurrent.Enabled = false;
        }
        protected void lnkIndividualCancel_Click(object sender, EventArgs e)
        {

            if (UCClick2 != null) UCClick2(this, e);
        }
    }
}