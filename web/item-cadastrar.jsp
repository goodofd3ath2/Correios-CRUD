<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Cadastro de Itens</h1>
            
            <div>
                
                <form action="professores-cadastrar-ok.jsp">
                    <label>Tipo</label><input type="text" name="txtTipo" /><br />
                    <label>Tamanho</label><input type="text" name="txtTamanho" /><br />
                    <label>Peso</label><input type="text" name="txtPeso" /><br />
                    
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>



    </body>
</html>