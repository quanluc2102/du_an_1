/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Reponsitories;

import DomainModel.Hang;
import DomainModel.Hang;
import Utillities.HibernateConfig;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author haha
 */
public class HangReponsitories {

    Session session = HibernateConfig.getFACTORY().openSession();

    public ArrayList<Hang> getList() {
        Query query = session.createQuery("From Hang");// truy vấn trên entity(HQL)
        ArrayList<Hang> list = (ArrayList<Hang>) query.getResultList();
        return list;
    }

    public Boolean add(Hang dt) {
        Transaction transaction = null;
        Integer check = 0;
        try ( Session session = HibernateConfig.getFACTORY().openSession()) {
            transaction = session.beginTransaction();
            check = (Integer) session.save(dt);
            transaction.commit();
            System.out.println("dien thoai" + check);
            return check > 0;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public Boolean update(Hang dt, String id) {
        Transaction transaction = null;
        Integer check = 0;
        try ( Session session = HibernateConfig.getFACTORY().openSession()) {
            String hql = "UPDATE Hang set [ma] =  :ma \n"
                    + "      ,[ten] =  :ten \n"
                    + "WHERE id = :id";
            Query query = session.createQuery(hql);
            query.setParameter("ten", dt.getTen());
            query.setParameter("id", id);
            check = query.executeUpdate();
            return check > 0;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public Boolean delete(String id) {
        Transaction transaction = null;
        Integer check = 0;
        try ( Session session = HibernateConfig.getFACTORY().openSession()) {
            String hql = "DELETE FROM Hang "
                    + "WHERE id = :id";
            Query query = session.createQuery(hql);
            query.setParameter("id", id);
            check = query.executeUpdate();
            return check > 0;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public static void main(String[] args) {
        for (Hang string : new HangReponsitories().getList()) {
            System.out.println(string.toString());
        }
    }
}