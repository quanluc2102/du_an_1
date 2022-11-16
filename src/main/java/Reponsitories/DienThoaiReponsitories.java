/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Reponsitories;

import DomainModel.DienThoai;
import Utillities.HibernateConfig;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author haha
 */
public class DienThoaiReponsitories {

    Session session = HibernateConfig.getFACTORY().openSession();

    public ArrayList<DienThoai> getList() {
        Query query = session.createQuery("From DienThoai");// truy vấn trên entity(HQL)
        ArrayList<DienThoai> list = (ArrayList<DienThoai>) query.getResultList();
        return list;
    }

    public Boolean add(DienThoai dt) {
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

//    public Boolean update(DienThoai dt, String id) {
//        Transaction transaction = null;
//        Integer check = 0;
//        try ( Session session = HibernateConfig.getFACTORY().openSession()) {
//            String hql = "UPDATE DienThoai set [ma] =  :ma \n"
//                    + "      ,[ten] =  :ten \n"
//                    + "      ,[idHang] =  :idHang \n"
//                    + "      ,[idDong] =  :idDong \n"
//                    + "      ,[CPU] =  :CPU \n"
//                    + "      ,[mauSac] =  :mauSac \n"
//                    + "      ,[RAM] =  :RAM \n"
//                    + "      ,[ROM] =  :ROM \n"
//                    + "      ,[SIM] =  :SIM \n"
//                    + "      ,[pin] = :pin \n"
//                    + "      ,[camera] =  :camera \n"
//                    + "      ,[manHinh] =  :manHinh \n"
//                    + "      ,[giaBan] =  :giaBan\n"
//                    + "      ,[moTa] =  :moTa "
//                    + "WHERE id = :id";
//            Query query = session.createQuery(hql);
//            query.setParameter("ten", dt.getTen());
//            query.setParameter("id", id);
//            check = query.executeUpdate();
//            return check > 0;
//        } catch (Exception e) {
//            System.out.println(e.getMessage());
//        }
//        return null;
//    }

    public Boolean delete(String id) {
        Transaction transaction = null;
        Integer check = 0;
        try ( Session session = HibernateConfig.getFACTORY().openSession()) {
            String hql = "DELETE FROM DienThoai "
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
        for (DienThoai string : new DienThoaiReponsitories().getList()) {
            System.out.println(string.toString());
        }
    }
}
