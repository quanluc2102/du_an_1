/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DomainModel;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author quanl
 */
@Entity
@Table(name = "HoaDon")
public class HoaDon {

    @Id
    @Column(name = "id", columnDefinition = "uniqueidentifier")
    private String id;

    @Column(name = "ngayTao")
    private Date ngayTao;

    @Column(name = "moTa")
    private String moTa;
    @Column(name = "trangThai")
    private int trangThai;

    @ManyToOne
    @JoinColumn(name = "idKhachHang", nullable = false)
    private KhachHang idkhachHang;

    @ManyToOne
    @JoinColumn(name = "idNhanVien", nullable = false)
    private NhanVien nhanVien;

    @ManyToOne
    @JoinColumn(name = "idKhuyenMai", nullable = false)
    private KhuyenMai khuyenMai;
    
    

}
