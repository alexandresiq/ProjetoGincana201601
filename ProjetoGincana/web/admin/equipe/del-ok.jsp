<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String idEquipe = request.getParameter("idequipe");
    
    EquipeDAO dao = new EquipeDAO();
    Equipe obj = dao.buscarPorChavePrimaria(Long.parseLong(idEquipe));
    
    dao.excluir(obj);
%>
<div class="container">
    <h1 class="center-block">Exclusão de Equipe</h1>
    O Registro foi excluído com sucesso.<br />
    <a href="listequipe.jsp">Voltar para a listagem</a>

</div>

</body>
</html>