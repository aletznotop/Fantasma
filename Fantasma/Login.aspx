<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Fantasma.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/styles.css" />
</head>
<body id="cuerpo">
    <div class="container">
        <div class="row justify-content-center align-items-center vh-100">
            <div class="col-md-6">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title text-center mb-4">Iniciar Sesión</h5>
                        <form id="form1" runat="server">
                            <div class="mb-3">
                                <asp:Label ID="lblError" runat="server" />
                                <div>
                                    <asp:Label ID="lblUsuario" runat="server" Text="Usuario:" />
                                    <asp:TextBox ID="txtUsuario" runat="server" />
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="lblContrasena" runat="server" Text="Contraseña:" />
                                    <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" />
                                </div>
                                <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" OnClick="btnLogin_Click" CssClass="btn btn-primary btn-block" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>   
    <script src="Scripts/script.js"></script>
</body>
</html>
