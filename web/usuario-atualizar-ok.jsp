<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
<%@include file="cabecalho.jsp"%>
<%
if(request.getParameter("txtNome") == null ||request.getParameter("txtDestinatario") == null || request.getParameter("txtId")==null || request.getParameter("txtRemetente") == null)
{
    response.sendRedirect("usuario.jsp");
    return;
}

String txtNome = request.getParameter("txtNome");
String txtDestinatario = request.getParameter("txtDestinatario");
String txtRemetente = request.getParameter("txtRemetente");
Long id= Long.parseLong(request.getParameter("txtId"));
//Buscar o registro pela chave prim�ria
//Alterar os demais valores (nesse caso apenas Nome)
//mandar alterar
UsuarioDAO dao = new UsuarioDAO();
//busquei o professor pelo siape (registro pela C.Prim�ria)
Usuario obj = dao.buscarPorChavePrimaria(id);
//Se n�o encontrou o registro volta pra lista
if(obj == null)
{
    response.sendRedirect("usuario.jsp");
    return;
}
//Atualizar as demais informa��es enviadas
obj.setNome(txtNome);
obj.setRemetente(txtRemetente);
obj.setDestinatario(txtDestinatario);

dao.alterar(obj);
%>

         <h1 class="centro">Atualiza��o de Professores</h1>
            
         <div>
             Registro alterado com sucesso.<br />
             <a href="usuario.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>