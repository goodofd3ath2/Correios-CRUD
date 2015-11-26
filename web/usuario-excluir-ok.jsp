<%@include file="cabecalho.jsp"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<%
    String msg = "";
    if(request.getParameter("id")==null)
    {
        response.sendRedirect("usuario.jsp");
    }
    else
    {
        String id = request.getParameter("id");
        
        UsuarioDAO dao = new UsuarioDAO();
        //buscar o registro pela chave prim�ria
        Usuario obj = dao.buscarPorChavePrimaria(Long.parseLong(id));
        if(obj!=null)
        {
            dao.excluir(obj);
            msg = "Registro exclu�do com sucesso";
        }
        else
        {
            msg = "Registro n�o encontrado. Verifique.";
        }
        
    }
%>
         <h1 class="centro">Exclus�o de Usuarios</h1>
            
         <div>
             <%=msg%><br />
             <a href="usuario.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>