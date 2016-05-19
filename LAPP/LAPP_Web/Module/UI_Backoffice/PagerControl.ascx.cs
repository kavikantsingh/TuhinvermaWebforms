using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Module_PagerControl : System.Web.UI.UserControl
{
    public event EventHandler UCClick;
    #region Class Property

    public int Count
    {
        get
        {
            if (ViewState["Count"] != null)
            {
                return Convert.ToInt32(ViewState["Count"].ToString());
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Count"] = value;
        }
    }
    public int CurrentPage
    {
        get
        {
            if (ViewState["CurrentPage"] != null)
            {
                return Convert.ToInt32(ViewState["CurrentPage"].ToString());
            }
            else
            {
                return 1;
            }
        }
        set
        {
            ViewState["CurrentPage"] = value;
        }
    }
    public int PagerSize
    {
        get
        {
            if (ViewState["Pager"] != null)
            {
                return Convert.ToInt32(ViewState["Pager"].ToString());
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["Pager"] = value;
        }
    }

    #endregion

    public class PagerObject
    {
        public string Page_Number { get; set; }
        public string PageForPagination { get; set; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        // BindPager();
    }
    protected void pager_ItemBound(object sender, RepeaterItemEventArgs e)
    {
        Button btn = (Button)e.Item.FindControl("lnkPager");
        if (btn != null)
        {
            if (((PagerObject)e.Item.DataItem).Page_Number == this.CurrentPage.ToString())
            {
                btn.Enabled = false;
                btn.CssClass = "disablePager";
            }
        }
    }
    public void BindPager()
    {
        rptPager.DataSource = null;
        rptPager.DataBind();
        List<PagerObject> lstPager = new List<PagerObject>();
        int Page_Count = 0;
        if (PagerSize < Count)
        {
            Page_Count = (int)(Count / PagerSize);
            if (Count % PagerSize > 0)
            {
                Page_Count = Page_Count + 1;
            }

        }
        if (Page_Count > 6)
        {
            int AsPage = 0;
            int DefaultPages = 6;
            if (CurrentPage >= 6)
            {
                AsPage = CurrentPage - 3;
            }
            //if (CurrentPage >= Page_Count - 5)
            //{
            //    DefaultPages = Page_Count - CurrentPage;
            //}
            for (int i = 0; i <= DefaultPages; i++)
            {
                PagerObject obj = new PagerObject();

                obj.Page_Number = (AsPage + 1).ToString();
                if (CurrentPage >= 10)
                {
                    if (i == 0)
                    {
                        obj.Page_Number = "..";
                    }
                }
                if (Page_Count > AsPage)
                {
                    if (i == 10)
                    {
                        obj.Page_Number = "..";
                    }
                }
                obj.PageForPagination = (AsPage + 1).ToString();
                if ((AsPage + 1) <= Page_Count - 1)
                {
                    lstPager.Add(obj);
                }
                AsPage++;
            }
        }
        else
        {
            for (int i = 0; i <= Page_Count - 1; i++)
            {
                PagerObject obj = new PagerObject();
                obj.Page_Number = (i + 1).ToString();
                obj.PageForPagination = (i + 1).ToString();
                lstPager.Add(obj);
            }
        }
        lnkPagerLast.CommandArgument = (Page_Count).ToString();
        if (CurrentPage == 1)
        {
            lnkPagerFirst.Visible = false;
        }
        else
        {
            lnkPagerFirst.Visible = true;

        }
        if (CurrentPage == Page_Count)
        {
            lnkPagerLast.Visible = false;
        }
        else
        {
            lnkPagerLast.Visible = true;
        }
        rptPager.DataSource = lstPager;
        if (Page_Count > 1)
        {
            rptPager.DataBind();

        }
        else
        {
            lnkPagerFirst.Visible = false;
            lnkPagerLast.Visible = false;
        }
    }
    protected void lnkPager_Click(object sender, EventArgs e)
    {
        Button lnk = (Button)sender;
        this.CurrentPage = Convert.ToInt32(lnk.CommandArgument);
        // BindPager();
        if (UCClick != null) UCClick(this, e);
    }
}