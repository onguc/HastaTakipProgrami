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
    public partial class Randevu : System.Web.UI.Page
    {
        static string baglantistr = "Data Source=YOLCU-YOLCU\\ONGUC;Initial Catalog=proje;Integrated Security=True";
        SqlConnection baglanti = new SqlConnection(baglantistr);
        SqlCommand komut = new SqlCommand();

        protected void ekle()
        {
            baglanti.Open();
            //string deger="insert into RandevuTablo(TC) values (@TC)";
             string deger = "insert into RandevuTablo(RANDEVU_ID,TC_RANDEVU,Ad,Soyad,SGuvence,Poliklinik,RTarihi,RSaati) values (@RANDEVU_ID,@TC,@Ad,@Soyad,@SGuvence,@Poliklinik,@RTarihi,@RSaati)";
            komut.CommandText = deger;
            komut.Connection = baglanti;
            komut.Parameters.AddWithValue("@RANDEVU_ID", Guid.NewGuid());
            komut.Parameters.AddWithValue("@TC",TextBoxTC.Text );
            komut.Parameters.AddWithValue("@Ad", TextBoxAdi.Text);
            komut.Parameters.AddWithValue("@Soyad", TextBoxSoyadi.Text);
            komut.Parameters.AddWithValue("@SGuvence", DDLSGuvence.SelectedItem.Text);
            komut.Parameters.AddWithValue("@Poliklinik", DDLPoliklinik.SelectedItem.Text);
            komut.Parameters.AddWithValue("@RTarihi", TextBoxRTarihi.Text);
            komut.Parameters.AddWithValue("@RSaati", TextBoxRSaati.Text);
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

          
        }
       
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("hasta_kayit.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBoxTC.Text == "")
            {
                LabelHata.Text = "Lütfen T.C Kimlik Numaranızı Giriniz!...";
                return;
            }
            if (TextBoxTC.Text.Length != 11)
            {
                LabelHata.Text = "Lütfen T.C Kimlik Numaranızı Doğru Giriniz!...";
                return;
            }
            if (TextBoxAdi.Text == "" || TextBoxSoyadi.Text == "")
            {
                LabelHata.Text = "Ad ya da Soyad Boş Bırakılamaz!...";
                return;
            }
            if (DDLPoliklinik.SelectedItem.Text == "Belirtilmemiş")
            {
                LabelHata.Text = "Poliklinik Belirtilmemiş!...";
                return;
            }
            if (TextBoxRTarihi.Text=="" || TextBoxRSaati.Text == "")
            {
                LabelHata.Text = "Randevu Tarihi ve Saatini Giriniz!...";
                return;
            }
            ekle();
            Response.Write("<script>alert('Başarıyla Kaydedildi...')</script>");

            TextBoxAdi.Text = "";
            TextBoxRSaati.Text = "";
            TextBoxRTarihi.Text = "";
            TextBoxSoyadi.Text = "";
            TextBoxTC.Text = "";
            DDLPoliklinik.SelectedItem.Text = "Belirtilmemiş";
            DDLSGuvence.SelectedItem.Text = "Belirtilmemiş";
             
        }

        
    }
}