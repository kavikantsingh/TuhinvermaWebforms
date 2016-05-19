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

public partial class Module_UI_Backoffice_Individual_ucLog : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            BindgridLog();
        }
    }

    #region Log Panel
    private void BindgridLog()
    {
        ArrayList ArryListName = new ArrayList();
        ArryListName.Add("GIC");


        gvLog.EditIndex = this.EditIndexCorrspodence;
        gvLog.DataSource = ArryListName;
        gvLog.DataBind();

        if (this.EditIndexCorrspodence >= 0)
        {
            gvLog.Rows[this.EditIndexCorrspodence].CssClass = "RowInEditMode";
            gvLog.Rows[this.EditIndexCorrspodence].Cells[0].Attributes.Add("colspan", "5");
            gvLog.Rows[this.EditIndexCorrspodence].Cells[1].Visible = false;
            gvLog.Rows[this.EditIndexCorrspodence].Cells[2].Visible = false;
            gvLog.Rows[this.EditIndexCorrspodence].Cells[3].Visible = false;
            gvLog.Rows[this.EditIndexCorrspodence].Cells[4].Visible = false;


        }
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
}