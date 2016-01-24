using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.IO;
using System.Text;

/// <summary>
/// Summary description for EmailMsg
/// </summary>
public class EmailMsg
{
  

   
    string to;

    public string To
    {
        get { return to; }
        set { to = value; }
    }
    

   
    string subject;

    public string Subject
    {
        get { return subject; }
        set { subject = value; }
    }
    string body;

    public string Body
    {
        get { return body; }
        set { body = value; }
    }

    string host;

    public string Host
    {
        get { return host; }
        set { host = value; }
    }

    public EmailMsg()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void SendEmail()
    {
        MailMessage mail = new MailMessage();
        mail.To.Add(To);

        mail.From = new MailAddress("admin@shaadisaagai.com"); //shaadisagai@gmail.com
        mail.Subject = Subject;
      
        mail.Body = Body;
        mail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "shaadisaagai.com";
        smtp.EnableSsl = false;
        
        smtp.Credentials = new System.Net.NetworkCredential("admin@shaadisaagai.com", "9468647621");
        smtp.Send(mail);                                                //brajmohan123

    }
    public string sendTemplateMSg(string UserName,string path1,string path2)
    {
        StreamReader streamReader1 = new StreamReader(path1, Encoding.UTF8);
        StreamReader streamReader2 = new StreamReader(path2, Encoding.UTF8);
        string text1 = streamReader1.ReadToEnd();
        string text2 = streamReader2.ReadToEnd();
        streamReader1.Close();
        streamReader2.Close();
        this.Body = text1 + UserName + text2;
        SendEmail();
        return text1 + UserName + text2;
        
    }
}