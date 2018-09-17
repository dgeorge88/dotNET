using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService" in both code and config file together.
[ServiceContract]
public interface IService
{

    //return welcome message
    [OperationContract]

    [WebGet(ResponseFormat = WebMessageFormat.Json, UriTemplate = "/Welcome/{yourName}")]

    TextMessage Welcome(String yourName);
}

public class TextMessage
{

    [DataMember]

    public string Message { get; set; }

}



