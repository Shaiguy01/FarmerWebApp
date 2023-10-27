using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROG_POE_final_task_draft
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //the connection string must be avaliable in any class that may interact with the database
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=moduleDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //simple login button, popuates a static varible to produce the correct table name
        protected void loginbtn_Click(object sender, EventArgs e)
        {
            try
            {
                table.name = "FARMER" + usernametb.Text + passwordtb.Text;
                Response.Redirect("~/Mainpage.aspx");
            }
            catch
            {
                message.Text = "Error, cannot login";
            } 
        }

        protected void loginbtn2_Click(object sender, EventArgs e)
        {
            try
            {
                table.name = usernametb.Text + passwordtb.Text; // ok nowww it should be enforced for employees, the login
                Response.Redirect("~/Employeepage.aspx");
            }
            catch
            {
                message.Text = "Error, cannot login";

            }
        }


        //this must perform the hashing, inserts details in the accounts table, and create a table with the user details
        protected void regbtn_Click(object sender, EventArgs e)
        {
            table.name = usernametb.Text + passwordtb.Text;

            try
            {
                //the create table work, use the video's update or delete process to work this in, 32:54 --: here we are loooking for that sql process that will fill the rest of our program and this should be the only missing type below as the last uniquew sql process which will be used for the createTable, deteled and recordSelfstudyHours
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand sqlcmd = new SqlCommand("create table " + table.name + " (ID int primary key identity(1,1), Item_Title varchar(50), Item_Type varchar(50), Item_Date varchar(50))", con);
                sqlcmd.CommandType = CommandType.Text;
                sqlcmd.ExecuteNonQuery();
                con.Close();
                messgtwo.Text = "user account created and registered"; //should confirm that the user table is now accessable
            }
            catch
            {
                messgtwo.Text = "user account could not register";
            }
            //done with the reg and login
        }

        

    }
}