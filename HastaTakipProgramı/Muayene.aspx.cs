using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;





namespace firat
{
    public partial class Muayene : System.Web.UI.Page
    {
        
        static string baglantistr = "Data Source=YOLCU-YOLCU\\ONGUC;Initial Catalog=proje;Integrated Security=True";
        SqlConnection baglanti = new SqlConnection(baglantistr);
        SqlCommand komut = new SqlCommand();
       protected void ekle()
           
        {
            Guid a = Guid.NewGuid();
            StreamWriter txDosya;
            txDosya = File.CreateText("\\guidkayit.txt");
            txDosya.WriteLine(a);
            txDosya.Close();


            string gun = DateTime.Now.Day.ToString();
            string ay = DateTime.Now.Month.ToString();
            string yil = DateTime.Now.Year.ToString();
            string saat = DateTime.Now.ToLongTimeString();
          
       
            baglanti.Open();
          // string deger="insert into MuayeneTablo (baslangic) values (@baslangic)";
            string deger="insert into MuayeneTablo (muayene_id,tc_muayene,baslangic,kabulsekli,vakaturu,sikayet,oyku,tetkik,teshis) values (@muayene_id,@tc_muayene,@baslangic,@kabulsekli,@vakaturu,@sikayet,@oyku,@tetkik,@teshis)";
            komut.CommandText=deger;
            komut.Connection=baglanti;
            komut.Parameters.AddWithValue("@muayene_id",a);
            if (TextBoxTC.Text.Length != 11)
            {
                Label1.Text = "TC Kimlik numarasını 11 haneli olarak giriniz!"; return;
            }
            komut.Parameters.AddWithValue("@tc_muayene",TextBoxTC.Text);
           komut.Parameters.AddWithValue("@baslangic",TextBoxBaslangic.Text);
           komut.Parameters.AddWithValue("@kabulsekli", DDLKabulSekli.SelectedItem.Text);
           komut.Parameters.AddWithValue("@vakaturu", DDLVakaTuru.SelectedItem.Text);
           komut.Parameters.AddWithValue("@sikayet", TextBoxSikayetler.Text);
           komut.Parameters.AddWithValue("@oyku", TextBoxOyku.Text);
           komut.Parameters.AddWithValue("@tetkik", TextBoxTetkikler.Text);
           if (TextBoxTeshis.Text == "") { Label1.Text = "Teşhis koyulmadı!"; return; }
           komut.Parameters.AddWithValue("@teshis", TextBoxTeshis.Text);
           komut.ExecuteNonQuery();
           baglanti.Close();
           Response.Write("<script> alert('Kaydedildi.') </script>");
           TextBoxBaslangic.Text = gun + "." + ay + "." + yil + "   " + saat;
           TextBoxOyku.Text = "";
           TextBoxTC.Text = "";
           TextBoxTeshis.Text = "";
           TextBoxTetkikler.Text = "";
           TextBoxSikayetler.Text = "";
           DDLKabulSekli.SelectedItem.Text = "Normal";
           DDLVakaTuru.SelectedItem.Text = "Diğer";
        
        }

       private void SqlParameter(string p, Guid a)
       {
           throw new NotImplementedException();
       }
        protected void Page_Load(object sender, EventArgs e)
        {
            string gun = DateTime.Now.Day.ToString();
            string ay = DateTime.Now.Month.ToString();
            string yil = DateTime.Now.Year.ToString();
            string saat = DateTime.Now.ToLongTimeString();

           TextBoxBaslangic.Text =gun + "." + ay + "." + yil+"   "+ saat;
          
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("hasta_kayit.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Muayene.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            

            
            ekle();
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Rapor.aspx");
        }

       
    }
}