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
@Table(name = "DienThoai")
public class DienThoai {

    @Id
    @Column(name = "id", columnDefinition = "uniqueidentifier")
    private String id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    @ManyToOne
    @JoinColumn(name = "idDong", nullable = false)
    private Dong dong;

    @ManyToOne
    @JoinColumn(name = "idHang", nullable = false)
    private Hang hang;
    
    @OneToMany(mappedBy = "dienThoai", fetch = FetchType.LAZY)
    private List<DienThoaiChiTiet> listDienThoaiChiTiet;

    @Column(name = "CPU")
    private String CPU;
    
    @Column(name = "mauSac")
    private String mauSac;
    
    @Column(name = "RAM")
    private String RAM;
    
    @Column(name = "ROM")
    private String ROM;
    
    @Column(name = "SIM")
    private String SIM;
    
    @Column(name = "pin")
    private String pin;
    
    @Column(name = "camera")
    private String camera;
    
    @Column(name = "manHinh")
    private String manHinh;
    
    @Column(name = "moTa")
    private String moTa;
    
    @Column(name = "giaBan")
    private double giaBan;

    @Override
    public String toString() {
        return "DienThoai{" + ", ma=" + ma + ", ten=" + ten + ", dong=" + dong + ", hang=" + hang + ", CPU=" + CPU + ", mauSac=" + mauSac + ", RAM=" + RAM + ", ROM=" + ROM + ", SIM=" + SIM + ", pin=" + pin + ", camera=" + camera + ", manHinh=" + manHinh + ", moTa=" + moTa + ", giaBan=" + giaBan + '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public Dong getDong() {
        return dong;
    }

    public void setDong(Dong dong) {
        this.dong = dong;
    }

    public Hang getHang() {
        return hang;
    }

    public void setHang(Hang hang) {
        this.hang = hang;
    }

    public String getCPU() {
        return CPU;
    }

    public void setCPU(String CPU) {
        this.CPU = CPU;
    }

    public String getMauSac() {
        return mauSac;
    }

    public void setMauSac(String mauSac) {
        this.mauSac = mauSac;
    }

    public String getRAM() {
        return RAM;
    }

    public void setRAM(String RAM) {
        this.RAM = RAM;
    }

    public String getROM() {
        return ROM;
    }

    public void setROM(String ROM) {
        this.ROM = ROM;
    }

    public String getSIM() {
        return SIM;
    }

    public void setSIM(String SIM) {
        this.SIM = SIM;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getCamera() {
        return camera;
    }

    public void setCamera(String camera) {
        this.camera = camera;
    }

    public String getManHinh() {
        return manHinh;
    }

    public void setManHinh(String manHinh) {
        this.manHinh = manHinh;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public double getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(double giaBan) {
        this.giaBan = giaBan;
    }

    public DienThoai() {
    }

    public DienThoai(String id, String ma, String ten, Dong dong, Hang hang, String CPU, String mauSac, String RAM, String ROM, String SIM, String pin, String camera, String manHinh, String moTa, double giaBan) {
        this.id = id;
        this.ma = ma;
        this.ten = ten;
        this.dong = dong;
        this.hang = hang;
        this.CPU = CPU;
        this.mauSac = mauSac;
        this.RAM = RAM;
        this.ROM = ROM;
        this.SIM = SIM;
        this.pin = pin;
        this.camera = camera;
        this.manHinh = manHinh;
        this.moTa = moTa;
        this.giaBan = giaBan;
    }

}
