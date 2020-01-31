<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="makineogrenmesi.aspx.cs" Inherits="ASP.NETWebExample.makineogrenmesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h3 {color:red;}
        h4 {color:#fa4d4d;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Makine Öğrenmesi Nedir?</h3>
    Matematiksel ve istatistiksel yöntemler kullanarak mevcut verilerden çıkarımlar yapan, bu çıkarımlarla bilinmeyene dair tahminlerde bulunan yöntem paradigmasıdır.
    Makine öğrenmesine güncel hayatımızdan bazı örnekler: yüz tanıma, belge sınıflandırma, spam tespiti.<br />
    <h4>Terminoloji</h4>
    <ul>
        <li><b>Gözlemler (Observations):</b>Öğrenmek ya da değerlendirmek için kullanılan her bir veri parçası. Örn: her bir e-posta bir gözlemdir.</li>
        <li><b>Özellikler (Features):</b>Bir gözlemi temsil eden (genelde sayısal) verilerdir. Örn: e-posta'nın uzunluğu, tarihi, bazı kelimelerin varlığı.</li>
        <li><b>Etiketler (Labels):</b>Gözlemlere atfedilen kategoriler. Örn: spam, spam-değil.</li>
        <li><b>Eğitim Verisi(Training Data):</b>Algoritmanın öğrenmesi için sunulan gözlemler dizisi. Algoritma bu veriye bakarak çıkarımlarda bulunur, 
            kafasında 
            model kurar. Örn: çok sayıda spam/spam-değil diye etiketlenmiş e-posta gözlemi</li>
        <li><b>Test Verisi (Test Data):</b>Algoritmanın kafasında şekillendirdiği modelin ne kadar gerçeğe yakın olduğunu test etmek için kullanılan veri seti. 
            Eğitim esnasında saklanır, eğitim bittikten sonra etiketsiz olarak algoritmaya verilerek algoritmanın (vermediğimiz etiketler hakkında) tahminlerde 
            bulunması beklenir. Örn: spam olup olmadığı bilinen (ama gizlenen), eğitim verisindekilerden farklı çok sayıda e-posta gözlemi</li>
    </ul><br />
    <h3>İki Temel Öğrenme Türü</h3>
    <h4>Gözetimli Öğrenme</h4>
    Etiketlenmiş gözlemlerden öğrenme sürecidir. Etiketler, algoritmaya gözlemleri nasıl etiketlemesi gerektiğini öğretir. Örneğin içinde "para kazan" 
    ifadesi geçiyorsa spam demelisin gibi yol göstermelerde bulunur.
    <ul>
        <li><b>Sınıflandırma (Classification):</b>Her bir gözleme bir kategori/sınıf atması yapar: Örn: spam/spam değil. Sınıflar ayrıktır (sayı değildir) ve 
            birbirlerine yakın/uzak olmaları gibi bir durum söz konusu değildir.</li>
        <li><b>Regresyon (Regression):</b>Her gözlem için öğrendiklerine bakarak reel bir değer tahmini yapar. Örn: "2011 model 40.000 km'de Mia Torento arabanın fiyatı 45.670 TL olmalıdır".</li>
    </ul><br />
    <h4>Gözetimsiz Öğrenme</h4>
    Etiketsiz gözlemlerden öğrenme sürecidir. Algoritmanın kendi kendine keşifler yapması, gözükmeyen örüntüleri keşfetmesi beklenir.
    <ul>
        <li><b>Kümeleme (Clustering):</b>Gözlemleri homojen bölgelere ayırır. Örn: bir okuldaki öğrenci gruplarını tespit etmek.</li>
        <li><b>Boyut Azaltımı (Dimensionality Reduction):</b>Gözlemlerin mevcut özellik sayısını az ve öz hale indirir, bize en iyi öğrenme imkanı sunar.</li>
    </ul>
</asp:Content>
