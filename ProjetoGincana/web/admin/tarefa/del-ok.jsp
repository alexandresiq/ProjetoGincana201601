<%@page import="modelo.Tarefa"%>
<%@page import="dao.TarefaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String idTarefa = request.getParameter("idtarefa");
    
    TarefaDAO dao = new TarefaDAO();
    Tarefa obj = dao.buscarPorChavePrimaria(Long.parseLong(idTarefa));
    
    dao.excluir(obj);
%>
<div class="container">
    <h1 class="center-block">Exclus�o de Tarefa</h1>
    O Registro foi exclu�do com sucesso.<br />
    <a href="listtarefa.jsp">Voltar para a listagem</a>

</div>

</body>
</html>