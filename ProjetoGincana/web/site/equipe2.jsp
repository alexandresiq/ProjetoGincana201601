<%@page import="modelo.Equipe"%>
<%@page import="java.util.List"%>
<%@page import="dao.EquipeDAO"%>
<%@include file="cabecalho.jsp" %>
<%
    EquipeDAO dao = new EquipeDAO();
    List<Equipe> lista;
    lista = dao.listar();
%>

<div class="content"><div class="ic"></div>
    <div class="container_12" class="grid_12">

        <%
            for (Equipe item : lista) {
        %>
        <div class="center">
            <h3><%=item.getNomeEquipe()%></h3>
            <img src="<%=item.getFoto()%>" widht="960px" height="514px">
        </div>
        <div class="clear"></div>
    </div>	
    <div class="container_12" class="grid_12">
        <div class="center">
            <h3>Informações sobre a equipe</h3>
        </div>
        <div class="grid_4">
            <h3>Integrantes</h3>
            <ul class="list1 color1">
                <li><%=item.getIntegrante()%></li>
            </ul>
        </div>
        <div class="grid_8">
            <br />
            <br />
            <br />
            <img src="<%=item.getSimbolo()%>" width="100px" alt="" class="img_inner fleft">
            <div class="clear"></div>
            <div>
                <div class="grid_3 alpha">
                    <p class="color5">Nome da Equipe: <%=item.getNomeEquipe()%></p>
                    <p class="color5">Mascote: <%=item.getMascote()%></p>
                    <p class="color5">Cor: <%=item.getCor()%></p>
                    <p class="color5">Professor Conselheiro: <%=item.getConselheiro()%></p>	
                </div>
            </div>

        </div>

        <div class="clear"></div>
        <%
                }
        %>     
    </div>
</div>
</div>

<%@include file="rodape.jsp" %>