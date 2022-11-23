using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace SPC_soc
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {

        SqlConnection sqlCon = null;
        public SqlConnection getConnection()
        {
            try
            {
                sqlCon = new SqlConnection("Data Source=BUDDI;Initial Catalog=SPC_Pharmacy;Integrated Security=True");
                sqlCon.Open();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error  Connecting  to Database " + ex);
            }
            return sqlCon;
        }


        [WebMethod]
        public string registersupplier(String name, String email, String password, String cpassword)
        {
            int temp = 0;
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("insert into Supplier values ('" + name + "','" + email + "','" + password + "','" + cpassword + "')", sqlCon);
                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }


        [WebMethod]
        public string addtender(String name, String date)
        {
            int temp = 0;
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("insert into Tender values ('" + name + "','" + date + "')", sqlCon);
                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }


        [WebMethod]
        public string registermanager(String name, String email, String password, String cpassword)
        {
            int temp = 0;
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("insert into Manager values ('" + name + "','" + email + "','" + password + "','" + cpassword + "')", sqlCon);
                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }


        [WebMethod]
        public string registerstaff(String name, String email, String password, String cpassword)
        {
            int temp = 0;
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("insert into Staff values ('" + name + "','" + email + "','" + password + "','" + cpassword + "')", sqlCon);
                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }


        [WebMethod]
        public string addstock(String name, String sname, int qtn, int price)
        {
            int temp = 0;
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("insert into Stocks values ('" + name + "','" + sname + "'," + qtn + "," + price + ");", sqlCon);
                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }


        [WebMethod]
        public List<Tender> GetTenders()
        {
            getConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "show";
            cmd.Connection = sqlCon;
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            da.SelectCommand = cmd;
            da.Fill(dt);
            List<Tender> tender = new List<Tender>();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    Tender tenders = new Tender();
                    tenders.id = dr["id"].ToString();
                    tenders.name = dr["name"].ToString();
                    tenders.date = dr["date"].ToString();
                    tender.Add(tenders);
                }
            }
            return tender;

        }


        [WebMethod]
        public DataSet Search(string name)
        {
            DataSet ds = new DataSet();
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select * from Stocks  where name='" + name + "'", sqlCon);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds, "Stock");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error" + ex);
            }
            return ds;
        }


        [WebMethod]
        public bool updatestock(string name, int qtn)
        {
            bool records = false;
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("update Stocks set qtn=qtn+" + qtn + " where name='" + name + "'", sqlCon);
                SqlDataReader dr = cmd.ExecuteReader();

                records = dr.HasRows;
                dr.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error" + ex);
            }
            return records;

        }












    }
}
