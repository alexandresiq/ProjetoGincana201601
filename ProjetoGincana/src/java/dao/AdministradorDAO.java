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
import modelo.Administrador;

/**
 *
 * @author alexandre
 */
public class AdministradorDAO {
    EntityManager em;
    
    public AdministradorDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Administrador obj) throws Exception {
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
    

    public List<Administrador> listar() throws Exception {
        return em.createNamedQuery("Administrador.findAll").getResultList();
    }
    
    public void alterar(Administrador obj) throws Exception {
        
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
    
    public void excluir(Administrador obj) throws Exception {
        
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

    public Administrador realizarLogin(String login, String senha){
        TypedQuery<Administrador> query =
                em.createNamedQuery("Administrador.realizarLogin", Administrador.class);
        
        query.setParameter("login", login);
        query.setParameter("senha", senha);
        Administrador util;
        try {
            util = query.getSingleResult();
        } catch(Exception e){
            util = null;
        }
        
        return util;
    }
    
    public Administrador buscarPorChavePrimaria(String chave){
        return em.find(Administrador.class, chave);
    }
    public void fechaEmf() {
        Conexao.closeConexao();
    }
}
