using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized; // for class ListDictionary

public partial class Exercise5_1 : System.Web.UI.Page
{
    // Submit Button adds a new guestbook entry to the database,
    // clears the form and displays the updated list of guestbook entries
    protected void submitButton_Click(object sender, EventArgs e)
    {
        // create dictionary of parameters for inserting
        ListDictionary insertParameters = new ListDictionary();

        // add current date and the user's name, e-mail address          
        // and message to dictionary of insert parameters                
        insertParameters.Add("Date", DateTime.Now.ToShortDateString());
        insertParameters.Add("Name", nameTextBox.Text);
        insertParameters.Add("Email", emailTextBox.Text);
        insertParameters.Add("Message1", messageTextBox.Text);

        // execute an INSERT LINQ statement to add a new entry to the      
        // Messages table in the Guestbook data context that contains the  
        // current date and the user's name, e-mail address and message    
        messagesLinqDataSource.Insert(insertParameters);

        // clear the TextBoxes
        nameTextBox.Text = String.Empty;
        emailTextBox.Text = String.Empty;
        messageTextBox.Text = String.Empty;

        // update the GridView with the new database table contents
        messagesGridView.DataBind();
    }

    // Clear Button clears the Web Form's TextBoxes
    protected void clearButton_Click(object sender, EventArgs e)
    {
        nameTextBox.Text = String.Empty;
        emailTextBox.Text = String.Empty;
        messageTextBox.Text = String.Empty;
    }
}