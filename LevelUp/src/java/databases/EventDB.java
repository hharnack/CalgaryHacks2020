/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databases;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.Events;

/**
 *
 * @author 806547
 */
public class EventDB {
        public static void insert(Events event){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        trans.begin();
        try {
            em.persist(event);
            trans.commit();
        } catch (Exception e) {
            trans.rollback();
           
        } finally {
            em.close();
        }
        
    }
    public static List<Events> getAll(){
    
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        List<Events> users = em.createNamedQuery("Events.findAll", Events.class).getResultList();

        em.close();
        return users;
    }
     public static int delete(Events event) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
        
            trans.begin();
            em.remove(em.merge(event));
            trans.commit();
            
            return 1;
        } catch (Exception ex) {
            trans.rollback();
            return 0;
            
        } finally {
            em.close();
        }
    
}
}
