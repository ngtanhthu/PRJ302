package utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author tungi
 */
public class JPAUtil {
    private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("Web_11_a_JPAPU");
    
    public static EntityManager getEntityManager(){
        return emf.createEntityManager();
    }
}