using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class cdCollection : Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjectConnectionString"].ConnectionString);



    protected void Page_Load(object sender, EventArgs e)
    {



        //display all table data


        String find = "SELECT Artist, Title, Genre, Year from cdCollection";
        SqlCommand comm = new SqlCommand(find, con);
        
        //open and execute
        con.Open();
        comm.ExecuteNonQuery();

        //fills collums with data
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = comm;
        DataSet ds = new DataSet();
        sda.Fill(ds, "Artist");
        sda.Fill(ds, "Title");
        sda.Fill(ds, "Year");
        sda.Fill(ds, "Genre");

        //link to grid
        SearchGridView.DataSource = ds;
        SearchGridView.DataBind();

        //close connection
        con.Close();

    }

    protected void SearchButton_Click(object sender, EventArgs e)
    {
        String search = "SELECT Artist, Title, Genre, Year from cdCollection WHERE (Artist LIKE '%' + @Artist + '%' OR Title LIKE '%' + @Title + '%' OR Genre LIKE '%' + @Genre + '%' OR Year LIKE '%'+ cast(@year as varchar(255)) + '%')";
        SqlCommand comm = new SqlCommand(search, con);
        comm.Parameters.Add("@Artist", SqlDbType.VarChar).Value = SearchTextBox.Text;
        comm.Parameters.Add("@Title", SqlDbType.VarChar).Value = SearchTextBox.Text;
        comm.Parameters.Add("@Genre", SqlDbType.VarChar).Value = SearchTextBox.Text;
        comm.Parameters.Add("@Year", SqlDbType.VarChar).Value = SearchTextBox.Text;

        //open and execute
        con.Open();
        comm.ExecuteNonQuery();

        //fills collums with data
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = comm;
        DataSet ds = new DataSet();
        da.Fill(ds, "Artist");
        da.Fill(ds, "Title");
        da.Fill(ds, "Year");
        da.Fill(ds, "Genre");

        //link to grid
        SearchGridView.DataSource = ds;
        SearchGridView.DataBind();

        con.Close();



    }

    protected void ClearButton_Click(object sender, EventArgs e)
    {
        SearchTextBox.Text = String.Empty;
    }
}