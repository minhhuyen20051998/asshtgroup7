<%@ Page Title="Giới thiệu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
      <br />
        <b>Sống với sách</b>
    </hgroup>
   
    <article>
         <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/banner-sach-moi-dtooks.jpg" />
   <h3>  <p> Mỗi cuốn sách đều chứa đựng một phần thông tin.
         Sách là bản văn hữu ích theo nhiều cách khác nhau. Không chỉ gần gũi, thân quen với con người, sách còn là phẩm vật thông dụng nhất trong những đồ vật ở nhà và cũng là tài 
        sản quý giá nhất được lưu giữ trong ngôi nhà của chúng ta. Tuy nhiên, sống với sách phải là cả một nghệ thuật. Do vậy, điều cần nhất là làm sao phối hợp nhịp
         nhàng giữa sách với chức năng của ngôi nhà chúng ta.</p></h3>

    </article>

   
 
</asp:Content>