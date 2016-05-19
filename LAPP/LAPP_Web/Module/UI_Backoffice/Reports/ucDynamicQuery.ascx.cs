using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.DAL;
using System.Configuration;
using System.Data;
using LAPP.ENTITY;
using LAPP.BAL;

 

    public partial class ucDynamicQuery : System.Web.UI.UserControl
    {

        public string DataBaseName = ConfigurationManager.AppSettings["DatabaseName"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTables();
            }
        }

        private void BindTables()
        {
            DBHelper objDB = new DBHelper();

            string Query = "select * from Lapp_report_table";

            DataTable dt = objDB.ExecuteDataSet(Query).Tables[0];

            gvSelectTables.DataSource = dt;

            gvSelectTables.DataBind();
        }

        protected void btnNextStep1_Click(object sender, EventArgs e)
        {
            List<lapp_report_table> lstTables = new List<lapp_report_table>();
            lapp_report_tableBAL objTableBAL = new lapp_report_tableBAL();
            for (int i = 0; i < gvSelectTables.Rows.Count - 1; i++)
            {
                CheckBox chkSelect = (CheckBox)
                 gvSelectTables.Rows[i].Cells[0].FindControl("chkSelect");
                HiddenField hfID = (HiddenField)
                 gvSelectTables.Rows[i].Cells[0].FindControl("hfID");
                if (chkSelect != null)
                {
                    if (chkSelect.Checked)
                    {
                        lapp_report_table objTable = new lapp_report_table();
                        objTable = objTableBAL.Get_lapp_report_table_Get_by_Table_ID(Convert.ToInt32(hfID.Value));
                        if (objTable != null)
                        {
                            lstTables.Add(objTable);
                        }
                    }
                }
            }
            Session["lstSelectedTables"] = lstTables;
            if (lstTables != null && lstTables.Count > 0)
            {
                List<lapp_report_Columns> lstColumnList = new List<lapp_report_Columns>();
                int Index = 0;

                foreach (lapp_report_table objTable in lstTables)
                {
                    Index = lstColumnList.Count > 0 ? lstColumnList.Count - 1 : 0;
                    lapp_report_tableDAL objDal = new lapp_report_tableDAL();
                    lstColumnList.InsertRange(Index, objDal.GetColumnByTableName(objTable.Table_Name));// SaveEntityClassToSystem(tableName, namespace_str, baseClassName);
                }

                gvSelectColumns.DataSource = lstColumnList;
                gvSelectColumns.DataBind();

                Session["lstColumnList"] = lstColumnList;

                pnlStep2.Visible = true; pnlStep1.Visible = false;
            }
            else
            {
                MessageBox.Show(this.Page, "Please select atleast one table.", 2);
                pnlStep2.Visible = false; pnlStep1.Visible = true;
            }


           

            // gvSelectColumns.DataSource = lstSelectTables;
        }



        protected void btnNextStep2_Click(object sender, EventArgs e)
        {
            string ColumnNameWithPrefix = "";
            string OrderByList = "";
            List<lapp_report_Columns> lstSelectedColumnList = new List<lapp_report_Columns>();
            for (int i = 0; i < gvSelectColumns.Rows.Count - 1; i++)
            {
                List<lapp_report_Columns> lstColumnList = (List<lapp_report_Columns>)Session["lstColumnList"];

                CheckBox chkSelect = (CheckBox)
                 gvSelectColumns.Rows[i].Cells[0].FindControl("chkSelect");

                RadioButtonList rblOrderBy = (RadioButtonList)
                 gvSelectColumns.Rows[i].Cells[0].FindControl("rblOrderBy");

                TextBox txtReportLabel = (TextBox)
                 gvSelectColumns.Rows[i].Cells[0].FindControl("txtReportLabel");

                HiddenField hfID = (HiddenField)
                 gvSelectColumns.Rows[i].Cells[0].FindControl("hfID");

                if (chkSelect != null)
                {
                    if (chkSelect.Checked)
                    {
                        if (txtReportLabel.Text.Trim() != "")
                        {
                            ColumnNameWithPrefix += hfID.Value + " as '" + txtReportLabel.Text + "', ";
                        }
                        else
                        {
                            ColumnNameWithPrefix += hfID.Value + ", ";
                        }

                        if (rblOrderBy.SelectedValue != "")
                        {
                            OrderByList += hfID.Value + " " + rblOrderBy.SelectedValue + ", ";
                        }

                        //
                        lapp_report_Columns objReportColumn = new lapp_report_Columns();
                        objReportColumn = lstColumnList.Find(x => x.ColumnName.ToLower() == hfID.Value.ToLower());
                        if (objReportColumn != null)
                        {
                            lstSelectedColumnList.Add(objReportColumn);
                        }

                    }

                }
            }
            if (lstSelectedColumnList != null && lstSelectedColumnList.Count > 0)
            {
                //remove comma(,)
                ColumnNameWithPrefix = ColumnNameWithPrefix.Trim().TrimEnd(',');
                OrderByList = OrderByList.Trim().TrimEnd(',');

                //bind dropdown 
                ddlColumnName.DataSource = lstSelectedColumnList;
                ddlColumnName.DataTextField = "ColumnName";
                ddlColumnName.DataValueField = "ColumnName";
                ddlColumnName.DataBind();

                lbFilterQuery.Items.Clear();
                Session["lstString"] = null;
                Session["lstSelectedColumnList"] = lstSelectedColumnList;
                Session["ColumnNameWithPrefix"] = ColumnNameWithPrefix;
                Session["OrderByList"] = OrderByList;
                pnlStep3.Visible = true; pnlStep2.Visible = false;
            }
            else
            {
                MessageBox.Show(this.Page, "Please select atleast one column.", 2);
                pnlStep3.Visible = false; pnlStep2.Visible = true;
            }

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            List<string> lstString = new List<string>();
            if (Session["lstString"] != null)
            {
                lstString = (List<string>)Session["lstString"];

            }
            else
            {
                lstString = new List<string>();

            }
            if (ddlFilterOptions.SelectedValue.ToLower() == "equal" || ddlFilterOptions.SelectedValue.ToLower() == "like")
            {
                string OpratorWithValue = ddlFilterOptions.SelectedValue.ToLower() == "equal" ? "= '{0}'" : "Like %{0}%";
                lstString.Add(ddlColumnName.SelectedValue + " " + String.Format(OpratorWithValue, txtFilterValue.Text));
                Session["lstString"] = lstString;
            }
            lbFilterQuery.DataSource = (List<string>)Session["lstString"];
            lbFilterQuery.DataBind();



        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            List<string> lstString = new List<string>();
            if (Session["lstString"] != null)
            {
                lstString = (List<string>)Session["lstString"];
                 lstString.Remove(lbFilterQuery.SelectedValue);
                Session["lstString"] = lstString;

                lbFilterQuery.DataSource = (List<string>)Session["lstString"];
                lbFilterQuery.DataBind();

            }
        }

        protected void btnNextStep3_Click(object sender, EventArgs e)
        {
            //Build Query 
            string Query = "Select ";

            //Columns from session
            Query += (string)Session["ColumnNameWithPrefix"];
            Query += " From ";

            //Find from table
            string TablesQ = "";
            string PrimaryTableName = "";
            string PrimaryColumnName = "";
            List<lapp_report_table> lstTables = (List<lapp_report_table>)Session["lstSelectedTables"];
            foreach (lapp_report_table objtable in lstTables)
            {
                TablesQ += objtable.Table_Name + ",";
                PrimaryTableName = objtable.Table_Name;

            }
            List<lapp_report_Columns> lstColumnList = (List<lapp_report_Columns>)Session["lstColumnList"];
            foreach (lapp_report_Columns objColumn in lstColumnList)
            {
                if (objColumn.Is_PrimaryKey && objColumn.Is_AutoIncreament)
                {
                    PrimaryColumnName = objColumn.ColumnName;
                }
            }
            TablesQ = TablesQ.Trim().TrimEnd(',');
            Query += TablesQ;

            if (lbFilterQuery.Items.Count > 0)
            {
                Query += " where " + PrimaryColumnName + " > 0 and ";


                //filter options
                List<string> lstString = (List<string>)Session["lstString"];
                foreach (string str in lstString)
                {
                    Query += str + " and ";
                }

                Query = Query.Trim().TrimEnd('d').TrimEnd('n').TrimEnd('a');

            }

            //order by
            if (Session["OrderByList"] != null && !String.IsNullOrEmpty(Session["OrderByList"].ToString()))
            {
                Query += " order by " + Session["OrderByList"].ToString();

            }

            txtQuery.Text = Query;
            pnlStep4.Visible = false;
            Session["Query"] = Query;
            Response.Redirect("ViewDynamicReport.aspx", false);
        }

        protected void btnNextStep1_Back_Click(object sender, EventArgs e)
        {
            pnlStep2.Visible = false; pnlStep1.Visible = true;
        }

        protected void btnNextStep2_Back_Click(object sender, EventArgs e)
        {
            pnlStep3.Visible = false; pnlStep2.Visible = true;
        }


    }
 