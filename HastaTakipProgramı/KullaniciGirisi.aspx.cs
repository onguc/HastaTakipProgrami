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
    public partial class default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        static string baglantistr = "Data Source=YOLCU-YOLCU\\ONGUC;Initial Catalog=proje;Integrated Security=True";
        SqlConnection baglanti = new SqlConnection(baglantistr);
        SqlCommand komut = new SqlCommand();

        protected void Button1_Click(object sender, EventArgs e)
        {
            string isim, sifre;

            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                baglanti.Open();

                SqlCommand cmd = new SqlCommand(@"SELECT     kullaniciadi, sifre
                                                FROM         DoktorKaydi
                                                WHERE     (kullaniciadi = @kullaniciadi)", baglanti);

                cmd.Parameters.Add("@kullaniciadi", TextBox1.Text);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    isim = dr["kullaniciadi"].ToString();
                    sifre = dr["sifre"].ToString();
                    if (sifre == TextBox2.Text)
                    {
                        Response.Redirect("hasta_kayit.aspx");
                    }
                    else
                        Label1.Text = "Hatalı şifre";
                }
                else
                    Label1.Text = "kullanici bulunamadi";
                baglanti.Close();
            }
            else
            {
                Label1.Text = "İsim ve şifrenizi giriniz!";
            }
        }
    }
}