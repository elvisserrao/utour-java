<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<%@include file="cabecalho.jsp"%>
<%  
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

    dao.incluir(obj);

%>

         <h1 class="centro">Cadastro de Usuário</h1>
            
         <div>
             Usuário cadastrado com sucesso.<br />
             <a href="professores.jsp">Voltar</a>
             
         </div>
    </body>
</html>
