<%@page import="modelo.Administrador"%>
<%@page import="dao.AdministradorDAO"%>
<%
    if (request.getParameter("sair") != null) {
        session.setAttribute("sessao", null);
    }

    String msg = "";
    if (request.getParameter("txtEntrarLogin") != null
            && request.getParameter("txtEntrarSenha") != null) {

        AdministradorDAO dao = new AdministradorDAO();
        Administrador admin;

        String login = request.getParameter("txtEntrarLogin");
        String senha = request.getParameter("txtEntrarSenha");
        admin = dao.realizarLogin(login, senha);
        if (admin != null) {
            session.setAttribute("sessao", admin);
            response.sendRedirect("index.jsp");

        } else {
            msg = "Dados incorretos";
        }
    }
%>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Gincana IFSUL Campus Bagé</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
    </head>
    <body>
        <div class="container">
            <h1>Setor de Gerenciamento - LOGIN</h1>
        </div>    
        <nav class="navbar navbar-inverse navbar-top" >
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="../site/index.jsp">Voltar ao Site</a>
                </div>
            </div>
        </nav>

        <div class="container">
            <h1>Login</h1>
            <div class="container">
                <%=msg%>
                <form action="login.jsp" method="post">
                    <div class="form-group">
                        <label>Login:</label>
                        <input type="text" class="form-control" placeholder="Login" name="txtEntrarLogin" id="txtEntrarLogin" /><br />

                        <label>Senha:</label>
                        <input type="password" class="form-control" placeholder="Senha" name="txtEntrarSenha" id="txtEntrarLogin" /><br />
                    </div>
                    <input class="btn btn-default" type="submit" value="Entrar" />
                </form>
            </div>
        </div>  
    </body>
</html>
