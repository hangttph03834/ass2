<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
       
        <h2>Nội dung </h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Điện Thoại:</h3>
        </header>
        <p>
            <span class="label">Điện thoại liên hệ:</span>
            <span>425.555.0100</span>
        </p>
        <p>
            <span class="label">Điện thoại liên hệ sau giờ hành chính:</span>
            <span>0967855163</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Email hỗ trợ:</span>
            <span><a href="mailto:Support@example.com">hangtran.1996@outlook.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@example.com">Marketing@example.com</a></span>
        </p>
        <p>
            <span class="label">Chăm sóc khách hàng:</span>
            <span><a href="mailto:General@example.com">Chamsockhachhang@example.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.9281554614367!2d105.76310101445472!3d21.03556049292306!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b92bd71f9b%3A0xb79f074fe43dcfc1!2zRlBUIFBvbHl0ZWNobmljLCBUw7JhIE5ow6AgSMOgbSBOZ2hpIE5ow6AgSA!5e0!3m2!1svi!2s!4v1456288056568" height="450" frameborder="0" style="border-style: none; border-color: inherit; border-width: 0; width: 1056px;" allowfullscreen></iframe>
        </header>
        <p>
            Đường Hàm Nghi ,Mỹ Đình ,Từ liêm ,Hà Nội<br />
            Tòa Nhà A3 Việt Úc
        </p>
    </section>
</asp:Content>