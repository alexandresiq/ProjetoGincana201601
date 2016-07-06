<%@page import="modelo.Administrador"%>
<%@page import="dao.AdministradorDAO"%>
<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String login = request.getParameter("txtLogin");
    String senha = request.getParameter("txtSenha");
    String email = request.getParameter("txtEmail");
    
    AdministradorDAO dao = new AdministradorDAO();
    Administrador obj = new Administrador();
    
    obj.setLogin(login);
    obj.setSenha(senha);
    obj.setEmail(email);
    
    dao.incluir(obj);
    
%>

<div class="container">
    <h1 class="center-block">Cadastro de Utilizador</h1>
    Registro cadastrado com orgulho.<br />
    <a href="listutil.jsp">Voltar para a Listagem</a>

</div>

</body>
</html>