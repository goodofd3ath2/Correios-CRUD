<%@include file="cabecalho.jsp"%>
<%@page import="modelo.Item"%>
<%@page import="dao.ItemDAO"%>
<%
    String msg = "";
    if(request.getParameter("codigo")==null)
    {
        response.sendRedirect("item.jsp");
    }
    else
    {
        String codigo = request.getParameter("codigo");
        
        ItemDAO dao = new ItemDAO();
        //buscar o registro pela chave prim�ria
        Item obj = dao.buscarPorChavePrimaria(Long.parseLong(codigo));
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
         <h1 class="centro">Exclus�o de Itens</h1>
            
         <div>
             <%=msg%><br />
             <a href="item.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>