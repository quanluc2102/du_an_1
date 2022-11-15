/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Reponsitories;

import DomainModel.DienThoaiChiTiet;
import Utillities.HibernateConfig;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author haha
 */
public class DienThoaiChiTietReponsitories {

    Session session = HibernateConfig.getFACTORY().openSession();

    public ArrayList<DienThoaiChiTiet> getList() {
        Query query = session.createQuery("From DienThoaiChiTiet");// truy vấn trên entity(HQL)
        ArrayList<DienThoaiChiTiet> list = (ArrayList<DienThoaiChiTiet>) query.getResultList();
        return list;
    }

    public static void main(String[] args) {
        for (DienThoaiChiTiet string : new DienThoaiChiTietReponsitories().getList()) {
            System.out.println(string.toString());
        }
    }
}
