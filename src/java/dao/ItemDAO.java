/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Item;

/**
 *
 * @author Aluno
 */
public class ItemDAO {
    EntityManager em;
    
    public ItemDAO() throws Exception {
        
        EntityManagerFactory emf;
        
        emf = Conexao.getConexao();
        
        em = emf.createEntityManager();
        
    }
    
    public void incluir(Item obj) throws Exception {
        
        try {
            
        } catch (RuntimeException e) {
            
        } finally {
            
        }
        
    }
    
    public List<Item> listar() throws Exception {
        
        return em.createNamedQuery("Item.findAll").getResultList();
        
    }
    
    public void alterar(Item obj) throws Exception {
        
        try {
            
        } catch (RuntimeException e) {
            
        } finally {
            
        }
        
    }
    
    public void excluir(Item obj) throws Exception {
        
        try {
            
        } catch (RuntimeException e) {
            
        } finally {
            
        }
        
    }
    
    public void fechaEmf() {
        
        Conexao.closeConexao();
        
    }
}
