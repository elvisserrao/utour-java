<%@page import="modelo.Local"%>
<%@page import="dao.LocalDAO"%>
<%@page import="modelo.Endereco"%>
<%@page import="dao.EnderecoDAO"%>

<html>
    <%@include file="head.jsp" %>
    <body class="gradient">
        <%@include file="navbar.jsp" %>
        <%  
            
            String msg="";
            if (request.getParameter("nome") == null || request.getParameter("nome") == "") {
                response.sendRedirect("locais-cadastrar.jsp");
            } else {
                
                String nome = request.getParameter("nome");
                String descricao = request.getParameter("descricao");
                String endereco = request.getParameter("endereco");
                String numero = request.getParameter("numero");
                String bairro = request.getParameter("bairro");
                

                LocalDAO localDao = new LocalDAO();
                EnderecoDAO enderecoDao = new EnderecoDAO();

                Local localObj = new Local();
                localObj.setNome(nome);
                localObj.setDescricao(descricao);
                
                Endereco enderecoObj = new Endereco();
                enderecoObj.setLogradouro(endereco);
                enderecoObj.setNumero(numero);
                enderecoObj.setBairro(bairro);
                enderecoObj.setCidade("Salvador");
                enderecoObj.setEstado("Bahia");
                enderecoObj.setPais("Brasil");
                
                try {
//                    enderecoDao.incluir(enderecoObj);
                    localObj.setEnderecoId(enderecoObj);
                    localDao.incluir(localObj);
                    msg = "Cadastro realizado com sucesso!" + localObj;

                } catch (Exception e) {
                    msg = "Erro ao cadastrar local." + e;
                }
            }

        %>
	<div class="container">
                
         <h1 class="centro">Cadastro de Local</h1>
            
         <div>
             <%= msg %><br />
             <a href="locais-cadastrar.jsp" class="link">Voltar</a>
             
         </div>
        </div>
        <script type="text/javascript" src="js/main.js"></script>
    </body>
</html>

