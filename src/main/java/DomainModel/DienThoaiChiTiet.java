/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DomainModel;

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author quanl
 */
@Entity
@Table(name = "DienThoaiChiTiet")
public class DienThoaiChiTiet {

    @Id
    @Column(name = "id", columnDefinition = "uniqueidentifier")
    private String id;

    @Column(name = "IMEI")
    private String IMEI;

    @ManyToOne
    @JoinColumn(name = "idDienThoai", nullable = false)
    private DienThoai dienThoai;
    

    public DienThoaiChiTiet(String id, String IMEI, DienThoai dienThoai) {
        this.id = id;
        this.IMEI = IMEI;
        this.dienThoai = dienThoai;
    }

    public DienThoaiChiTiet() {
    }

    @Override
    public String toString() {
        return "DienThoaiChiTiet{" + ", IMEI=" + IMEI + ", dienThoai=" + dienThoai + '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIMEI() {
        return IMEI;
    }

    public void setIMEI(String IMEI) {
        this.IMEI = IMEI;
    }

    public DienThoai getDienThoai() {
        return dienThoai;
    }

    public void setDienThoai(DienThoai dienThoai) {
        this.dienThoai = dienThoai;
    }

}
