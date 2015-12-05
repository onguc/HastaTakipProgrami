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
    public partial class deneme5 : System.Web.UI.Page
    {

        static string baglantistr = "Data Source=YOLCU-YOLCU\\ONGUC;Initial Catalog=proje;Integrated Security=True";
        SqlConnection baglanti = new SqlConnection(baglantistr);
        SqlCommand komut = new SqlCommand();
        protected void ekle()
        {
            baglanti.Open();
            string aaa = "Insert Into DoktorKaydi (kullaniciadi,sifre,email,soru,cevap) values (@kullaniciadi,@sifre,@email,@soru,@cevap)";
            komut.CommandText = aaa;
            komut.Connection = baglanti;
            komut.Parameters.AddWithValue("@kullaniciadi", TextBox1.Text);
            komut.Parameters.AddWithValue("@sifre", TextBox2.Text);
            komut.Parameters.AddWithValue("@email", TextBox4.Text);
            komut.Parameters.AddWithValue("@soru", DropDownList1.SelectedItem.ToString());
            komut.Parameters.AddWithValue("@cevap", TextBox6.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();

        }
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ekle();
            Response.Write("<script> alert('Kaydınız başarıyla gerçekleşmiştir..')</script>");
        }





    }
}