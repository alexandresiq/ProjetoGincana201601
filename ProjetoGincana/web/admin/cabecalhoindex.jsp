<%
    if(session.getAttribute("sessao") == null){
        response.sendRedirect("login.jsp");
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
            <h1>Setor de Gerenciamento</h1>
        </div>    
        <nav class="navbar navbar-inverse navbar-top" >
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp">Início</a>
                    <a class="navbar-brand" href="equipe/listequipe.jsp">Equipe</a>
                    <a class="navbar-brand" href="desporto/listdesporto.jsp">Desporto</a>
                    <a class="navbar-brand" href="tarefa/listtarefa.jsp">Tarefa</a>
                    <a class="navbar-brand" href="utilizador/listutil.jsp">Administrador</a>
                </div>
                <div class="navbar-header before ">
                    <a class="navbar-brand" href="login.jsp?sair=OK">Sair</a>
                </div>
            </div>
        </nav>