package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Desporto;

/**
 *
 * @author marcelosiedler
 */
public class DesportoDAO {

    EntityManager em;
    
    public DesportoDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Desporto obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            //em.close();
            
        }
        
    }

    public List<Desporto> listar() throws Exception {
        return em.createNamedQuery("Desporto.findAll").getResultList();
    }
    
    public void alterar(Desporto obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            // em.close();
        }
    }
    
    public void excluir(Desporto obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            //em.close();
        }
    }

    public Desporto buscarPorChavePrimaria(Long chave){
        return em.find(Desporto.class, chave);
    }
    
    public void fechaEmf() {
        em.close();
        Conexao.closeConexao();
    }
    
}
