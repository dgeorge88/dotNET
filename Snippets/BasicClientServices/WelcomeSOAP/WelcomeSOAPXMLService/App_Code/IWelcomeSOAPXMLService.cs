// Fig. 3.1: IWelcomeSOAPXMLService.cs
// WCF web service interface that returns a welcome message through SOAP 
// protocol and XML data format.
using System.ServiceModel;

[ServiceContract]
public interface IWelcomeSOAPXMLService
{
   // returns a welcome message
   [OperationContract]
   string Welcome( string yourName );
} // end interface IWelcomeSOAPXMLService
