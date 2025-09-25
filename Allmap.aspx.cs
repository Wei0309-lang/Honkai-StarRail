using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Allmap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    


    protected void EveryMap_Command(object sender, CommandEventArgs e)
    {
        string MapUrl = e.CommandArgument.ToString();
        Response.Redirect(MapUrl);
    }

   

    protected void Map_List_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if(e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Image image = (Image)e.Item.FindControl("imgOfplanet");

            string filePath = Convert.ToString(DataBinder.Eval(e.Item.DataItem, "planet_PhotoUrl"));

            image.ImageUrl = string.IsNullOrEmpty(filePath)?
                "~/img/Background/nophoto.png" 
                :filePath ;
        }
    }
}