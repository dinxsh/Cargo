using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cargo
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (GridView1.Rows.Count == 0) {
                Response.Write("<p style='background-color:cyan;color:white;'><b>No Data to show</b></p>");
            }
        }
    }
}