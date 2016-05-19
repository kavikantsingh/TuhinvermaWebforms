using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Web.UI.HtmlControls;


    public partial class ucManualNew : System.Web.UI.UserControl
    {
        public int EditIndex
        {
            get
            {
                if (ViewState["EditIndex"] != null)
                {
                    return Convert.ToInt32(ViewState["EditIndex"]);

                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["EditIndex"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bindgird();
            }
        }

        private void Bindgird()
        {
            ArrayList ArryListName = new ArrayList();
            ArryListName.Add("GIC");
            ArryListName.Add("Nevada");
            ArryListName.Add("Nevada");
            ArryListName.Add("GIC");
            ArryListName.Add("Nevada");

            gvAutomated.EditIndex = this.EditIndex;
            gvAutomated.DataSource = ArryListName;
            gvAutomated.DataBind();

            if (this.EditIndex >= 0)
            {
                gvAutomated.Rows[this.EditIndex].CssClass = "RowInEditMode";
                gvAutomated.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "10");
                gvAutomated.Rows[this.EditIndex].Cells[1].Visible = false;
                gvAutomated.Rows[this.EditIndex].Cells[2].Visible = false;
                gvAutomated.Rows[this.EditIndex].Cells[3].Visible = false;
                gvAutomated.Rows[this.EditIndex].Cells[4].Visible = false;
                gvAutomated.Rows[this.EditIndex].Cells[5].Visible = false;
                gvAutomated.Rows[this.EditIndex].Cells[6].Visible = false;
                gvAutomated.Rows[this.EditIndex].Cells[7].Visible = false;
                gvAutomated.Rows[this.EditIndex].Cells[8].Visible = false;
                gvAutomated.Rows[this.EditIndex].Cells[9].Visible = false;
                gvAutomated.Rows[this.EditIndex].Cells[10].Visible = false;

            }
        }
        int ROW = 0;
        protected void gvAutomated_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                Label lblLastName = e.Row.FindControl("lblLastName") as Label;
                Label lblFirstName = e.Row.FindControl("lblFirstName") as Label;
                Label lblLicenseNo = e.Row.FindControl("lblLicenseNo") as Label;
                Label lblStatus = e.Row.FindControl("lblStatus") as Label;


                if (lblLastName != null && lblFirstName != null && lblLicenseNo != null && lblStatus != null)
                {
                    if (ROW == 0)
                    {

                        lblLastName.Text = "Verma";
                        lblFirstName.Text = "Tuhin";
                        lblLicenseNo.Text = "NVMT.0001";
                        lblStatus.Text = "Active";
                    }
                    else if (ROW == 1)
                    {
                        lblLastName.Text = "Cooper";
                        lblFirstName.Text = "Lisa";
                        lblLicenseNo.Text = "NVMT.0021";
                        lblStatus.Text = "Suspension";
                    }
                    else if (ROW == 2)
                    {
                        lblLastName.Text = "Bills";
                        lblFirstName.Text = "Don";
                        lblLicenseNo.Text = "NVMT.0023";
                        lblStatus.Text = "Inactive";

                    }
                    else if (ROW == 3)
                    {
                        lblLastName.Text = "Goff";
                        lblFirstName.Text = "Sam";
                        lblLicenseNo.Text = "NVMT.0004";
                        lblStatus.Text = "Revoked";

                    }
                    else if (ROW == 4)
                    {
                        lblLastName.Text = "Cushing";
                        lblFirstName.Text = "Dawn";
                        lblLicenseNo.Text = "NVMT.0005";
                        lblStatus.Text = "Expired";

                    }
                }

                ROW++;

            }
        }
        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("../UI/individual.aspx", false);
        }

        public void FillControlQuestion1(GridView gv, int EditInd)
        {
            try
            {

                TextBox txtnote = gv.Rows[EditInd].FindControl("txtnote") as TextBox;



                txtnote.Text = " Jhon Smith";
            }

            catch (Exception ex)
            {

            }
        }

        protected void btnNote_Click(object sender, EventArgs e)
        {
            try
            {
                //this.EditIndex = -1;
                Button btnEdit = (Button)sender;
                if (btnEdit != null)
                {
                    int ID = Convert.ToInt32(btnEdit.CommandArgument);
                    this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                    Bindgird();
                    FillControlQuestion1(gvAutomated, this.EditIndex);
                }
            }
            catch (Exception ex)
            { }
        }

        protected void btnExecuteonAddNew_Click(object sender, EventArgs e)
        {
            this.EditIndex = -1;
            Bindgird();
        }

        protected void btnSearchonAddNew_Click(object sender, EventArgs e)
        {
            this.EditIndex = -1;
            Bindgird();
        }
    }
