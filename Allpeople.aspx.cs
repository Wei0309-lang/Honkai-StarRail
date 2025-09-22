using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page
{
    int lovetimes = 0;
    int love = 0 ;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["loves"] == null)
        {
            Session["loves"] = 0;  // 初始設定為 0
        }

        else
        {
            love = (int)Session["loves"]; // 讀取 session 中的 loves 值
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = Request.Form["TextBox1"];
        Response.Write("Hello World by  " + str);

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
        
    }

    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        calculatelove();

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        calculatelove();
    }

    protected void calculatelove()
    {
        love += 1;
        Session["loves"] = love;
        
        if (love >= 3)
        {
           
        }
    }

}
