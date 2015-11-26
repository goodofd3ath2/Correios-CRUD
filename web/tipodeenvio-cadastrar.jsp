<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Cadastro de Tipo de Envio</h1>
            
            <div>
                
                <form action="tipodeenvio-cadastrar-ok.jsp">
                    <label>Identificador</label><input type="text" name="txtIdentificador" /><br />
                    <label>Nome</label><input type="text" name="txtNome" /><br />
                    
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>



    </body>
</html>