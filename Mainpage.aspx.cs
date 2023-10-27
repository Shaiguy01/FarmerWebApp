using DLLCalcs;
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
    public partial class Mainpage : System.Web.UI.Page
    {
        //main class where interacting with the data base is always happening
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=moduleDB;Integrated Security=True");      

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                fillgridview();//read table before anything
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Login.aspx");
            }
            
        }
        
        void fillgridview()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("select * from "+ table.name +"", con);// we want the grid to read the entire tabel, which is all the module data
            sqlDa.SelectCommand.CommandType = CommandType.Text;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            con.Close();
            GridView1.DataSource = dtbl;
            GridView1.DataBind(); //all this page does is load the correct data grid if theres any data in them, it will still load, the grid juts wont show if theres no rows
        }


        
        //to simply log out / return to the login screen
        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }


        //for inserting data into the correct table
        protected void adddetailsbtn_Click(object sender, EventArgs e)
        {

            //doing the thing where it stores a user
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand sqlCmd = new SqlCommand("INSERT INTO " + table.name + " VALUES (@Item_Title, @Item_Type, @Item_Date)", con);//insert details into that account table
            sqlCmd.CommandType = CommandType.Text;
            sqlCmd.Parameters.AddWithValue("@Item_Title", itemtitletb.Text); // the script's paraneters, add it cause its a value, and add what im using to point at
            sqlCmd.Parameters.AddWithValue("@Item_Type", itemtypetb.Text);
            sqlCmd.Parameters.AddWithValue("Item_Date", itemdatetb.Text);
            sqlCmd.ExecuteNonQuery();
            con.Close();
            fillgridview();//in task 2 the grid updates after the connection closes
            Mdetailsadded.Text = "farm item Added!";

            //reset textboxes
            itemtitletb.Text = "";
            itemtypetb.Text = "";
            itemdatetb.Text = "YYYY/MM/DD";
        }


        //to delete a single row of module details, cannot delete all at once
        protected void deletebtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                //using an SQL statament to delete from the table
                SqlCommand sqlcmd = new SqlCommand("delete from " + table.name + " where Item_Title = '" + deleteitemtb.Text + "'" + " ", con);
                sqlcmd.CommandType = CommandType.Text;
                sqlcmd.ExecuteNonQuery();
                con.Close();
                fillgridview();//for refreshing and flow purposes
                deleteitemtb.Text = "";
                deletemessg.Text = "item deleted";
            }
            catch
            {
                deletemessg.Text = "item could not be deleted";
            }
        }

        protected void deleteitemtb_TextChanged(object sender, EventArgs e)
        {

        }
    }
}