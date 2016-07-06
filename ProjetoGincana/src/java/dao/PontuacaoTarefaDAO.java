package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.PontuacaoTarefa;

/**
 *
 * @author marcelosiedler
 */
public class PontuacaoTarefaDAO {

    EntityManager em;
    
    public PontuacaoTarefaDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(PontuacaoTarefa obj) throws Exception {
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

    public List<PontuacaoTarefa> listar() throws Exception {
        return em.createNamedQuery("PontuacaoTarefa.findAll").getResultList();
    }
    
    public void alterar(PontuacaoTarefa obj) throws Exception {
        
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
    
    public void excluir(PontuacaoTarefa obj) throws Exception {
        
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
