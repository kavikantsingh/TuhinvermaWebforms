using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LAPP_UI_Backoffice_Administration_ContentManagement_Ankit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            EditContent.Visible = false;
            ShowContent.Visible = true;

            GetAllPages();
            ShowAllContent();
        }
    }

    public void ShowAllContent()
    {
        List<demo> lst = new List<demo>();

        for (int i = 0; i < 15; i++)
        {
            lst.Add(new demo() { Id = i.ToString() });
        }

        rptContent.DataSource = lst;
        rptContent.DataBind();
    }

    protected void ddlPage_Change(object sender, EventArgs e)
    {
        if (ddlPage.SelectedValue != "0")
            GetAllSubModuleByPageModuleId();
    }

    protected void ddlPageModuleTabsSubModule_Change(object sender, EventArgs e)
    {
        if (ddlPageModuleTabsSubModule.SelectedValue != "0")
            PageGetAllSectionsByTabId();
    }

    protected void ddlPageTabSection_Change(object sender, EventArgs e)
    {

    }

    public void GetAllPages()
    {
        string WebAPIUrl = string.Empty;
        WebAPIUrl = "http://96.31.91.68/lappws/api/Page/PageGetAllPageNames/" + UIHelper.GetBackOfficeKeyFromSession();

        Object obj;
        WebApiUtility.CallWebAPI<PageModuleRS>(WebAPIUrl, null, out obj, "GET");
        var res = (PageModuleRS)obj;

        if (res.Status)
        {
            if (res.PageModule != null && res.PageModule.Count > 0)
            {
                var lst = res.PageModule.Select(o => new Item { Id = o.PageModuleId.ToString(), Text = o.PageModuleName }).ToList();
                ddlPage.DataSource = lst;
                ddlPage.DataTextField = "Text";
                ddlPage.DataValueField = "Id";
                ddlPage.DataBind();
            }
        }

        ddlPage.Items.Insert(0, "-- Select --");
    }

    public void GetAllSubModuleByPageModuleId()
    {
        string WebAPIUrl = string.Empty;
        WebAPIUrl = "http://96.31.91.68/lappws/api/Page/PageGetAllTabsByPageModuleId/" + UIHelper.GetBackOfficeKeyFromSession() + "?PageModuleId=" + ddlPage.SelectedValue;

        Object obj;
        WebApiUtility.CallWebAPI<PageModuleTabSubModuleRS>(WebAPIUrl, null, out obj, "GET");
        var res = (PageModuleTabSubModuleRS)obj;

        if (res.Status)
        {
            if (res.PageModuleTabSubModule != null && res.PageModuleTabSubModule.Count > 0)
            {
                var lst = res.PageModuleTabSubModule.Select(o => new Item { Id = o.PageModuleTabSubModuleId.ToString(), Text = o.PageModuleTabSubModuleName }).ToList();
                ddlPageModuleTabsSubModule.DataSource = lst;
                ddlPageModuleTabsSubModule.DataTextField = "Text";
                ddlPageModuleTabsSubModule.DataValueField = "Id";
                ddlPageModuleTabsSubModule.DataBind();
            }
        }

        ddlPageModuleTabsSubModule.Items.Insert(0, "-- Select --");
    }

    public void PageGetAllSectionsByTabId()
    {
        string WebAPIUrl = string.Empty;
        WebAPIUrl = "http://96.31.91.68/lappws/api/Page/PageGetAllSectionsByTabId/" + UIHelper.GetBackOfficeKeyFromSession() + "?PageModuleTabSubModuleId=" + ddlPageModuleTabsSubModule.SelectedValue;

        Object obj;
        WebApiUtility.CallWebAPI<PageTabSectionRS>(WebAPIUrl, null, out obj, "GET");
        var res = (PageTabSectionRS)obj;

        if (res.Status)
        {
            if (res.PageTabSection != null && res.PageTabSection.Count > 0)
            {
                var lst = res.PageTabSection.Select(o => new Item { Id = o.PageTabSectionId.ToString(), Text = o.PageTabSectionName }).ToList();
                ddlPageTabSection.DataSource = lst;
                ddlPageTabSection.DataTextField = "Text";
                ddlPageTabSection.DataValueField = "Id";
                ddlPageTabSection.DataBind();
            }
        }

        ddlPageTabSection.Items.Insert(0, "-- Select --");
    }

    protected void btnSaveContentGrid_Click(object sender, EventArgs e)
    {
        EditContent.Visible = false;
        ShowContent.Visible = true;

        ShowAllContent();
    }

    protected void btnCancelContentGrid_Click(object sender, EventArgs e)
    {
        ShowContent.Visible = true;
        ShowAllContent();

        EditContent.Visible = false;
    }

    protected void rptContent_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "EditRow" && e.CommandArgument.ToString() != "")
        {
            ShowContent.Visible = false;
            EditContent.Visible = true;
        }
    }

}

public class demo
{
    public string Id { get; set; }
}