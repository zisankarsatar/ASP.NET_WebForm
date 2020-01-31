<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="isletimsistemleri.aspx.cs" Inherits="ASP.NETWebExample.isletimsistemleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h3 {color:red;}
        h4 {color:#fa4d4d;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>İşletim Sistemi Nedir?(Operating System)</h3>
    Bilgisayarda çalışan tüm donanım birimlerinin ve uygulama yazılımlarının yönetimini ve denetimini sağlayarak bilgisayarı daha kolay kullanmamızı 
    sağlayan sistem yazılımı bütünüdür.Günümüzde işletim sistemleri sadece bilgisayar,tablet veya akıllı telefonlarda değil beyaz eşya,araba ve hatta kol 
    saatlerimizde bile yüklü olabilmektedir.İşletim sistemi bilgisayar üretildikten sonra yüklenir ve istenildiği zaman silinip tekrar yüklenebilir veya 
    başka bir işletim sistemiyle değiştirilebilir.İşletim sistemi özetle<b>bilgisayarın donanım ve yazılımlarının yönetimini sağlayan en temel yazılımdır</b>. 
    İşletim sistemi olmadan bilgisayar,akıllı tahta,tablet veya akıllı telefonlarımızı kullanamayız.<br /><br />
    <img src="/image/isletim-sistemleri.png" alt="operating system"/><br />

    <h4>İşletim Sistemi Nasıl Çalışır?</h4>
    Bilgisayar açma tuşuna bastığımız anda ilk olarak BIOS yani açılış ekranı devreye girer.<br />
    BIOS tüm donanım birimlerini tanımladıktan sonra harddiskten gelen verilerle işletim sistemi kendini açmaya başlar.<br />
    Açılış sırasında kendini belleğe atan işletim sistemi ekran görüntüsü ile diğer uygulamaları hazır hale getirir.<br />
    Tüm uygulamalar hazır hale geldikten sonra kullanıcı bilgisayardaki işlemlerini yapmaya başlayabilir.<br />
    
    <h4>İşletim Sistemi Çeşitleri</h4>
    <b>Kapalı Kaynak Kodlu İşletim Sistemleri:</b>Üreticisi tarafından ücretli olarak satışa çıkarılan lisanslı işletim sistemleridir.En çok 
            kullanılanları Windows,MacOS ve UNIX işletim sistemleridir.<br />
    <b>Açık Kaynak Kodlu İşletim Sistemleri:</b>Kullanıcı tarafından her hangi bir ücret ödemeden bilgisayara yüklenebilen,üzerinde 
            geliştirme işlemleri yapılabilen işletim sistemleridir.En çok kullanılan açık kaynak kodlu işletim sistemi Linux’tur.Ubuntu,Debian,OpenSuse,
            Pardus,Chromium ve CentOS da açık kaynak kodlu işletim sistemlerindendir.Ancak bunlar Linux’un çekirdek kodlarından geliştirilmiş işletim 
            sistemleridir.<br />
    
    <h4>Kullanım Alanlarına Göre İşletim Sistemleri</h4>
    <b>Masaüstü İşletim Sistemleri:</b>Günümüz kişisel masaüstü bilgisayarlarında kullanılan işletim sistemleridir. Masaüstü bilgisayarlarda en 
            çok tercih edilen işletim sistemleri; Windows,MacOS ve Linux’tur.<br />
    <b>Mobil İşletim Sistemleri:</b>Akıllı telefon,akıllı TV ve tabletlerde kullanılan işletim sistemleridir.En çok tercih edilenleri Android,İOS 
            ve Windows Mobil’dir.<br />
   
</asp:Content>
