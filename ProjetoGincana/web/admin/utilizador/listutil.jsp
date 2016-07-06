<%@page import="modelo.Administrador"%>
<%@page import="java.util.List"%>
<%@page import="dao.AdministradorDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    AdministradorDAO dao = new AdministradorDAO();
    
    List<Administrador> lista;
    lista = dao.listar();
%>
<div class="container">
    <h1 class="center-block">Lista de Utilizadores</h1>

    <div>
        <a href="add.jsp">Adicionar Utilizador</a> <br />  
        <br />
        <table class="table table-bordered">
            <tr>
                <th>Login</th>
                <th>Email</th>

                <th>Ações</th>
            </tr>
<%
    for (Administrador item: lista){
%>
            <tr>
                <td><%=item.getLogin()%></td>
                <td><%=item.getEmail()%></td>
                <td>
                    <a href="upd.jsp?login=<%=item.getLogin()%>" >Editar</a>
                    <a href="del-ok.jsp?login=<%=item.getLogin()%>">Excluir</a>
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

