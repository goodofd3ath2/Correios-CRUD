
<%@page import="dao.TipoDeEnvioDAO"%>
<%@page import="modelo.TipoDeEnvio"%>
<%@include file="cabecalho.jsp"%>
<%
    
  //Buscar as informações do Formulario
    String nome = request.getParameter("txtNome");
    Long identificador = Long.parseLong(request.getParameter("txtIdentificador"));
    //Criar meu objeto modelo 
    TipoDeEnvio item = new TipoDeEnvio();
    //Adiciono os valores enviados
   item.setNome(nome);
   item.setIdentificador(identificador);
    
    //Instanciar minha classe de acesso a dados
    TipoDeEnvioDAO dao = new TipoDeEnvioDAO();
    
    dao.incluir(item);
%>
         <h1 class="centro">Cadastro de Itens</h1>
            
         <div>
              Registro cadastrado com sucesso.<br />
                Nome:<%=nome%><br />
             <a href="tipodeenvio.jsp">Voltar para Listagem</a>
             
         </div>
    </body>
</html>
