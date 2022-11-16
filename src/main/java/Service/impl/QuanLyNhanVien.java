/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service.impl;

import DomainModel.NhanVien;
import Reponsitories.NhanVienReponsitories;
import java.util.ArrayList;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author buiti
 */
public class QuanLyNhanVien implements Service.QuanLyNhanVienService{
    private NhanVienReponsitories NVRP = new NhanVienReponsitories();
    @Override
    public ArrayList<NhanVien> getAllNV() {
       return NVRP.getList();
    }

    @Override
    public void showData(ArrayList<NhanVien> list, DefaultTableModel dtm) {
        dtm.setRowCount(0);
        for (NhanVien nhanVien : list) {
            dtm.addRow(nhanVien.toDataRow());
            
        }
    }


    
}
