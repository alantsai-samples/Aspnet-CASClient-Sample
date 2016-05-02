<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="aspnet.webform.CASClient.sample._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET Webform 使用 CAS的Sample</h1>
        <p class="lead">
            此網站的source在：<a href="https://github.com/alantsai-samples/aspnet-CASClient-sample">https://github.com/alantsai-samples/aspnet-CASClient-sample</a>
        </p>
        <div>
            測試步奏：
            <ul>
                <li>當點選menu裡面的<a href="Secrete.aspx">Secrete</a>，將會被導向SSO登入畫面。</li>
                <li>登入成功之後，會被倒回來網站，然後每一頁都會顯示目前登入者的帳號，並且一個登出的連接用來登出系統</li>
            </ul>
        </div>
    </div>
</asp:Content>
