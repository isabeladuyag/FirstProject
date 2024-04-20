<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TestWebFormsWebApi.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <head>
        <script src="Scripts/angular.js"></script>
        <script src="Scripts/customjs/app.js"></script>
        <script src="Scripts/customjs/LoginController.js"></script>
        <script src="Scripts/bootstrap.js"></script>
        <link href="Scripts/css/style.css" rel="stylesheet" />
    </head>

    <h2><%: Title %></h2>
    <div ng-app="app" ng-controller="LoginController">
        <div class="">
            <div class="form-group">
                <label for="mobile">Username:</label>
                <input type="text" class="form-control" id="username" ng-model="user.userName" ng-required="true">
                <span ng-show="myForm.userName.$touched && myForm.userName.$invalid">Mobile number is required.</span>
            </div>
            <div class="form-group">
                <label for="mobile">Password:</label>
                <input type="password" class="form-control" id="password" ng-model="user.password" ng-required="true">
                <span ng-show="myForm.password.$touched && myForm.password.$invalid">Mobile number is required.</span>
            </div>

            <button type="submit" class="btn btn-default" ng-click="login($event, form)">Login</button>
        </div>
    </div>
</asp:Content>
