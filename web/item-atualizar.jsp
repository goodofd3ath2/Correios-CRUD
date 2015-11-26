<%@page import="dao.ItemDAO"%>
<%@page import="modelo.Item"%>
<%@include file="cabecalho.jsp"%>

<%
    if(request.getParameter("id") == null)
    {
      response.sendRedirect("item.jsp"); 
      //para a execução aqui
      return;
    }
     //Buscar o registro(professor) a partir da sua
        //chave primária, nesse caso o SIAPE
        String id = request.getParameter("id");
        ItemDAO dao = new ItemDAO();
        Item obj = dao.buscarPorChavePrimaria(Long.parseLong(id));
        //verificar se o registro existe, se não existir, volta pra lista
        if(obj==null)
        {
            response.sendRedirect("item.jsp");
            return;
            
        }
        
    
    
%>
        <div>
            <h1 class="centro">Atualização de Itens</h1>
            
            <div>
                
                <form action="item-atualizar-ok.jsp" method="post">
                    <label>Tipo:</label><input type="text" name="txtNome" value="<%=obj.getPeso()%>" /><br />
                    <label>Codigo:</label><input type="text" name="txtId" value="<%=obj.getCodigo()%>" readonly="readonly"/><br />
                    <label>Tamanho:</label><input type="text" name="txtRemetente" value="<%=obj.getTamanho()%>" /><br />
                    <label>Tipo:</label><input type="text" name="txtDestinatario" value="<%=obj.getTipo()%>" /><br />
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>
              
    </body>
</html>