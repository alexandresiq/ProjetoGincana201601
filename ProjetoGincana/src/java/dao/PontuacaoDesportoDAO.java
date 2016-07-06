package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.PontuacaoDesporto;

/**
 *
 * @author marcelosiedler
 */
public class PontuacaoDesportoDAO {

    EntityManager em;
    
    public PontuacaoDesportoDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(PontuacaoDesporto obj) throws Exception {
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

    public List<PontuacaoDesporto> listar() throws Exception {
        return em.createNamedQuery("PontuacaoDesporto.findAll").getResultList();
    }
    
    public void alterar(PontuacaoDesporto obj) throws Exception {
        
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
    
    public void excluir(PontuacaoDesporto obj) throws Exception {
        
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

    public void fechaEmf() {
        em.close();
        Conexao.closeConexao();
    }
    
}
