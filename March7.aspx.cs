using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public partial class March7 : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e, Unit borderWidth)
    {
        if(!IsPostBack)
        {
            gridOfcha.DataBind();
        }
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

   

   

    protected void gridOfcha_SelectedIndexChanged(object sender, EventArgs e)
    {
        string url = check.SelectedItem.Text;

    }

    protected void gridOfcha_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string url = "";

        if (e.CommandName == "GoUrl")
        {
            url = e.CommandArgument.ToString();
            Response.Redirect(url); 
        }
        

    }
}