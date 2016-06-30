using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Globalization;

public partial class LAPP_UI_Backoffice_Administration_ContentManagement : System.Web.UI.Page
{
    public int CurrentPage
    {
        get
        {
            if (PagerControl1 != null)
            {
                return PagerControl1.CurrentPage;
            }
            else
            {
                return 1;
            }
        }
        set
        {
            PagerControl1.CurrentPage = value;
        }
    }
    public int PageSize
    {
        get
        {
            return 10;
        }
        set
        {
            PagerControl1.PagerSize = value;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetAllPages();
            ShowAllContent();
        }
        PagerControl1.UCClick += new EventHandler(btnFillGrid);
    }

    protected void btnFillGrid(object sender, EventArgs e)
    {
        ShowAllContent();
    }

    public void ShowAllContent(string ContentLkToPageTabSectionId = "")
    {
        rptContent.DataSource = new List<ContentItemLk>();
        rptContent.DataBind();

        string WebAPIUrl = string.Empty;
        if (string.IsNullOrWhiteSpace(ContentLkToPageTabSectionId))
            WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Content/ContentItemLkGetAll/" + UIHelper.GetBackOfficeKeyFromSession();
        else
            WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Content/ContentGetBYContentLkToPageTabSectionId/" + UIHelper.GetBackOfficeKeyFromSession() + "?ContentLkToPageTabSectionId=" + ContentLkToPageTabSectionId;

        Object obj;
        WebApiUtility.CallWebAPI<ContentItemLkRS>(WebAPIUrl, null, out obj, "GET");
        var res = (ContentItemLkRS)obj;

        if (res.Status)
        {
            if (res.ContentItemLk != null && res.ContentItemLk.Count > 0)
            {
                PagerControl1.Count = res.ContentItemLk.Count;
                PagerControl1.CurrentPage = this.CurrentPage;
                PagerControl1.PagerSize = this.PageSize;
                PagerControl1.BindPager();

                var total = res.ContentItemLk.Count;
                var pageSize = this.PageSize;
                var page = this.CurrentPage;

                var skip = pageSize * (page - 1);

                var canPage = skip < total;

                if (!canPage) // do what you wish if you can page no further
                    return;

                var r = res.ContentItemLk.Skip(skip).Take(pageSize).ToList();

                rptContent.DataSource = r;
                rptContent.DataBind();
            }
        }
    }

    protected void ddlPage_Change(object sender, EventArgs e)
    {
        if (ddlPage.SelectedIndex != 0)
            GetAllSubModuleByPageModuleId();
    }

    protected void ddlPageModuleTabsSubModule_Change(object sender, EventArgs e)
    {
        if (ddlPageModuleTabsSubModule.SelectedIndex != 0)
            PageGetAllSectionsByTabId();
    }

    protected void ddlPageTabSection_Change(object sender, EventArgs e)
    {
        if (ddlPageTabSection.SelectedIndex != 0)
            ContentGetContentTypeNameByPageTabSectionId();
    }

    #region Fill-Dropdown

    public void GetAllPages()
    {
        string WebAPIUrl = string.Empty;
        WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Page/PageGetAllPageNames/" + UIHelper.GetBackOfficeKeyFromSession();

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
        WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Page/PageGetAllTabsByPageModuleId/" + UIHelper.GetBackOfficeKeyFromSession() + "?PageModuleId=" + ddlPage.SelectedValue;

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
        else
        {
            ddlPageModuleTabsSubModule.DataSource = new List<PageModuleTabSubModule>();
            ddlPageModuleTabsSubModule.DataBind();
        }

        ddlPageModuleTabsSubModule.Items.Insert(0, "-- Select --");
    }

    public void PageGetAllSectionsByTabId()
    {
        ddlPageTabSection.DataSource = null;
        ddlPageTabSection.DataBind();

        string WebAPIUrl = string.Empty;
        WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Page/PageGetAllSectionsByTabId/" + UIHelper.GetBackOfficeKeyFromSession() + "?PageModuleTabSubModuleId=" + ddlPageModuleTabsSubModule.SelectedValue;

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
        else
        {
            ddlPageTabSection.DataSource = new List<PageTabSection>();
            ddlPageTabSection.DataBind();
        }

        ddlPageTabSection.Items.Insert(0, "-- Select --");
    }

    public void ContentGetContentTypeNameByPageTabSectionId()
    {
        string WebAPIUrl = string.Empty;
        WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Content/ContentGetContentTypeNameByPageTabSectionId/" + UIHelper.GetBackOfficeKeyFromSession() + "?PageModId=" + ddlPage.SelectedValue + "&PageTabSecId=" + ddlPageTabSection.SelectedValue + "&PageModTabSubModId=" + ddlPageModuleTabsSubModule.SelectedValue;

        Object obj;
        WebApiUtility.CallWebAPI<ContentLkToPageTabSectionRS>(WebAPIUrl, null, out obj, "GET");
        var res = (ContentLkToPageTabSectionRS)obj;

        if (res.Status)
        {
            if (res.ContentLkToPageTabSection != null && res.ContentLkToPageTabSection.Count > 0)
            {
                var lst = res.ContentLkToPageTabSection.Select(o => new Item { Id = o.ContentLkToPageTabSectionId.ToString(), Text = o.ContentTypeName }).ToList();
                ddlContentType.DataSource = lst;
                ddlContentType.DataTextField = "Text";
                ddlContentType.DataValueField = "Id";
                ddlContentType.DataBind();
            }
        }
        else
        {
            ddlContentType.DataSource = new List<ContentLkToPageTabSection>();
            ddlContentType.DataBind();
        }

        ddlContentType.Items.Insert(0, "-- Select --");
    }

    #endregion

    protected void rptContent_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "UpdateRow" && e.CommandArgument.ToString() != "")
        {
            TextBox txtContentTextGrid = (TextBox)e.Item.FindControl("txtContentTextGrid");
            TextBox txtEffectiveDate = (TextBox)e.Item.FindControl("txtEffectiveDate");
            TextBox txtEndDate = (TextBox)e.Item.FindControl("txtEndDate");

            HiddenField hdnContentItemLkId = (HiddenField)e.Item.FindControl("hdnContentItemLkId");
            HiddenField hdnContentItemHash = (HiddenField)e.Item.FindControl("hdnContentItemHash");

            string WebAPIUrl = string.Empty;
            WebAPIUrl = ConfigurationManager.AppSettings["WebAPIBaseUrl"] + "api/Content/ContentUpdateContentInfo/" + UIHelper.GetBackOfficeKeyFromSession();

            ContentItemLkRQ objRS = new ContentItemLkRQ()
            {
                ContentItemLkId = Convert.ToInt32(hdnContentItemLkId.Value),
                ContentItemHash = Convert.ToInt32(hdnContentItemHash.Value),
                ContentItemLkDesc = txtContentTextGrid.Text.Trim(),
                EffectiveDate = DateTime.ParseExact(txtEffectiveDate.Text, "MM/dd/yyyy", new CultureInfo("en-US"), DateTimeStyles.None),
                EndDate = DateTime.ParseExact(txtEndDate.Text, "MM/dd/yyyy", new CultureInfo("en-US"), DateTimeStyles.None),
            };

            Object obj;
            WebApiUtility.CallWebAPI<ContentItemLkRS>(WebAPIUrl, objRS, out obj, "POST");
            var res = (ContentItemLkRS)obj;

            if (res.Status)
            {
                ShowAllContent();
                MessageBox.Show(this.Page, "Updated Successfully.");
            }
            else
            {
                MessageBox.Show(this.Page, res.Message ?? "",2);
            }
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (ddlContentType.SelectedIndex != 0)
        {
            this.CurrentPage = 1;
            ShowAllContent(ddlContentType.SelectedValue);
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        if (ddlContentType.Items.Count > 0)
            ddlContentType.SelectedIndex = 0;

        if (ddlPage.Items.Count > 0)
            ddlPage.SelectedIndex = 0;

        if (ddlPageModuleTabsSubModule.Items.Count > 0)
            ddlPageModuleTabsSubModule.SelectedIndex = 0;

        if (ddlPageTabSection.Items.Count > 0)
            ddlPageTabSection.SelectedIndex = 0;
    }

    protected void lnkShowAll_Click(object sender, EventArgs e)
    {
        ShowAllContent();
    }

}