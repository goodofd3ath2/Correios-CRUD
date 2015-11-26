<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<%@include file="cabecalho.jsp"%>
<%
     UsuarioDAO dao = new UsuarioDAO();
     
     List<Usuario> lista;
     
     if(request.getParameter("txtFiltro")!= null && request.getParameter("txtFiltro")!=""){
         String txtFiltro = request.getParameter("txtFiltro");
         lista = dao.listar(txtFiltro);
     }
     else {
         lista = dao.listar();
     }
%>
    
        <div>
            <h1 class="centro">Alunos</h1>
            
            <div>
                <a href=" usuario-cadastrar.jsp">+ Novo Usuario</a><br />
                <form action="usuario.jsp" method="post"> 
                    <input type="text" name="txtFiltro" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>Nome</th>
                            <th>Remetente</th>
                            <th>Destinatario</th>
                            <th>Identificador</th>
                            
                            <th>Ações</th>
                        </tr>
                        <%
                          for(Usuario usu:lista)
                        {    
                        %>
       
                        <tr>
                            
                            <td><%=usu.getNome()%></td>
                            <td><%=usu.getRemetente()%></td>
                            <td><%=usu.getDestinatario()%></td>
<<<<<<< HEAD
                            <td><%=usu.getId()%></td>
=======
>>>>>>> origin/master
                            <td><a href="usuario-atualizar.jsp?id=<%=usu.getId()%>">Editar</a>
                                <a href="usuario-excluir-ok.jsp?id=<%=usu.getId()%>">Excluir</a>
                            </td>
                            
                        </tr>
                        <%
                        }
                        %>
                    </table>
                    
                </form>
            </div>
        </div>
    </body>
</html>