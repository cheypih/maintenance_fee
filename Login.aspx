<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Maintenance_Fee.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>HRIS</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="vh-100">
                <div class="container-fluid h-custom">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-md-8 col-lg-6 col-xl-4 text-right">
                            <img src="img/HRIS1.2.png" class="img-fluid" />
                        </div>
                        <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1" style="margin-left: 0px;">
                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <label class="form-label">Email address</label>
                                <asp:TextBox ID="txtUsername" runat="server" class="form-control form-control-lg"
                                    placeholder="Enter a valid email address" />
                            </div>
                            <!-- Password input -->
                            <div class="form-outline mb-3">
                                <label class="form-label">Password</label>
                                <asp:TextBox type="password" ID="txtPassword" runat="server" class="form-control form-control-lg"
                                    placeholder="Enter password" />
                            </div>
                            <div class="d-flex justify-content-between align-items-center">
                                <a href="#!" class="text-body">Forgot password?</a>
                            </div>
                            <div class="text-center text-lg-start mt-4 pt-2" runat="server">
                                <asp:Button ID="btnLogin" runat="server" class="btn btn-primary btn-lg" Style="padding-left: 2.5rem; padding-right: 2.5rem;" Text="Login" OnClick="btnLogin_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <div
                    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
                    <!-- Copyright -->
                    <div class="text-white mb-3 mb-md-0">
                        Copyright © 2022. All rights reserved.
                    </div>
                    <!-- Copyright -->
                </div>
            </section>
        </div>
    </form>
</body>
</html>
