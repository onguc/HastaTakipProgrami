using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace firat
{
    public partial class deneme4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Label1.Text = "Kullanıcı kodunu giriniz...";

            }
            else
                if (TextBox1.Text == "01")
                {
                    Response.Redirect("KullaniciGirisi.aspx");
                }
                else
                    if (TextBox1.Text == "02")
                    {
                        Response.Redirect("YoneticiGirisi.aspx");
                    }
                    else
                        Label1.Text = "Kullanıcı kodu yanlış...";

        }



    }
}
