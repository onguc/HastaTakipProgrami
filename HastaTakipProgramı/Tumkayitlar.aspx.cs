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
    public partial class Tumkayitlar : System.Web.UI.Page
    {
        static string baglantistr = "Data Source=YOLCU-YOLCU\\ONGUC;Initial Catalog=proje;Integrated Security=True";
        SqlConnection baglanti = new SqlConnection(baglantistr);
        SqlCommand komut = new SqlCommand();
        SqlDataReader dr;

        protected void goster(string tablo)
        {
            komut.CommandText = "select * from "+tablo;
            komut.Connection = baglanti;
            baglanti.Open();
            dr = komut.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            baglanti.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            goster("HKayitTablo");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            GridView1.DataSource = dr;

            SqlDataSource verikaynak = new SqlDataSource();

            verikaynak.ConnectionString = "Data Source=YOLCU-YOLCU\\ONGUC;Initial Catalog=proje;Integrated Security=True";

            verikaynak.DataSourceMode = SqlDataSourceMode.DataSet;

            verikaynak.SelectCommand = "select * from HKayitTablo where TC=@kategori";

            verikaynak.SelectParameters.Add("kategori", TextBox1.Text);
            

            GridView1.DataSource = verikaynak;

            GridView1.DataBind();
            baglanti.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            GridView1.DataSource = dr;

            SqlDataSource verikaynak = new SqlDataSource();

            verikaynak.ConnectionString = "Data Source=YOLCU-YOLCU\\ONGUC;Initial Catalog=proje;Integrated Security=True";

            verikaynak.DataSourceMode = SqlDataSourceMode.DataSet;

            verikaynak.SelectCommand = "select * from HKayitTablo where Ad=@kategori";

            verikaynak.SelectParameters.Add("kategori", TextBox1.Text);

            GridView1.DataSource = verikaynak;

            GridView1.DataBind();
            baglanti.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }
}