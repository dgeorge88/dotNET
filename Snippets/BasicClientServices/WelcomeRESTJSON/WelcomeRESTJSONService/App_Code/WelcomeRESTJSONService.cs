// Fig. 3.14: WelcomeRESTJSONService.cs
// WCF web service that returns a welcome message through REST
// architecture and JSON format.
public class WelcomeRESTJSONService : IWelcomeRESTJSONService
{
   // returns a welcome message
   public TextMessage Welcome( string yourName )
   {
      // add welcome message to field of TextMessage object
      TextMessage message = new TextMessage();
      message.Message = string.Format( 
         "Welcome to WCF Web Services with REST and JSON, {0}!", 
         yourName );
      return message;
   } // end method Welcome
} // end class WelcomeRESTJSONService
