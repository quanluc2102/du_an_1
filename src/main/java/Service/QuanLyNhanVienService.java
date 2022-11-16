/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Service;

import DomainModel.NhanVien;
import java.util.ArrayList;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author buiti
 */
public interface QuanLyNhanVienService {
    ArrayList<NhanVien> getAllNV();
    void showData(ArrayList<NhanVien> list, DefaultTableModel dtm);
}
