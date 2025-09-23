using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class omphalos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void LinkOfPersonal_Command(object sender, CommandEventArgs e)
    {
        string url = e.CommandArgument.ToString();
        Response.Redirect(url);
    }
}