<%@page import="modelo.Administrador"%>
<%@page import="dao.AdministradorDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String login = request.getParameter("txtLogin");
    String senha = request.getParameter("txtSenha");
    String email = request.getParameter("txtEmail");
    
    AdministradorDAO dao = new AdministradorDAO();
    Administrador obj = dao.buscarPorChavePrimaria(login);
    
    obj.setLogin(login);
    obj.setSenha(senha);
    obj.setEmail(email);
    
    dao.alterar(obj);
%>

<div class="container">
    <h1 class="center-block">Atualização de Utilizador</h1>
    Registro atualizado com orgulho.<br />
    <a href="listutil.jsp">Voltar para a Listagem</a>

</div>

</body>
</html>