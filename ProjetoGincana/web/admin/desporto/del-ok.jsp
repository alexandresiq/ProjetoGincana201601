<%@page import="modelo.Desporto"%>
<%@page import="dao.DesportoDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
   String idDesporto = request.getParameter("idDesporto");
   
   DesportoDAO dao = new DesportoDAO();
   Desporto obj = dao.buscarPorChavePrimaria(Long.parseLong(idDesporto));
   
   dao.excluir(obj);
%>
<div class="container">
    <h1 class="center-block">Exclus�o de Desporto</h1>
    O Registro foi exclu�do com orgulho.<br />
    <a href="listdesporto.jsp">Voltar para a listagem</a>

</div>

</body>
</html>