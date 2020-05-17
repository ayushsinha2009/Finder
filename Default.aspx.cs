using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnclick_ServerClick(object sender, EventArgs e)
    {
        string str = txt1.Text;
        Response.Redirect("SearchResults.aspx?search=" + str);
    }
}