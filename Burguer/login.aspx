<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Burguer.login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta id="metaView" name="viewport" content="width=device-width, initial-scale=1" />
    <title></title>
    <link href="Contents/Bootstrap/Bootstrap_v4.css" rel="stylesheet" />
    <link href="Contents/glyphicons.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap_v4.bundle.js"></script>
    <style>
        html, body {
	        width: 100vw;
	        height: 100vh;
	        overflow: hidden;
            background-color: #dd9825;
            background-image: radial-gradient(circle, #dd9825, #000000);
        }
        form {
	        width: 100%;
	        height: 100%;
	        overflow: hidden;
            display: flex;
            justify-content: center;
        }
        .c-login {
            min-height: 100vh;
            flex-direction: column;
            display: flex;
            align-items: center;
            justify-content: center;
        }
            .c-login img {
                max-width: 200px;
                padding-bottom: 3px;
            }
        .login {
            display: flex;
            flex-direction: column;
        }
        .txtBox {
            margin-bottom: 4px;
            background-color: #000000;
            color: #ffffff;
            border-radius: 15px;
            padding-left: 10px;
            border: 1px solid #000;
        }
        input:-webkit-autofill,
        input:-webkit-autofill:hover, 
        input:-webkit-autofill:focus {
            border-radius: 15px;
            -webkit-text-fill-color: #ffffff;
            -webkit-box-shadow: 0 0 0px 1000px #000 inset;
            transition: background-color 5000s ease-in-out 0s;
        }
        .btn-login {
            color: #fff;
            background-color: #000000;
            border-radius: 2px 2px 25px 25px;
            transition: color 0.15s
        }
            .btn-login:hover, .btn-login:focus {
                background-color: #0c0c0c;
                color: #ffffff;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="c-login">
            <div class="login">
                <img src="Contents/Images/burguer1.png" />
                <img src="Contents/Images/burguer3.png" />
                <img src="Contents/Images/burguer2.png" />
                <asp:TextBox ID="txtUsuario" runat="server" CssClass="txtBox" />
                <img src="Contents/Images/burguer3.png" />
                <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" CssClass="txtBox" />
                <img src="Contents/Images/burguer2.png" />
                <img src="Contents/Images/burguer3.png" />
                <asp:LinkButton ID="btnEntrar" runat="server" CssClass="btn btn-login" OnClick="btnEntrar_Click">Login</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>
