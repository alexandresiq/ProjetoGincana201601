package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Tarefa;

/**
 *
 * @author marcelosiedler
 */
public class TarefaDAO {

    EntityManager em;
    
    public TarefaDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Tarefa obj) throws Exception {
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

    public List<Tarefa> listar() throws Exception {
        return em.createNamedQuery("Tarefa.findAll").getResultList();
    }
    
    public void alterar(Tarefa obj) throws Exception {
        
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
    
    public void excluir(Tarefa obj) throws Exception {
        
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

    public Tarefa buscarPorChavePrimaria(Long chave){
        return em.find(Tarefa.class, chave);
    }
    
    public void fechaEmf() {
        em.close();
        Conexao.closeConexao();
    }
    
}
