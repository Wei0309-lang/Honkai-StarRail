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

        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {

        }

    }





    protected void check_SelectedIndexChanged(object sender, EventArgs e)
    {
        have.Text = check.SelectedItem.Text;
    }




}