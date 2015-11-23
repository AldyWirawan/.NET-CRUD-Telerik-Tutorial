using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class RadGridDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RGridParent_ItemDataBound(object sender, Telerik.Web.UI.GridItemEventArgs e)
    {
        if (e.Item.ItemType == GridItemType.Item || e.Item.ItemType == GridItemType.AlternatingItem)
        {
            GridDataItem item = e.Item as GridDataItem;
            String Id = item["ParentID"].Text;
            HyperLink VLnkEdit = (HyperLink)e.Item.FindControl("LnkEdit");
            VLnkEdit.NavigateUrl = "ItemEditView.aspx?id=" + Id;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ItemEditView.aspx");
    }
}