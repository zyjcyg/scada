package com.scada.project.monitor.job.task;

import com.scada.common.utils.StringUtils;
import com.scada.project.statistics.domain.AvailabilityDayStatistics;
import com.scada.project.statistics.service.IAvailabilityDayStatisticsService;
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
    public void availabilityStaticsByDay() {

        List<AvailabilityDayStatistics> availabilityDayStatistics = availabilityDayStatisticsService.selectTurbineAvailabilityDayStatistics();
    }
}
