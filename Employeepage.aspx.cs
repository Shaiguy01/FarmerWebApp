using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROG_POE_final_task_draft
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=moduleDB;Integrated Security=True");



        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                fillgridview(); //solely for login renforcement 
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        void fillgridview() //solely for the login enforcement
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("select * from " + table.name + "", con);
            sqlDa.SelectCommand.CommandType = CommandType.Text;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            con.Close();
            GridView1.DataSource = dtbl;
            GridView1.DataBind(); 
        }


        protected void backtologinbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void registerfarmertbn_Click(object sender, EventArgs e)
        {
            table.name = "FARMER"+Farmerusernametb.Text + Farmerpasswordtb.Text;

            try
            {
                //the create table work, use the video's update or delete process to work this in, 32:54 --: here we are loooking for that sql process that will fill the rest of our program and this should be the only missing type below as the last uniquew sql process which will be used for the createTable, deteled and recordSelfstudyHours
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand sqlcmd = new SqlCommand("create table " + table.name + " (ID int primary key identity(1,1), Item_Title varchar(50), Item_Type varchar(50), Item_Date varchar(50))", con);
                sqlcmd.CommandType = CommandType.Text;
                sqlcmd.ExecuteNonQuery();
                con.Close();
                Label5.Text = "user account created and registered"; //should confirm that the user table is now accessable
            }
            catch
            {
                Label5.Text = "user account could not register";
            }
        }

       
        protected void viewfarmerprofilebtn_Click(object sender, EventArgs e)
        {
            table.name = "FARMER" + viewfarmerusernametb.Text + viewfarmerpasswordtb.Text;

            try 
            {
                //wow that was crazy so yes the abstract variable is changed and then the button alone will 
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("select * from " + table.name + "", con);
                sqlDa.SelectCommand.CommandType = CommandType.Text;
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                con.Close();
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
            }
            catch 
            {
                Label9.Text = "Oops, soming went wrong";
            } 
        }


        protected void typefiltertbn_Click(object sender, EventArgs e)
        {
            try
            {
                //technicly table.name is currently populated with the key word FARMER by use of the other button, because you must show a table first to use these features
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("select Item_Type, Item_Title from " + table.name + " where Item_Type = '" + typetb.Text + "'", con); //"select Item_Type, Item_Title from " + table.name + " where Item_Type = '" + typetb.Text + "'", con
                sqlDa.SelectCommand.CommandType = CommandType.Text;
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                con.Close();
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
            }
            catch
            {
                Label13.Text = "Oops, something went wrong";
            }     
        }


        protected void datefilterbtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("select Item_Date, Item_Title from " + table.name + " where Item_Date = '" + datetb.Text + "'", con);
                sqlDa.SelectCommand.CommandType = CommandType.Text;
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                con.Close();
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
            }
            catch
            {
                Label13.Text = "Oops, something went wrong";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
    }
}