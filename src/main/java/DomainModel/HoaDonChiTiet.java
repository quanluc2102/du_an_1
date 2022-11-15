/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DomainModel;

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
@Table(name = "HoaDonChiTiet")
public class HoaDonChiTiet {
      @Id
    @Column(name = "idHoaDon", columnDefinition = "uniqueidentifier")
    private String idHoaDon;


   @Column(name = "baoHanh")
    private String baoHanh;
   
    @ManyToOne
    @JoinColumn(name = "idDienThoai", nullable = false)
    private DienThoai dienThoai;


}
