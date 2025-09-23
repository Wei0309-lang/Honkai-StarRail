using System;
using System.Collections.Generic;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Silver : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e, Unit borderWidth)
    {
      
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

    }

    protected void March7_1_Onclick(object sender, EventArgs e)
    {
        img_37.ImageUrl = "https://i.imgur.com/T0uEVOJ.jpeg";
    }

    protected void March7_2_Onclick(object sender, EventArgs e)
    {
        img_37.ImageUrl = "https://imgur.com/xhZUG32.jpeg";
    }



    protected void check_SelectedIndexChanged(object sender, EventArgs e)
    {
        have.Text = check.SelectedItem.Text;
    }
}