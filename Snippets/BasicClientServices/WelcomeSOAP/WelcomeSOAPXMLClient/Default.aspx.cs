using System;

public partial class _Default : System.Web.UI.Page
{
    // declare a reference to the web service
    private ServiceReference.WelcomeSOAPXMLServiceClient client;

    protected void Page_Init(object sender, EventArgs e)
    {        
        client = new ServiceReference.WelcomeSOAPXMLServiceClient();
    } // end page initialization

    // create a welcome message from the text input and web service
    protected void submitButton_Click(object sender, EventArgs e)
    {
        message.Text = client.Welcome(clientName.Text);
    } // end method submitButton_Click
}