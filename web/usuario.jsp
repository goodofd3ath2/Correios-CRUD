<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<%@include file="cabecalho.jsp"%>
<%
     UsuarioDAO dao = new UsuarioDAO();
     
     List<Usuario> usuario = dao.listar();
%>
    
        <div>
            <h1 class="centro">Alunos</h1>
            
            <div>
                <a href=" usuario-cadastrar.jsp">+ Novo Usuario</a><br />
                <form>
                    <input type="text" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>Nome</th>
                            <th>Remetente</th>
                            <th>Destinatario</th>
                            
                            <th>Ações</th>
                        </tr>
                        <%
                          for(Usuario usu:usuario)
                        {    
                        %>
       
                        <tr>
                            
                            <td><%=usu.getNome()%></td>
                            <td><%=usu.getRemetente()%></td>
                            <td><%=usu.getDestinatario()%></td>
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