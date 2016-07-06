<%@include file="../cabecalho.jsp"%>

<div class="container">
    <h1>Cadastro de Equipe</h1>
    <div class="container">
        <form action="add-ok.jsp" method="post">
            <div class="form-group">
                <label>Nome:</label>
                <input type="text" class="form-control" placeholder="Nome" name="txtNome" /><br />

                <label>Identificador:</label>
                <input type="long" class="form-control" placeholder="ID" name="txtId"/><br />

                <label>Mascote:</label>
                <input type="text" class="form-control" placeholder="Mascote" name="txtMascote"/><br />

                <label>Conselheiro:</label>
                <input type="text" class="form-control" placeholder="Conselheiro" name="txtConselheiro"/><br />
                
                <label>Cor:</label>
                <input type="text" class="form-control" placeholder="Cor" name="txtCor"/><br />
                
                <label>Integrantes:</label>
                <textarea name="txtIntegrantes" class="form-control" placeholder="Integrantes"></textarea><br />
                
                <label>Foto:</label>
                <input type="text" class="form-control" placeholder="Foto" name="txtFoto"/><br />
                
                <label>Símbolo:</label>
                <input type="text" class="form-control" placeholder="Símbolo" name="txtSimbolo"/><br />
            </div>
            <input class="btn btn-default" type="reset" value="Limpar" />
            <input class="btn btn-default" type="submit" value="Adicionar" />
        </form>
    </div>
</div>  
</body>
</html>

