/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
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
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
            
        }
        
    }

    public List<Item> listar() throws Exception {
        return em.createNamedQuery("Item.findAll").getResultList();
    }
      public List<Item> listar(String nome) throws Exception {
        //passar o parâmetro pra query
         TypedQuery<Item> query = 
                 em.createNamedQuery("Item.findByName", Item.class);
         
         //Seto o parâmetro
         query.setParameter("nome", '%' + nome + '%');
         //retorno minha lista
         return query.getResultList();
    }
    public void alterar(Item obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }
    
    public void excluir(Item obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }

    public void fechaEmf() {
        Conexao.closeConexao();
<<<<<<< HEAD
    }
    public Item buscarPorChavePrimaria(Long codigo){
        return em.find(Item.class, codigo);
=======
>>>>>>> origin/master
    }
    

}

