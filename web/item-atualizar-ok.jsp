<%@page import="dao.ItemDAO"%>
<%@page import="modelo.Item"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
<%@include file="cabecalho.jsp"%>
<%
 if(request.getParameter("txtCodigo") == null || request.getParameter("txtTipo") == null ||request.getParameter("txtPeso") == null || request.getParameter("txtTamanho")==null ){
       response.sendRedirect("item.jsp");
           return;

   }
//Buscar as informações do Formulario
    String tipo = request.getParameter("txtTipo");
    BigDecimal tamanho = new BigDecimal(request.getParameter("txtTamanho"));
    BigDecimal peso = new BigDecimal(request.getParameter("txtPeso")); 
    Long codigo = Long.parseLong(request.getParameter("txtCodigo"));
    //Criar meu objeto modelo 
    Item item = new Item();
    //Adiciono os valores enviados
   item.setTipo(tipo);
   item.setTamanho(tamanho);
   item.setPeso(peso);
   item.setCodigo(codigo);
    
    //Instanciar minha classe de acesso a dados
    ItemDAO dao = new ItemDAO();
    Item obj = dao.buscarPorChavePrimaria(codigo);
//Se não encontrou o registro volta pra lista
    if(obj == null){
    response.sendRedirect("item.jsp");
    return;
}
    obj.setTipo(tipo);
    obj.setCodigo(codigo);
    obj.setPeso(peso);
    obj.setTamanho(tamanho);
    
    dao.alterar(item);
%>

         <h1 class="centro">Atualização de Itens</h1>
            
         <div>
             Registro alterado com sucesso.<br />
             <a href="item.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>