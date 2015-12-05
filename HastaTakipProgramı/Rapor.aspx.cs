using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace firat
{
    public partial class Rapor : System.Web.UI.Page
    {
        static string baglantistr = "Data Source=YOLCU-YOLCU\\ONGUC;Initial Catalog=proje;Integrated Security=True";
        SqlConnection baglanti = new SqlConnection(baglantistr);
        SqlCommand komut = new SqlCommand();
        protected void ekle()
        {
            baglanti.Open();
            string aaa = "Insert Into Rapor (tc,ad,dogumtarihi,protokolno,raportarihi,raporbitistarihi,istirahatsuresi,tani) values (@tc,@ad,@dogumtarihi,@protokolno,@raportarihi,@raporbitistarihi,@istirahatsuresi,@tani)";
            komut.CommandText = aaa;
            komut.Connection = baglanti;
            komut.Parameters.AddWithValue("@tc", TextBox1.Text);
            komut.Parameters.AddWithValue("@ad", TextBox5.Text);
            komut.Parameters.AddWithValue("@dogumtarihi", TextBox2.Text);
            komut.Parameters.AddWithValue("@protokolno", TextBox6.Text);
            komut.Parameters.AddWithValue("@raportarihi", TextBox3.Text);
            komut.Parameters.AddWithValue("@raporbitistarihi", TextBox7.Text);
            komut.Parameters.AddWithValue("@istirahatsuresi", TextBox4.Text);
            komut.Parameters.AddWithValue("@tani", TextBox8.Text);

            komut.ExecuteNonQuery();
            baglanti.Close();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string gun = DateTime.Now.Day.ToString();
            string ay = DateTime.Now.Month.ToString();
            string yil = DateTime.Now.Year.ToString();


            TextBox3.Text = "  " + gun + "/" + ay + "/" + yil;


        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    ekle();
        //    Session["kullanici"] = TextBox1.Text;
        //    Response.Redirect("istirahatraporu.aspx");

        //}

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    ekle();
        //    Session["kullanici"] = TextBox1.Text;
        //    Response.Redirect("Saglıkraporu.aspx");
        //}

        protected void Button1_Click1(object sender, EventArgs e)
        {
            ekle();
            Session["kullanici"] = TextBox1.Text;
            Response.Redirect("istirahatraporu.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            ekle();
            Session["kullanici"] = TextBox1.Text;
            Response.Redirect("Saglıkraporu.aspx");

        }




    }
}