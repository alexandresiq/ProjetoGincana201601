<%@page import="modelo.Desporto"%>
<%@page import="dao.DesportoDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    String nomeDesporto = request.getParameter("txtNomedesporto");
    String idDesporto = request.getParameter("txtIddesporto");
    String descDesporto = request.getParameter("txtDescricaodesporto");
    String valorDesporto = request.getParameter("txtValordesporto");
    
    DesportoDAO dao = new DesportoDAO();
    Desporto obj = dao.buscarPorChavePrimaria(Long.parseLong(idDesporto));
    
    obj.setNomeDesporto(nomeDesporto);
    obj.setIdDesporto(Long.parseLong(idDesporto));
    obj.setDescDesporto(descDesporto);
    obj.setValorDesporto(valorDesporto);
    
    dao.alterar(obj);
%>

<div class="container">
    <h1 class="center-block">Cadastro de Desporto</h1>
    Registro alterado com orgulho.<br />
    <a href="listdesporto.jsp">Voltar para a Listagem</a>

</div>

</body>
</html>