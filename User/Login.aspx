﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no" />
    <title>LOGIN</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
    <!-- Compiled and minified jQuery -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <!-- Compiled and minified JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".button-collapse").sideNav();
        });

    </script>

    <style>
        .nav-wrapper {
            background-color: whitesmoke !important;
        }

        nav ul li a {
            color: grey !important;
            font-family: 'Roboto Slab', serif;
            overflow-x: hidden;
            font-size: large;
            padding-left: 1%;
        }

            nav ul li a:hover {
                border-top: 1px solid black;
                border-bottom: 1px solid black !important;
                color: black !important;
            }
        
            .container {
                width:100%;

            }
            a:hover {
                color: blue !important;
            }
        .row {
            margin-bottom:0%;
        }
    </style>
</head>
<body>


    <form id="form1" runat="server">
        <div>
            <nav>
                <div class="nav-wrapper">
                    <a href="Home.aspx" class="brand-logo">
                        <img src="../image/nav_logo.png" class="responsive-img" style="margin-left: 10%" />
                    </a>
                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons cyan-text">menu</i></a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li><a href="Home.aspx#about-barter">ABOUT</a></li>
                        <li><a href="Query.aspx">QUERY US</a></li>
                        <li><a href="Registration.aspx">SIGN UP</a></li>
                    </ul>
                    <ul class="side-nav" id="mobile-demo">
                        <li><a href="Home.aspx#about-barter">ABOUT</a></li>
                        <li><a href="Query.aspx">QUERY US</a></li>
                        <li><a href="Registration.aspx">SIGN UP</a></li>
                    </ul>
                </div>
            </nav>
        </div>
        <div><br /></div>
        <div class="row"></div>
        <div class="row">
            <div class="col m3 s3"></div>
            <div class="card grey lighten-4 col m6 s6">
                <div class="card-content black-text">
                    <span class="card-title">LOGIN</span>
                    <p>
                        <asp:Label ID="lblEmail" runat="server" Text="Email :" Font-Bold="true" Font-Size="Medium"></asp:Label>
                        <asp:TextBox ID="tbxEmail" class="form-control" input type="email" placeholder="Enter Email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" Display="Dynamic" ControlToValidate="tbxEmail" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblIncorrectEmail" runat="server" display="Dynamic" ForeColor="Red"></asp:Label>
                    </p>
                    <p>
                        <asp:Label ID="lblPassword" runat="server" Text="Password :" Font-Bold="true" Font-Size="Medium"></asp:Label>
                        <asp:TextBox ID="tbxPassword" class="form-control" input type="password" placeholder="Enter Password" runat="server"></asp:TextBox>
                        <asp:Label ID="lblIncorrectPassword" runat="server" Text="Incorrect Password" display="Dynamic" ForeColor="Red"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" Display="Dynamic" ControlToValidate="tbxPassword" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </p>
                    <div class="card-action">
                        <%--<div class="forget-password-link" style="float: left;">--%>
                        <a href="ForgotPassword.aspx" style="color: darkorange">Forgot Password?</a>
                    </div>

                    <asp:Button ID="btnLogin" class="waves-effect waves-light btn" runat="server" Style="width: 100%; background-color: #2196f3;" Text="Login" OnClick="btnLogin_Click" />
                </div>
                <div class="card-action">
                    <%--<div class="not-register-yet-link">--%>
                NOT YET REGISTERED? <a href="Registration.aspx" style="color: darkorange">SIGN UP</a>
                </div>
            </div>
        </div>
        <div class="col m3 s3"></div>
        <!--footer-->
        <footer class="page-footer  grey darken-4" style="margin-bottom: 0%;  padding-bottom:1%">
            <%--<div class="container">--%>
            <div class="row">
                <div class="col m4 s4">
                    <a class="white-text left-align" href="Query.aspx">CONTACT US</a>
                </div>

                <div class="col m4 s4">
                    <h5 class="white-text center-align">
                        <img src="../image/bartar_logo_footer.png" class="responsive-img" /></h5>
                </div>

                <div class="col m4 s4">
                    <p class="white-text right-align ">FOLLOW US</p>
                    <div class="abc" style="float: right">
                        <%--<div class="col m3 s3">--%>
                        <img src="../image/fb.png" height="20vmin" width="20vmin" style="float: right; margin: 2px" />
                        <%--</div>--%>
                        <%--<div class="col m3 s3">--%>
                        <img src="../image/twitter.png" height="20vmin" width="20vmin" style="float: right; margin: 2px" />
                        <%--</div>--%>
                        <%--<div class="col m3 s3">--%>
                        <img src="../image/gplus.png" height="20vmin" width="20vmin" style="float: right; margin: 2px" />
                        <%--</div>--%>
                        <%--<div class="col m3 s3">--%>
                        <img src="../image/insta.png" height="20vmin" width="20vmin" style="float: right; margin: 2px" />
                        <%--</div>--%>
                    </div>
                </div>
            </div>
            <%--</div>--%>
        </footer>
    </form>
</body>
</html>
