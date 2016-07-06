<%@page import="java.util.List"%>
<%@page import="modelo.Desporto"%>
<%@page import="dao.DesportoDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    DesportoDAO dao = new DesportoDAO();
    
    List<Desporto> lista;
    lista = dao.listar();
%>

<div class="container">
    <h1 class="center-block">Lista de Desportos</h1>

    <div>
        <a href="add.jsp">Adicionar Desporto</a> <br /> 
        <br />
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Valor</th>

                <th>Ações</th>
            </tr>
<%
    for(Desporto item: lista){
        
    
%>
            <tr>
                <td><%=item.getIdDesporto() %></td>
                <td><%=item.getNomeDesporto() %></td>
                <td><%=item.getValorDesporto() %></td>
                <td>
                    <a href="upd.jsp?idDesporto=<%=item.getIdDesporto() %>">Editar</a>
                    <a href="del-ok.jsp?idDesporto=<%=item.getIdDesporto() %>">Excluir</a>
                </td>
            </tr>
<%
    }
%>
        </table>

    </div>
</div>
</body>
</html>

