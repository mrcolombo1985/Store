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
        basePackages = "application.repositories.video",
        entityManagerFactoryRef = "videoEntityManager",
        transactionManagerRef = "videoTransactionManager"
)
public class PersistenceVideoConfiguration {

    @Autowired
    private Environment env;

    @Bean
    public LocalContainerEntityManagerFactoryBean videoEntityManager() {
        LocalContainerEntityManagerFactoryBean em
                = new LocalContainerEntityManagerFactoryBean();
        em.setDataSource(videoDataSource());
        em.setPackagesToScan(
                new String[]{"application.entities.video"});

        HibernateJpaVendorAdapter vendorAdapter
                = new HibernateJpaVendorAdapter();
        em.setJpaVendorAdapter(vendorAdapter);
        HashMap<String, Object> properties = new HashMap<>();
        properties.put("hibernate.hbm2ddl.auto",
                env.getProperty("video.hibernate.hbm2ddl.auto"));
        properties.put("hibernate.dialect",
                env.getProperty("video.hibernate.dialect"));
        em.setJpaPropertyMap(properties);

        return em;
    }

    @Bean
    public DataSource videoDataSource() {

        DriverManagerDataSource dataSource
                = new DriverManagerDataSource();
        dataSource.setDriverClassName(
                env.getProperty("video.jdbc.driverClassName"));
        dataSource.setUrl(env.getProperty("video.jdbc.url"));
        dataSource.setUsername(env.getProperty("video.jdbc.user"));
        dataSource.setPassword(env.getProperty("video.jdbc.pass"));

        return dataSource;
    }

    @Bean
    public PlatformTransactionManager videoTransactionManager() {

        JpaTransactionManager transactionManager
                = new JpaTransactionManager();
        transactionManager.setEntityManagerFactory(
                videoEntityManager().getObject());
        return transactionManager;
    }

}
