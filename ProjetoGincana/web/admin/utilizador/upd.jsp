<%@page import="modelo.Administrador"%>
<%@page import="dao.AdministradorDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String login = request.getParameter("login");
    AdministradorDAO dao = new AdministradorDAO();
    Administrador obj = dao.buscarPorChavePrimaria(login);
%>

<div class="container">
    <h1>Cadastro de Equipe</h1>
    <div class="container">
        <form action="upd-ok.jsp" method="post">
            <div class="form-group">
                <label>Login</label>
                <input type="text" value="<%=obj.getLogin()%>" class="form-control" name="txtLogin" readonly="readonly" /><br />

                <label>Senha</label>
                <input type="text" value="<%=obj.getSenha()%>" class="form-control" placeholder="Senha" name="txtSenha"/><br />

                <label>Email:</label>
                <input type="email" value="<%=obj.getEmail()%>" class="form-control" placeholder="Email" name="txtEmail"/><br />

                
            </div>
            <input class="btn btn-default" type="submit" value="Adicionar" />
        </form>
    </div>
</div>  
</body>
</html>
