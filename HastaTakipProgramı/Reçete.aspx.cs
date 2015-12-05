using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;


namespace firat
{
    public partial class Reçete : System.Web.UI.Page
    {
        static string baglantistr = "Data Source=YOLCU-YOLCU\\ONGUC;Initial Catalog=proje;Integrated Security=True";
        SqlConnection baglanti = new SqlConnection(baglantistr);
        SqlCommand komut = new SqlCommand();
        static string aa;
        protected void ekle()
        {
            StreamReader txtokuma = new StreamReader("\\guidkayit.txt");
           aa = txtokuma.ReadLine();
            txtokuma.Close();
           
            
            
            baglanti.Open();
            //string deger = "insert into ReceteTablo(RECETE_ID,RTarihi,RTuru,SGuvence,TSuresi,SecilenI,TedaviS) values (@RECETE_ID,@RTarihi,@RTuru,@SGuvence,@TSuresi,@SecilenI,@TedaviS)";
            string deger = "insert into ReceteTablo(RECETE_ID,RTarihi,RTuru,SGuvence,TSuresi,SecilenI) values (@RECETE_ID,@RTarihi,@RTuru,@SGuvence,@TSuresi,@SecilenI)";
            komut.CommandText = deger;
            komut.Connection = baglanti;
            if (aa.ToString() == "") { Label1.Text = "Muayene edilmeden reçete yazılamamaktadır!"; return; }
            komut.Parameters.AddWithValue("@RECETE_ID",aa);
            komut.Parameters.AddWithValue("@RTarihi",TextBoxRTarihi.Text);
            komut.Parameters.AddWithValue("@RTuru",DDLRTuru.SelectedItem.Text);
            komut.Parameters.AddWithValue("@SGuvence",DDLSGuvence.SelectedItem.Text);
            if (RBLTSuresi.SelectedValue == "") { Label1.Text = "Tedavi süresi seçilmedi!"; return; }
            komut.Parameters.AddWithValue("@TSuresi", RBLTSuresi.SelectedItem.Text);
            komut.Parameters.AddWithValue("@SecilenI",TextBoxSecilenI.Text);
            
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Write("<script>alert('Kaydedildi')</script>");
            TextBoxSecilenI.Text = "";
            DDLIadedi.SelectedItem.Text = "Belirtilmemiş";
            DDLIListesi.SelectedItem.Text = "Belirtilmemiş";
            DDLRTuru.SelectedItem.Text = "Normal";
            DDLSGuvence.SelectedItem.Text = "Belirtilmemiş";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
            string gun = DateTime.Now.Day.ToString();
            string ay = DateTime.Now.Month.ToString();
            string yil = DateTime.Now.Year.ToString();
            TextBoxRTarihi.Text = "  " + gun + "/" + ay + "/" + yil;
            RBLKSekli.SelectedValue = "Belirtilmedi";  // Belirtilmedi butonunu seçili tutar

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("hasta_kayit.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //baglanti.Open();
            //SqlDataSource verikaynak = new SqlDataSource();

            //verikaynak.ConnectionString = "Data Source=YOLCU-YOLCU\\ONGUC;Initial Catalog=proje;Integrated Security=True";

            //verikaynak.DataSourceMode = SqlDataSourceMode.DataSet;


            //verikaynak.SelectCommand = "select * from ReceteTablo where RECETE_ID=@kategori";

            //verikaynak.SelectParameters.Add("kategori", aa);
            //Label1.Text = verikaynak;
            //   return;
            ////if (aa == "'kategori'") { return; }
            baglanti.Close();
            if (TextBoxSecilenI.Text == "") { Label1.Text = "Henüz bir ilaç eklemediniz!"; return; }
            
            ekle();
            
            

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
       static int i = 1;
        protected void ButtonEkle_Click(object sender, EventArgs e)
        {
            
            if (DDLIListesi.SelectedItem.Text== "Belirtilmemiş") { Label1.Text = "İlaç seçmediniz!"; return; }
            if (RBLDozSekli.SelectedValue == "") { Label1.Text = "Doz şeklini seçiniz!"; return; }
           

            TextBoxSecilenI.Text =TextBoxSecilenI .Text + i+"). " + DDLIListesi.SelectedItem.Text + " " + DDLIadedi.SelectedItem.Text + " " + RBLDozSekli.SelectedItem.Text + " " + RBLKSekli.SelectedItem.Text+"\n";
            i++;
        }

     

        
    }
}