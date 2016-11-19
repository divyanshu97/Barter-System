using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
/// <summary>
/// Summary description for Mail
/// </summary>
public class Mail
{
    
    public static void Send_Mail(string Email, string Body, string Subject)
    {
        using (MailMessage mm = new MailMessage("reachdivyanshu@gmail.com", Email))
        {
            mm.Subject = Subject;
            mm.Body = Body;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("reachdivyanshu@gmail.com", "*****Password ");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
        }

    }
}