using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATM
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String accno= (String)Session["accno"];
            Label1.Text = accno;
            String cs = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\AARTHI KRISHNAN\\OneDrive\\Desktop\\INTERN\\WEB\\ATM_Page\\ATM\\ATM\\App_Data\\ATM_Database.mdf\";Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmdname = new SqlCommand("select name from Acc_Details where acc_no=@num",con);
            cmdname.Parameters.AddWithValue("@num", accno);
            name.Text=(String)cmdname.ExecuteScalar();
            SqlCommand cmdbranch = new SqlCommand("select branch from Acc_Details where acc_no=@num", con);
            cmdbranch.Parameters.AddWithValue("@num", accno);
            branch.Text = (String)cmdbranch.ExecuteScalar();
            SqlCommand cmdifsc = new SqlCommand("select IFSC_code from Acc_Details where acc_no=@num", con);
            cmdifsc.Parameters.AddWithValue("@num", accno);
            ifsc.Text = (String)cmdifsc.ExecuteScalar();
            SqlCommand cmdcv = new SqlCommand("select Convert(varchar(50),Card_Validity) from Acc_Details where acc_no=@num", con);
            cmdcv.Parameters.AddWithValue("@num", accno);
            cvalidity.Text = (String)cmdcv.ExecuteScalar();

            // Insertion Transation Table
           
                SqlCommand tcmd = new SqlCommand("select * from Transaction_Details order by t_date", con);
                SqlDataAdapter sd = new SqlDataAdapter(tcmd);
                DataTable dt = new DataTable();
                sd.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            
            
        }

            
    }
}