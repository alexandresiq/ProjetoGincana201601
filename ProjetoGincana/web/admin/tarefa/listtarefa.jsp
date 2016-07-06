<%@page import="modelo.Tarefa"%>
<%@page import="java.util.List"%>
<%@page import="dao.TarefaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    TarefaDAO dao = new TarefaDAO();
    List<Tarefa> lista;
    lista = dao.listar();
%>
<div class="container">
    <h1 class="center-block">Lista de Tarefas</h1>

    <div>
        <a href="add.jsp">Adicionar Tarefa</a> <br />  
        <br />
        <table class="table table-bordered">
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Valor</th>

                <th>Ações</th>
            </tr>
<%
    for (Tarefa item: lista){
%>
            <tr>
                <td><%=item.getIdTarefa()%></td>
                <td><%=item.getNomeTarefa()%></td>
                <td><%=item.getValorTarefa()%></td>
                <td>
                    <a href="upd.jsp?idtarefa=<%=item.getIdTarefa()%>">Editar</a>
                    <a href="del-ok.jsp?idtarefa=<%=item.getIdTarefa()%>">Excluir</a>
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