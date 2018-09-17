// Fig. 3.13: IWelcomeRESTJSONService.cs
// WCF web service interface that returns a welcome message through REST
// architecture and JSON format.
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;

[ServiceContract]
public interface IWelcomeRESTJSONService
{
   // returns a welcome message
   [OperationContract]
   [WebGet( ResponseFormat = WebMessageFormat.Json,
      UriTemplate = "/welcome/{yourName}" )]
   TextMessage Welcome( string yourName );
} // end interface IWelcomeRESTJSONService

// class to encapsulate a string to send in JSON format
[DataContract]
public class TextMessage
{
   // automatic property message
   [DataMember]
   public string Message { get; set; }
} // end class TextMessage
