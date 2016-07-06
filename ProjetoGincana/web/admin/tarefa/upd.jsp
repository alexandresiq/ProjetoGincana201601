<%@page import="modelo.Tarefa"%>
<%@page import="dao.TarefaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String idTarefa = request.getParameter("idtarefa");
    
    TarefaDAO dao = new TarefaDAO();
    Tarefa obj = dao.buscarPorChavePrimaria(Long.parseLong(idTarefa));
%>
<div class="container">
    <h1>Cadastro de Tarefa</h1>
    <div class="container">
        <form action="upd-ok.jsp" method="post">
            <div class="form-group">
                <label>ID:</label>
                <input type="long" value="<%=obj.getIdTarefa()%>" class="form-control" name="txtId" readonly="readonly"/><br />

                <label>Nome:</label>
                <input type="text" value="<%=obj.getNomeTarefa()%>" class="form-control" placeholder="Nome" name="txtNome"/><br />

                <label>Pontuação da tarefa (valor):</label>
                <input type="text" value="<%=obj.getValorTarefa()%>" class="form-control" placeholder="Valor" name="txtValor"/><br />

                <label>Descrição:</label>
                <input type="text" value="<%=obj.getDescTarefa()%>" class="form-control" placeholder="Descrição" name="txtDescricao"/><br />
                
            </div>
            
            <input class="btn btn-default" type="submit" value="Adicionar" />
        </form>
    </div>
</div>  
</body>
</html>