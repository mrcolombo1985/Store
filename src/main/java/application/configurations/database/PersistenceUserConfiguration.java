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
        basePackages = "application.repositories.user",
        entityManagerFactoryRef = "userEntityManager",
        transactionManagerRef = "userTransactionManager"
)
public class PersistenceUserConfiguration {

    @Autowired
    private Environment env;

    @Bean
    public LocalContainerEntityManagerFactoryBean userEntityManager() {
        LocalContainerEntityManagerFactoryBean em
                = new LocalContainerEntityManagerFactoryBean();
        em.setDataSource(userDataSource());
        em.setPackagesToScan(
                new String[]{"application.entities.security"});

        HibernateJpaVendorAdapter vendorAdapter
                = new HibernateJpaVendorAdapter();
        em.setJpaVendorAdapter(vendorAdapter);
        HashMap<String, Object> properties = new HashMap<>();
        properties.put("hibernate.hbm2ddl.auto",
                env.getProperty("user.hibernate.hbm2ddl.auto"));
        properties.put("hibernate.dialect",
                env.getProperty("user.hibernate.dialect"));
        em.setJpaPropertyMap(properties);

        return em;
    }

    @Bean
    public DataSource userDataSource() {

        DriverManagerDataSource dataSource
                = new DriverManagerDataSource();
        dataSource.setDriverClassName(
                env.getProperty("user.jdbc.driverClassName"));
        dataSource.setUrl(env.getProperty("user.jdbc.url"));
        dataSource.setUsername(env.getProperty("user.jdbc.user"));
        dataSource.setPassword(env.getProperty("user.jdbc.pass"));

        return dataSource;
    }

    @Bean
    public PlatformTransactionManager userTransactionManager() {

        JpaTransactionManager transactionManager
                = new JpaTransactionManager();
        transactionManager.setEntityManagerFactory(
                userEntityManager().getObject());
        return transactionManager;
    }

}
