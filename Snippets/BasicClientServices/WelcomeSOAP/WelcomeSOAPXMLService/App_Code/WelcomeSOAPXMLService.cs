// Fig. 3.2: WelcomeSOAPXMLService.cs
// WCF web service that returns a welcome message using SOAP protocol and
// XML data format.
public class WelcomeSOAPXMLService : IWelcomeSOAPXMLService
{
   // returns a welcome message
   public string Welcome( string yourName )
   {
      return string.Format(
         "Welcome to WCF Web Services with SOAP and XML, {0}!", 
         yourName );
   } // end method Welcome
} // end class WelcomeSOAPXMLService
