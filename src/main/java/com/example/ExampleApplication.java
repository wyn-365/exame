package com.example;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@MapperScan("com.example.mapper")
@SpringBootApplication
@EnableTransactionManagement//启注解事务管理，等同于xml配置方式的 <tx:annotation-driven />
@EnableSwagger2
public class ExampleApplication extends SpringBootServletInitializer {



    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(ExampleApplication.class);
    }


    public static void main(String[] args) {
        SpringApplication.run(ExampleApplication.class, args);
    }


//    public static void main(String[] args) {
//        SpringApplication.run(ExampleApplication.class, args);
//    }

}
