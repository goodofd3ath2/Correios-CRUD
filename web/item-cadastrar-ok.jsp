<%@page import="java.math.BigDecimal"%>
<%@page import="dao.ItemDAO"%>
<%@page import="modelo.Item"%>
<%@include file="cabecalho.jsp"%>
<%
    
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
    
    dao.incluir(item);
%>
         <h1 class="centro">Cadastro de Itens</h1>
            
         <div>
              Registro cadastrado com sucesso.<br />
                Nome:<%=tipo%><br />
             <a href="item.jsp">Voltar para Listagem</a>
             
         </div>
    </body>
</html>
