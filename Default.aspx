<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>
            <p>
                To learn more about ASP.NET, visit <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>. 
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from 
                ASP.NET. If you have any questions about ASP.NET visit 
                <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">our forums</a>.
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Sách giáo khoa</h3>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="id_Sanpham" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            id_Sanpham:
            <asp:Label ID="id_SanphamLabel1" runat="server" Text='<%# Eval("id_Sanpham") %>' />
            <br />
            id_Danhmuc:
            <asp:TextBox ID="id_DanhmucTextBox" runat="server" Text='<%# Bind("id_Danhmuc") %>' />
            <br />
            tensanpham:
            <asp:TextBox ID="tensanphamTextBox" runat="server" Text='<%# Bind("tensanpham") %>' />
            <br />
            Gia:
            <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
            <br />
            Motasanpham:
            <asp:TextBox ID="MotasanphamTextBox" runat="server" Text='<%# Bind("Motasanpham") %>' />
            <br />
            img:
            <asp:TextBox ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            id_Danhmuc:
            <asp:TextBox ID="id_DanhmucTextBox" runat="server" Text='<%# Bind("id_Danhmuc") %>' />
            <br />
            tensanpham:
            <asp:TextBox ID="tensanphamTextBox" runat="server" Text='<%# Bind("tensanpham") %>' />
            <br />
            Gia:
            <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
            <br />
            Motasanpham:
            <asp:TextBox ID="MotasanphamTextBox" runat="server" Text='<%# Bind("Motasanpham") %>' />
            <br />
            img:
            <asp:TextBox ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id_Sanpham:
            <asp:Label ID="id_SanphamLabel" runat="server" Text='<%# Eval("id_Sanpham") %>' />
            <br />
            id_Danhmuc:
            <asp:Label ID="id_DanhmucLabel" runat="server" Text='<%# Bind("id_Danhmuc") %>' />
            <br />
            tensanpham:
            <asp:Label ID="tensanphamLabel" runat="server" Text='<%# Bind("tensanpham") %>' />
            <br />
            Gia:
            <asp:Label ID="GiaLabel" runat="server" Text='<%# Bind("Gia") %>' />
            <br />
            Motasanpham:
            <asp:Label ID="MotasanphamLabel" runat="server" Text='<%# Bind("Motasanpham") %>' />
            <br />
            img:
            <asp:Label ID="imgLabel" runat="server" Text='<%# Bind("img") %>' />
            <br />
            <asp:Image ID="id_sp" runat="server" ImageUrl="<%#Bind('img') %>" />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\admin\Desktop\asshtgroup7\trunk\App_Code\CSDL_QLBS.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [Sanpham] WHERE [id_Sanpham] = @id_Sanpham" InsertCommand="INSERT INTO [Sanpham] ([id_Danhmuc], [tensanpham], [Gia], [Motasanpham], [img]) VALUES (@id_Danhmuc, @tensanpham, @Gia, @Motasanpham, @img)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id_Sanpham], [id_Danhmuc], [tensanpham], [Gia], [Motasanpham], [img] FROM [Sanpham]" UpdateCommand="UPDATE [Sanpham] SET [id_Danhmuc] = @id_Danhmuc, [tensanpham] = @tensanpham, [Gia] = @Gia, [Motasanpham] = @Motasanpham, [img] = @img WHERE [id_Sanpham] = @id_Sanpham">
        <DeleteParameters>
            <asp:Parameter Name="id_Sanpham" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_Danhmuc" Type="Int32" />
            <asp:Parameter Name="tensanpham" Type="String" />
            <asp:Parameter Name="Gia" Type="Decimal" />
            <asp:Parameter Name="Motasanpham" Type="String" />
            <asp:Parameter Name="img" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_Danhmuc" Type="Int32" />
            <asp:Parameter Name="tensanpham" Type="String" />
            <asp:Parameter Name="Gia" Type="Decimal" />
            <asp:Parameter Name="Motasanpham" Type="String" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="id_Sanpham" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>