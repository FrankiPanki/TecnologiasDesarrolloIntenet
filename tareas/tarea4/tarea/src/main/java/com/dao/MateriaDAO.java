package com.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.model.Materia;


public class MateriaDAO {
    
    /*Sesion para conectarnos a la base de datos*/
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void guardar(Materia materia) {
        //se inicia la sesion
        Session session = sessionFactory.openSession();
        //la transaccion a relizar
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            //guardamos el Nivel
            session.persist(materia);
           
            tx.commit();
        }
        catch (Exception e) {
            //Se regresa a un estado consistente 
            if (tx!=null){ 
                tx.rollback();
            }
            e.printStackTrace(); 
        } finally {
            //cerramos simpre la sesion
            session.close();
        }
    }
        
        
            /**
     * Elimina el Nivel de la base de datos
     * @param nivel el Nivel a eliminar
     */
    public void eliminar(Materia materia) {
        Session session = sessionFactory.openSession();
        //la transaccion a relizar
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            //eliminamos el Nivel
            session.delete(materia);
           
            tx.commit();
        }
        catch (Exception e) {
            //Se regresa a un estado consistente 
            if (tx!=null){ 
                tx.rollback();
            }
            e.printStackTrace(); 
        }
        finally {
            //cerramos siempre la sesion
            session.close();
        }
    }
    
    
    
    
    /**
     * Actualiza el Nivel en la base de datos
     * @param nivel con los nuevos valores 
     */
    public void actualizar(Materia materia) {
        Session session = sessionFactory.openSession();
        //la transaccion a relizar
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            //actualizar el Nivel
            session.update(materia);
           
            tx.commit();
        }
        catch (Exception e) {
            //Se regresa a un estado consistente 
            if (tx!=null){ 
                tx.rollback();
            }
            e.printStackTrace(); 
        }
        finally {
            //cerramos siempre la sesion
            session.close();
        }
}
    
    
        /**
     * Regresa la lista de todos los Nivels en la base de datos
     * @return la lista que contiene a todos los Nivels de la base de datos
     */
    public List<Materia> getMaterias(){
        List<Materia> result= null;
        Session session = sessionFactory.openSession();
        Transaction tx=null;
        try{
            tx=session.beginTransaction();
            String hql= "FROM Materia";
            Query query =session.createQuery(hql);
            result=(List<Materia>)query.list();
            tx.commit();
        }catch (Exception e){
            if(tx != null)
                tx.rollback();
            e.printStackTrace();      
        }finally{
            session.close();
        }
        return result;
    }
    
    
       public Materia getUsuario(int idMateria) {
        Materia result = null;
        Session s = sessionFactory.openSession();
        Transaction tx = null;
        try{
            tx = s.beginTransaction();
            String hql = "FROM Materia WHERE idMateria = :idMateria";                  
            Query query = s.createQuery(hql);
            query.setParameter("idUsuario",idMateria);
            result = (Materia)query.uniqueResult();
            tx.commit();
        }catch(Exception e){
            if(tx != null)
                tx.rollback();
            e.printStackTrace();
        }finally{
            s.close();
        }
        return result;
    }
       
       public Materia getMateria(String nombre) {
           Materia result = null;
           Session s = sessionFactory.openSession();
           Transaction tx = null;
           try {
               tx = s.beginTransaction();
               String hql = "FROM Materia WHERE nombre = :nombre";
               Query query = s.createQuery(hql);
               query.setParameter("nombre", nombre);
               result = (Materia) query.uniqueResult();
               tx.commit();
           } catch (Exception e) {
               if (tx != null) {
                   tx.rollback();
               }
               e.printStackTrace();
           } finally {
               s.close();
           }
           return result;
       }        
    
}
