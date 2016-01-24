using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Xml.Linq;
using System.Net;
using System.Xml;
using System.Data;
using System.Web.UI.WebControls;
using Helper;
using System.Threading;

public partial class tmp : System.Web.UI.Page
{
    EmailMsg objEmail = new EmailMsg();
    private string GetUserIP()
    {
        return Request.ServerVariables["REMOTE_ADDR"];
    }
    public string GetLocation( ) 
    {
        string ip = GetUserIP();
        string url = "http://api.ipinfodb.com/v2/ip_query.php?key=38d0184207de976802ee11aa17100a29f3679e3e5a7385a4dd6dd4b46693d899&ip={0}&timezone=false";
        url = String.Format(url, ip);

        var result = XDocument.Load(url);


        return result.ToString();



    }

    public DataTable GetLocation1()
    {
        string strIPAddress = GetUserIP();
        //Create a WebRequest with the current Ip
        WebRequest _objWebRequest =
            WebRequest.Create("http://ipinfodb.com/ip_query.php?ip=" 
            //http://ipinfodb.com/ip_query.php?ip=
                           +strIPAddress);
        //Create a Web Proxy
        WebProxy _objWebProxy =
           new WebProxy("http://freegeoip.appspot.com/xml/"
                     + strIPAddress, true);

        //Assign the proxy to the WebRequest
        _objWebRequest.Proxy = _objWebProxy;

        //Set the timeout in Seconds for the WebRequest
        _objWebRequest.Timeout = 2000;

        try
        {
            //Get the WebResponse 
            WebResponse _objWebResponse = _objWebRequest.GetResponse();
            //Read the Response in a XMLTextReader
            XmlTextReader _objXmlTextReader
                = new XmlTextReader(_objWebResponse.GetResponseStream());

            //Create a new DataSet
            DataSet _objDataSet = new DataSet();
            //Read the Response into the DataSet
            _objDataSet.ReadXml(_objXmlTextReader);

            return _objDataSet.Tables[0];
        }
        catch
        {
            return null;
        }
    }

    public static System.Drawing.Image ScaleImage(System.Drawing.Image image, int maxHeight)
    {
        var ratio = (double)maxHeight / image.Height;
        var newWidth = (int)(image.Width * ratio);
        var newHeight = (int)(image.Height * ratio);
        var newImage = new Bitmap(newWidth, newHeight);
        using (var g = Graphics.FromImage(newImage))
        {
            g.DrawImage(image, 0, 0, newWidth, newHeight);
        }
        return newImage;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       // Response.Write(GetLocation().ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //WebMsgBox.Show("hello");
        //Thread.Sleep(2000);
        //Label1.Text = "Upadted";
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        objEmail.To = "vivektiwari97701@gmail.com";
        objEmail.Subject = "Welcome To Shaadisagai.com";
        objEmail.Host = "smtp.shaadisaagai.com";
        objEmail.sendTemplateMSg("Vivek Tiwari", Server.MapPath("MSGTemplates\\WelcomeMSG1.txt"), Server.MapPath("MSGTemplates\\WelcomeMSG2.txt"));
        ucMessage.ShowMessage(Message.Text.SUCCESS_SERVER, Message.Type.success.ToString());
    }
  
}


