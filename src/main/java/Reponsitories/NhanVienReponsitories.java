/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Reponsitories;

import DomainModel.NhanVien;
import Utillities.HibernateConfig;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author haha
 */
public class NhanVienReponsitories {
        Session session = HibernateConfig.getFACTORY().openSession();

    public ArrayList<NhanVien> getList() {
        Query query = session.createQuery("From NhanVien");// truy vấn trên entity(HQL)
        ArrayList<NhanVien> list = (ArrayList<NhanVien>) query.getResultList();
        return list;
    }

    public static void main(String[] args) {
        for (NhanVien string : new NhanVienReponsitories().getList()) {
            System.out.println(string.toString());
        }
    }
}
