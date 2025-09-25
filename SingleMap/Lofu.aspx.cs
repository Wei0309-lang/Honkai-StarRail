using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lofu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkOfPersonal_Command(object sender, CommandEventArgs e)
    {
        string url = e.CommandArgument.ToString();
        Response.Redirect(url);
    }

    protected void character_List_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Image image = (Image)e.Item.FindControl("ImageOfLofu");

            string filePath = Convert.ToString(DataBinder.Eval(e.Item.DataItem, "character_photo"));

            image.ImageUrl = string.IsNullOrEmpty(filePath) ?
                "~/img/Personal/nophoto.jpg"
                : "~" + filePath;
        }
    }
}