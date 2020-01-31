using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NETWebExample
{
    public partial class KayıtOl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlDurum.Visible = false;

        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            if (txtKullaniciAdi.Text != "" && txtSifre.Text != "")
            {
                SqlConnection cnn = new SqlConnection(@"Data Source=DESKTOP-ECAMK9C\ZISANSQL;Initial Catalog=ASP.NetWebsite;Integrated Security=True");
                //SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
                string sorgu = "Insert into Kullanicilar(KullaniciAdi,Sifre) values (@kullaniciadi,@sifre)";
                SqlCommand cmd = new SqlCommand(sorgu, cnn);
                cnn.Open();

                try
                {
                    cmd.Parameters.AddWithValue("@kullaniciadi", txtKullaniciAdi.Text);
                    cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);

                    cmd.ExecuteNonQuery();
                    cnn.Close();


                    txtKullaniciAdi.Text = "";
                    txtSifre.Text = "";

                    Session.Add("kullanici", txtKullaniciAdi.Text);
                    pnlKayit.Visible = false;
                    pnlDurum.Visible = true;
                    lblDurum.Text = "Başarıyla kayıt yapılmıştır.";

                }
                catch (Exception)
                {
                    lblSonuc.Text = "Kaydınız yapılamadı.";
                    throw;
                }
            }
            else
            {
                lblSonuc.Text = "Boş alanları doldurunuz.";
            }
        }
    }
}
