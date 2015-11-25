<%@page import="java.util.List"%>
<%@page import="modelo.Item"%>
<%@page import="dao.ItemDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    ItemDAO dao = new ItemDAO();
    List<Item> item = dao.listar();
%>
        <div>
            <h1 class="centro">Item</h1>
            
            <div>
                +<a href="item-cadastrar.jsp">Novo Item</a><br />
                <form>
                    <input type="text" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>Tipo</th>
                            
                            
                            <th>Ações</th>
                        </tr>
                        <%
                            for(Item prof:item){
                                
                            
                        %>
                        <tr>
                            <td><%=item.getTipo()%></td>
                            <td><a href="professores-atualizar.jsp?siape=<%=prof.getSiape()%>">Editar</a>
                                <a href="professores-excluir-ok.jsp?siape=<%=prof.getSiape()%>">Excluir</a>
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