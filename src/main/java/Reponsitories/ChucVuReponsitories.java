/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Reponsitories;

import DomainModel.ChucVu;
import Utillities.HibernateConfig;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.query.Query;

/**
 *
 * @author haha
 */
public class ChucVuReponsitories {

    Session session = HibernateConfig.getFACTORY().openSession();

    public ArrayList<ChucVu> getList() {
        Query query = session.createQuery("From ChucVu");// truy vấn trên entity(HQL)
        ArrayList<ChucVu> list = (ArrayList<ChucVu>) query.getResultList();
        return list;
    }

    public static void main(String[] args) {
        for (ChucVu string : new ChucVuReponsitories().getList()) {
            System.out.println(string.toString());
        }
    }
}
