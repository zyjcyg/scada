package com.scada;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

import java.util.Arrays;

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
        SpringApplication.run(ScadaStatisticsApplication.class, args);
    }
}