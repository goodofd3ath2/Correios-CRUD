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
import modelo.Usuario;

/**
 *
 * @author Aluno
 */
public class UsuarioDAO {
    EntityManager em;
   
   
    public UsuarioDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Usuario obj) throws Exception {
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

    public List<Usuario> listar() throws Exception {
        return em.createNamedQuery("Usuario.findAll").getResultList();
    }
    public List<Usuario> listar(String nome) throws Exception {
        //passar o parâmetro pra query
         TypedQuery<Usuario> query = 
                 em.createNamedQuery("Usuario.findByName", Usuario.class);
         
         //Seto o parâmetro
         query.setParameter("nome", '%' + nome + '%');
         //retorno minha lista
         return query.getResultList();
    }
   public void alterar(Usuario obj) throws Exception {
        
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
    
 
    
    public void excluir(Usuario obj) throws Exception {
        
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
    }
<<<<<<< HEAD
     public Usuario buscarPorChavePrimaria(Long id){
        return em.find(Usuario.class, id);
    }
=======
    
>>>>>>> origin/master

}
