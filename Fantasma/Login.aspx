﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Fantasma.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es-mx">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/styles.css" />
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet" />

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />
</head>
<body id="bg-gradient-primary">
    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Estas de Regreso</h1>
                                    </div>
                                    <form class="user" runat="server">
                                        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="Ingresa tu usuario..." runat="server"/>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="Contraseña" runat="server"/>
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck"/>
                                                <label class="custom-control-label" for="customCheck">Recuerdame</label>
                                            </div>
                                        </div>
<%--                                        <a href="index.html" class="btn btn-primary btn-user btn-block">Iniciar Sesión</a>--%>
                                        <asp:Button CssClass="btn btn-primary btn-user btn-block" name="login" ID="login" OnClick="btnLogin_Click" runat="server" Text="Iniciar Sesión"/>
                                        <hr/>
                                        <a href="index.html" class="btn btn-google btn-user btn-block disabled"><i class="fab fa-google fa-fw"></i>Login with Google</a>
                                        <a href="index.html" class="btn btn-facebook btn-user btn-block disabled"><i class="fab fa-facebook-f fa-fw"></i>Login with Facebook
                                    </a>
                                    </form>
                                    <hr/>
                                    <div class="text-center">
                                        <a class="small" href="forgot-password.html">¿Has olvidado la Contraseña?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="register.html">¡Crear una Cuenta!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="Scripts/script.js"></script>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="Scripts/sb-admin-2.min.js"></script>
</body>
</html>
