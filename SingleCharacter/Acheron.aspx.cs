using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Collections;

public partial class Acheron : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        
    }

    protected void Achron_before_Click(object sender, EventArgs e)
    {
        Acheron1.ImageUrl = "https://imgur.com/t0ico5A.jpg";
    }

    

    protected void Acheron_after_Click(object sender, EventArgs e)
    {
        Acheron1.ImageUrl = "https://imgur.com/RnEbhdw.jpg";
    }


}