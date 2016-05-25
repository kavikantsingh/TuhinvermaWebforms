﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.ENTITY.Enumerations;
 
    public partial class ucDashboardHeader : System.Web.UI.UserControl
    {
        public string DashBoardType
        {
            get
            {
                if (Session["DashBoardType"] != null)
                {
                    return Convert.ToString(Session["DashBoardType"]);
                }
                else
                {
                    return "";
                }
            }
            set
            {
                ViewState["DashBoardType"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (this.DashBoardType != "")
                {
                    lnkBacktoDashboard.PostBackUrl = this.DashBoardType;
                }

                ltrDashboard.Visible = false;
                lnkBacktoDashboard.Visible = false;
                if (this.Page.Title.ToLower().Contains("dashboard"))
                {
                    ltrDashboard.Visible = true;
                }
                else
                {
                    lnkBacktoDashboard.Visible = true;
                }
            }
        }
    }
 