<%@page import="java.util.List"%>
<%@page import="modelo.Item"%>
<%@page import="dao.ItemDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    ItemDAO dao = new ItemDAO();
    List<Item> lista;
     
     if(request.getParameter("txtFiltro")!= null && request.getParameter("txtFiltro")!=""){
         String txtFiltro = request.getParameter("txtFiltro");
         lista = dao.listar(txtFiltro);
     }
     else {
         lista = dao.listar();
     }
%>
        <div>
            <h1 class="centro">Item</h1>
            
            <div>
                +<a href="item-cadastrar.jsp">Novo Item</a><br />
                  <form action="item.jsp" method="post"> 
                    <input type="text" name="txtFiltro" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>Tipo</th>
                            <th>Peso</th>
                            <th>Tamanho</th>
                            
                            <th>Ações</th>
                        </tr>
                        <%
                            for(Item que:lista){
                                
                            
                        %>
                        <tr>
                            <td><%=que.getTipo()%></td>
                            <td><%=que.getPeso()%></td>
                            <td><%=que.getTamanho()%></td>
                            <td><%=que.getCodigo()%></td>
                            <td><a href="item-atualizar.jsp?codigo=<%=que.getCodigo()%>">Editar</a>
                                <a href="item-excluir-ok.jsp?codigo=<%=que.getCodigo()%>">Excluir</a>
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