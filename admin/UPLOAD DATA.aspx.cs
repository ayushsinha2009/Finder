using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_UPLOAD_DATA : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
           string TITLE = TextBox1.Text;
        string DESCRIPTION = TextBox2.Text;
        string UPLOAD_IMAGE = FileUpload1.FileName;
        string LINKS = TextBox3.Text;
        string KEYWORDS = TextBox4.Text;
        string DT = DateTime.Now.ToString();
        string query = "insert into inputdatas(title,description,uploadimage,links,keywords,datetime) values('" + TITLE + "','" + DESCRIPTION + "','" + UPLOAD_IMAGE + "','" + LINKS + "','" + KEYWORDS + "','" + DT + "')";
        DBConnection db = new DBConnection();
        if (db.ExecuteIUD(query))
        {
            FileUpload1.SaveAs(Server.MapPath("~/dataimg/" + FileUpload1.FileName));
            Response.Write("<script>alert('success');</script>");
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('query error');</script>");
        }
    
    }
    }