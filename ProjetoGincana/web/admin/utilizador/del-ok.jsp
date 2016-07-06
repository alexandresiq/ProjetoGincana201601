<%@page import="modelo.Administrador"%>
<%@page import="dao.AdministradorDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    String login = request.getParameter("login");
    
    AdministradorDAO dao = new AdministradorDAO();
    Administrador obj = dao.buscarPorChavePrimaria(login);
    
    dao.excluir(obj);
%>
<div class="container">
    <h1 class="center-block">Exclusão de Utilizador</h1>
    O Registro foi excluído com sucesso.<br />
    <a href="listutil.jsp">Voltar para a listagem</a>

</div>

</body>
</html>