using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_Administration_ucMassEmail : System.Web.UI.UserControl
{
    #region Class Proprties
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

    #endregion

    #region Page Event Handlers

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
            ckDisplayContent.Text = NotificationDBHelper.Notification_Template().Message;
        }
    }

    protected void btnAddNew_Click(object sender, EventArgs e)
    {
        divAddAppReqPanel.Visible = true;
        btnAddNew.Visible = false;
    }

    protected void btnDocumentsUpdate_Click(object sender, EventArgs e)
    {

    }

    protected void btnDocumentsCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndex = -1;
        BindGrid();
    }

    protected void btnSaveEmail_Click(object sender, EventArgs e)
    {

    }

    protected void btnCancelSave_Click(object sender, EventArgs e)
    {
        BindGrid();
        divAddAppReqPanel.Visible = false;
        divAddNewbutton.Visible = true;
        btnAddNew.Visible = true;
        this.EditIndex = -1;
    }

    protected void imgbtnEdit_Click(object sender, ImageClickEventArgs e)
    {
        divAddAppReqPanel.Visible = false;
        btnAddNew.Visible = true;
        this.EditIndex = -1;

        ImageButton btnEdit = (ImageButton)sender;
        if (btnEdit != null)
        {
            int ID = Convert.ToInt32(btnEdit.CommandArgument);
            this.EditIndex = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
            BindGrid();
            FillControl(gvDocumentType, this.EditIndex);
        }
    }

    protected void imgBtnDelete_Click(object sender, ImageClickEventArgs e)
    {

    }

    #endregion

    #region Public Methods
    public class DummyContacts
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public string Type { get; set; }
    }
    public void BindGrid()
    {
        List<DummyContacts> lstContacts = new List<DummyContacts>();
        DummyContacts objContacts = new DummyContacts();
        objContacts.Name = "Tuhin Verma";
        objContacts.Type = "County";
        objContacts.Email = "tuhinverm@inlumon.com";
        lstContacts.Add(objContacts);

        DummyContacts objContacts2 = new DummyContacts();
        objContacts2.Name = "Lisa Cooper";
        objContacts2.Type = "City";
        objContacts2.Email = "lisacooper@inlumon.com";
        lstContacts.Add(objContacts2);

        Session["lstContacts"] = lstContacts;


        gvDocumentType.EditIndex = this.EditIndex;
        gvDocumentType.DataSource = lstContacts;
        gvDocumentType.DataBind();

        if (this.EditIndex >= 0)
        {
            gvDocumentType.Rows[this.EditIndex].CssClass = "RowInEditMode";
            gvDocumentType.Rows[this.EditIndex].Cells[0].Attributes.Add("colspan", "5");
            gvDocumentType.Rows[this.EditIndex].Cells[1].Visible = false;
            gvDocumentType.Rows[this.EditIndex].Cells[2].Visible = false;
            gvDocumentType.Rows[this.EditIndex].Cells[3].Visible = false;
            gvDocumentType.Rows[this.EditIndex].Cells[4].Visible = false;

        }
    }
    public void FillControl(GridView gv, int EditIndex)
    {
        try
        {
            TextBox txtNameEdit = gv.Rows[this.EditIndex].FindControl("txtNameEdit") as TextBox;
            TextBox txtEmailEdit = gv.Rows[this.EditIndex].FindControl("txtEmailEdit") as TextBox;
            DropDownList ddlTypeEdit = gv.Rows[this.EditIndex].FindControl("ddlTypeEdit") as DropDownList;

            txtNameEdit.Text = "John";
            txtEmailEdit.Text = "JohnSmith@gmail.com";

        }

        catch (Exception ex)
        {

        }
    }
    #endregion
}