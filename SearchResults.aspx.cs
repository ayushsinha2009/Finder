using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchResults : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!String.IsNullOrEmpty(Request.QueryString["search"].ToString()))
        {
            string str = Request.QueryString["search"].ToString();
            string sql = "select * from inputdatas where keywords like '%" + str + "%'";
            sds1.SelectCommand = sql;
        }
        else
        {
            sds1.SelectCommand = "";
        }
    }
}