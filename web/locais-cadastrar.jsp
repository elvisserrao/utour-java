<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>
    <body class="gradient">
        <%@include file="navbar.jsp" %>
	<div class="container">
            
            <div class="container-form">
                <div class="form-content">
                    <form action="locais-cadastrar-ok.jsp" method="post">
                        <h2>Cadastro de Local</h2>
                        <div class="input-div">
                            <div class="i">
                                <i class="fas fa-store"></i>
                            </div>
                            <div class="div">
                                <h5>Nome</h5>
                                <input class="input" type="text" name="nome" />
                            </div>
                        </div>
                        <div class="input-div">
                            <div class="i">
                                <i class="fas fa-bars"></i>
                            </div>
                            <div class="div">
                                <h5>Descrição</h5>
                                <input class="input" type="text" name="email" />
                            </div>
                        </div>
                        <div class="input-div">
                            <div class="i">
                                <i class="fas fa-map-marker"></i>
                            </div>
                            <div class="div">
                                <h5>Endereço</h5>
                                <input class="input" type="text" name="endereco" />
                            </div>
                        </div>
                        <div class="input-div">
                            <div class="i">
                                <i class="fas fa-list-ol"></i>
                            </div>
                            <div class="div">
                                <h5>Número</h5>
                                <input class="input" type="number" name="numero"  />
                            </div>
                        </div>
                        <div class="input-div">
                            <div class="i">
                                <i class="fas fa-home"></i>
                            </div>
                            <div class="div">
                                <h5>Bairro</h5>
                                <input class="input" type="text" name="bairro"  />
                            </div>
                        </div>
                        <input class="btn" type="reset" value="Limpar" />
                        <input class="btn" type="submit" value="Cadastrar" />
                    </form>
                </div>
            </div>
        </div>
        

        <script type="text/javascript" src="js/main.js"></script>
    </body>
</html>
