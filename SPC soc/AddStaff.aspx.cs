using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SPC_soc
{
    public partial class AddStaff : System.Web.UI.Page
    {
        ServiceReference.WebServiceSoapClient obj = new ServiceReference.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string value = obj.registerstaff(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text);
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