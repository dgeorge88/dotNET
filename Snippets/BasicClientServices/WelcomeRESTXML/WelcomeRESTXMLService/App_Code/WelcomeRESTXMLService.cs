// Fig. 3.9: WelcomeRESTXMLService.cs
// WCF web service that returns a welcome message using REST architecture
// and XML data format.
public class WelcomeRESTXMLService : IWelcomeRESTXMLService
{
   // returns a welcome message
   public string Welcome( string yourName )
   {
      return string.Format(
         "Welcome to WCF Web Services with REST and XML, {0}!", 
         yourName );
   } // end method Welcome
} // end class WelcomeRESTXMLService
