// Fig. 3.8: IWelcomeRESTXMLService.cs
// WCF web service interface. A class that implements this interface
// returns a welcome message through REST architecture and XML data format
using System.ServiceModel;
using System.ServiceModel.Web;

[ServiceContract]
public interface IWelcomeRESTXMLService
{
   // returns a welcome message
   [OperationContract]

   [WebGet( UriTemplate = "/welcome/{yourName}" )]

   string Welcome( string yourName );
} // end interface IWelcomeRESTXMLService
