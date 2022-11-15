/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Reponsitories;

import DomainModel.HoaDon;
import Utillities.HibernateConfig;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author haha
 */
public class HoaDonReponsitories {
        Session session = HibernateConfig.getFACTORY().openSession();

    public ArrayList<HoaDon> getList() {
        Query query = session.createQuery("From HoaDon");// truy vấn trên entity(HQL)
        ArrayList<HoaDon> list = (ArrayList<HoaDon>) query.getResultList();
        return list;
    }

    public static void main(String[] args) {
        for (HoaDon string : new HoaDonReponsitories().getList()) {
            System.out.println(string.toString());
        }
    }
}
