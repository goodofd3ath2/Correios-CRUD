<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Cadastro de Usuario</h1>
            
            <div>
                
                <form action="usuario-cadastrar-ok.jsp">
                    <label>Nome:</label><input type="text" name="txtNome" /><br />
                    <label>Identificador:</label><input type="text" name="txtId" /><br />
                    <label>Remetente:</label><input type="text" name="txtRemetente" /><br />
                    <label>Destinatario:</label><input type="text" name="txtDestinatario" /><br />
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>



    </body>
</html>