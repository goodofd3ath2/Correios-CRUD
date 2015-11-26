<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
<%@include file="cabecalho.jsp"%>

<%
    if(request.getParameter("id") == null)
    {
      response.sendRedirect("usuario.jsp"); 
      //para a execução aqui
      return;
    }
     //Buscar o registro(professor) a partir da sua
        //chave primária, nesse caso o SIAPE
        String id = request.getParameter("id");
        UsuarioDAO dao = new UsuarioDAO();
        Usuario obj = dao.buscarPorChavePrimaria(Long.parseLong(id));
        //verificar se o registro existe, se não existir, volta pra lista
        if(obj==null)
        {
            response.sendRedirect("usuario.jsp");
            return;
            
        }
        
    
    
%>
        <div>
            <h1 class="centro">Atualização de Professores</h1>
            
            <div>
                
                <form action="usuario-atualizar-ok.jsp" method="post">
                    <label>Nome:</label><input type="text" name="txtNome" value="<%=obj.getNome()%>" /><br />
                    <label>Identificador:</label><input type="text" name="txtId" value="<%=obj.getId()%>" readonly="readonly"/><br />
                    <label>Remetente:</label><input type="text" name="txtRemetente" value="<%=obj.getRemetente()%>" /><br />
                    <label>Destinatario</label><input type="text" name="txtDestinatario" value="<%=obj.getDestinatario()%>" /><br />
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>


        
    </body>
</html>