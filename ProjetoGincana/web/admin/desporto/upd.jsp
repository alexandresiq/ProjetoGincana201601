<%@page import="modelo.Desporto"%>
<%@page import="dao.DesportoDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String idDesporto = request.getParameter("idDesporto");
    
    DesportoDAO dao = new DesportoDAO();
    Desporto obj = dao.buscarPorChavePrimaria(Long.parseLong(idDesporto));
%>
<div class="container">
    <h1>Cadastro de Desporto</h1>
    <div class="container">
        <form action="upd-ok.jsp" method="post">
            <div class="form-group">
                <label>Identificador:</label>
                <input type="long" value="<%=obj.getIdDesporto()%>" class="form-control" readonly="readonly" name="txtIddesporto"/><br />
                
                <label>Nome:</label>
                <input type="text" value="<%=obj.getNomeDesporto()%>" class="form-control" placeholder="Nome" name="txtNomedesporto" /><br />

                <label>Descrição:</label>
                <input type="text" value="<%=obj.getDescDesporto()%>" class="form-control" placeholder="Descrição" name="txtDescricaodesporto"/><br />

                <label>Valor:</label>
                <input type="text" value="<%=obj.getValorDesporto()%>" class="form-control" placeholder="Valor" name="txtValordesporto"/><br />
                
            </div>
            <input class="btn btn-default" type="submit" value="Adicionar" />
        </form>
    </div>
</div>  
</body>
</html>

