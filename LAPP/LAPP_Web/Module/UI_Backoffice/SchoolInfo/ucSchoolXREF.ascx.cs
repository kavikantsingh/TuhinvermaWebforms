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
using LAPP.CORE;
using LAPP.CONFIG;
public partial class Module_UI_Backoffice_Individual_ucApplication : System.Web.UI.UserControl
{
    #region Class Members
    LAPP_exception_log objExLog = new LAPP_exception_log();
    LAPP_exception_log_BAL objexLogBal = new LAPP_exception_log_BAL();
    LAPP_audit_info objAuditInfo = new LAPP_audit_info();
    LAPP_audit_info_BAL objAuditBal = new LAPP_audit_info_BAL();
    #endregion


    #region ClassProperties
    public int EditIndexQuestion5
    {
        get
        {
            if (ViewState["EditIndexQuestion5"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexQuestion5"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexQuestion5"] = value;
        }
    }
    public int Edit_Index
    {
        get
        {
            if (ViewState["Edit_Index"] != null)
            {
                return Convert.ToInt32(ViewState["Edit_Index"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["Edit_Index"] = value;
        }
    }
    public int Edit_IndexPayment
    {
        get
        {
            if (ViewState["Edit_IndexPayment"] != null)
            {
                return Convert.ToInt32(ViewState["Edit_IndexPayment"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["Edit_IndexPayment"] = value;
        }
    }
    public int Edit_IndexApplicationdetail
    {
        get
        {
            if (ViewState["Edit_IndexApplicationdetail"] != null)
            {
                return Convert.ToInt32(ViewState["Edit_IndexApplicationdetail"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["Edit_IndexApplicationdetail"] = value;
        }
    }
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
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // BindGridApplicationDetail();
        }
    }

    //protected void btnShowHistory_Click(object sender, EventArgs e)
    //{
    //    btnShowHistory.Enabled = false;
    //    lnkNext.Enabled = true;
    //    lnkPrev.Enabled = true;
    //    btnShowCurrent.Enabled = true;
    //}

    //protected void btnShowCurrent_Click(object sender, EventArgs e)
    //{
    //    btnShowHistory.Enabled = true;
    //    lnkNext.Enabled = false;
    //    lnkPrev.Enabled = false;
    //    btnShowCurrent.Enabled = false;
    //}


    public void BindGridApplicationDetail()
    {
         
    }
    public LAPP_exception_log Fetchlog()
    {
        objExLog.User_Id = UIHelper.UserIDBySession();
        objExLog.Url = string.Empty;
        objExLog.Reference_Type_Id = string.Empty;
        objExLog.Reference_Id = 1;
        //objExLog.Thread = ErrorMessage.ErrorOccured();
        objExLog.Date = DateTime.Now;
        objExLog.Level = "Low";
        objExLog.Logger = "errorLogger";
        return objExLog;
    }

}