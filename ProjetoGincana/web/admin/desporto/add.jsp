<%@include file="../cabecalho.jsp"%>

<div class="container">
    <h1>Cadastro de Desporto</h1>
    <div class="container">
        <form action="add-ok.jsp" method="post">
            <div class="form-group">
                <label>Identificador:</label>
                <input type="long" class="form-control" placeholder="ID" name="txtIddesporto"/><br />
                
                <label>Nome:</label>
                <input type="text" class="form-control" placeholder="Nome" name="txtNomedesporto" /><br />

                <label>Descrição:</label>
                <input type="text" class="form-control" placeholder="Descrição" name="txtDescricaodesporto"/><br />

                <label>Valor:</label>
                <input type="text" class="form-control" placeholder="Valor" name="txtValordesporto"/><br />
                
            </div>
            <input class="btn btn-default" type="reset" value="Limpar" />
            <input class="btn btn-default" type="submit" value="Adicionar" />
        </form>
    </div>
</div>  
</body>
</html>

