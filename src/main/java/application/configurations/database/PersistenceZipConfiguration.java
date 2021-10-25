package application.configurations.database;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;
import java.util.HashMap;

@Configuration
@PropertySource({"classpath:persistence-multiple-db.properties"})
@EnableJpaRepositories(
        basePackages = "application.repositories.zip",
        entityManagerFactoryRef = "zipEntityManager",
        transactionManagerRef = "zipTransactionManager"
)
public class PersistenceZipConfiguration {

    @Autowired
    private Environment env;

    @Bean
    public LocalContainerEntityManagerFactoryBean zipEntityManager() {
        LocalContainerEntityManagerFactoryBean em
                = new LocalContainerEntityManagerFactoryBean();
        em.setDataSource(zipDataSource());
        em.setPackagesToScan(
                new String[]{"application.entities.zip"});

        HibernateJpaVendorAdapter vendorAdapter
                = new HibernateJpaVendorAdapter();
        em.setJpaVendorAdapter(vendorAdapter);
        HashMap<String, Object> properties = new HashMap<>();
        properties.put("hibernate.hbm2ddl.auto",
                env.getProperty("zip.hibernate.hbm2ddl.auto"));
        properties.put("hibernate.dialect",
                env.getProperty("zip.hibernate.dialect"));
        em.setJpaPropertyMap(properties);

        return em;
    }

    @Bean
    public DataSource zipDataSource() {

        DriverManagerDataSource dataSource
                = new DriverManagerDataSource();
        dataSource.setDriverClassName(
                env.getProperty("zip.jdbc.driverClassName"));
        dataSource.setUrl(env.getProperty("zip.jdbc.url"));
        dataSource.setUsername(env.getProperty("zip.jdbc.user"));
        dataSource.setPassword(env.getProperty("zip.jdbc.pass"));

        return dataSource;
    }

    @Bean
    public PlatformTransactionManager zipTransactionManager() {

        JpaTransactionManager transactionManager
                = new JpaTransactionManager();
        transactionManager.setEntityManagerFactory(
                zipEntityManager().getObject());
        return transactionManager;
    }

}
