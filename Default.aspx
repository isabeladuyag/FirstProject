<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TestWebFormsWebApi._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome!</h1>
        <p class="lead">This is my sample web API with web forms project.</p>

        <a href="Login">
           <button type="button">Login</button>
        </a>

         <a href="SignUp">
           <button type="button">Sign-up</button>
        </a>
<%--        <button type="button" onclick="~/About">Login</button>
        <button type="button">Sign-up</button>--%>
    </div>

    <div class="row">

    </div>

</asp:Content>
