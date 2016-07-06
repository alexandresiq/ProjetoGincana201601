<%@include file="../cabecalho.jsp"%>

<div class="container">
    <h1>Cadastro de Equipe</h1>
    <div class="container">
        <form action="add-ok.jsp" method="post">
            <div class="form-group">
                <label>Login</label>
                <input type="text" class="form-control" placeholder="Login" name="txtLogin" /><br />

                <label>Senha</label>
                <input type="text" class="form-control" placeholder="Senha" name="txtSenha"/><br />

                <label>Email:</label>
                <input type="email" class="form-control" placeholder="Email" name="txtEmail"/><br />

                
            </div>
            <input class="btn btn-default" type="reset" value="Limpar" />
            <input class="btn btn-default" type="submit" value="Adicionar" />
        </form>
    </div>
</div>  
</body>
</html>
