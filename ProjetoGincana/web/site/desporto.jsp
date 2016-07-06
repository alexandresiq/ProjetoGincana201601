<%@page import="modelo.Desporto"%>
<%@page import="java.util.List"%>
<%@page import="dao.DesportoDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    DesportoDAO dao = new DesportoDAO();
    List<Desporto> lista;
    lista = dao.listar();
%>

<!--==============================Content=================================-->
<div class="content"><div class="ic"></div>	
    <div class="container_12" class="grid_12">
        <div class="center">
            <h3>Desportos</h3>
        </div>
    </div>
    <div class="clear"></div>
    <div >
        <table>
            <tr>
                <th>Nome</th>
                <th>Valor</th>
                <th>Descrição</th>
            </tr>
            <%
                for (Desporto item : lista) {
            %>                
            <tr>
                <td><%=item.getNomeDesporto()%></td>
                <td><%=item.getValorDesporto()%></td>
                <td><%=item.getDescDesporto()%></td>
            </tr>
            <%
                }
            %>                
        </table>
    </div>    
    <div class="clear"></div>

</div>
</div>

<%@include file="rodape.jsp" %>