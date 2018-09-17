using System;
using System.IO;
using System.Net;
using System.Runtime.Serialization.Json;
using System.Text;
public partial class _Default : System.Web.UI.Page
{
    private WebClient client = new WebClient();

    protected void Page_Init(object sender, EventArgs e)
    {
        // add DownloadStringCompleted event handler to WebClient
        client.DownloadStringCompleted +=
           new DownloadStringCompletedEventHandler(
           client_DownloadStringCompleted);
    } // end page initialization

    protected void submitButton_Click(object sender, EventArgs e)
    {
        // send request to WelcomeRESTJSONService
        client.DownloadStringAsync(new Uri(
           "http://localhost:1235/Service.svc/"
           + "welcome/" + clientName.Text));
    } // end method submitButton_Click

    // process web service response
    private void client_DownloadStringCompleted(
       object sender, DownloadStringCompletedEventArgs e)
    {
        // check if any error occurred in retrieving service data
        if (e.Error == null)
        {
            // deserialize response into a TextMessage object
            DataContractJsonSerializer JSONSerializer =
               new DataContractJsonSerializer(typeof(TextMessage));
            TextMessage message =
               (TextMessage)JSONSerializer.ReadObject(new
               MemoryStream(Encoding.Unicode.GetBytes(e.Result)));
            // display Message text
            outputMessage.Text = message.Message;
        } // end if
    } // end method client_DownloadStringCompleted

    // TextMessage class representing a JSON object
    [Serializable]
    public class TextMessage
    {
        public string Message;
    } // end class TextMessage
}