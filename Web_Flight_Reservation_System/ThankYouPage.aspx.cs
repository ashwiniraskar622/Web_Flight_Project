using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Data;
using System.Net;
using System.IO;

namespace Web_Flight_Reservation_System
{
    public partial class ThankYouPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        const string table_pattern = "<table.*?>(.*?)</table>";
        

        private static List<string> GetContents(string input,string pattern)
        {
            MatchCollection matches = Regex.Matches(input, pattern, RegexOptions.Singleline);
            List<string> contents = new List<string>();
            foreach (Match match in matches)
                contents.Add(match.Value);
            return contents;
        }
        protected void btnClickHere_Click(object sender, EventArgs e)
        {
            SQLDataAccessHelper1 obj = new SQLDataAccessHelper1();
            DataTable dt = new DataTable();
            
            dt = obj.getdatareader("select f_source_location,f_destination_location,CONVERT(varchar(10),f_departure_date,103)as f_departure_date from Flight_Details Where flight_id = ' " + Session["FlightID"]+"'");             
            string f_source_location = dt.Rows[0][0].ToString();
            string f_destination_location = dt.Rows[0][1].ToString();
            string f_departure_date = dt.Rows[0][2].ToString();

            DataTable dt1 = new DataTable();
            dt1 = obj.getdatareader("select first_name,last_name from Passenger_Details where passenger_id= '" + Session["P_ID"] + "'");
            string first_name = dt1.Rows[0][0].ToString();
            string last_name = dt1.Rows[0][1].ToString();

            DataTable dt2 = new DataTable();
            dt2 = obj.getdatareader("select f_class,total_price from Passenger_Flight_Details where passenger_flight_id = '"+ Convert.ToInt32(Request.Cookies["P_F_ID"].Value) + "'");
            string f_class = dt2.Rows[0][0].ToString();
            string total_price = dt2.Rows[0][1].ToString();

            WebClient wc = new WebClient();
            string url = Request.Url.AbsoluteUri;
            string fileCotent = wc.DownloadString(url);

            List<string> tableContents = GetContents(fileCotent, table_pattern);

            string HTML_String = string.Join(" ", tableContents.ToArray());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();

            iTextSharp.text.Image img = iTextSharp.text.Image.GetInstance(Server.MapPath("Images/online_flights_logo.png"));
            float maxWidth = 200f;
            float maxHeight = 150f;
            img.ScaleToFit(maxWidth, maxHeight);
            img.Alignment = Element.ALIGN_LEFT;
            pdfDoc.Add(img);
            pdfDoc.Add(new Paragraph("\n"));
            pdfDoc.Add(new Paragraph("\n"));

            BaseFont bf1 = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
            Font font1 = new Font(bf1, 14, Font.BOLD, BaseColor.BLACK);

            pdfDoc.Add(new Paragraph ("Passenger Name = " + first_name + " " + last_name, font1));
            pdfDoc.Add(new Paragraph("\n"));
            pdfDoc.Add(new Paragraph("Source Location = " + f_source_location + "         ", font1));
            pdfDoc.Add(new Paragraph("\n"));
            pdfDoc.Add(new Paragraph("Destination Location = " + f_destination_location , font1));
            pdfDoc.Add(new Paragraph("\n"));
            pdfDoc.Add(new Paragraph("Departual Date = " + f_departure_date , font1));
            pdfDoc.Add(new Paragraph("\n"));
            pdfDoc.Add(new Paragraph("Class  = " + f_class, font1));
            pdfDoc.Add(new Paragraph("\n"));
            pdfDoc.Add(new Paragraph("Total Price = " + total_price  , font1));
            pdfDoc.Add(new Paragraph("\n"));

            List<IElement> htmlarraylist = HTMLWorker.ParseToList(new StringReader(HTML_String), null);
            for (int k = 0; k < htmlarraylist.Count; k++)
            {
                pdfDoc.Add((IElement)htmlarraylist[k]);
            }
            pdfDoc.Close();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;" +
                                           "filename = Flight-Ticket.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Write(pdfDoc);
            Response.End();
        }
    }
}