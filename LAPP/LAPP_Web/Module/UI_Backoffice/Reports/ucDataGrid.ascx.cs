using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAPP.CORE;
using LAPP.DAL;

public partial class Module_UI_Backoffice_Reports_ucDataGrid : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Query"] != null)
            {
                BindGrid();
            }
            else
            {
                Response.Redirect("GLSReports.aspx");
            }
        }
    }


    public void BindGrid()
    {
        try
        {
            DataSet ds = new DataSet("DS");
            DBHelper objDB = new DBHelper();
            ds = objDB.ExecuteDataSet(CommandType.Text, Session["Query"].ToString());
            DataTable dt = FetchData(ds);
            gvDataGrid.DataSource = dt;
            gvDataGrid.DataBind();
        }
        catch (Exception ex)
        {

        }
    }

    private DataTable FetchData(DataSet ds)
    {
        DataTable dt = new DataTable();
        dt = ds.Tables[0];



        foreach (DataRow dr in dt.Rows)
        {
            if (dr.Table.Columns.Contains("SSN") && dr["SSN"] != DBNull.Value)
            {
                dr["SSN"] = Encryption.Base64Decrypt(Convert.ToString(dr["SSN"]));
            }
            if (dr.Table.Columns.Contains("Dob") && dr["Dob"] != DBNull.Value)
            {
                dr["Dob"] = Encryption.Base64Decrypt(Convert.ToString(dr["Dob"]));
            }
        }
        return dt;
    }


    public string GridViewSortExpression
    {
        get
        {
            if (ViewState["sortExpression"] == null)
                ViewState["sortExpression"] = "DTS";
            return ViewState["sortExpression"].ToString();
        }
        set
        {
            ViewState["sortExpression"] = value;
        }
    }
    public SortDirection GridViewShortDirection
    {
        get
        {
            if (ViewState["sortDirection"] == null)
                ViewState["sortDirection"] = SortDirection.Ascending;
            return (SortDirection)ViewState["sortDirection"];
        }
        set
        {
            ViewState["sortDirection"] = value;
        }
    }
    protected void gvDataGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            if (GridViewShortDirection == SortDirection.Ascending)
            {
                GridViewShortDirection = SortDirection.Descending;
            }
            else
            {
                GridViewShortDirection = SortDirection.Ascending;
            }
            gvDataGrid.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
        catch (Exception ex)
        {

        }
    }
}