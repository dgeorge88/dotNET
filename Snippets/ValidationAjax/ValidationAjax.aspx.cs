using System;

public partial class ValidationAjax : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // if this is not the first time the page is loading
        // (i.e., the user has already submitted form data)
        if (IsPostBack)
        {
            Validate(); // validate the form

            // if the form is valid
            if (IsValid)
            {
                // retrieve the values submitted by the user
                string name = nameTextBox.Text;
                string email = emailTextBox.Text;
                string phone = phoneTextBox.Text;

                // show the the submitted values
                outputLabel.Text = "Thank you for your submission<br/>" +
                   "We received the following information:<br/>";
                outputLabel.Text +=
                   String.Format("Name: {0}{1}E-mail: {2}{1}Phone: {3}",
                      name, "<br/>", email, phone);
                outputLabel.Visible = true; // display the output message
            } // end if
        } // end if
    }
} 
