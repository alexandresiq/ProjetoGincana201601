<%@page import="modelo.Tarefa"%>
<%@page import="java.util.List"%>
<%@page import="dao.TarefaDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    TarefaDAO dao = new TarefaDAO();
    List<Tarefa> lista;

    lista = dao.listar();
%>

<!--==============================Content=================================-->
<div class="content"><div class="ic"></div>	
    <div class="container_12" class="grid_12">
        <div class="center">
            <h3>Tarefas</h3>
        </div>
        <div class="container">
            <table class="table table-bordered">
                <tr>
                    <th>Nome</th>
                    <th>Valor</th>
                    <th>Descrição</th>
                </tr>
<%
    for(Tarefa item : lista){
%>
                <tr>
                    <td><%=item.getNomeTarefa()%></td>
                    <td><%=item.getValorTarefa()%></td>
                    <td><%=item.getDescTarefa()%></td>
                </tr>
<%
        }
%>         
            </table>
        </div>
        <div class="clear"></div>
    </div>
</div>
</div>

<%@include file="rodape.jsp" %>