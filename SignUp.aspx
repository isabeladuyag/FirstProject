<%@ Page Title="SignUp" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="TestWebFormsWebApi.SignUp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <head>
        <script src="Scripts/angular.js"></script>
        <script src="Scripts/customjs/app.js"></script>
        <script src="Scripts/customjs/Signupcontroller.js"></script>
        <script src="Scripts/bootstrap.js"></script>
        <%--<script src="Scripts/customjs/customDirectives.js"></script>--%>
        <link href="Scripts/css/style.css" rel="stylesheet" />
    </head>

    <h2><%: Title %></h2>
    <div ng-app="app" ng-controller="Signupcontroller">
        <%--<form name="myForm">--%>
            <form name="form1" novalidate >
                <p>
                    Name: 
            <input name="username"
                ng-model="username" required>
                    <span ng-show="form1.username.$pristine && form1.username.$invalid">The name is required.</span>
                </p>
                <p>
                    Address: 
            <input name="useraddress"
                ng-model="useraddress" required>
                </p>
            </form>
            <%--<div class="container">
                <div class="row">
                    <div class="form-group col-sm-4">
                        <label for="firstname">First name:</label>
                        <input type="text" class="form-control" id="firstname" ng-model="user.firstName" name="firstname" ng-required="true">
                        <span ng-show="myForm.firstname.$touched">First name is required.</span>
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="middlename">Middle name:</label>
                        <input type="text" class="form-control" id="middlename" ng-model="user.middleName">
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="lastname">Last name:</label>
                        <input type="text" class="form-control" id="lastname" ng-model="user.lastName" ng-required="true">
                        <span ng-show="myForm.myName.$touched && myForm.myName.$invalid">Last name is required.</span>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-4">
                        <label for="email">Email address:</label>
                        <input type="email" class="form-control" id="email" ng-model="user.Account.emailAddress" ng-required="true">
                        <span ng-show="myForm.myName.$touched && myForm.myName.$invalid">Email address is required.</span>
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="mobile">Mobile number:</label>
                        <input type="text" class="form-control" id="mobile" ng-model="user.Account.mobileNumber" ng-required="true">
                        <span ng-show="myForm.myName.$touched && myForm.myName.$invalid">Mobile number is required.</span>
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="birthdate">Date of birth:</label>
                        <input type="date" class="form-control" id="birthdate" ng-model="user.dateOfBirth" ng-required="true">
                        <span ng-show="myForm.myName.$touched && myForm.myName.$invalid">Date of birth is required.</span>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-4">
                        <label for="mobile">Current address:</label>
                        <textarea type="text" class="form-control" id="curaddress" ng-model="user.currentAddress" ng-required="true"></textarea>
                        <span ng-show="myForm.userName.$touched && myForm.userName.$invalid">Mobile number is required.</span>
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="mobile">Permanent address:</label>
                        <textarea type="text" class="form-control" id="presentaddress" ng-model="user.presentAddress" ng-required="true"></textarea>
                        <span ng-show="myForm.userName.$touched && myForm.userName.$invalid">Mobile number is required.</span>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-4">
                        <label for="mobile">Username:</label>
                        <input type="text" class="form-control" id="username" ng-model="user.Account.userName" ng-required="true">
                        <span ng-show="myForm.userName.$touched && myForm.userName.$invalid">Mobile number is required.</span>
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="mobile">Password:</label>
                        <input type="password" class="form-control" id="password" ng-model="user.Account.password" ng-required="true">
                        <span ng-show="myForm.password.$touched && myForm.password.$invalid">Mobile number is required.</span>
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="mobile">Confirm password:</label>
                        <input type="password" class="form-control" id="repassword" ng-model="user.repassword" ng-required="true" compare-to="user.password">
                        <span ng-show="myForm.repassword.$touched && myForm.repassword.$invalid">{{passwordErrorMessage}}</span>
                    </div>
                </div>

               <button type="submit" class="btn btn-default" ng-click="saveUser($event, myForm)" >Create an account</button>
               
                <p>{{myForm.$valid}}</p>
                <h1>{{myForm.emailAddress.$valid}}</h1>
                <span>
            <p id="signUpMessage">{{signUpMessage}}</p>
        </span>
            </div>--%>
        <%--</form>--%>



    </div>
    <%--    <div  ng-app="app" ng-controller="Signupcontroller">
        <form>
            <label>Name:</label>
            <input type="text" ng-model="formData.name"><br>

            <label>Email:</label>
            <input type="email" ng-model="formData.email"><br>

            <button type="" ng-click="submitForm($event)">Submit</button>
        </form>

        <p ng-if="successMessage">{{ successMessage }}</p>
        <p ng-if="errorMessage">{{ errorMessage }}</p>
    </div>--%>
</asp:Content>

<%--<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/angular.js"></script>
    <script src="Scripts/customjs/app.js"></script>
    <script src="Scripts/customjs/Signupcontroller.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-route/1.8.3/angular-route.min.js"></script>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</head>
<body>
    <div ng-app="app" ng-controller="Signupcontroller">
        <form id="signUp" runat="server">
            <div class="form-group">
                <label for="firstname">First name:</label>
                <input type="text" class="form-control" id="firstname" ng-model="user.firstName">
            </div>
            <div class="form-group">
                <label for="middlename">Middle name:</label>
                <input type="text" class="form-control" id="middlename" ng-model="user.middleName">
            </div>
            <div class="form-group">
                <label for="lastname">Last name:</label>
                <input type="text" class="form-control" id="lastname" ng-model="user.lastName">
            </div>
            <div class="form-group">
                <label for="email">Email address:</label>
                <input type="email" class="form-control" id="email" ng-model="user.emailAddress">
            </div>
            <div class="form-group">
                <label for="mobile">Last name:</label>
                <input type="text" class="form-control" id="mobile" ng-model="user.mobileNumber">
            </div>
            <div class="form-group">
                <label for="birthdate">Date of birth:</label>
                <input type="date" class="form-control" id="birthdate" ng-model="user.dateOfBirth">
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox">
                    Remember me</label>
            </div>
            <button type="submit" class="btn btn-default" ng-click="saveUser($event)">Create an account</button>
        </form>
        <%--<span><p id="signUpMessage">{{signUpMessage}}</p></span>--%>
<%--        <span><p id="signUpMessage">YAH</p></span>
    </div>
</body>
</html>--%>
