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
    public partial class kullanici1 : System.Web.UI.Page
    {
        static string baglantistr = "Data Source=YOLCU-YOLCU\\ONGUC;Initial Catalog=proje;Integrated Security=True";
        SqlConnection baglanti = new SqlConnection(baglantistr);
        SqlCommand komut = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string isim, email, sifre;

            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                baglanti.Open();

                SqlCommand cmd = new SqlCommand(@"SELECT     kullaniciadi, email,sifre
                                                FROM         DoktorKaydi
                                                WHERE     (kullaniciadi = @kullaniciadi)", baglanti);

                cmd.Parameters.Add("@kullaniciadi", TextBox1.Text);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    isim = dr["kullaniciadi"].ToString();
                    email = dr["email"].ToString();
                    sifre = dr["sifre"].ToString();
                    if (email == TextBox2.Text)
                    {
                        Response.Write("<script> alert('" + sifre + "') </script>");
                    }
                    else
                        Label1.Text = "Hatalı email";
                }
                else
                    Label1.Text = "kullanici bulunamadi";
                baglanti.Close();
            }
            else
            {
                Label1.Text = "İsim ve email adresinizi  giriniz!";
            }

        }
    }
}