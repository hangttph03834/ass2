<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
        
                
            </hgroup>
            
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Cơ sở dự liệu QLBH</h3>
    <ol class="round">
        <li class="one">
            <h5>Bảng Khách Hàng</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="220px" AutoGenerateRows="False" DataKeyNames="makh" DataSourceID="SqlDataSource1" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="makh" HeaderText="makh" ReadOnly="True" SortExpression="makh" />
                    <asp:BoundField DataField="tenkh" HeaderText="tenkh" SortExpression="tenkh" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="diachi" HeaderText="diachi" SortExpression="diachi" />
                    <asp:BoundField DataField="sdt" HeaderText="sdt" SortExpression="sdt" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HangTTPH03834_QLBHConnectionString %>" DeleteCommand="DELETE FROM [khachhang] WHERE [makh] = @makh" InsertCommand="INSERT INTO [khachhang] ([makh], [tenkh], [email], [diachi], [sdt]) VALUES (@makh, @tenkh, @email, @diachi, @sdt)" SelectCommand="SELECT [makh], [tenkh], [email], [diachi], [sdt] FROM [khachhang]" UpdateCommand="UPDATE [khachhang] SET [tenkh] = @tenkh, [email] = @email, [diachi] = @diachi, [sdt] = @sdt WHERE [makh] = @makh">
                <DeleteParameters>
                    <asp:Parameter Name="makh" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="makh" Type="String" />
                    <asp:Parameter Name="tenkh" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="diachi" Type="String" />
                    <asp:Parameter Name="sdt" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tenkh" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="diachi" Type="String" />
                    <asp:Parameter Name="sdt" Type="Int32" />
                    <asp:Parameter Name="makh" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <a href="http://go.microsoft.com/fwlink/?LinkId=245146"></a>
        </li>
        <li class="two">
            <h5>Bảng Hóa Đơn</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="mahd" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="mahd" HeaderText="mahd" ReadOnly="True" SortExpression="mahd" />
                    <asp:BoundField DataField="giasp" HeaderText="giasp" SortExpression="giasp" />
                    <asp:BoundField DataField="makh" HeaderText="makh" SortExpression="makh" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HangTTPH03834_QLBHConnectionString %>" DeleteCommand="DELETE FROM [hoadon] WHERE [mahd] = @mahd" InsertCommand="INSERT INTO [hoadon] ([mahd], [giasp], [makh]) VALUES (@mahd, @giasp, @makh)" SelectCommand="SELECT [mahd], [giasp], [makh] FROM [hoadon]" UpdateCommand="UPDATE [hoadon] SET [giasp] = @giasp, [makh] = @makh WHERE [mahd] = @mahd">
                <DeleteParameters>
                    <asp:Parameter Name="mahd" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="mahd" Type="String" />
                    <asp:Parameter Name="giasp" Type="Decimal" />
                    <asp:Parameter Name="makh" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="giasp" Type="Decimal" />
                    <asp:Parameter Name="makh" Type="String" />
                    <asp:Parameter Name="mahd" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <a href="http://go.microsoft.com/fwlink/?LinkId=245147"></a>
        </li>
        <li class="three">
            <h5>Bảng Loại Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="maloaisp" DataSourceID="SqlDataSource3">
                <Fields>
                    <asp:BoundField DataField="maloaisp" HeaderText="maloaisp" ReadOnly="True" SortExpression="maloaisp" />
                    <asp:BoundField DataField="tenloaisp" HeaderText="tenloaisp" SortExpression="tenloaisp" />
                    <asp:BoundField DataField="soluong" HeaderText="soluong" SortExpression="soluong" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HangTTPH03834_QLBHConnectionString %>" DeleteCommand="DELETE FROM [loaisanpham] WHERE [maloaisp] = @maloaisp" InsertCommand="INSERT INTO [loaisanpham] ([maloaisp], [tenloaisp], [soluong]) VALUES (@maloaisp, @tenloaisp, @soluong)" SelectCommand="SELECT [maloaisp], [tenloaisp], [soluong] FROM [loaisanpham]" UpdateCommand="UPDATE [loaisanpham] SET [tenloaisp] = @tenloaisp, [soluong] = @soluong WHERE [maloaisp] = @maloaisp">
                <DeleteParameters>
                    <asp:Parameter Name="maloaisp" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="maloaisp" Type="String" />
                    <asp:Parameter Name="tenloaisp" Type="String" />
                    <asp:Parameter Name="soluong" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tenloaisp" Type="String" />
                    <asp:Parameter Name="soluong" Type="Int32" />
                    <asp:Parameter Name="maloaisp" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143"></a>
        </li> 
        <li class="four">
            <h5>Bảng Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="masp" DataSourceID="SqlDataSource4">
                <Fields>
                    <asp:BoundField DataField="masp" HeaderText="masp" ReadOnly="True" SortExpression="masp" />
                    <asp:BoundField DataField="maloaisp" HeaderText="maloaisp" SortExpression="maloaisp" />
                    <asp:BoundField DataField="donvitinh" HeaderText="donvitinh" SortExpression="donvitinh" />
                    <asp:BoundField DataField="tensp" HeaderText="tensp" SortExpression="tensp" />
                    <asp:BoundField DataField="giasp" HeaderText="giasp" SortExpression="giasp" />
                    <asp:BoundField DataField="mota" HeaderText="mota" SortExpression="mota" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HangTTPH03834_QLBHConnectionString %>" DeleteCommand="DELETE FROM [sanpham] WHERE [masp] = @masp" InsertCommand="INSERT INTO [sanpham] ([masp], [maloaisp], [donvitinh], [tensp], [giasp], [mota], [img]) VALUES (@masp, @maloaisp, @donvitinh, @tensp, @giasp, @mota, @img)" SelectCommand="SELECT [masp], [maloaisp], [donvitinh], [tensp], [giasp], [mota], [img] FROM [sanpham]" UpdateCommand="UPDATE [sanpham] SET [maloaisp] = @maloaisp, [donvitinh] = @donvitinh, [tensp] = @tensp, [giasp] = @giasp, [mota] = @mota, [img] = @img WHERE [masp] = @masp">
                <DeleteParameters>
                    <asp:Parameter Name="masp" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="masp" Type="String" />
                    <asp:Parameter Name="maloaisp" Type="String" />
                    <asp:Parameter Name="donvitinh" Type="String" />
                    <asp:Parameter Name="tensp" Type="String" />
                    <asp:Parameter Name="giasp" Type="Decimal" />
                    <asp:Parameter Name="mota" Type="String" />
                    <asp:Parameter Name="img" Type="Object" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="maloaisp" Type="String" />
                    <asp:Parameter Name="donvitinh" Type="String" />
                    <asp:Parameter Name="tensp" Type="String" />
                    <asp:Parameter Name="giasp" Type="Decimal" />
                    <asp:Parameter Name="mota" Type="String" />
                    <asp:Parameter Name="img" Type="Object" />
                    <asp:Parameter Name="masp" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143"></a>
        </li>
        <li class="five">
            <h5>Bảng chi tiêt hóa đơn</h5>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="53px" Width="207px" AutoGenerateRows="False" DataSourceID="SqlDataSource5">
                <Fields>
                    <asp:BoundField DataField="masp" HeaderText="masp" SortExpression="masp" />
                    <asp:BoundField DataField="mahd" HeaderText="mahd" SortExpression="mahd" />
                    <asp:BoundField DataField="soluong" HeaderText="soluong" SortExpression="soluong" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:HangTTPH03834_QLBHConnectionString %>" SelectCommand="SELECT [masp], [mahd], [soluong] FROM [chitiethoadon]"></asp:SqlDataSource>
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143"></a>
        </li>
    </ol>
</asp:Content>