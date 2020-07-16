package com.scada.project.monitor.job.task;

import com.scada.common.utils.StringUtils;
import com.scada.project.statistics.domain.AvailabilityDayStatistics;
import com.scada.project.statistics.domain.AvailabilityMonthStatistics;
import com.scada.project.statistics.domain.AvailabilityYearStatistics;
import com.scada.project.statistics.domain.FaultDayStatistics;
import com.scada.project.statistics.service.IAvailabilityDayStatisticsService;
import com.scada.project.statistics.service.IAvailabilityMonthStatisticsService;
import com.scada.project.statistics.service.IAvailabilityYearStatisticsService;
import com.scada.project.statistics.service.IFaultDayStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 定时任务调度测试
 * 
 * @author scada
 */
@Component("scadaTask")
public class ScadaTask {

    @Autowired
    private IAvailabilityDayStatisticsService availabilityDayStatisticsService;

    public void avaiStatByDay() {

        List<AvailabilityDayStatistics> availabilityDayStatistics = availabilityDayStatisticsService.selectTurbineAvailabilityDayStatistics();
        for (AvailabilityDayStatistics item : availabilityDayStatistics) {
            System.out.println(item.toString());
            //TODO add feilds
            availabilityDayStatisticsService.insertAvailabilityDayStatistics(item);
        }
    }

    @Autowired
    private IAvailabilityMonthStatisticsService availabilityMonthStatisticsService;

    public void avaiStatByMonth() {

        List<AvailabilityMonthStatistics> availabilityMonthStatistics = availabilityMonthStatisticsService.selectTurbineAvailabilityMonthStatistics();
        for (AvailabilityMonthStatistics item : availabilityMonthStatistics) {
            System.out.println(item.toString());
            //TODO add feilds
            availabilityMonthStatisticsService.insertAvailabilityMonthStatistics(item);
        }
    }

    @Autowired
    private IAvailabilityYearStatisticsService availabilityYearStatisticsService;

    public void avaiStatByYear() {

        List<AvailabilityYearStatistics> availabilityYearStatistics = availabilityYearStatisticsService.selectTurbineAvailabilityYearStatistics();
        for (AvailabilityYearStatistics item : availabilityYearStatistics) {
            System.out.println(item.toString());
            //TODO add feilds
            availabilityYearStatisticsService.insertAvailabilityYearStatistics(item);
        }
    }

    @Autowired
    private IFaultDayStatisticsService faultDayStatisticsService;

    public void shutdownStat() {
        List<FaultDayStatistics> faultDayStatistics = faultDayStatisticsService.selectShutdownStatistics();
        for (FaultDayStatistics item : faultDayStatistics) {
            System.out.println(item.toString());
            //TODO add fields
            faultDayStatisticsService.insertFaultDayStatistics(item);
        }

    }
    
    @Autowired
    private IPowerCurveDayStatisticsService powerCurveDayStatisticsService;

    public void PowerCurveStat() {
        List<PowerCurveDayStatistics> powerCurveDayStatistics = powerCurveDayStatisticsService.selectPowerCurveStatistics();
        for (PowerCurveDayStatistics item : powerCurveDayStatistics) {
            System.out.println(item.toString());
            //TODO add fields
            powerCurveDayStatisticsService.insertPowerCurveDayStatistics(item);
        }
    }
}
