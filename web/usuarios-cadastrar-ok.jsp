<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<html>
    <%@include file="head.jsp" %>
    <body class="gradient">
        <%@include file="navbar.jsp" %>
        <%  
            
            String msg="";
            if (request.getParameter("nome") == null || request.getParameter("nome") == "") {
                response.sendRedirect("usuarios-cadastrar.jsp");
            } else {
                
                String nome = request.getParameter("nome");
                String email = request.getParameter("email");
                String senha = request.getParameter("senha");
                String telefone = request.getParameter("telefone");

                UsuarioDAO dao = new UsuarioDAO();

                Usuario obj = new Usuario();
                obj.setNome(nome);
                obj.setEmail(email);
                obj.setSenha(senha);
                obj.setTelefone(telefone);
                try {
                    dao.incluir(obj);
                    msg = "Cadastro realizado com sucesso!";
                } catch (Exception e) {
                    msg = "Erro ao cadastrar usuário.";
                }
            }

        %>
	<div class="container">
                
         <h1 class="centro">Cadastro de Usuário</h1>
            
         <div>
             <%= msg %><br />
             <a href="usuarios-cadastrar.jsp" class="link">Voltar</a>
             
         </div>
        </div>
        <script type="text/javascript" src="js/main.js"></script>
    </body>
</html>

