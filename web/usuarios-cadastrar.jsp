<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Cadastro de Usuário</h1>
            
            <div>
                
                <form action="usuarios-cadastrar-ok.jsp" method="post">
                    <label>Nome</label><input type="text" name="nome" /><br />
                    <label>E-mail</label><input type="email" name="email" /><br />
                    <label>Senha</label><input type="password" name="senha"  /><br />
                    <!--<label>Data de Nascimento</label><input type="date" name="dataNascimento" /><br />-->
                    <label>Telefone</label><input type="tel" name="telefone" /><br />
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>



    </body>
</html>
