package Utillities;

import DomainModel.ChucVu;
import DomainModel.DienThoai;
import DomainModel.DienThoaiChiTiet;
import DomainModel.Dong;
import DomainModel.Hang;
import DomainModel.HoaDon;
import DomainModel.KhuyenMai;
import DomainModel.NhanVien;
import java.util.Properties;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

public class HibernateConfig {

    private static final SessionFactory FACTORY;

    static {
        Configuration conf = new Configuration();

        Properties properties = new Properties();
        properties.put(Environment.DIALECT, "org.hibernate.dialect.SQLServerDialect");
        properties.put(Environment.DRIVER, "com.microsoft.sqlserver.jdbc.SQLServerDriver");
        properties.put(Environment.URL, "jdbc:sqlserver://localhost:1433;databaseName=QLBDT");
        properties.put(Environment.USER, "sa");
        properties.put(Environment.PASS, "27812003");
        properties.put(Environment.SHOW_SQL, "true");

        conf.setProperties(properties);
        conf.addAnnotatedClass(ChucVu.class);
        conf.addAnnotatedClass(Dong.class);
        conf.addAnnotatedClass(KhuyenMai.class);
        conf.addAnnotatedClass(NhanVien.class);
        conf.addAnnotatedClass(Hang.class);
        conf.addAnnotatedClass(DienThoai.class);
        conf.addAnnotatedClass(DienThoaiChiTiet.class);
     
        
       
        
        ServiceRegistry registry = new StandardServiceRegistryBuilder()
                .applySettings(conf.getProperties()).build();
        FACTORY = conf.buildSessionFactory(registry);

    }

    public static SessionFactory getFACTORY() {
        return FACTORY;
    }

    public static void main(String[] args) {
        getFACTORY();
    }

}
