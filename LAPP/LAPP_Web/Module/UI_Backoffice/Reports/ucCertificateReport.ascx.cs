using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using LAPP.ENTITY;
using LAPP.BAL;
using CrystalDecisions.Web;
using System.Data;
 
    public partial class ucLicenseReport : System.Web.UI.UserControl
    {
        ReportDocument reportdocument = new ReportDocument();

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Page_Init(object sender, EventArgs e)
        {
            ReportClass objClass = new ReportClass();
            List<LAPP_individual> lstLAPPindividual = new List<LAPP_individual>();
            LAPP_individualBAL objLAPP_individualBAL = new LAPP_individualBAL();


            LicenseReport.MemberLicenseDataTable dt1 = new LicenseReport.MemberLicenseDataTable();
            if (Session["lstLAPPindividual"] == null)
            {
                lstLAPPindividual = objLAPP_individualBAL.Get_All_LAPP_individual_WithName();
                Session["lstLAPPindividual"] = lstLAPPindividual;
            }
            else
            {
                lstLAPPindividual = (List<LAPP_individual>)Session["lstLAPPindividual"];

            }
            if (lstLAPPindividual != null && lstLAPPindividual.Count > 0)
            {

                foreach (LAPP_individual obj in lstLAPPindividual)
                {
                    DataRow dr1 = dt1.NewRow();
                    // dr1[0] = dr[0];

                    dr1[0] = obj.License_Number;
                    dr1[1] = obj.First_Name;
                    dr1[2] = obj.Last_Name;
                    dr1[3] = Convert.ToDateTime(obj.Expired_On).ToString("MM/dd/yyyy");
                    dr1[4] = obj.Status;

                    dt1.Rows.Add(dr1);

                }
            }
 
            reportdocument.Load(Server.MapPath("~/LAPP_UI_Backoffice/Reports/CrystalReports/LicenseReport.rpt"));
            reportdocument.SetDataSource(dt1.DefaultView);
            reportdocument.Refresh();
            crLicenseReport.Zoom(100);
            crLicenseReport.ReportSource = reportdocument;
        }
    }
 