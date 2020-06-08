<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>
    <body class="gradient">
        <%@include file="navbar.jsp" %>
	<div class="container">
            
            <div class="container-form">
                <div class="form-content">
                    <form action="usuarios-cadastrar-ok.jsp" method="post">
                        <h2>Cadastro de Usuário</h2>
                        <div class="input-div">
                            <div class="i">
                                <i class="fas fa-user"></i>
                            </div>
                            <div class="div">
                                <h5>Nome</h5>
                                <input class="input" type="text" name="nome" />
                            </div>
                        </div>
                        <div class="input-div">
                            <div class="i">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="div">
                                <h5>E-mail</h5>
                                <input class="input" type="email" name="email" />
                            </div>
                        </div>
                        <div class="input-div">
                            <div class="i">
                                <i class="fas fa-phone"></i>
                            </div>
                            <div class="div">
                                <h5>Telefone</h5>
                                <input class="input" type="tel" name="telefone" />
                            </div>
                        </div>
                        <div class="input-div">
                            <div class="i">
                                <i class="fas fa-lock"></i>
                            </div>
                            <div class="div">
                                <h5>Senha</h5>
                                <input class="input" type="password" name="senha"  />
                            </div>
                        </div>
                        <!-- <div class="input-div">
                            <div class="i">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="div">
                                <h5>Data de Nascimento</h5>
                                <input type="date" name="dataNascimento" />
                            </div>
                        </div> -->
                        <input class="btn" type="reset" value="Limpar" />
                        <input class="btn" type="submit" value="Cadastrar" />
                    </form>
                </div>
            </div>
        </div>
        

        <script type="text/javascript" src="js/main.js"></script>
    </body>
</html>
