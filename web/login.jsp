<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>
<body>
	<div class="container-login">
            <div class="login-content">
                <form action="index.html">
                    <img src="img/utour.png">
                    <h2 class="title">Bem vindo!</h2>
                    <div class="input-div one">
                        <div class="i">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="div">
                            <h5>Usuário</h5>
                            <input type="text" class="input">
                        </div>
                    </div>
                    <div class="input-div pass">
                        <div class="i"> 
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Senha</h5>
                            <input type="password" class="input">
                        </div>
                    </div>
                    <a href="#">Esqueceu a senha?</a>
                    <input type="submit" class="btn" value="Login">
                </form>
            </div>
        </div>
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>
