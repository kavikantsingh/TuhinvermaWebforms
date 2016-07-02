using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchoolInfo1 : System.Web.UI.Page
{

    Thread thName;
    Thread thAddress;
    Thread thApplication;
    Thread thLicense;
    Thread thNotes;
    Thread thTask;
    Thread thDocuments;
    Thread thBoardPacket;

    protected override void OnPreRender(EventArgs e)
    {
        if (thName != null)
        { thName.Join(); }

        if (thAddress != null)
        { thAddress.Join(); }

        if (thAddress != null)
        { thAddress.Join(); }

        if (thApplication != null)
        { thApplication.Join(); }

        if (thLicense != null)
        { thLicense.Join(); }

        if (thNotes != null)
        { thNotes.Join(); }

        if (thTask != null)
        { thTask.Join(); }

        if (thDocuments != null)
        { thDocuments.Join(); }

        if (thBoardPacket != null)
        { thBoardPacket.Join(); }


        base.OnPreRender(e);
    }



    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Form.Attributes.Add("enctype", "multipart/form-data");

           Session["Key"]  = UIHelper.GetBackOfficeKeyFromSession();
            
            string providerId = UIHelper.ProviderIdFromSession().ToString();
            string userId = UIHelper.GetProviderUserIdFromSession().ToString();
            string applicationId = UIHelper.ApplicationIdFromSession().ToString();

            //hdnKey.Value = key;
        }
    }
}