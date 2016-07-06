<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String idEquipe = request.getParameter("idequipe");
    
    EquipeDAO dao = new EquipeDAO();
    Equipe obj = dao.buscarPorChavePrimaria(Long.parseLong(idEquipe));
%>
<div class="container">
    <h1>Atualização de Equipe</h1>
    <div class="container">
        <form action="upd-ok.jsp" method="post">
            <div class="form-group">
                <label>Nome:</label>
                <input type="text" value="<%=obj.getNomeEquipe()%>" class="form-control" placeholder="Nome" name="txtNome" /><br />

                <label>Identificador:</label>
                <input type="long" value="<%=obj.getIdEquipe()%>" class="form-control" name="txtId" readonly="readonly"/><br />

                <label>Mascote:</label>
                <input type="text" value="<%=obj.getMascote()%>" class="form-control" placeholder="Mascote" name="txtMascote"/><br />

                <label>Conselheiro:</label>
                <input type="text" value="<%=obj.getConselheiro()%>" class="form-control" placeholder="Conselheiro" name="txtConselheiro"/><br />
                
                <label>Cor:</label>
                <input type="text" value="<%=obj.getCor()%>" class="form-control" placeholder="Cor" name="txtCor"/><br />
                
                <label>Integrantes:</label>
                <textarea name="txtIntegrantes" value="<%=obj.getIntegrante()%>" class="form-control" placeholder="Integrantes"></textarea><br />
                
                <label>Foto:</label>
                <input type="text" value="<%=obj.getFoto()%>" class="form-control" placeholder="Foto" name="txtFoto"/><br />
                
                <label>Símbolo:</label>
                <input type="text" value="<%=obj.getSimbolo()%>" class="form-control" placeholder="Símbolo" name="txtSimbolo"/><br />
            </div>
            <input class="btn btn-default" type="submit" value="Adicionar" />
        </form>
    </div>
</div>  
</body>
</html>

