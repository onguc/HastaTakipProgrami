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
    public partial class hasta_kayıt : System.Web.UI.Page
    {
        static string baglantistr = "Data Source=YOLCU-YOLCU\\ONGUC;Initial Catalog=proje;Integrated Security=True";
        SqlConnection baglanti = new SqlConnection(baglantistr);
        SqlCommand komut = new SqlCommand();
        string dtarihi;

        protected void Page_Load(object sender, EventArgs e)
        {
            for (int j = 1900; j <= DateTime.Now.Year; j++)
            {
                DDLDYili.Items.Add(j.ToString());
            }
           
        }
        protected void ekle()
        {
            baglanti.Open();
            //string deger="insert into HKayitTablo (TC,Ad,Soyad,Dyeri,DTarihi) values (@TC,@Ad,@Soyad,@DYeri,@DTarihi)";
            string deger = "insert into HKayitTablo (TC,Ad,Soyad,DYeri,DTarihi,Cinsiyet,AnneAdi,BabaAdi,Meslek,SGuvence,MHali,KanGrubu,Tel,Adres) values (@TC,@Ad,@Soyad,@DYeri,@DTarihi,@Cinsiyet,@AnneAdi,@BabaAdi,@Meslek,@SGuvence,@MHali,@KanGrubu,@Tel,@Adres)";
             komut.CommandText = deger;
            komut.Connection = baglanti;
            if (TextBoxTC.Text.Length != 11) { Label1.Text = "TC Kimlik Numaranızı 11 haneli olarak doldurunuz!"; return; }
            komut.Parameters.AddWithValue("@TC", TextBoxTC.Text);
            komut.Parameters.AddWithValue("@Ad", TextBoxAd.Text);
            komut.Parameters.AddWithValue("@Soyad", TextBoxSoyad.Text);
            if (TextBoxAd.Text == "" || TextBoxSoyad.Text == "") { Label1.Text = "Ad ve Soyad boş bırakılamaz!"; return; }
            komut.Parameters.AddWithValue("@DYeri", TextBoxDYeri.Text);
            komut.Parameters.AddWithValue("@DTarihi", dtarihi.ToString());
            if (RBLCinsiyet.SelectedValue=="") { Label1.Text = "Lütfen Cinsiyetini belirtiniz!"; return; }
            komut.Parameters.AddWithValue("@Cinsiyet", RBLCinsiyet.SelectedItem.Text);
            
            komut.Parameters.AddWithValue("@AnneAdi", TextBoxAneeAdi.Text);
            komut.Parameters.AddWithValue("@BabaAdi", TextBoxBabaAdi.Text);
            komut.Parameters.AddWithValue("@Meslek", TextBoxMeslek.Text);
            komut.Parameters.AddWithValue("@SGuvence", DDLSGuvence.SelectedItem.Text);
            komut.Parameters.AddWithValue("@MHali", DDLMedeniHali.SelectedItem.Text);
            komut.Parameters.AddWithValue("@KanGrubu", DDLKanGrubu.SelectedItem.Text);
            komut.Parameters.AddWithValue("@Tel", TextBoxTel.Text);
            komut.Parameters.AddWithValue("@Adres", TextBoxAdres.Text);
            komut.ExecuteNonQuery(); 
            baglanti.Close();

            Response.Write("<script>alert('Kaydedildi')</script>");

            TextBoxAd.Text = "";
            TextBoxTC.Text = "";
            TextBoxTel.Text = "";
            TextBoxSoyad.Text = "";
            TextBoxMeslek.Text = "";
            TextBoxDYeri.Text = "";
            TextBoxAneeAdi.Text = "";
            TextBoxBabaAdi.Text = "";
            TextBoxAdres.Text = "";
            DDLDAyi.SelectedItem.Text = "01";
            DDLDGunu.SelectedItem.Text = "Gün";
            DDLDYili.SelectedItem.Text = "Yıl";
            DDLKanGrubu.SelectedItem.Text = "A Rh +";
            DDLSGuvence.SelectedItem.Text = "Belirtilmemiş";
            DDLMedeniHali.SelectedItem.Text = "";
            Label1.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("default2.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dtarihi = DDLDGunu.SelectedItem.Text + "." + DDLDAyi.SelectedItem.Text + "." + DDLDYili.Text;
            ekle();
           
           
        }

        
    }
}