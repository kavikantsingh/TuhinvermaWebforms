using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using LAPP.ENTITY.Enumerations;
using LAPP.BAL;
using LAPP.ENTITY;

public partial class Module_UI_Backoffice_Individual_ucCorrespondence : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindgridCorrespodence();

        }
    }

    #region Correspondence

    #region Private Method

    private void FillControlCorrespodence(GridView gv, int EditInd)
    {
        TextBox txtDateSentEdit = gv.Rows[EditIndexCorrspodence].FindControl("txtDateSentEdit") as TextBox;
        TextBox txtSubjectEdit = gv.Rows[EditIndexCorrspodence].FindControl("txtSubjectEdit") as TextBox;
        DropDownList ddlTaskTypeEdit = gv.Rows[EditIndexCorrspodence].FindControl("ddlTaskTypeEdit") as DropDownList;
        FileUpload fuFileEdit = gv.Rows[EditIndexCorrspodence].FindControl("fuFileEdit") as FileUpload;

        txtDateSentEdit.Text = "03/10/2015";
        txtSubjectEdit.Text = "Application request form sent.";
        ddlTaskTypeEdit.SelectedItem.Text = "Email";
        //fuFileEdit. = "Subject";

    }

    #endregion

    #region Public Method

    private void BindgridCorrespodence()
    {
        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("GIC");


        gvCorrespodence.EditIndex = this.EditIndexCorrspodence;
        gvCorrespodence.DataSource = ArryListName;
        gvCorrespodence.DataBind();

        if (this.EditIndexCorrspodence >= 0)
        {
            gvCorrespodence.Rows[this.EditIndexCorrspodence].CssClass = "RowInEditMode";
            gvCorrespodence.Rows[this.EditIndexCorrspodence].Cells[0].Attributes.Add("colspan", "5");
            gvCorrespodence.Rows[this.EditIndexCorrspodence].Cells[1].Visible = false;
            gvCorrespodence.Rows[this.EditIndexCorrspodence].Cells[2].Visible = false;
            gvCorrespodence.Rows[this.EditIndexCorrspodence].Cells[3].Visible = false;
            //gvCorrespodence.Rows[this.EditIndexCorrspodence].Cells[4].Visible = false;


        }
    }

    #endregion

    #region PageEvantHandler

    protected void imgbtnEdit_Click(object sender, EventArgs e)
    {
        try
        {
            ImageButton btnEdit = (ImageButton)sender;
            if (btnEdit != null)
            {
                int ID = Convert.ToInt32(btnEdit.CommandArgument);
                this.EditIndexCorrspodence = Convert.ToInt32(btnEdit.Attributes["RowIndex"]);
                BindgridCorrespodence();
                FillControlCorrespodence(gvCorrespodence, this.EditIndexCorrspodence);
            }
            divAddbuttonCorrespodence.Visible = true;
            divAddPanelCorrespodence.Visible = false;
        }
        catch (Exception ex)
        { }
    }
    protected void btnCorrespodenceAddNew_Click(object sender, EventArgs e)
    {
        divAddbuttonCorrespodence.Visible = false;
        divAddPanelCorrespodence.Visible = true;
        this.EditIndexCorrspodence = -1;
        BindgridCorrespodence();
    }
    protected void lnkCoresspodenceSave_Click(object sender, EventArgs e)
    {
        divAddbuttonCorrespodence.Visible = true;
        divAddPanelCorrespodence.Visible = false;
        this.EditIndexCorrspodence = -1;
        BindgridCorrespodence();
    }
    protected void btnCoresspodenceUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexCorrspodence = -1;
        BindgridCorrespodence();
    }
    protected void lnkCoresspodenceCancel_Click(object sender, EventArgs e)
    {
        this.EditIndexCorrspodence = -1;
        BindgridCorrespodence();
        divAddbuttonCorrespodence.Visible = true;
        divAddPanelCorrespodence.Visible = false;
    }
    protected void lnkCoresspodenceCancelUpdate_Click(object sender, EventArgs e)
    {
        this.EditIndexCorrspodence = -1;
        BindgridCorrespodence();
    }
    protected void imgBtnDelete_Click(object sender, ImageClickEventArgs e)
    {

    }


    public int EditIndexCorrspodence
    {
        get
        {
            if (ViewState["EditIndexCorrspodence"] != null)
            {
                return Convert.ToInt32(ViewState["EditIndexCorrspodence"]);

            }
            else
            {
                return -1;
            }
        }
        set
        {
            ViewState["EditIndexCorrspodence"] = value;
        }
    }

    #endregion

    #endregion
}