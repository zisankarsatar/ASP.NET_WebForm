<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayitol.aspx.cs" Inherits="ASP.NETWebExample.KayıtOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kaydol</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:285px;margin: 0 auto; margin-top:50px;">
            <div class="sol">
                <asp:Panel ID="pnlKayit" runat="server">
                    <div class="hizli-kayit">
                        <div class="ust">
                            Hızlı Kayıt Ol
                        </div>
                        <div class="alt">
                            <div class="kullanici">
                                <span>Kullanıcı Adı:</span>
                                <asp:TextBox ID="txtKullaniciAdi" CssClass="txtBox" runat="server"/>
                            </div>
                        
                            <div class="sifre">
                                <span>Şifre:</span>
                                <asp:TextBox ID="txtSifre" TextMode="Password" CssClass="txtBox" runat="server" />
                            </div>
                            <asp:Button ID="btnKayit" CssClass="btnKayit" Text="Kayıt Ol" runat="server" OnClick="btnKayit_Click" />
                            <a href="default.aspx" class="btnGiris">İptal Et</a>
                            <asp:Label ID="lblSonuc" Text="" runat="server"/>
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlDurum" runat="server" style="background-color:#fff; padding:10px">
                    <asp:Label ID="lblDurum" Text="" runat="server"/><br />
                    <a href="default.aspx">Ana Sayfaya Git</a>
                </asp:Panel>
                
            </div>
        </div>
        
    </form>
</body>
</html>
