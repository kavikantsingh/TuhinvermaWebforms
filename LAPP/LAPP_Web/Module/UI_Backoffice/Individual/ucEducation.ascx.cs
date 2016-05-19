using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace NVBMT_WebProject.Modules.IndiVidual
{
    public partial class ucEducation : System.Web.UI.UserControl
    {
        public int EditIndexExam
        {
            get
            {
                if (ViewState["EditIndexExam"] != null)
                {
                    return Convert.ToInt32(ViewState["EditIndexExam"]);

                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["EditIndexExam"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //BindGridEducation();
                BindGridEducation2();
                BindExams();
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

        //#region Education 1

        //public int EditIndexEducation
        //{
        //    get
        //    {
        //        if (ViewState["EditIndexEducation"] != null)
        //        {
        //            return Convert.ToInt32(ViewState["EditIndexEducation"]);

        //        }
        //        else
        //        {
        //            return -1;
        //        }
        //    }
        //    set
        //    {
        //        ViewState["EditIndexEducation"] = value;
        //    }
        //}

        //protected void btnEducation1AddNew_Click(object sender, EventArgs e)
        //{
        //    divEducationt1.Visible = false;
        //    divAddPanelEducation1.Visible = true;
        //    this.EditIndexEducation = -1;
        //    BindGridEducation();
        //}
        //protected void btnEducation1Save_Click(object sender, EventArgs e)
        //{
        //    divEducationt1.Visible = true;
        //    divAddPanelEducation1.Visible = false;
        //}
        //protected void lnkEducation1Cancel_Click(object sender, EventArgs e)
        //{
        //    divEducationt1.Visible = true;
        //    divAddPanelEducation1.Visible = false;
        //}

        //int ROWEdu1 = 0;

        //protected void gvEducation1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {

        //        Label lblBusinessName2 = e.Row.FindControl("lblBusinessName2") as Label;
        //        Label lblBusinessPhone2 = e.Row.FindControl("lblBusinessPhone2") as Label;
        //        Label lblCity2 = e.Row.FindControl("lblCity2") as Label;
        //        Label lblState2 = e.Row.FindControl("lblState2") as Label;
        //        Label lblZip2 = e.Row.FindControl("lblZip2") as Label;

        //        if (lblBusinessName2 != null && lblBusinessPhone2 != null && lblCity2 != null && lblState2 != null && lblZip2 != null)
        //        {
        //            if (ROWEdu1 == 0)
        //            {

        //                lblBusinessName2.Text = "Dolce Salon and Spa";
        //                lblBusinessPhone2.Text = "(530) 542-0604";
        //                lblCity2.Text = "EMERYVILLE";
        //                lblState2.Text = "CA";
        //                lblZip2.Text = "96151";
        //            }
        //            else if (ROWEdu1 == 1)
        //            {
        //                lblBusinessName2.Text = "Professional Massage Inc.";
        //                lblBusinessPhone2.Text = "(775) 742-0000";
        //                lblCity2.Text = "TEMPLE CITY";
        //                lblState2.Text = "CA";
        //                lblZip2.Text = "89450";
        //            }
        //        }

        //        ROWEdu1++;

        //    }
        //}

        //public void BindGridEducation()
        //{

        //    ArrayList ArryListName = new ArrayList();
        //    ArryListName.Add("CA");
        //    ArryListName.Add("CA");

        //    gvEducation1.EditIndex = this.EditIndexEducation;
        //    gvEducation1.DataSource = ArryListName;
        //    gvEducation1.DataBind();

        //    if (this.EditIndexEducation >= 0)
        //    {
        //        gvEducation1.Rows[this.EditIndexEducation].CssClass = "RowInEditMode";
        //        gvEducation1.Rows[this.EditIndexEducation].Cells[0].Attributes.Add("colspan", "6");
        //        gvEducation1.Rows[this.EditIndexEducation].Cells[1].Visible = false;
        //        gvEducation1.Rows[this.EditIndexEducation].Cells[2].Visible = false;
        //        gvEducation1.Rows[this.EditIndexEducation].Cells[3].Visible = false;
        //        gvEducation1.Rows[this.EditIndexEducation].Cells[4].Visible = false;
        //        gvEducation1.Rows[this.EditIndexEducation].Cells[5].Visible = false;
        //    }
        //}

        //public void FillControlEducation1(GridView gv, int EditInd)
        //{
        //    try
        //    {
        //        TextBox txtEdu1SchoolNameEdit = gv.Rows[this.EditIndexEducation].FindControl("txtEdu1SchoolNameEdit") as TextBox;
        //        TextBox txtEdu1CityEdit = gv.Rows[this.EditIndexEducation].FindControl("txtEdu1CityEdit") as TextBox;
        //        TextBox txtEdu1ZipEdit = gv.Rows[this.EditIndexEducation].FindControl("txtEdu1ZipEdit") as TextBox;
        //        TextBox txtEdu1SchoolPhoneEdit = gv.Rows[this.EditIndexEducation].FindControl("txtEdu1SchoolPhoneEdit") as TextBox;
        //        DropDownList ddlEdu1StateEdit = gv.Rows[this.EditIndexEducation].FindControl("ddlEdu1StateEdit") as DropDownList;
        //        DropDownList ddlEduCountryNameEdit = gv.Rows[this.EditIndexEducation].FindControl("ddlEduCountryNameEdit") as DropDownList;


        //        txtEdu1SchoolNameEdit.Text = "NATIONAL HOLISTIC INSTITUTE";
        //        ddlEdu1StateEdit.SelectedValue = "CA";
        //        txtEdu1SchoolPhoneEdit.Text = "(530) 542-0604";
        //        ddlEduCountryNameEdit.SelectedValue = "US";
        //        txtEdu1ZipEdit.Text = "96151";
        //        txtEdu1CityEdit.Text = "EMERYVILLE";

        //    }

        //    catch (Exception ex)
        //    {

        //    }
        //}

        //protected void btnEducation1Update_Click(object sender, EventArgs e)
        //{
        //    this.EditIndexEducation = -1;
        //    BindGridEducation();
        //}

        //protected void lnkEducation1CancelUpdate_Click(object sender, EventArgs e)
        //{
        //    this.EditIndexEducation = -1;
        //    BindGridEducation();
        //}

        //protected void lnkEducation1Edit_Click(object sender, EventArgs e)
        //{
        //    divEducationt1.Visible = true;
        //    divAddPanelEducation1.Visible = false;
        //    this.EditIndexEducation = -1;

        //    ImageButton imgbtnEducation1Edit = (ImageButton)sender;
        //    if (imgbtnEducation1Edit != null)
        //    {
        //        int ID = Convert.ToInt32(imgbtnEducation1Edit.CommandArgument);
        //        this.EditIndexEducation = Convert.ToInt32(imgbtnEducation1Edit.Attributes["RowIndex"]);
        //        BindGridEducation();
        //        FillControlEducation1(gvEducation1, this.EditIndexEducation);
        //    }
        //}

        //protected void lnkEducation1Delete_Click(object sender, EventArgs e)
        //{

        //}

        //#endregion

        #region Education 2

        public int EditIndexEducation2
        {
            get
            {
                if (ViewState["EditIndexEducation2"] != null)
                {
                    return Convert.ToInt32(ViewState["EditIndexEducation2"]);

                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["EditIndexEducation2"] = value;
            }
        }

        protected void btnEducation2AddNew_Click(object sender, EventArgs e)
        {
            divEducationt2.Visible = false;
            divAddPanelEducation2.Visible = true;
            this.EditIndexEducation2 = -1;
            BindGridEducation2();
        }
        protected void btnEducation2Save_Click(object sender, EventArgs e)
        {
            divEducationt2.Visible = true;
            divAddPanelEducation2.Visible = false;
        }
        protected void lnkEducation2Cancel_Click(object sender, EventArgs e)
        {
            divEducationt2.Visible = true;
            divAddPanelEducation2.Visible = false;
        }

        int ROWEdu2 = 0;

        protected void gvEducation2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblBusinessName2 = e.Row.FindControl("lblBusinessName2") as Label;
                Label lblDateStart = e.Row.FindControl("lblDateStart") as Label;
                Label lblDateComplete = e.Row.FindControl("lblDateComplete") as Label;
                Label lblTotalHRS = e.Row.FindControl("lblTotalHRS") as Label;

                if (lblBusinessName2 != null && lblDateStart != null && lblDateComplete != null && lblTotalHRS != null)
                {
                    if (ROWEdu2 == 0)
                    {
                        lblBusinessName2.Text = "NATIONAL HOLISTIC INSTITUTE";
                        lblDateStart.Text = "01/02/2012";
                        lblDateComplete.Text = "02/04/2014";
                        lblTotalHRS.Text = "201";
                    }
                    else if (ROWEdu2 == 1)
                    {
                        lblBusinessName2.Text = "Professional Massage Inc.";
                        lblDateStart.Text = "11/02/2011";
                        lblDateComplete.Text = "08/01/2014";
                        lblTotalHRS.Text = "302";
                    }
                }

                ROWEdu2++;

            }
        }

        public void BindGridEducation2()
        {

            ArrayList ArryListName = new ArrayList();
            ArryListName.Add("CA");
            ArryListName.Add("CA");

            gvEducation2.EditIndex = this.EditIndexEducation2;
            gvEducation2.DataSource = ArryListName;
            gvEducation2.DataBind();

            if (this.EditIndexEducation2 >= 0)
            {
                gvEducation2.Rows[this.EditIndexEducation2].CssClass = "RowInEditMode";
                gvEducation2.Rows[this.EditIndexEducation2].Cells[0].Attributes.Add("colspan", "7");
                gvEducation2.Rows[this.EditIndexEducation2].Cells[1].Visible = false;
                gvEducation2.Rows[this.EditIndexEducation2].Cells[2].Visible = false;
                gvEducation2.Rows[this.EditIndexEducation2].Cells[3].Visible = false;
                gvEducation2.Rows[this.EditIndexEducation2].Cells[4].Visible = false;
                gvEducation2.Rows[this.EditIndexEducation2].Cells[5].Visible = false;
                gvEducation2.Rows[this.EditIndexEducation2].Cells[6].Visible = false;
            }
        }

        public void FillControlEducation2(GridView gv, int EditInd)
        {
            try
            {
                TextBox txtEducationStartDateEdit = gv.Rows[this.EditIndexEducation2].FindControl("txtEducationStartDateEdit") as TextBox;
                TextBox txtEducationEndDateEdit = gv.Rows[this.EditIndexEducation2].FindControl("txtEducationEndDateEdit") as TextBox;
                TextBox txtEducationHRSEdit = gv.Rows[this.EditIndexEducation2].FindControl("txtEducationHRSEdit") as TextBox;

                txtEducationStartDateEdit.Text = "01/02/2012";
                txtEducationEndDateEdit.Text = "02/04/2014";
                txtEducationHRSEdit.Text = "201";
            }

            catch (Exception ex)
            {

            }
        }

        protected void btnEducation2Update_Click(object sender, EventArgs e)
        {
            this.EditIndexEducation2 = -1;
            BindGridEducation2();
        }

        protected void lnkEducation2CancelUpdate_Click(object sender, EventArgs e)
        {
            this.EditIndexEducation2 = -1;
            BindGridEducation2();
        }

        protected void lnkEducation2Edit_Click(object sender, EventArgs e)
        {
            divEducationt2.Visible = true;
            divAddPanelEducation2.Visible = false;
            this.EditIndexEducation2 = -1;

            ImageButton imgbtnEducation2Edit = (ImageButton)sender;
            if (imgbtnEducation2Edit != null)
            {
                int ID = Convert.ToInt32(imgbtnEducation2Edit.CommandArgument);
                this.EditIndexEducation2 = Convert.ToInt32(imgbtnEducation2Edit.Attributes["RowIndex"]);
                BindGridEducation2();
                FillControlEducation2(gvEducation2, this.EditIndexEducation2);
            }
        }

        protected void lnkEducation2Delete_Click(object sender, EventArgs e)
        {

        }

        #endregion

        #region Exams Info

        public void BindExams()
        {
            //Bind exam list
            ArrayList ArryListExam = new ArrayList();
            ArryListExam.Add("CA");


            gvExams.EditIndex = this.EditIndexExam;
            gvExams.DataSource = ArryListExam;
            gvExams.DataBind();

            if (this.EditIndexExam >= 0)
            {
                gvExams.Rows[this.EditIndexExam].CssClass = "RowInEditMode";
                gvExams.Rows[this.EditIndexExam].Cells[0].Attributes.Add("colspan", "3");
                gvExams.Rows[this.EditIndexExam].Cells[1].Visible = false;
                gvExams.Rows[this.EditIndexExam].Cells[2].Visible = false;

            }

        }
        protected void btnAddNewQ22_Click(object sender, EventArgs e)
        {

            tbpAddNewQ22.Visible = true;
            divAddButtonQ22.Visible = false;
        }
        protected void btnSaveNewQ22_Click(object sender, EventArgs e)
        {

            tbpAddNewQ22.Visible = false;
            divAddButtonQ22.Visible = true;
        }

        protected void btnCancelNewQ22_Click(object sender, EventArgs e)
        {
            tbpAddNewQ22.Visible = false;
            divAddButtonQ22.Visible = true;
        }


        protected void btnSaveNewQ22Edit_Click(object sender, EventArgs e)
        {

            this.EditIndexExam = -1;
            BindExams();
        }

        protected void btnCancelNewQ22Edit_Click(object sender, EventArgs e)
        {
            this.EditIndexExam = -1;
            BindExams();
        }
        protected void lnkExam1Edit_Click(object sender, EventArgs e)
        {
            this.EditIndexExam = 0;
            BindExams();
        }
        protected void lnkExam1Delete_Click(object sender, EventArgs e) { }

        #endregion
    }
}