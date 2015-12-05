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
    public partial class Saglıkraporu : System.Web.UI.Page
    {
        static string baglantistr = "Data Source=YOLCU-YOLCU\\ONGUC;Initial Catalog=proje;Integrated Security=True";
        SqlConnection baglanti = new SqlConnection(baglantistr);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string tc = (string)Session["kullanici"];

                baglanti.Open();
                SqlCommand komut = new SqlCommand();
                komut.Connection = baglanti;
                komut.CommandText = @"SELECT     *
                                              FROM         Rapor
                                              where (tc = @tc)";
                komut.Parameters.Add("@tc", System.Data.SqlDbType.VarChar).Value = tc;

                SqlDataReader dr = komut.ExecuteReader();
                if (dr.Read())
                {
                    Label1.Text = dr[0].ToString();
                    Label2.Text = dr[1].ToString();
                    Label3.Text = dr[2].ToString();
                    Label4.Text = dr[3].ToString();
                    Label5.Text = dr[4].ToString();

                }
            }

        }
    }
}