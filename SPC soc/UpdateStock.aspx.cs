using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SPC_soc
{
    public partial class UpdateStock : System.Web.UI.Page
    {
        ServiceReference.WebServiceSoapClient obj = new ServiceReference.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = obj.Search(TextBox1.Text);
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            obj.updatestock(TextBox1.Text, Convert.ToInt32(TextBox2.Text));
            GridView1.DataSource = obj.Search(TextBox1.Text);
            GridView1.DataBind();
        }
    }
}