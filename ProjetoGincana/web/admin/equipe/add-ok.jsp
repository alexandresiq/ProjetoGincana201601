<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    
    
        String nome = request.getParameter("txtNome");
        String idequipe = request.getParameter("txtId");
        String mascote = request.getParameter("txtMascote");
        String conselheiro = request.getParameter("txtConselheiro");
        String cor = request.getParameter("txtCor");
        String integrante = request.getParameter("txtIntegrantes");
        String foto = request.getParameter("txtFoto");
        String simbolo = request.getParameter("txtSimbolo");
        
        EquipeDAO dao = new EquipeDAO();
        Equipe obj = new Equipe();
        
        obj.setNomeEquipe(nome);
        obj.setIdEquipe(Long.parseLong(idequipe));
        obj.setMascote(mascote);
        obj.setConselheiro(conselheiro);
        obj.setCor(cor);
        obj.setIntegrante(integrante);
        obj.setFoto(foto);
        obj.setSimbolo(simbolo);
        
        
        dao.incluir(obj);        
    
%>
<div class="container">
    <h1 class="center-block">Cadastro de Equipe</h1>
    Registro cadastrado com orgulho.<br />
    <a href="listequipe.jsp">Voltar para a Listagem</a>

</div>

</body>
</html>
