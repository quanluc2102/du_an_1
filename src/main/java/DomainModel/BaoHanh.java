package DomainModel;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.io.Serializable;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
@Table(name = "BaoHanh")
public class BaoHanh implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private String id;

    @Column(name = "thoi_gian")
    private String thoiGian;

    @Column(name = "don_vi")
    private String donVi;


    @OneToMany(mappedBy = "baoHanh", fetch = FetchType.LAZY)
    private List<HoaDonChiTiet> listHoaDonChiTiets;

    public BaoHanh(String id, String thoiGian, String donVi) {
        this.id = id;
        this.thoiGian = thoiGian;
        this.donVi = donVi;
    }

    public BaoHanh() {
    }

    @Override
    public String toString() {
        return "BaoHanh{" + "id=" + id + ", thoiGian=" + thoiGian + ", donVi=" + donVi + '}';
    }
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getThoiGian() {
        return thoiGian;
    }

    public void setThoiGian(String thoiGian) {
        this.thoiGian = thoiGian;
    }

    public String getDonVi() {
        return donVi;
    }

    public void setDonVi(String donVi) {
        this.donVi = donVi;
    }

    public List<HoaDonChiTiet> getListHoaDonChiTiets() {
        return listHoaDonChiTiets;
    }

    public void setListHoaDonChiTiets(List<HoaDonChiTiet> listHoaDonChiTiets) {
        this.listHoaDonChiTiets = listHoaDonChiTiets;
    }

    
}
