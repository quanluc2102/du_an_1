/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Reponsitories;

import DomainModel.KhuyenMai;
import Utillities.HibernateConfig;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author haha
 */
public class KhuyenMaiReponsitories {
        Session session = HibernateConfig.getFACTORY().openSession();

    public ArrayList<KhuyenMai> getList() {
        Query query = session.createQuery("From KhuyenMai");// truy vấn trên entity(HQL)
        ArrayList<KhuyenMai> list = (ArrayList<KhuyenMai>) query.getResultList();
        return list;
    }

    public static void main(String[] args) {
        for (KhuyenMai string : new KhuyenMaiReponsitories().getList()) {
            System.out.println(string.toString());
        }
    }
}
