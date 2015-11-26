<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
<%@include file="cabecalho.jsp"%>
<%
//txtnome é o NAME que eu coloquei no input na tela 
//anterior
String nome = request.getParameter("txtNome");
Long id = Long.parseLong(request.getParameter("txtId"));
String remetente=request.getParameter("txtRemetente");
String destinatario=request.getParameter("txtDestinatario");

<<<<<<< HEAD
    Usuario usuario = new Usuario();
    
    usuario.setNome(nome);
    usuario.setRemetente(remetente);
    usuario.setDestinatario(destinatario);
    usuario.setId(id);

UsuarioDAO dao= new UsuarioDAO();

    dao.incluir(usuario);
=======
Usuario usuario = new Usuario();
usuario.setNome(nome);
usuario.setRemetente(remetente);
usuario.setDestinatario(destinatario);
usuario.setId(id);
UsuarioDAO dao= new UsuarioDAO();

dao.incluir(usuario);
>>>>>>> origin/master

%>
         <h1 class="centro">Cadastro de Usuarios</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             Nome:<%=nome%><br />
             
             <a href="usuario.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>