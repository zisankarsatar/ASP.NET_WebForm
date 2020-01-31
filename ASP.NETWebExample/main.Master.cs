using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NETWebExample
{
    public partial class Main : System.Web.UI.MasterPage
    {
        SqlConnection cnn = new SqlConnection(@"Data Source=DESKTOP-ECAMK9C\ZISANSQL;Initial Catalog=ASP.NetWebsite;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
            duyuruGetir();

            object kullanici = Session["kullanici"];
            if (kullanici != null)
            {
                pnlGiris.Visible = false;
                pnlKullanici.Visible = true;
                lblKullaniciAdi.Text = kullanici.ToString();
            }
            else
            {
                pnlKullanici.Visible = false;
                pnlGiris.Visible = true;
                 
            }
        }

        private void duyuruGetir()
        {
            string sorgu = "SELECT * FROM Duyurular order by Tarih desc";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtBaslik.Text = dr["Baslik"].ToString();
                txtDuyuru.Text = dr["Duyuru"].ToString();
                txtTarih.Text = dr["Tarih"].ToString();

                txtBaslik.Text = dr["Baslik"].ToString();
                txtDuyuru.Text = dr["Duyuru"].ToString();
                txtTarih.Text = dr["Tarih"].ToString();
            }
            txtBaslik.Enabled = false;
            txtDuyuru.Enabled = false;
            txtTarih.Enabled = false;

            //lstDuyuru.DataSource = dr;
            //lstDuyuru.DataBind();
            cnn.Close();
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string sorgu = "select * from Kullanicilar where KullaniciAdi=@kullaniciadi AND Sifre=@sifre";
            SqlCommand cmd = new SqlCommand(sorgu, cnn);
            cmd.Parameters.AddWithValue("@kullaniciadi", txtKullaniciAdi.Text);
            cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);

            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if(dr.Read())
            {
                Session.Timeout = 300;
                Session.Add("kullanici", dr["KullaniciAdi"].ToString());
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                lblSonuc.Text = "Kullanici girişi sağlanamadı.";
            }

            cnn.Close();

        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect(Request.RawUrl);
        }
    }
}