
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;

public partial class cdCollection : System.Web.UI.Page
{
  
   
    protected void Page_Load(object sender, EventArgs e)
    {
        //call the web service
        var service = new WebClient().DownloadString("http://localhost:56309/CDService.asmx/GetCDService");

        //decode the document
        var jsonCon = JsonConvert.DeserializeObject<List<objCollection>>(service);

        //bind whole cd collection to gridview
        GridView.DataSource = jsonCon;
        GridView.DataBind();
    }

    protected void SearchButton_Click(object sender, EventArgs e)
    {
        //call the web service
        var service = new WebClient().DownloadString("http://localhost:56309/CDService.asmx/GetCDService");

        //decode the document
        var albums = JsonConvert.DeserializeObject<List<objCollection>>(service);

        //query multiple values
        var search = albums.Where(album =>
        album.Artist.Contains(SearchTextBox.Text) || 
        album.Title.Contains( SearchTextBox.Text) ||
        album.Genre.Contains(SearchTextBox.Text) ||
        album.Year.Contains(SearchTextBox.Text))
        .AsEnumerable();

        //output values to gridview
        GridView.DataSource = search;
        GridView.DataBind();
    }

    protected void ResetButton_Click(object sender, EventArgs e)
    {
        SearchTextBox.Text = String.Empty;
    }
}

public class objCollection
{
    public string Artist { get; set; }
    public string Genre { get; set; }
    public string Title { get; set; }
    public string Year { get; set; }
}