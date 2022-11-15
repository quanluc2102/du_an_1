/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Reponsitories;

import DomainModel.Dong;
import DomainModel.Dong;
import Utillities.HibernateConfig;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author haha
 */
public class DongReponsitories {

    Session session = HibernateConfig.getFACTORY().openSession();

    public ArrayList<Dong> getList() {
        Query query = session.createQuery("From Dong");// truy vấn trên entity(HQL)
        ArrayList<Dong> list = (ArrayList<Dong>) query.getResultList();
        return list;
    }

    public Boolean add(Dong dt) {
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

    public Boolean update(Dong dt, String id) {
        Transaction transaction = null;
        Integer check = 0;
        try ( Session session = HibernateConfig.getFACTORY().openSession()) {
            String hql = "UPDATE Dong set [ma] =  :ma \n"
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
            String hql = "DELETE FROM Dong "
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
        for (Dong string : new DongReponsitories().getList()) {
            System.out.println(string.toString());
        }
    }
}
