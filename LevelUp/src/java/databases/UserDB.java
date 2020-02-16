/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databases;
/**
 *
 * @author 806547
 */
import models.Users;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class UserDB {
    public static void insert(Users user){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        trans.begin();
        try {
            em.persist(user);
            trans.commit();
        } catch (Exception e) {
            trans.rollback();
           
        } finally {
            em.close();
        }
        
    }
     public int update(Users user) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        try {
            trans.begin();
            em.merge(user);
            trans.commit();
            return 1;
        } catch (Exception ex) {
            trans.rollback();
            Logger.getLogger(UserDB.class.getName()).log(Level.SEVERE, "Cannot update " + user.toString(), ex);
           
        } finally {
            em.close();
        }
        return 0;
    }
     
    public static List<Users> getAll(){
    
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        List<Users> users = em.createNamedQuery("Users.findAll", Users.class).getResultList();

        em.close();
        return users;
    }
     public static int delete(Users user) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
        
            trans.begin();
            em.remove(em.merge(user));
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
