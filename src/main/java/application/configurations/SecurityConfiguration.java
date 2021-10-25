package application.configurations;
/* для тестирования функциональной части системы разрешены все действия с контроллерами */

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@EnableGlobalMethodSecurity()
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Bean
    public SecurityFilter securityFilter() {
        return new SecurityFilter();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS).and()
                .authorizeRequests()

                .antMatchers(HttpMethod.GET, "/sensor/").authenticated()
                .antMatchers(HttpMethod.POST, "/sensor/").authenticated()
                .antMatchers(HttpMethod.PUT, "/sensor/").authenticated()
                .antMatchers(HttpMethod.DELETE, "/sensor/").authenticated()

                .antMatchers(HttpMethod.GET, "/option/").authenticated()
                .antMatchers(HttpMethod.POST, "/option/").authenticated()
                .antMatchers(HttpMethod.PUT, "/option/").authenticated()
                .antMatchers(HttpMethod.DELETE, "/option/").authenticated()

                .antMatchers(HttpMethod.GET, "/device/").authenticated()
                .antMatchers(HttpMethod.POST, "/device/").authenticated()
                .antMatchers(HttpMethod.PUT, "/device/").authenticated()
                .antMatchers(HttpMethod.DELETE, "/device/").authenticated()

                .antMatchers(HttpMethod.GET, "/arduino/").authenticated()
                .antMatchers(HttpMethod.POST, "/arduino/").authenticated()
                .antMatchers(HttpMethod.DELETE, "/arduino/").authenticated()
                .antMatchers(HttpMethod.PUT, "/arduino/").authenticated()

                .antMatchers(HttpMethod.POST, "/login/").anonymous()

                .antMatchers(HttpMethod.POST, "/logout/").permitAll()

                .antMatchers(HttpMethod.GET, "/user/").permitAll()
                .antMatchers(HttpMethod.POST, "/user/").authenticated()
                .antMatchers(HttpMethod.PUT, "/user/").authenticated()
                .antMatchers(HttpMethod.DELETE, "/user/").authenticated()

                .antMatchers(HttpMethod.GET, "/camera/").authenticated()
                .antMatchers(HttpMethod.POST, "/camera/").authenticated()
                .antMatchers(HttpMethod.PUT, "/camera/").authenticated()
                .antMatchers(HttpMethod.DELETE, "/camera/").authenticated()

                .antMatchers(HttpMethod.GET, "/role/").permitAll()
                .antMatchers(HttpMethod.POST, "/role/").permitAll()
                .antMatchers(HttpMethod.PUT, "/role/").permitAll()
                .antMatchers(HttpMethod.DELETE, "/role/").permitAll()

                .anyRequest().permitAll();
        http.addFilterBefore(securityFilter(), UsernamePasswordAuthenticationFilter.class);
    }


}
