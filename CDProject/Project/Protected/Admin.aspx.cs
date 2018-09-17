using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;


public partial class Protected_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {

       
                //insert parameters
                ListDictionary insertParameters = new ListDictionary();

                //Bind Data using parameters            
                insertParameters.Add("Artist", ArtistTextBox.Text);
                insertParameters.Add("Title", TitleTextBox.Text);
                insertParameters.Add("Genre", GenreTextBox.Text);
                insertParameters.Add("Year", YearTextBox.Text);

                //execute insert
                ProjectLinqDataSource.Insert(insertParameters);
       
    


    // clear the TextBoxes on completion
                ArtistTextBox.Text = String.Empty;
                TitleTextBox.Text = String.Empty;
                YearTextBox.Text = String.Empty;
                GenreTextBox.Text = String.Empty;
      

                // update the cdCollection GridView 
                cdCollection.DataBind();





            }
        
    


    protected void ResetButton_Click(object sender, EventArgs e)
    {
        //Clear the textboxes using reset buttom
        ArtistTextBox.Text = String.Empty;
        TitleTextBox.Text = String.Empty;
        YearTextBox.Text = String.Empty;
        GenreTextBox.Text = String.Empty;
    }
}