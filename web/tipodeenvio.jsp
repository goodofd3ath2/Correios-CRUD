<%@page import="java.util.List"%>
<%@page import="modelo.TipoDeEnvio"%>
<%@page import="dao.TipoDeEnvioDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    TipoDeEnvioDAO dao = new TipoDeEnvioDAO();
    List<TipoDeEnvio> lista;
     
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
                +<a href=tipodeenvio-cadastrar.jsp">Novo Item</a><br />
                  <form action="item.jsp" method="post"> 
                    <input type="text" name="txtFiltro" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>Nome</th>
                            
                            
                            <th>Ações</th>
                        </tr>
                        <%
                            for(TipoDeEnvio que:lista){
                                
                            
                        %>
                        <tr>
                            <td><%=que.getNome()%></td>
                            <td><a href="item-atualizar.jsp?codigo=<%=que.getIdentificador()%>">Editar</a>
                               
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