using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Collections;
using System.IO;
using LAPP.ENTITY;

using System.Text.RegularExpressions;
using LAPP.ENTITY.Enumerations;

public partial class Module_UI_Backoffice_ESD_SchoolWorkFlow_ucSchoolWorkflowCurriculum : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        BindGridAdminInfo20();
    }

    protected void btnProgHourReqWork_Click(object sender, EventArgs e)
    {
        
    }


    #region Program Hour Requirement Worksheet

    #region InnerGrid

    public int EditIndexPHRW1
    {
        get
        {
            if (ViewState["EditIndexPHRW1"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexPHRW1"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexPHRW1"] = value;
        }
    }

    protected void btnCourseReqAddNew_Click(object sender, EventArgs e)
    {
        divAddbtnCourseReq.Visible = false;
        divAddCourseReq.Visible = true;
        this.EditIndexPHRW1 = -1;
        BindGridPHRW1();
    }
    protected void btnCourseReqAddNewSave_Click(object sender, EventArgs e)
    {
        divAddbtnCourseReq.Visible = true;
        divAddCourseReq.Visible = false;
    }
    protected void lnkCourseReqAddNewCancel_Click(object sender, EventArgs e)
    {
        divAddbtnCourseReq.Visible = true;
        divAddCourseReq.Visible = false;
    }

    int ROWPHRW1 = 0;
    protected void gvCourseL2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblSchoolName = e.Row.FindControl("lblSchoolName") as Label;
            Label lblCity = e.Row.FindControl("lblCity") as Label;
            Label lblState = e.Row.FindControl("lblState") as Label;
            Label lblGradDate = e.Row.FindControl("lblGradDate") as Label;

            if (lblSchoolName != null && lblCity != null && lblState != null && lblGradDate != null)
            {
                if (ROWPHRW1 == 0)
                {

                    lblSchoolName.Text = "Addl. School 1";
                    lblGradDate.Text = "02/04/2014";
                    lblCity.Text = "EMERYVILLE";
                    lblState.Text = "California";

                }
                else if (ROWPHRW1 == 1)
                {
                    lblSchoolName.Text = "Addl. School 12";
                    lblGradDate.Text = "02/08/2016";
                    lblCity.Text = "City3";
                    lblState.Text = "California";
                }
            }

            ROWPHRW1++;

        }
    }

    public void BindGridPHRW1()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");



        gvCourseL2.EditIndex = this.EditIndexPHRW1;
        gvCourseL2.DataSource = ArryListName;
        gvCourseL2.DataBind();

        if (this.EditIndexPHRW1 >= 0)
        {
            gvCourseL2.Rows[this.EditIndexPHRW1].CssClass = "RowInEditMode";
            gvCourseL2.Rows[this.EditIndexPHRW1].Cells[0].Attributes.Add("colspan", "6");
            gvCourseL2.Rows[this.EditIndexPHRW1].Cells[1].Visible = false;
            gvCourseL2.Rows[this.EditIndexPHRW1].Cells[2].Visible = false;
            gvCourseL2.Rows[this.EditIndexPHRW1].Cells[3].Visible = false;
            //gvCourseL2.Rows[this.EditIndexPHRW1].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdminInfo2].Cells[5].Visible = false;

        }
    }

    public void FillControlPHRWInnerGrid(GridView gv, int EditInd)
    {
        try
        {
            TextBox txtCourseTitleL2Edit = gv.Rows[this.EditIndexPHRW1].FindControl("txtCourseTitleL2Edit") as TextBox;
            TextBox txtCourseHoursL2Edit = gv.Rows[this.EditIndexPHRW1].FindControl("txtCourseHoursL2Edit") as TextBox;

            txtCourseTitleL2Edit.Text = "Title 1";
            txtCourseHoursL2Edit.Text = "20";

        }

        catch (Exception ex)
        {

        }
    }

    protected void btnCourseL2Update_Click(object sender, EventArgs e)
    {
        this.EditIndexPHRW1 = -1;
        BindGridPHRW1();
    }

    protected void lnkCourseL2CancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexPHRW1 = -1;
        BindGridPHRW1();
    }

    protected void lnkCourseTitleHourEdit_Click(object sender, EventArgs e)
    {
        divAddbtnCourseReq.Visible = true;
        divAddCourseReq.Visible = false;
        this.EditIndexPHRW1 = -1;

        ImageButton imgbtnRelatedSchoolEdit = (ImageButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexPHRW1 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridPHRW1();
            //FillControlPHRWInnerGrid(gvAdminInfo2, this.EditIndexPHRW1);
        }
    }

    protected void lnkCourseTitleHourDelete_Click(object sender, EventArgs e)
    {

    }

    #endregion

    #region OuterGrid

    public int EditIndexAdminInfo20
    {
        get
        {
            if (ViewState["EditIndexAdminInfo20"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexAdminInfo20"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexAdminInfo20"] = value;
        }
    }


    int ROWAI20 = 0;
    protected void gvProgHrWrkSheet_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            Label lblProgHrWrkSheetCourse = e.Row.FindControl("lblProgHrWrkSheetCourse") as Label;
            Label lblProgHrWrkSheetCourseHr = e.Row.FindControl("lblProgHrWrkSheetCourseHr") as Label;

            if (lblProgHrWrkSheetCourse != null && lblProgHrWrkSheetCourseHr != null)
            {
                if (ROWAI20 == 0)
                {
                    lblProgHrWrkSheetCourse.Text = "Anatomy & Physiology";
                    lblProgHrWrkSheetCourseHr.Text = "64";
                }
                else if (ROWAI20 == 1)
                {
                    lblProgHrWrkSheetCourse.Text = "Contraindications";
                    lblProgHrWrkSheetCourseHr.Text = "13";
                }
                else if (ROWAI20 == 2)
                {
                    lblProgHrWrkSheetCourse.Text = "Health & Hygiene";
                    lblProgHrWrkSheetCourseHr.Text = "5";
                }
                else if (ROWAI20 == 3)
                {
                    lblProgHrWrkSheetCourse.Text = "Business & Ethics";
                    lblProgHrWrkSheetCourseHr.Text = "18";
                }
            }

            ROWAI20++;

        }
    }

    public void BindGridAdminInfo20()
    {

        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("CA");
        ArryListName.Add("CA");
        ArryListName.Add("CA");
        ArryListName.Add("CA");

        gvProgHrWrkSheet.EditIndex = this.EditIndexAdminInfo20;
        gvProgHrWrkSheet.DataSource = ArryListName;
        gvProgHrWrkSheet.DataBind();

        if (this.EditIndexAdminInfo20 >= 0)
        {
            gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].CssClass = "RowInEditMode";
            gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].Cells[0].Attributes.Add("colspan", "6");
            gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].Cells[1].Visible = false;
            gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].Cells[2].Visible = false;
            //gvProgHrWrkSheet.Rows[this.EditIndexAdminInfo20].Cells[3].Visible = false;
            //gvAdminInfo2.Rows[this.EditIndexAdminInfo2].Cells[4].Visible = false;
            //gvRelatedSchool.Rows[this.EditIndexAdminInfo2].Cells[5].Visible = false;

        }
    }
    protected void lnkCoursesRequirementsOpen_Click(object sender, EventArgs e)
    {
        this.EditIndexAdminInfo20 = -1;

        LinkButton imgbtnRelatedSchoolEdit = (LinkButton)sender;
        if (imgbtnRelatedSchoolEdit != null)
        {
            int ID = Convert.ToInt32(imgbtnRelatedSchoolEdit.CommandArgument);
            this.EditIndexAdminInfo20 = Convert.ToInt32(imgbtnRelatedSchoolEdit.Attributes["RowIndex"]);
            BindGridAdminInfo20();
            BindGridPHRW1();
            //FillControlAdminInfo20(gvProgHrWrkSheet, this.EditIndexAdminInfo20);
        }
    }


    

   

    #endregion

    #endregion

    protected void txtcarculam_TextChanged(object sender, EventArgs e)
    {
        string value = txtcarculam.Text;

        try
        {
            if (Convert.ToInt32(value) > 75)
            {
                trClinicHour.Visible = true;

            }
            else
            {
                trClinicHour.Visible = false;
            }
        }
        catch { }

    }

    protected void btnNextProHo_Click(object sender, EventArgs e)
    {
        
    }

    protected void btnSaveNextPayment_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx?q=1", false);
    }


}