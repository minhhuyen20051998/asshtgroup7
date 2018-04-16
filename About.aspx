<%@ Page Title="Giới thiệu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
      
    </hgroup>

    <article>
      Mỗi cuốn sách đều chứa đựng một phần thông tin. Sách là bản văn hữu ích theo nhiều cách khác nhau. Không chỉ gần gũi, thân quen với con người, sách còn là phẩm vật thông dụng nhất trong những đồ vật ở nhà và cũng là tài sản quý giá nhất được lưu giữ trong ngôi nhà của chúng ta. Tuy nhiên, sống với sách phải là cả một nghệ thuật. Do vậy, điều cần nhất là làm sao phối hợp nhịp nhàng giữa sách với chức năng của ngôi nhà chúng ta.

    </article>

    <aside>
        <h3>Aside Title</h3>
        <p>        
            Use this area to provide additional information.
        </p>
        <ul>
            <li><a runat="server" href="~/">Home</a></li>
            <li><a runat="server" href="~/About.aspx">About</a></li>
            <li><a runat="server" href="~/Contact.aspx">Contact</a></li>
        </ul>
    </aside>
</asp:Content>