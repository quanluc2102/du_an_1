/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Reponsitories;

import DomainModel.ChiTietDienThoai;
import Utillities.HibernateConfig;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author haha
 */
public class ChiTietDienThoaiReponsitories {

    Session session = HibernateConfig.getFACTORY().openSession();

    public ArrayList<ChiTietDienThoai> getList() {
        Query query = session.createQuery("From ChiTietDienThoai");// truy vấn trên entity(HQL)
        ArrayList<ChiTietDienThoai> list = (ArrayList<ChiTietDienThoai>) query.getResultList();
        return list;
    }

    public static void main(String[] args) {
        for (ChiTietDienThoai string : new ChiTietDienThoaiReponsitories().getList()) {
            System.out.println(string.toString());
        }
    }
}
