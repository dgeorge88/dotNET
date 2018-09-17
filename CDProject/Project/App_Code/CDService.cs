using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

/// <summary>
/// Summary description for CDService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class CDService : System.Web.Services.WebService
{
    [WebMethod]
    public void GetCDService()
    {

        List<objCollection> objCDC = new List<objCollection>();

        string cs = ConfigurationManager.ConnectionStrings["ProjectConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            String find = "SELECT Artist, Title, Genre, Year from cdCollection";

            SqlCommand cmd = new SqlCommand(find);


            cmd.Connection = con;
            con.Open();


            SqlDataReader sqlrdr = cmd.ExecuteReader();
            while (sqlrdr.Read())
            {
                objCollection AlbumsDetails = new objCollection();
                AlbumsDetails.Artist = sqlrdr["Artist"].ToString();
                AlbumsDetails.Title = sqlrdr["Title"].ToString();
                AlbumsDetails.Genre = sqlrdr["Genre"].ToString();
                AlbumsDetails.Year = sqlrdr["Year"].ToString();
                objCDC.Add(AlbumsDetails);

            }
        }

        JavaScriptSerializer js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(objCDC));
    }


    public class objCollection
    {

        public string Artist { get; set; }
        public string Title { get; set; }
        public string Genre { get; set; }
        public string Year { get; set; }
    }
}