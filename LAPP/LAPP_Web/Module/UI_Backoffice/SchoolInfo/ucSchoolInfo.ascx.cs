using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using LAPP.BAL;
using LAPP.ENTITY;
using LAPP.ENTITY.Enumerations;
using System.Web.UI.HtmlControls;

namespace NVBMT_WebProject.Modules.IndiVidual
{

    public partial class ucAddress : System.Web.UI.UserControl
    {
        #region Class Members
        lapp_individual_address objlapp_individual_address = new lapp_individual_address();
        lapp_individual_addressBAL objlapp_individual_addressBAL = new lapp_individual_addressBAL();
        LAPP_application_status objLAPP_application_status = new LAPP_application_status();
        LAPP_application_statusBAL objLAPP_application_statusBAL = new LAPP_application_statusBAL();

        LAPP_exception_log objExLog = new LAPP_exception_log();
        LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
        LAPP_audit_info objAuditInfo = new LAPP_audit_info();
        LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
        #endregion
        
        #region PageEventHandlers
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        
        
        #endregion

        

        
    }
}