/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.TipoDeEnvio;

/**
 *
 * @author Aluno
 */
public class TipoDeEnvioDAO {
    EntityManager em;
    
    public TipoDeEnvioDAO() throws Exception {
        
        EntityManagerFactory emf;
        
        emf = Conexao.getConexao();
        
        em = emf.createEntityManager();
        
    }
    
    public void incluir(TipoDeEnvio obj) throws Exception {
        
        try {
            
        } catch (RuntimeException e) {
            
        } finally {
            
        }
        
    }
    
    public List<TipoDeEnvio> listar() throws Exception {
        
        return em.createNamedQuery("TipoDeEnvio.findAll").getResultList();
        
    }
    
    public void alterar(TipoDeEnvio obj) throws Exception {
        
        try {
            
        } catch (RuntimeException e) {
            
        } finally {
            
        }
        
    }
    
    public void excluir(TipoDeEnvio obj) throws Exception {
        
        try {
            
        } catch (RuntimeException e) {
            
        } finally {
            
        }
        
    }
    
    public void fechaEmf() {
        
        Conexao.closeConexao();
        
    }
}