using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATM
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //creating connection object;
        //String cs = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\AARTHI KRISHNAN\\OneDrive\\Desktop\\INTERN\\WEB\\ATM_Page\\ATM\\ATM\\App_Data\\ATM_Database.mdf\";Integrated Security=True";
        SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename=\"C:\\Users\\AARTHI KRISHNAN\\OneDrive\\Desktop\\INTERN\\WEB\\ATM_Page\\ATM\\ATM\\App_Data\\ATM_Database.mdf\";Integrated Security=True");
        protected void Mainlogin_Click(object sender, EventArgs e)
        {
            String accnum = AccNum.Text;
            String pass = password.Text;
            Session["accno"] = accnum;
            con.Open();
            SqlCommand cmdacc = new SqlCommand();
            cmdacc.CommandText = "select acc_no from Login_Details where acc_no=@num";
            cmdacc.Connection = con;
            cmdacc.Parameters.AddWithValue("@num", accnum);
            String dbaccno=(String)cmdacc.ExecuteScalar();
            con.Close();
            if (accnum == dbaccno)
            {
                con.Open();
                SqlCommand cmdpass = new SqlCommand();
                cmdpass.CommandText = "select password from Login_Details where acc_no=@num";
                cmdpass.Connection = con;
                cmdpass.Parameters.AddWithValue("@num",accnum);
                String dppass = (String)cmdpass.ExecuteScalar();
                con.Close();
                if (dppass == pass)
                {
                    Response.Redirect("MainPage.aspx");
                }
                else
                {
                    result.Text="Incorrect password";
                }
            }
            else
            {
                result.Text="The account number doesnot exist in the database";
            }
        }
    }
}