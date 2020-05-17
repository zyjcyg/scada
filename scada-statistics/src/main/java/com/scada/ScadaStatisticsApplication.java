package com.scada;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author scada
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class ScadaStatisticsApplication
{
    public static void main(String[] args)
    {
        System.out.println("hello scada-statistics");
        SpringApplication.run(ScadaStatisticsApplication.class, args);
    }
}