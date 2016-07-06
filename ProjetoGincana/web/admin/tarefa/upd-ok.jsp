<%@page import="modelo.Tarefa"%>
<%@page import="dao.TarefaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String idtarefa = request.getParameter("txtId");
    String nome = request.getParameter("txtNome");
    String valor = request.getParameter("txtValor");
    String descricao = request.getParameter("txtDescricao");
    
    TarefaDAO dao = new TarefaDAO();
    Tarefa obj = dao.buscarPorChavePrimaria(Long.parseLong(idtarefa));
    
    obj.setIdTarefa(Long.parseLong(idtarefa));
    obj.setNomeTarefa(nome);
    obj.setValorTarefa(valor);
    obj.setDescTarefa(descricao);
    
    dao.alterar(obj);
%>

<div class="container">
    <h1 class="center-block">Atualização de Tarefa</h1>
    Registro atualizado com orgulho.<br />
    <a href="listtarefa.jsp">Voltar para a Listagem</a>

</div>

</body>
</html>