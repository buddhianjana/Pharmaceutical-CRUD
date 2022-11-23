using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SPC_soc
{
    public partial class AddStock : System.Web.UI.Page
    {
        ServiceReference.WebServiceSoapClient obj = new ServiceReference.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string value = obj.addstock(TextBox2.Text, TextBox3.Text, Convert.ToInt32(TextBox4.Text), Convert.ToInt32(TextBox5.Text));
            int record = Int32.Parse(value);
            if (record > 1)
            {
                Label1.Text = "Registered Failed.";
            }
            else
            {
                Label1.Text = "Registered Successfully.";

            }
        }
    }
}