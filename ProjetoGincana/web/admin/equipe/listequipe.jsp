<%@page import="java.util.List"%>
<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    EquipeDAO dao = new EquipeDAO();
    
    List<Equipe> lista;
    lista = dao.listar();
            
%>
<div class="container">
    <h1 class="center-block">Lista de Equipes</h1>

    <div>
        <a href="add.jsp">Adicionar Equipe</a> <br /> 
        <br />
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Cor</th>

                <th>Ações</th>
            </tr>
<%
    for (Equipe item: lista){
        
    
%>
            <tr>
                <td><%=item.getIdEquipe()%></td>
                <td><%=item.getNomeEquipe()%></td>
                <td><%=item.getCor()%></td>
                <td>
                    <a href="upd.jsp?idequipe=<%=item.getIdEquipe()%>">Editar</a>
                    <a href="del-ok.jsp?idequipe=<%=item.getIdEquipe()%>">Excluir</a>
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

