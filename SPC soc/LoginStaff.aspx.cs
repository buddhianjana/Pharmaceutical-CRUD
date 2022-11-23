using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SPC_soc
{
    public partial class LoginStaff : System.Web.UI.Page
    {
        SqlConnection sqlCon = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlCon = new SqlConnection("Data Source=BUDDI;Initial Catalog=SPC_Pharmacy;Integrated Security=True");
            try
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("select  count(*) from Staff  where email='" + Txtname.Text + "' and password='" + Txtpass.Text + "'", sqlCon);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    Response.Redirect("StaffHome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Please Recheck Email && Password ')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}