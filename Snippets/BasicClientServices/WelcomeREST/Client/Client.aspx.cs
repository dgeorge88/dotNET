using System;
using System.Net;
using System.Xml.Linq;

public partial class Client : System.Web.UI.Page
{
    // object to invoke the Service
    private WebClient client = new WebClient();
    private XNamespace xmlNamespace = XNamespace.Get(
       "http://schemas.microsoft.com/2003/10/Serialization/");

    protected void Page_Init(object sender, EventArgs e)
    {
        // add DownloadStringCompleted event handler to WebClient
        client.DownloadStringCompleted +=
           new DownloadStringCompletedEventHandler(
           client_DownloadStringCompleted);
    } // end page initialization
      // create a welcome message from the text input and web service

    protected void submitButton_Click(object sender, EventArgs e)
    {
        // send request to WelcomeRESTXMLService
        client.DownloadStringAsync(new Uri(
           "http://localhost:16285/Service.svc/" +
           "welcome/" + clientName.Text));
    } // end method submitButton_Click

    // process web service response

    private void client_DownloadStringCompleted(
       object sender, DownloadStringCompletedEventArgs e)
    {
        // check if any error occurred in retrieving service data
        if (e.Error == null)
        {
            // parse the returned XML string (e.Result)
            XDocument xmlResponse = XDocument.Parse(e.Result);
            // get the <string> element's value
            message.Text = xmlResponse.Element(
               xmlNamespace + "string").Value;
        } // end if
    } // end method client_DownloadStringCompleted
}